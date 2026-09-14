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
import { JSON } from '@kit.ArkTS';

interface Lib {
  testRegisterModule00: undefined;
  testRegisterModule01: null;
  testRegisterModule02: boolean;
  testRegisterModule03: number;
  testRegisterModule04: string;
  testRegisterModule05: (a: number, b: number) => number;
  testRegisterModule06: new (name: string, age: number) => IPerson;
  testRegisterModule07: Symbol;
  testRegisterModule08: Array<number | boolean>
  testRegisterModule09: object;
  testRegisterModule10: bigint;
  testRegisterModule11: ArrayBuffer;
}

interface IPerson {
  name: string;
}