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
import * as lib from "libentry.so"

export default function promiseTest() {
  describe('TestString00', () => {
    it('test00', 0, () => {
      const result = 114514;
      // js创建promise，传给cj，由cj处理promise结果。
      // promise结果为resolve。
      let promise = new Promise<number>((resolve, reject) => {
        resolve(result);
      });
      lib.testPromise00(promise);
    })
    it('test01', 0, () => {
      const result = 114514;
      // js创建promise，传给cj，由cj处理promise结果
      // promise结果为reject
      let promise = new Promise<number>((resolve, reject) => {
        reject(result);
      });
      lib.testPromise01(promise);
    })
    it('test02', 0, async () => {
      // cj创建promise，传给js，由js处理promise结果
      // promise结果为resolve
      let result = await lib.testPromise02();
      expect(result).assertEqual('666');
    })
    it('test03', 0, () => {
      // cj创建promise，传给js，由js处理promise结果
      // promise结果为reject
      // reject结果由js的then处理
      lib.testPromise03()
        .then((result) => {
          expect().assertFail();
        }, (error: undefined) => {
          expect(error).assertEqual(undefined);
        })
        .catch((error: undefined) => {
          expect().assertFail();
        });
    })
    it('test04', 0, async () => {
      // cj创建promise，传给js，由js处理promise结果
      // promise结果为reject
      // reject结果由js的catch处理
      try {
        let result = await lib.testPromise04();
      } catch (error) {
        expect(error).assertEqual('this is an error');
      }
    })
    it('test05', 0, async () => {
      try {
        let result = await lib.testPromise05(Promise.reject("xxx"));
      } catch (error) {
      }
    })
    it('test06', 0, () => {
      let s = '123%Efdasdf'
      lib.testString00(s);
    })
  })
}