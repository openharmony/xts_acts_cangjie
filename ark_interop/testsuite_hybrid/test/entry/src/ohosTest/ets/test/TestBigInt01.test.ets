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
import { testBigInt00, testBigInt01, testBigInt02,
  testBigInt03,
  testBigInt04,
  testBigInt05,
  testBigInt06,
  testBigInt07,
  testBigInt08,
  testBigInt09} from 'libohos_app_cangjie_entry.so';


export default function TestBigInt01() {
  describe('TestBigInt01', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0100
    * @tc.name      : test00
    * @tc.desc      : Checks that the first argument is not a BigInt.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      const bigInt = 123n;
        testBigInt00(bigInt);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0200
    * @tc.name      : test01
    * @tc.desc      : Returns a JS BigInt value of 0.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      const bigInt =   testBigInt01();
      expect(typeof bigInt).assertEqual('bigint');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_<TestBigInt01_0300
    * @tc.name      : test02
    * @tc.desc      : Checks that the first argument is not a BigInt.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
      const bigInt = BigInt('123');
        testBigInt02(bigInt);
    })
    // 一般使用toInt64时，不丢失精度转换为Int64
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0400
    * @tc.name      : test03
    * @tc.desc      : Converts the first argument to a BigInt and does no further checks (commented out).
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test03', 0, () => {
      const bigInt = 114514n;
        testBigInt03(bigInt);
    })
    // 一般使用toBigInt
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0500
    * @tc.name      : test04
    * @tc.desc      : Converts the first argument to a BigInt and verifies its value, sign, and bit length.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test04', 0, () => {
      const bigInt = 3n;
        testBigInt04(bigInt);
    })
    // 一般使用toInt64时，丢失精度转换为Int64
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0600
    * @tc.name      : test05
    * @tc.desc      : Converts the first argument to a BigInt and does no further checks (commented out).
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, () => {
      const int64Max = 9_223_372_036_854_775_807n;
      const bigInt = int64Max + 3n;
        testBigInt05(bigInt);
    })
    // cj侧构造的bigint在js侧可以与另一个bigint正常进行数学运算
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0700
    * @tc.name      : test06
    * @tc.desc      : Returns a JS BigInt value of 3.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test06', 0, () => {
      const bigInt =   testBigInt06();
      const result = bigInt + 1n;
      expect(result).assertEqual(4n);
    })
    // BigInt.prototype.toString()
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0800
    * @tc.name      : test07
    * @tc.desc      : Returns a JS BigInt value of 3.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test07', 0, () => {
      const bigInt =   testBigInt07();
      expect(bigInt.toString()).assertEqual('3');
    })
    // BigInt.prototype.valueOf()
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_0900
    * @tc.name      : test08
    * @tc.desc      : Returns a JS BigInt value of 3.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test08', 0, () => {
      const bigInt =   testBigInt08();
      expect(bigInt.valueOf()).assertEqual(bigInt);
      expect(bigInt.valueOf()).assertEqual(3n);
    })
    // BigInt.prototype.toLocaleString()
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestBigInt01_1000
    * @tc.name      : test09
    * @tc.desc      : Returns a JS BigInt value of 3.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test09', 0, () => {
      const bigInt =   testBigInt09();
      expect(bigInt.toLocaleString()).assertEqual('3');
    })
  })
}