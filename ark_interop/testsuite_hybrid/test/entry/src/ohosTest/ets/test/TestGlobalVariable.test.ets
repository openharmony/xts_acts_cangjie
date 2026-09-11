/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { globalLetValue, globalVarValue, globalConstValue } from "libohos_app_cangjie_entry.so"

export default function TestGlobalVariable() {
  describe('TestGlobalVariable', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })

    it('globalLetVariableExportsValue', 0, () => {
      expect(globalLetValue).assertEqual(100);
    })
    it('globalVarVariableExportsValue', 0, () => {
      expect(globalVarValue).assertEqual(200);
    })
    it('globalConstVariableExportsValue', 0, () => {
      expect(globalConstValue).assertEqual(300);
    })
  })
}
