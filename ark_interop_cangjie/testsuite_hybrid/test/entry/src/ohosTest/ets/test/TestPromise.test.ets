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
import { testPromise00, testPromise01,
  testPromise02,
  testPromise03,
  testPromise04,
  testPromise05} from 'libohos_app_cangjie_entry.so';

export default function TestPromise() {
  describe('TestPromise', () => {
    beforeAll(() => {
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestPromise_0100
    * @tc.name      : test00
    * @tc.desc      : Tests a resolved promise with a then handler that checks the result.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test00', 0, () => {
      const result = 114514;
      // js创建promise，传给cj，由cj处理promise结果。
      // promise结果为resolve。
      let promise = new Promise<number>((resolve, reject) => {
        resolve(result);
      });
        testPromise00(promise);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestPromise_0200
    * @tc.name      : test01
    * @tc.desc      : Tests a rejected promise with an onRejected handler.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test01', 0, () => {
      const result = 114514;
      // js创建promise，传给cj，由cj处理promise结果
      // promise结果为reject
      let promise = new Promise<number>((resolve, reject) => {
        reject(result);
      });
        testPromise01(promise);
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestPromise_0300
    * @tc.name      : test02
    * @tc.desc      : Resolves a promise from a background thread with a string value.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test02', 0, async () => {
      // cj创建promise，传给js，由js处理promise结果
      // promise结果为resolve
      let result = await  testPromise02();
      expect(result).assertEqual('666');
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestPromise_0400
    * @tc.name      : test03
    * @tc.desc      : Rejects a promise from a background thread with undefined.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test03', 0, () => {
      // cj创建promise，传给js，由js处理promise结果
      // promise结果为reject
      // reject结果由js的then处理
        testPromise03()
        .then((result) => {
          expect().assertFail();
        }, (error: undefined) => {
          expect(error).assertEqual(undefined);
        })
        .catch((error: undefined) => {
          expect().assertFail();
        });
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestPromise_0500
    * @tc.name      : test04
    * @tc.desc      : Rejects a promise from a background thread with a string error.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test04', 0, async () => {
      // cj创建promise，传给js，由js处理promise结果
      // promise结果为reject
      // reject结果由js的catch处理
      try {
        let result = await  testPromise04();
      } catch (error) {
        expect(error).assertEqual('this is an error');
      }
    })
    /* 
    * @tc.number    : Sub_Cangjie_arkts_interop_TestPromise_0600
    * @tc.name      : test05
    * @tc.desc      : Tests a rejected promise with a catchError handler.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    it('test05', 0, async () => {
      try {
        let result = await  testPromise05();
      } catch (error) {
      }
    })
  })
}