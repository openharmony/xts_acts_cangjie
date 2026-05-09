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
import { testFunction00, testFunction01,
  testFunction02,
  testFunction03,
  testFunction04,
  testFunction05,
  testFunction06} from 'libohos_app_cangjie_entry.so';

function globalFunction(a: number): number {
  return a + 1;
}

declare function globalFunction01(a: number): number;

let globalLambda = (a: number) => {
  return a + 1;
}

class C {
  instanceMethod(a: number): number {
    return a + 2;
  }

  static staticMethod(a: number): number {
    return a + 3;
  }
}

export default function TestFunction() {
  describe('TestFunction', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0100
    * @tc.name      : test00
    * @tc.desc      : Calls a JS function and checks if result is 115.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
        testFunction00(globalFunction);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0200
    * @tc.name      : test01
    * @tc.desc      : Calls a JS function and checks if result is 115.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      try {
          testFunction01(globalFunction01);
      } catch (e) {
        expect(e.message.toString()).assertEqual('globalFunction01 is not defined');
      }
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0300
    * @tc.name      : test02
    * @tc.desc      : Calls a JS function and checks result is 115.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
        testFunction02(globalLambda);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0400
    * @tc.name      : test03
    * @tc.desc      : Calls a JS function and checks result is 115.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test03', 0, () => {
      let localLambda = (a: number) => {
        return a + 1;
      }
        testFunction03(localLambda);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0500
    * @tc.name      : test04
    * @tc.desc      : Expects result to be 116.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test04', 0, async () => {
      let c = new C();
      let m = c.instanceMethod;
        testFunction04(m);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0600
    * @tc.name      : test05
    * @tc.desc      : Expects result to be 117.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, async () => {
      let c = new C();
      let m = C.staticMethod;
        testFunction05(m);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestFunction_0700
    * @tc.name      : test06
    * @tc.desc      : Registers a JS function that uses the global function.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test06', 0, () => {
      let f =   testFunction06();
      expect(f(114.514)).assertEqual(115.514);
    })
  })
}