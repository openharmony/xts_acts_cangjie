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
import { testRegisterAfterStaticInit00 } from 'libohos_app_cangjie_entry.so';

interface Lib {
  testRegisterAfterStaticInit00(): void;
  testRegisterAfterStaticInit00_00(): void;
}

export default function TestRegisterAfterStaticInit() {
  describe('TestRegisterAfterStaticInit', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    let lib = ["testRegisterAfterStaticInit00_00","testRegisterAfterStaticInit00_00"];
    /*
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterAfterStaticInit_0100
    * @tc.name      : test00
    * @tc.desc      : Registers a JavaScript function named "testRegisterAfterStaticInit00_00" that returns the number 1.0 when called.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      let i = Object.keys(lib).indexOf('testRegisterAfterStaticInit00_00');
      expect(i).assertEqual(-1);
      testRegisterAfterStaticInit00();
      i = Object.keys(lib).indexOf('testRegisterAfterStaticInit00_00');
      expect(i).assertEqual(-1);
    })
  })
}