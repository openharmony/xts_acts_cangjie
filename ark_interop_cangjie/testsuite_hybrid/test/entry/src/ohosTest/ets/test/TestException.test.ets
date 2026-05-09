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
import { testException00, testException01 } from 'libohos_app_cangjie_entry.so';


function functionThatThrows() {
  throw new Error("message of this error");
}

export default function TestException() {
  describe('TestException', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestException_0100
    * @tc.name      : test00
    * @tc.desc      : Throws a JavaScript exception with a specific message.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      try {
          testException00();
        expect().assertFail();
      } catch (e) {
        hilog.error(0, 'CangjieTest', `|${e.message.toString()}|`);
        expect(e.message.toString().startsWith('Exception: message of this exception')).assertTrue();
      }
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestException_0200
    * @tc.name      : test01
    * @tc.desc      : Calls a function passed as the first argument, handling any exceptions that may occur.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      try {
          testException01(functionThatThrows);
      } catch (e) {
        hilog.error(0, 'CangjieTest', `|${e.message.toString()}|`);
        expect(e.message.toString()).assertContain('message of this error');
      }
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestException_0300
    * @tc.name      : test02
    * @tc.desc      : An empty test case, currently without any implementation or assertions.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {

    })
  })
}