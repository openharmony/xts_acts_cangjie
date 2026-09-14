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

package ohos_app_cangjie_entry_test

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog
import ohos.ark_interop.*

@Test
class TestJSType {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSType_0100
     * @tc.name      : testStaticFields
     * @tc.desc      : 测试 JSType 静态字段 UNDEFINED/NULL/NUMBER/BOOLEAN/BIGINT/STRING/SYMBOL/OBJECT/FUNCTION/EXTERNAL 互不相等
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testStaticFields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testStaticFields begins.")
        let undefined = JSType.UNDEFINED
        let null = JSType.NULL
        let number = JSType.NUMBER
        let boolean = JSType.BOOLEAN
        let bigint = JSType.BIGINT
        let string = JSType.STRING
        let symbol = JSType.SYMBOL
        let object = JSType.OBJECT
        let function = JSType.FUNCTION
        let external = JSType.EXTERNAL
        @Expect(undefined == undefined)
        @Expect(null == null)
        @Expect(number == number)
        @Expect(boolean == boolean)
        @Expect(bigint == bigint)
        @Expect(string == string)
        @Expect(symbol == symbol)
        @Expect(object == object)
        @Expect(function == function)
        @Expect(external == external)
        @Expect(undefined != null)
        @Expect(undefined != number)
        @Expect(undefined != boolean)
        @Expect(number != boolean)
        @Expect(string != symbol)
        @Expect(object != function)
        @Expect(function != external)
        @Expect(bigint != string)
        Hilog.info(0u32, "cangjietest", "", "testcase testStaticFields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSType_0200
     * @tc.name      : testEqualsOperator
     * @tc.desc      : 测试 JSType == 运算符相同类型返回 true 不同类型返回 false
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testEqualsOperator(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testEqualsOperator begins.")
        @Expect(JSType.UNDEFINED == JSType.UNDEFINED, true)
        @Expect(JSType.UNDEFINED == JSType.NULL, false)
        @Expect(JSType.NUMBER == JSType.NUMBER, true)
        @Expect(JSType.NUMBER == JSType.STRING, false)
        @Expect(JSType.OBJECT == JSType.OBJECT, true)
        @Expect(JSType.OBJECT == JSType.FUNCTION, false)
        @Expect(JSType.EXTERNAL == JSType.EXTERNAL, true)
        @Expect(JSType.EXTERNAL == JSType.UNDEFINED, false)
        Hilog.info(0u32, "cangjietest", "", "testcase testEqualsOperator ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSType_0300
     * @tc.name      : testNotEqualsOperator
     * @tc.desc      : 测试 JSType != 运算符相同类型返回 false 不同类型返回 true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testNotEqualsOperator(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testNotEqualsOperator begins.")
        @Expect(JSType.UNDEFINED != JSType.UNDEFINED, false)
        @Expect(JSType.UNDEFINED != JSType.NULL, true)
        @Expect(JSType.BOOLEAN != JSType.BOOLEAN, false)
        @Expect(JSType.BOOLEAN != JSType.BIGINT, true)
        @Expect(JSType.SYMBOL != JSType.SYMBOL, false)
        @Expect(JSType.SYMBOL != JSType.OBJECT, true)
        Hilog.info(0u32, "cangjietest", "", "testcase testNotEqualsOperator ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSType_0400
     * @tc.name      : testToString
     * @tc.desc      : 测试 JSType.toString() 返回类型描述字符串
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testToString(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testToString begins.")
        let s = JSType.UNDEFINED.toString()
        @Expect(s.size > 0)
        let sNull = JSType.NULL.toString()
        @Expect(sNull.size > 0)
        @Expect(s != sNull)
        Hilog.info(0u32, "cangjietest", "", "JSType.UNDEFINED.toString()=" + s)
        Hilog.info(0u32, "cangjietest", "", "testcase testToString ends.")
    }
}
