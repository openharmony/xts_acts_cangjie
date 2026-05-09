/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

import LoadABC01 from './LoadABC01.test';
import TestAbsolutePath from './TestAbsolutePath.test';
import TestArray from './TestArray.test'
import TestArrayBuffer01 from './TestArrayBuffer01.test';
import TestBigInt01 from './TestBigInt01.test';
import TestBigIntPrecision from './TestBigIntPrecision.test';
import TestException from './TestException.test';
import TestExternal from './TestExternal.test';
import TestFunction from './TestFunction.test';
import TestJSArrayRangeMismatchException from './TestJSArrayRangeMismatchException.test';
import TestJSThreadMismatchException from './TestJSThreadMismatchException.test';
import TestPostJSTask from './TestPostJSTask.test';
import TestPromise from './TestPromise.test';
import TestPromise2 from './TestPromise2.test';
import TestRegisterAfterStaticInit from './TestRegisterAfterStaticInit.test';
import TestRegisterFunc from './TestRegisterFunc.test';
import TestRegisterModule from './TestRegisterModule.test';
import TestRegisterName from './TestRegisterName.test';
import TestRegisterOverride from './TestRegisterOverride.test';
import TestRelativePath from './TestRelativePath.test';
import TestString00 from './TestString00.test';
import TestClass from './TestClass.test';
import TestEnum from './TestEnum.test';

export default function testsuite() {
  TestArray();
  TestArrayBuffer01()
  TestBigInt01()
  TestBigIntPrecision()
  TestException();
  TestJSArrayRangeMismatchException()
  TestJSThreadMismatchException()
  TestExternal()
  TestFunction()
  TestRegisterAfterStaticInit()
  TestRegisterFunc()
  TestRegisterModule()
  TestRegisterOverride()
  TestPromise()
  TestAbsolutePath()
  TestRelativePath()
  TestString00()
  LoadABC01()
  TestPostJSTask()
  TestPromise2()
  TestRegisterName()
  TestClass()
  TestEnum()
}
