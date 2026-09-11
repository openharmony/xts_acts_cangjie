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

package entry.pure

let _ = testsuite()

func testsuite(): Unit {
    registerTestSuite("TestArrayBuffer", {=> TestArrayBuffer()})
    registerTestSuite("TestJSClass", {=> TestJSClass()})
    registerTestSuite("TestExternal", {=> TestExternal()})
    registerTestSuite("TestIDLType", {=> TestIDLType()})
    registerTestSuite("TestJSContext", {=> TestJSContext()})
    registerTestSuite("TestJSValue", {=> TestJSValue()})
    registerTestSuite("TestObject", {=> TestObject()})
    registerTestSuite("TestString", {=> TestString()})
    registerTestSuite("TestSymbol", {=> TestSymbol()})
    registerTestSuite("TestUtf16String", {=> TestUtf16String()})
}
