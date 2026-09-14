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

"""Generate or verify the GN project manifest for acts_cangjie."""

import argparse
import json
import re
from pathlib import Path


def discover(root):
    projects = []
    for config in sorted(root.rglob("Test.json")):
        try:
            data = json.loads(config.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        names = [name for kit in data.get("kits", [])
                 for name in (kit.get("test-file-name", []) or [])]
        if not names:
            continue
        if config.parent.name == "test":
            project = config.parent
            logical = config.parent.parent.relative_to(root)
            test_config = "Test.json"
        elif (config.parent / "test").is_dir():
            project = config.parent / "test"
            logical = config.parent.relative_to(root)
            test_config = "../Test.json"
        else:
            continue
        target = "acts_cangjie_" + re.sub(r"[^A-Za-z0-9_]", "_", str(logical).replace("/", "_"))
        hap_names = sorted({name[:-4] if name.endswith(".hap") else name for name in names})
        build_arkts = ((project / "entry/src/main/ets").is_dir() or
                       (project / "entry/src/ohosTest/ets").is_dir())
        projects.append((target, project.relative_to(root), test_config, hap_names,
                         build_arkts, str(logical).split("/", 1)[0]))
    return projects


def render(projects):
    lines = ["# Generated from Cangjie Test.json files. Do not edit by hand.",
             "acts_cangjie_projects = ["]
    for target, project, test_config, hap_names, build_arkts, _subsystem in projects:
        lines.extend(["  {", f'    target_name = "{target}"',
                      f'    project_dir = "{project}"',
                      f'    test_config = "{test_config}"',
                      f'    build_arkts = {str(build_arkts).lower()}',
                      "    hap_names = ["])
        lines.extend(f'      "{name}",' for name in hap_names)
        lines.extend(["    ]", "  },"])
    lines.extend(["]", "", "acts_cangjie_subsystems = ["])
    by_subsystem = {}
    for target, project, _config, _haps, _arkts, subsystem in projects:
        by_subsystem.setdefault(subsystem, []).append((project, target))
    for subsystem in sorted(by_subsystem):
        lines.extend(["  {", f'    name = "{subsystem}"', "    deps = ["])
        lines.extend(
            f'      "//test/xts/acts_cangjie/{project}:{target}",'
            for project, target in by_subsystem[subsystem])
        lines.extend(["    ]", "  },"])
    lines.extend(["]", ""])
    return "\n".join(lines)


def render_project_build(project, test_config, hap_names, build_arkts):
    lines = [
        '''# Copyright (c) 2026 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

''',
        'import("//test/xts/acts_cangjie/acts_cangjie.gni")',
        "",
        f'acts_cangjie_hvigor_hap("{project[0]}") {{',
        f'  project_dir = "{project[1]}"',
        f'  test_config = "{test_config}"',
        f"  build_arkts = {str(build_arkts).lower()}",
        "  hap_names = [",
    ]
    lines.extend(f'    "{name}",' for name in hap_names)
    lines.extend(["  ]", "}", ""])
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--output", default=None)
    parser.add_argument("--no-project-build-files", action="store_true")
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    root = Path(args.source_root).resolve()
    output = Path(args.output) if args.output else root / "acts_cangjie_projects.gni"
    projects = discover(root)
    expected = render(projects)
    project_builds = {}
    for target, project, test_config, hap_names, build_arkts, _subsystem in projects:
        project_builds[root / project / "BUILD.gn"] = render_project_build(
            (target, project), test_config, hap_names, build_arkts)
    if args.check:
        actual = output.read_text(encoding="utf-8") if output.exists() else ""
        if actual != expected:
            raise SystemExit(f"{output} is stale; regenerate with gen_build_files.py")
        if not args.no_project_build_files:
            for path, content in project_builds.items():
                if not path.is_file() or path.read_text(encoding="utf-8") != content:
                    raise SystemExit(f"{path} is stale; regenerate with gen_build_files.py")
    else:
        output.write_text(expected, encoding="utf-8")
        if not args.no_project_build_files:
            for path, content in project_builds.items():
                path.write_text(content, encoding="utf-8")


if __name__ == "__main__":
    main()
