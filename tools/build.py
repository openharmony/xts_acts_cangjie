#  Copyright (c) 2026 Huawei Device Co., Ltd.
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import argparse
import os
import shutil
import subprocess
import sys
import time
from pathlib import Path
from typing import List, Optional


class Colors:
    RED = "\033[91m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    BLUE = "\033[94m"
    RESET = "\033[0m"

    @classmethod
    def enabled(cls) -> bool:
        if os.name == "nt":
            # Windows 10 1909+ supports ANSI via ENABLE_VIRTUAL_TERMINAL_PROCESSING
            try:
                import ctypes
                kernel32 = ctypes.windll.kernel32
                handle = kernel32.GetStdHandle(-11)  # STD_OUTPUT_HANDLE
                mode = ctypes.c_uint32()
                if kernel32.GetConsoleMode(handle, ctypes.byref(mode)):
                    kernel32.SetConsoleMode(handle, mode.value | 0x0004)
                    return True
            except Exception:
                pass
            return False
        return hasattr(sys.stdout, "isatty") and sys.stdout.isatty()


class Console:
    def __init__(self, use_color: bool = True):
        self.use_color = use_color and Colors.enabled()

    def _c(self, text: str, color: str) -> str:
        if not self.use_color:
            return text
        return f"{color}{text}{Colors.RESET}"

    def ok(self, text: str) -> str:
        return self._c(text, Colors.GREEN)

    def err(self, text: str) -> str:
        return self._c(text, Colors.RED)

    def warn(self, text: str) -> str:
        return self._c(text, Colors.YELLOW)

    def info(self, text: str) -> str:
        return self._c(text, Colors.BLUE)

    def print(self, text: str = ""):
        print(text)


def scan_projects(project_dir: Path, patterns: Optional[List[str]] = None) -> List[Path]:
    """Find all test directories containing build-profile.json5 and hvigorfile.ts."""
    projects = []
    for bp in project_dir.rglob("test/build-profile.json5"):
        test_dir = bp.parent
        if (test_dir / "hvigorfile.ts").exists():
            projects.append(test_dir)

    projects.sort()

    if not patterns:
        return projects

    filtered = []
    for proj in projects:
        rel = proj.relative_to(project_dir).as_posix()
        for pat in patterns:
            if rel.startswith(pat):
                filtered.append(proj)
                break
    return filtered


def _shell() -> bool:
    """Return True for shell=True on Windows."""
    return os.name == "nt"


def _hvigor_cmd(base_args: List[str]) -> List[str]:
    """Return hvigorw command, using 'hvigorw.js' on Windows if available."""
    if os.name == "nt" and shutil.which("hvigorw.js"):
        return ["hvigorw.js"] + base_args
    return ["hvigorw"] + base_args


def run_build(project_dir: Path, log_file: Path, debug: bool = False) -> bool:
    """Run hvigorw assembleHap, and redirect output to log_file."""
    cmd = _hvigor_cmd([
        "--mode", "module",
        "-p", "module=entry@default",
        "-p", "isOhosTest=true",
        "-p", "product=default",
        "-p", "buildMode=test",
        "-p", "isCangjie=true",
        "assembleHap", "--analyze=normal",
    ])
    if debug:
        print(f"[DEBUG] COMMAND: {' '.join(cmd)}  (cwd={project_dir})")
    log_file.parent.mkdir(parents=True, exist_ok=True)
    with open(log_file, "w", encoding="utf-8") as f:
        result = subprocess.run(cmd, cwd=project_dir, stdout=f, stderr=subprocess.STDOUT, shell=_shell())
    if debug:
        print(f"[DEBUG] RETURN CODE: {result.returncode}")
        if log_file.exists():
            content = log_file.read_text(encoding="utf-8")
            if content:
                print(f"[DEBUG] OUTPUT:\n{content[:2000]}")
    return result.returncode == 0


def run_clean(project_dir: Path, debug: bool = False) -> bool:
    """Run hvigorw clean."""
    cmd = _hvigor_cmd(["clean"])
    if debug:
        print(f"[DEBUG] COMMAND: {' '.join(cmd)}  (cwd={project_dir})")
        result = subprocess.run(cmd, cwd=project_dir, capture_output=True, text=True, shell=_shell())
        print(f"[DEBUG] RETURN CODE: {result.returncode}")
        if result.stdout:
            print(f"[DEBUG] STDOUT:\n{result.stdout}")
        if result.stderr:
            print(f"[DEBUG] STDERR:\n{result.stderr}")
    else:
        result = subprocess.run(cmd, cwd=project_dir, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, shell=_shell())
    return result.returncode == 0


def collect_haps(project_dir: Path, output_dir: Path) -> tuple[int, int]:
    """Collect *-unsigned.hap and corresponding Test.json files."""
    hap_files = list(project_dir.rglob("*-unsigned.hap"))
    if not hap_files:
        return 0, 0

    output_dir.mkdir(parents=True, exist_ok=True)
    for old in output_dir.iterdir():
        if old.is_file():
            old.unlink()

    hap_count = 0
    json_count = 0
    for src in hap_files:
        test_dir = src.parent
        while test_dir != project_dir and test_dir.name != "test":
            test_dir = test_dir.parent

        hap_name = src.name.replace("-unsigned", "")
        dst_hap = output_dir / hap_name
        shutil.copy2(src, dst_hap)
        hap_count += 1

        if test_dir.name == "test":
            test_json = test_dir / "Test.json"
            if test_json.exists():
                json_name = hap_name.replace(".hap", ".json")
                dst_json = output_dir / json_name
                shutil.copy2(test_json, dst_json)
                json_count += 1

    return hap_count, json_count


def archive_failures(log_dir: Path, failed_projects: List[str]):
    """Copy failed build logs to log_dir/fail/."""
    if not failed_projects:
        return
    fail_dir = log_dir / "fail"
    if fail_dir.exists():
        shutil.rmtree(fail_dir)
    fail_dir.mkdir(parents=True, exist_ok=True)

    for name in failed_projects:
        log_file = log_dir / f"{name.replace('/', '_')}.log"
        if log_file.exists():
            shutil.copy2(log_file, fail_dir / log_file.name)



def cmd_build(args, console: Console, project_dir: Path) -> int:
    patterns = args.dir if args.dir else None
    projects = scan_projects(project_dir, patterns)

    if not projects:
        console.print(console.warn("No projects found."))
        return 0

    total = len(projects)
    console.print(f"Found {total} project(s)")
    console.print()

    log_dir = Path("build_logs")
    if log_dir.exists():
        shutil.rmtree(log_dir)
    log_dir.mkdir(parents=True, exist_ok=True)

    success_count = 0
    failed_count = 0
    failed_projects: List[str] = []

    for i, proj in enumerate(projects, 1):
        rel = proj.relative_to(project_dir).as_posix()
        log_file = log_dir / f"{rel.replace('/', '_')}.log"

        start = time.time()
        ok = run_build(proj, log_file, debug=args.debug)
        elapsed = time.time() - start

        if ok:
            success_count += 1
            mark = console.ok("✓")
        else:
            failed_count += 1
            failed_projects.append(rel)
            mark = console.err("✗")

        console.print(f"[{i}/{total}] {mark} {rel:<50} ({elapsed:.1f}s)")

    console.print()
    output_dir = Path(args.output_dir)
    hap_count, json_count = collect_haps(project_dir, output_dir)
    console.print(f"Collecting artifacts... {hap_count} haps + {json_count} jsons → {output_dir}/")

    archive_failures(log_dir, failed_projects)

    console.print()
    console.print("Summary")
    console.print(f"  Total:     {total}")
    console.print(f"  Success:   {console.ok(str(success_count))}")
    console.print(f"  Failed:    {console.err(str(failed_count))}")
    console.print(f"  Artifacts: {hap_count} haps, {json_count} jsons")

    if failed_projects:
        console.print()
        console.print(f"Failed logs copied to: {log_dir / 'fail'}")

    return 1 if failed_count > 0 else 0


def cmd_clean(args, console: Console, project_dir: Path) -> int:
    patterns = args.dir if args.dir else None
    projects = scan_projects(project_dir, patterns)

    if not projects:
        console.print(console.warn("No projects found."))
        return 0

    total = len(projects)
    console.print(f"Found {total} project(s)")
    console.print()

    success_count = 0
    failed_count = 0

    for i, proj in enumerate(projects, 1):
        rel = proj.relative_to(project_dir).as_posix()
        ok = run_clean(proj, debug=args.debug)
        if ok:
            success_count += 1
            mark = console.ok("✓")
        else:
            failed_count += 1
            mark = console.err("✗")
        console.print(f"[{i}/{total}] {mark} {rel}")

    console.print()
    console.print("Summary")
    console.print(f"  Total:   {total}")
    console.print(f"  Success: {console.ok(str(success_count))}")
    console.print(f"  Failed:  {console.err(str(failed_count))}")

    return 1 if failed_count > 0 else 0


def cmd_list(args, console: Console, project_dir: Path) -> int:
    patterns = args.dir if args.dir else None
    projects = scan_projects(project_dir, patterns)
    if not projects:
        console.print(console.warn("No projects found."))
        return 0

    console.print(f"Found {len(projects)} project(s):")
    console.print()
    for proj in projects:
        rel = proj.relative_to(project_dir).as_posix()
        console.print(f"  {rel}")
    return 0



def main() -> int:
    parser = argparse.ArgumentParser(
        prog="build.py",
        description="Cangjie XTS build script, 'build.py {build,clean,list} -h' for more infomation.",
    )
    parser.add_argument(
        "--no-color",
        action="store_true",
        help="Disable colored output",
    )
    parser.add_argument(
        "--debug",
        action="store_true",
        help="Print executed commands, return codes and output",
    )

    sub = parser.add_subparsers(dest="command", required=True)

    # build
    build_parser = sub.add_parser("build", help="Build test projects")
    build_parser.add_argument("--all", action="store_true", default=True, help="Build all projects (default)")
    build_parser.add_argument("--dir", nargs="+", help="Build specific directories (partial match)")
    build_parser.add_argument("--output-dir", default="testcases", help="HAP output directory (default: testcases)")

    # clean
    clean_parser = sub.add_parser("clean", help="Clean test projects")
    clean_parser.add_argument("--all", action="store_true", default=True, help="Clean all projects (default)")
    clean_parser.add_argument("--dir", nargs="+", help="Clean specific directories (partial match)")

    # list
    list_parser = sub.add_parser("list", help="List test projects")
    list_parser.add_argument("--all", action="store_true", default=True, help="List all projects (default)")
    list_parser.add_argument("--dir", nargs="+", help="List specific directories (partial match)")

    args = parser.parse_args()
    console = Console(use_color=not args.no_color)

    project_dir = Path.cwd().resolve()

    if args.command == "build":
        return cmd_build(args, console, project_dir)
    elif args.command == "clean":
        return cmd_clean(args, console, project_dir)
    elif args.command == "list":
        return cmd_list(args, console, project_dir)

    return 0


if __name__ == "__main__":
    sys.exit(main())
