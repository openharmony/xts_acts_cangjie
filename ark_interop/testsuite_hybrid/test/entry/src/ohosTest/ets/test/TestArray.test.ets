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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { testArray01, testArray02 } from 'libohos_app_cangjie_entry.so';

export default function TestArray() {
  describe('TestArray', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArray_0100
    * @tc.name      : test01
    * @tc.desc      : This function tests the handling of an array passed to a JS function, verifying each element's type and value.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      let array = [114.514, "my love", undefined, null, true];
      testArray01(array);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArray_0200
    * @tc.name      : test02
    * @tc.desc      : Create an empty array in JS and pass it to CJ.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
      let array = testArray02();
      expect(array[0]).assertEqual(114.514);
      expect(array[1]).assertEqual(false);
    })
  })
}