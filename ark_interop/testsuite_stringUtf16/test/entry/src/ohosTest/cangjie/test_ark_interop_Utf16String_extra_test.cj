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

let sharedU16ExtraRuntime = JSRuntime()
let sharedU16ExtraContext = sharedU16ExtraRuntime.mainContext

@Test
class TestUtf16StringExtra {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_Utf16String_2400
     * @tc.name      : testEmptyField
     * @tc.desc      : 测试 Utf16String.EMPTY 静态字段为空串且 accessible/isEmpty/size/totalChars 正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testEmptyField(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testEmptyField begins.")
        let empty = Utf16String.EMPTY
        @Expect(empty.accessible)
        @Expect(empty.isEmpty())
        @Expect(empty.size, 0)
        @Expect(empty.totalChars, 0)
        @Expect(empty.toString(), "")
        @Expect(empty.isCompressed())
        Hilog.info(0u32, "cangjietest", "", "testcase testEmptyField ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_Utf16String_2500
     * @tc.name      : testNotEqualsOperator
     * @tc.desc      : 测试 != 运算符对相同串返回 false 不同串返回 true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testNotEqualsOperator(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testNotEqualsOperator begins.")
        let a = Utf16String("abc")
        let b = Utf16String("abc")
        let c = Utf16String("abd")
        @Expect(a != b, false)
        @Expect(a != c, true)
        @Expect(c != a, true)
        let u1 = Utf16String("你好")
        let u2 = Utf16String("你好")
        let u3 = Utf16String("你好!")
        @Expect(u1 != u2, false)
        @Expect(u1 != u3, true)
        Hilog.info(0u32, "cangjietest", "", "testcase testNotEqualsOperator ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_Utf16String_2600
     * @tc.name      : testHashCode
     * @tc.desc      : 测试 hashCode() 相等串哈希相等 不等串不一定相等
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testHashCode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testHashCode begins.")
        let a = Utf16String("abc")
        let b = Utf16String("abc")
        let c = Utf16String("abd")
        @Expect(a.hashCode() == b.hashCode())
        @Expect(a.hashCode() != c.hashCode())
        let h = a.hashCode()
        @Expect(h == a.hashCode())
        Hilog.info(0u32, "cangjietest", "", "Utf16String(abc).hashCode()=" + h.toString())
        Hilog.info(0u32, "cangjietest", "", "testcase testHashCode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_Utf16String_2700
     * @tc.name      : testToArktsType
     * @tc.desc      : 测试 toArktsType() 返回 ArkTS 类型名
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testToArktsType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testToArktsType begins.")
        let t = Utf16String.toArktsType()
        @Expect(t.size > 0)
        Hilog.info(0u32, "cangjietest", "", "Utf16String.toArktsType()=" + t)
        Hilog.info(0u32, "cangjietest", "", "testcase testToArktsType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_Utf16String_2800
     * @tc.name      : testToJSValueRoundTrip
     * @tc.desc      : 测试 toJSValue 转换后 fromJSValue 回转为相等 Utf16String
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testToJSValueRoundTrip(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testToJSValueRoundTrip begins.")
        let context = sharedU16ExtraContext
        let src = Utf16String("hello你好123")
        let jv = src.toJSValue(context)
        @Expect(jv.isString())
        let dst = Utf16String.fromJSValue(context, jv)
        @Expect(dst.toString(), src.toString())
        @Expect(dst == src)
        Hilog.info(0u32, "cangjietest", "", "testcase testToJSValueRoundTrip ends.")
    }
}
