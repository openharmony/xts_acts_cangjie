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
import { testRegisterModule00,
  testRegisterModule01,
  testRegisterModule02,
  testRegisterModule03,
  testRegisterModule04,
  testRegisterModule05,
  testRegisterModule06,
  testRegisterModule07,
  testRegisterModule08,
  testRegisterModule09,
  testRegisterModule10,
  testRegisterModule11} from 'libohos_app_cangjie_entry.so';

export default function TestRegisterModule() {
  describe('TestRegisterModule', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0100
    * @tc.name      : test00
    * @tc.desc      : Verifies that testRegisterModule00 is undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      expect(typeof testRegisterModule00).assertEqual('undefined');
      expect(testRegisterModule00).assertEqual(undefined);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0200
    * @tc.name      : test01
    * @tc.desc      : Verifies that testRegisterModule01 is null.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      expect(typeof testRegisterModule01).assertEqual('object');
      expect(  testRegisterModule01).assertEqual(null);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0300
    * @tc.name      : test02
    * @tc.desc      : Verifies that testRegisterModule02 is a boolean with value true.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
      expect(typeof testRegisterModule02).assertEqual('boolean');
      expect(  testRegisterModule02).assertEqual(true);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0400
    * @tc.name      : test03
    * @tc.desc      :  Verifies that testRegisterModule03 is a number with value 114.514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test03', 0, () => {
      expect(typeof testRegisterModule03).assertEqual('number');
      expect(testRegisterModule03).assertEqual(114.514);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0500
    * @tc.name      : test04
    * @tc.desc      : Verifies that testRegisterModule04 is a string with value "hello world".
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test04', 0, () => {
      expect(typeof testRegisterModule04).assertEqual('string');
      expect(testRegisterModule04).assertEqual('hello world');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0600
    * @tc.name      : test05
    * @tc.desc      : Verifies that testRegisterModule05 is a function that adds two numbers.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, () => {
      expect(typeof testRegisterModule05).assertEqual('function');
      expect(testRegisterModule05(1, 2)).assertEqual(3);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0700
    * @tc.name      : test06
    * @tc.desc      : Verifies that testRegisterModule06 is a class with a name property and an empty JSON representation.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test06', 0, () => {
      expect(typeof testRegisterModule06).assertEqual('function');
      const person = new testRegisterModule06('tom', 23);
      expect(person.name).assertEqual('tom');
      expect(JSON.stringify(person)).assertEqual('{}');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0800
    * @tc.name      : test07
    * @tc.desc      : Verifies that testRegisterModule07 is a symbol.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test07', 0, () => {
      expect(typeof testRegisterModule07).assertEqual('symbol');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_0900
    * @tc.name      : test08
    * @tc.desc      : Verifies that testRegisterModule08 is an array containing [1, true].
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test08', 0, () => {
      expect(typeof testRegisterModule08).assertEqual('object');
      const array = testRegisterModule08;
      expect(array[0]).assertEqual(1);
      expect(array[1]).assertEqual(true);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_1000
    * @tc.name      : test09
    * @tc.desc      : Verifies that testRegisterModule09 is an object with a name property set to "tom".
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test09', 0, () => {
      expect(typeof testRegisterModule09).assertEqual('object');
      expect(JSON.stringify( testRegisterModule09)).assertEqual('{"name":"tom"}');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_1100
    * @tc.name      : test10
    * @tc.desc      : Verifies that testRegisterModule10 is a bigint with value 12345678901234567890n.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test10', 0, () => {
      expect(typeof testRegisterModule10).assertEqual('bigint');
      expect(testRegisterModule10).assertEqual(12345678901234567890n);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestRegisterModule_1200
    * @tc.name      : test11
    * @tc.desc      : Verifies that testRegisterModule11 is an ArrayBuffer with size 114514.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test11', 0, () => {
      expect(typeof testRegisterModule11).assertEqual('object');
      expect( testRegisterModule11.byteLength).assertEqual(114514);
    })
  })
}