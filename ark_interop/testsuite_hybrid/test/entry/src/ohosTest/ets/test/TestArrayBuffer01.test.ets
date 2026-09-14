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
import { testArrayBuffer00, testArrayBuffer01,
  testArrayBuffer02,
  testArrayBuffer03,
  testArrayBuffer04,
  testArrayBuffer05,
  testArrayBuffer06} from 'libohos_app_cangjie_entry.so';

export default function TestArrayBuffer01() {
  describe('TestArrayBuffer01', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0100
    * @tc.name      : testArrayBuffer00
    * @tc.desc      : Verifies that a passed ArrayBuffer has a byte length of 10 and contains all zeros.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('testArrayBuffer00', 0, () => {
      let item = new ArrayBuffer(10);
      try {
        testArrayBuffer00(item);
      } catch (e) {
        hilog.error(0, 'CangjieTest', e.toString());
        expect().assertFail();
      }
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0200
    * @tc.name      : test01
    * @tc.desc      : Verifies that a passed ArrayBuffer has a byte length of 10 and matches a specific byte pattern.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      let arrayBuffer = new ArrayBuffer(10);
      let view = new Int8Array(arrayBuffer);
      view[0] = 1;
      view[1] = 1;
      view[2] = 4;
      view[3] = 5;
      view[4] = 1;
      view[5] = 4;
      expect(view.toString()).assertEqual('1,1,4,5,1,4,0,0,0,0');
      testArrayBuffer01(arrayBuffer);
      let view1 = new Int16Array(arrayBuffer);
      view1[3] = 2333;
      expect(view.toString()).assertEqual('1,1,4,5,1,4,29,9,0,0');
      expect(view1.toString()).assertEqual('257,1284,1025,2333,0');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0300
    * @tc.name      : test02
    * @tc.desc      : Creates and returns a new ArrayBuffer with 16 bytes.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, () => {
      let arrayBuffer = testArrayBuffer02();
      expect(arrayBuffer.byteLength).assertEqual(16);
      let int32View = new Int32Array(arrayBuffer);
      int32View[1] = 42;
      expect(int32View.toString()).assertEqual('0,42,0,0');
      const sliced = new Int32Array(arrayBuffer.slice(4, 12));
      expect(sliced.toString()).assertEqual('42,0');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0400
    * @tc.name      : test03
    * @tc.desc      : Creates an ArrayBuffer from a UInt8 array and returns it.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test03', 0, () => {
      let arrayBuffer = testArrayBuffer03();
      expect(arrayBuffer.byteLength).assertEqual(16);
      let int32View = new Int32Array(arrayBuffer);
      int32View[1] = 42;
      expect(int32View.toString()).assertEqual('0,42,0,0');
      const sliced = new Int32Array(arrayBuffer.slice(4, 12));
      expect(sliced.toString()).assertEqual('42,0');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0500
    * @tc.name      : test04
    * @tc.desc      : Creates an ArrayBuffer with 16 zero-initialized bytes using raw memory allocation.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test04', 0, () => {
      let arrayBuffer = testArrayBuffer04();
      expect(arrayBuffer.byteLength).assertEqual(16);
      let int32View = new Int32Array(arrayBuffer);
      int32View[1] = 42;
      expect(int32View.toString()).assertEqual('0,42,0,0');
      const sliced = new Int32Array(arrayBuffer.slice(4, 12));
      expect(sliced.toString()).assertEqual('42,0');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0600
    * @tc.name      : test05
    * @tc.desc      : Verifies that a passed ArrayBuffer has a byte length of 30 and matches a specific byte pattern.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, () => {
      let arrayBuffer = new ArrayBuffer(32);
      let dataView = new DataView(arrayBuffer);
      dataView.setFloat64(0, 114.514);
      dataView.setInt8(arrayBuffer.byteLength - 2, 11);
      let int8View = new Int8Array(arrayBuffer);
      int8View[int8View.byteLength - 3] = 12;
      let float64View = new Float64Array(arrayBuffer);
      float64View[1] = 666.2333;
      testArrayBuffer05(arrayBuffer.slice(1, arrayBuffer.byteLength - 1));
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestArrayBuffer01_0700
    * @tc.name      : test06
    * @tc.desc      : Verifies that a passed ArrayBuffer has a byte length of 32 and matches a specific byte pattern.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test06', 0, () => {
      let arrayBuffer = new ArrayBuffer(32);
      let dataView = new DataView(arrayBuffer);
      dataView.setFloat64(0, 114.514);
      dataView.setInt8(arrayBuffer.byteLength - 2, 11);
      let int8View = new Int8Array(arrayBuffer);
      int8View[int8View.byteLength - 3] = 12;
      let float64View = new Float64Array(arrayBuffer);
      float64View[1] = 666.2333;
      testArrayBuffer06(arrayBuffer);
    })
  })
}