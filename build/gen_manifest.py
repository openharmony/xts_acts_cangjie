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

"""Generate the XTS module index after all Cangjie HAPs are staged."""

import argparse
import json
from pathlib import Path


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--source-root", required=True)
    parser.add_argument("--output-dir", required=True)
    args = parser.parse_args()
    source = Path(args.source_root)
    output = Path(args.output_dir)
    entries = []
    for config in sorted(source.rglob("Test.json")):
        try:
            data = json.loads(config.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        names = []
        for kit in data.get("kits", []):
            names.extend(kit.get("test-file-name", []))
        if config.parent.name == "test":
            project = config.parent.parent.relative_to(source)
        elif (config.parent / "test").is_dir():
            project = config.parent.relative_to(source)
        else:
            continue
        entries.append({
            "project": str(project),
            "test_config": config.name,
            "hapes": sorted(set(names)),
            "bundle_name": data.get("driver", {}).get("bundle-name", ""),
        })
    output.mkdir(parents=True, exist_ok=True)
    (output / "build_manifest.json").write_text(
        json.dumps(entries, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    (output / "module_info.list").write_text(
        "\n".join(f"{item['project']} {item['bundle_name']}" for item in entries) + "\n",
        encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
