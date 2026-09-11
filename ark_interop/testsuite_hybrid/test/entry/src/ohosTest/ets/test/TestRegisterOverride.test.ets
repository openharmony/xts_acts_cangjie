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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, ExpectExtend } from '@ohos/hypium';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { JSON } from '@kit.ArkTS';
import { testRegisterOverride00,
  testRegisterOverride01 } from 'libohos_app_cangjie_entry.so';

export default function TestRegisterOverride() {
  describe('TestRegisterOverride', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterOverride_0100
    * @tc.name      : test00
    * @tc.desc      : Checks that testRegisterOverride00 returns 3, showing function override.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      expect(testRegisterOverride00()).assertEqual(3);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterOverride_0200
    * @tc.name      : test01
    * @tc.desc      : Checks that testRegisterOverride01 is 2, showing module property override.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      expect(testRegisterOverride01).assertEqual(2);
    })
  })
}