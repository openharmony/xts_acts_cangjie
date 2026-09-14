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

"""Build one acts_cangjie Hvigor project and stage its test artifacts."""

import argparse
import json
import os
import shutil
import subprocess
from pathlib import Path


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--project-dir", required=True)
    parser.add_argument("--test-config", required=True)
    parser.add_argument("--output-dir", required=True)
    parser.add_argument("--build-mode", choices=("test", "debug", "release"), default="test")
    parser.add_argument("--output-prefix", default="project")
    parser.add_argument("--build-arkts", action="store_true",
                        help="also build the ArkTS ohosTest HAP for mixed projects")
    parser.add_argument("--stamp", required=True)
    parser.add_argument("--hvigorw", default="")
    return parser.parse_args()


def find_hvigor(explicit, project):
    candidates = []
    if explicit:
        candidates.append(Path(explicit))
    candidates.append(project / "hvigorw")
    env_hvigor = os.environ.get("HVIGORW")
    if env_hvigor:
        candidates.append(Path(env_hvigor))
    candidates.append(Path("prebuilts/tool/command-line-tools/hvigor/bin/hvigorw"))
    for candidate in candidates:
        if candidate.exists() and candidate.is_file():
            return str(candidate)
    return "hvigorw"


def locate_hap(project, hap_name):
    matches = []
    for base in (project / "build", project / "entry" / "build"):
        if not base.exists():
            continue
        matches.extend(path for path in base.rglob("*.hap")
                      if path.name == hap_name + ".hap")
    return sorted(set(matches), key=lambda path: path.stat().st_mtime, reverse=True)


def main():
    args = parse_args()
    project = Path(args.project_dir).resolve()
    output = Path(args.output_dir).resolve()
    test_config = Path(args.test_config).resolve()
    if not project.is_dir() or not test_config.is_file():
        raise RuntimeError(f"invalid Cangjie project or Test.json: {project}")

    config = json.loads(test_config.read_text(encoding="utf-8"))
    module_name = config.get("driver", {}).get("module-name", "entry")
    if not module_name:
        raise RuntimeError(f"driver.module-name is missing in {test_config}")
    hap_names = sorted({name[:-4] if name.endswith(".hap") else name
                        for kit in config.get("kits", [])
                        for name in kit.get("test-file-name", [])})
    if not hap_names:
        raise RuntimeError(f"no HAP names found in {test_config}")

    # Cangjie XTS HAPs must be built as an Ohos test module.  Keep this
    # invocation aligned with the standalone Hvigor command used by the
    # Cangjie test projects (including analysis output for diagnostics).
    command = [
        find_hvigor(args.hvigorw, project),
        "--mode", "module",
        "-p", f"module={module_name}@default",
        "-p", "isOhosTest=true",
        "-p", "product=default",
        "-p", f"buildMode={args.build_mode}",
        "-p", "isCangjie=true",
        "assembleHap",
        "--analyze=normal",
    ]
    subprocess.run(command, cwd=project, check=True)

    if args.build_arkts:
        arkts_command = [
            find_hvigor(args.hvigorw, project),
            "--mode", "module",
            "-p", "module=entry@ohosTest",
            "-p", "isOhosTest=true",
            "-p", "product=default",
            "-p", f"buildMode={args.build_mode}",
            "assembleHap",
            "--analyze=normal",
        ]
        subprocess.run(arkts_command, cwd=project, check=True)

    output.mkdir(parents=True, exist_ok=True)
    for hap_name in hap_names:
        matches = locate_hap(project, hap_name)
        if not matches:
            raise RuntimeError(f"Hvigor did not produce {hap_name}.hap in {project}")
        shutil.copy2(matches[0], output / f"{hap_name}.hap")

    # Keep one config per project while allowing projects with multiple HAPs.
    shutil.copy2(test_config, output / f"{args.output_prefix}.Test.json")
    stamp = Path(args.stamp)
    stamp.parent.mkdir(parents=True, exist_ok=True)
    stamp.write_text("acts_cangjie\n", encoding="utf-8")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except subprocess.CalledProcessError as error:
        raise SystemExit(error.returncode)
    except Exception as error:
        print(f"acts_cangjie: {error}")
        raise SystemExit(1)
