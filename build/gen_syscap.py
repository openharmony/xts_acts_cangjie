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

"""Generate Cangjie syscap metadata from module.json5 and XTS ACTS data."""

import argparse
import json
import re
from pathlib import Path


def device_types(module):
    match = re.search(r'"deviceTypes"\s*:\s*\[(.*?)\]',
                      module.read_text(encoding="utf-8"), re.S)
    return re.findall(r'"([^"\n]+)"', match.group(1)) if match else []


def capabilities(config):
    try:
        data = json.loads(config.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return []
    values = []
    for custom in data.get("devices", {}).get("custom", []):
        values.extend(custom.get("xts", []))
    return values


def build_index(acts):
    index = {}
    subsystem = {}
    for config in acts.rglob("syscap.json"):
        rel = config.relative_to(acts)
        if len(rel.parts) < 2:
            continue
        caps = capabilities(config)
        subsystem.setdefault(rel.parts[0], set()).update(caps)
        parent_names = {part.lower() for part in rel.parts[:-1]}
        for name in parent_names:
            index.setdefault((rel.parts[0], name), set()).update(caps)
    return index, subsystem


def render(types, caps):
    return json.dumps({"devices": {
        "general": types,
        "custom": [{"xts": sorted(caps)}],
    }}, ensure_ascii=False, indent=4) + "\n"


def generate(root, acts):
    index, subsystem = build_index(acts)
    outputs = []
    for module in sorted(root.rglob("entry/src/main/module.json5")):
        project = module.parents[3]
        rel = project.relative_to(root)
        sub = rel.parts[0]
        name = rel.parts[-1].lower()
        caps = set(index.get((sub, name), ()))
        if not caps:
            caps.update(subsystem.get(sub, ()))
        targets = [module.parent / "syscap.json"]
        if (project / "entry/src/ohosTest/module.json5").is_file():
            targets.append(project / "entry/src/ohosTest/syscap.json")
        for target in targets:
            outputs.append((target, render(device_types(module), caps)))
    return outputs


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--acts-root", default=None)
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    root = Path(args.source_root).resolve()
    acts = Path(args.acts_root).resolve() if args.acts_root else root.parent / "acts"
    for path, content in generate(root, acts):
        if args.check:
            if not path.is_file() or path.read_text(encoding="utf-8") != content:
                raise SystemExit(f"{path} is stale; regenerate with gen_syscap.py")
        else:
            path.write_text(content, encoding="utf-8")


if __name__ == "__main__":
    main()
