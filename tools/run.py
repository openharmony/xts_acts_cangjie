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

import os
import shutil
import subprocess
import sys
from pathlib import Path


class Colors:
    RED = "\033[91m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    BLUE = "\033[94m"
    RESET = "\033[0m"

    @classmethod
    def enabled(cls) -> bool:
        if os.name == "nt":
            try:
                import ctypes
                kernel32 = ctypes.windll.kernel32
                handle = kernel32.GetStdHandle(-11)
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


def _shell() -> bool:
    """Return True for shell=True on Windows."""
    return os.name == "nt"


def _ask_yes_no(console: Console, prompt: str) -> bool:
    """Ask user a yes/no question and return True for yes."""
    while True:
        try:
            answer = input(f"{prompt} [y/N]: ").strip().lower()
        except (EOFError, KeyboardInterrupt):
            console.print()
            return False
        if answer in ("y", "yes"):
            return True
        if answer in ("n", "no", ""):
            return False


def pip_install(package_path: Path, console: Console, break_system: bool = False) -> bool:
    """Install a local package via python -m pip install."""
    cmd = [sys.executable, "-m", "pip", "install", str(package_path)]
    if break_system:
        cmd.append("--break-system-packages")
    console.print(f"Installing {package_path.name} ...")
    result = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=_shell())
    if result.returncode != 0:
        output = result.stdout.decode("utf-8", errors="replace") if result.stdout else ""
        if "externally-managed-environment" in output:
            console.print(console.warn("Detected externally-managed Python environment (PEP 668)."))
            console.print()
            console.print("You have the following options:")
            console.print("  1. Use a virtual environment (recommended)")
            console.print("     python3 -m venv venv && source venv/bin/activate")
            console.print("     Then re-run this script.")
            console.print()
            console.print("  2. Pass --break-system-packages to force installation")
            console.print("     This may break your system Python packages.")
            console.print()
            if _ask_yes_no(console, "Do you want to add --break-system-packages and retry?"):
                return pip_install(package_path, console, break_system=True)
            console.print(console.warn("Installation aborted by user."))
            return False
        console.print(console.err(f"Failed to install {package_path.name}"))
        console.print(output)
        return False
    console.print(console.ok(f"Successfully installed {package_path.name}"))
    return True


def run_xdevice(console: Console) -> int:
    """Launch xdevice via python -m xdevice."""
    cmd = [sys.executable, "-m", "xdevice"]
    console.print()
    console.print(console.info("Starting xdevice ..."))
    console.print()
    result = subprocess.run(cmd, shell=_shell())
    return result.returncode


def main() -> int:
    console = Console()

    script_dir = Path(__file__).parent.resolve()
    cwd = Path.cwd().resolve()

    testcases_dir = cwd / "testcases"
    if not testcases_dir.is_dir():
        console.print(console.err("testcases/ directory not found in the current working directory."))
        console.print(console.warn("Please run build.py first to compile the test HAPs."))
        console.print(console.info("Example: python ./tools/build.py build --all"))
        return 1

    config_src = script_dir / "config"
    config_dst = cwd / "config"
    if not config_dst.is_dir():
        if config_src.is_dir():
            try:
                shutil.copytree(config_src, config_dst, dirs_exist_ok=True)
                console.print(console.info(f"Copied config/ to {config_dst}"))
            except Exception as e:
                console.print(console.warn(f"Failed to copy config/ directory: {e}"))
        else:
            console.print(console.warn(f"Config source directory not found: {config_src}"))

    xdevice_pkg = script_dir / "xdevice-0.0.0.tar.gz"
    xdevice_ohos_pkg = script_dir / "xdevice_ohos-0.0.0.tar.gz"

    if not xdevice_pkg.exists():
        console.print(console.err(f"Package not found: {xdevice_pkg}"))
        return 1

    if not xdevice_ohos_pkg.exists():
        console.print(console.err(f"Package not found: {xdevice_ohos_pkg}"))
        return 1

    if not pip_install(xdevice_pkg, console):
        return 1

    if not pip_install(xdevice_ohos_pkg, console):
        return 1

    return run_xdevice(console)


if __name__ == "__main__":
    sys.exit(main())
