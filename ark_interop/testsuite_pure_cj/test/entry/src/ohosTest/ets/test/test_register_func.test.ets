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
import { hilog } from '@kit.PerformanceAnalysisKit';
import { JSON } from '@kit.ArkTS';
import * as lib from "libentry.so"

export default function TestRegisterFunc() {
  describe('TestRegisterFunc', () => {
    it('test00', 0, () => {
      expect(lib.testRegisterFunc00()).assertEqual('testRegisterFunc00');
    })
    it('test01', 0, () => {
      expect(lib.testRegisterFunc01()).assertEqual('testRegisterFunc01');
    })
  })
}