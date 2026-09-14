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
import ohos.business_exception.BusinessException

let sharedPrimRuntime = JSRuntime()
let sharedPrimContext = sharedPrimRuntime.mainContext

@Test
class TestJSPrimitives {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSNull_0100
     * @tc.name      : testJSNullToJSValue
     * @tc.desc      : 测试 JSNull.toJSValue() 返回 null 类型
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSNullToJSValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSNullToJSValue begins.")
        let context = sharedPrimContext
        let n = context.null()
        @Expect(n.toJSValue().isNull())
        Hilog.info(0u32, "cangjietest", "", "testcase testJSNullToJSValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSUndefined_0100
     * @tc.name      : testJSUndefinedToJSValue
     * @tc.desc      : 测试 JSUndefined.toJSValue() 返回 undefined 类型
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSUndefinedToJSValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSUndefinedToJSValue begins.")
        let context = sharedPrimContext
        let u = context.undefined()
        @Expect(u.toJSValue().isUndefined())
        Hilog.info(0u32, "cangjietest", "", "testcase testJSUndefinedToJSValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSBoolean_0100
     * @tc.name      : testJSBooleanToJSValueAndToBool
     * @tc.desc      : 测试 JSBoolean.toJSValue()/toBool() 双向转换
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSBooleanToJSValueAndToBool(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSBooleanToJSValueAndToBool begins.")
        let context = sharedPrimContext
        let t = context.boolean(true)
        @Expect(t.toJSValue().isBoolean())
        @Expect(t.toBool(), true)
        let f = context.boolean(false)
        @Expect(f.toJSValue().isBoolean())
        @Expect(f.toBool(), false)
        Hilog.info(0u32, "cangjietest", "", "testcase testJSBooleanToJSValueAndToBool ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSNumber_0100
     * @tc.name      : testJSNumberToJSValueAndToFloat64
     * @tc.desc      : 测试 JSNumber.toJSValue()/toFloat64() 双向转换
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSNumberToJSValueAndToFloat64(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSNumberToJSValueAndToFloat64 begins.")
        let context = sharedPrimContext
        let n = context.number(2.5f64)
        @Expect(n.toJSValue().isNumber())
        @Expect(n.toFloat64(), 2.5f64)
        Hilog.info(0u32, "cangjietest", "", "testcase testJSNumberToJSValueAndToFloat64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSSymbol_0100
     * @tc.name      : testJSSymbol
     * @tc.desc      : 测试 JSSymbol.toJSValue/description/toString
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSSymbol(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSSymbol begins.")
        let context = sharedPrimContext
        let sym = context.symbol(description: "desc")
        @Expect(sym.toJSValue(context).isSymbol())
        @Expect(sym.description, "desc")
        let s = sym.toString()
        @Expect(s.size > 0)
        Hilog.info(0u32, "cangjietest", "", "JSSymbol.toString()=" + s)
        Hilog.info(0u32, "cangjietest", "", "testcase testJSSymbol ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSString_0100
     * @tc.name      : testJSString
     * @tc.desc      : 测试 JSString.toJSValue/toString/toUtf16String
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSString(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSString begins.")
        let context = sharedPrimContext
        let s = context.string("hello你好")
        @Expect(s.toJSValue(context).isString())
        @Expect(s.toString(), "hello你好")
        @Expect(s.toUtf16String().toString(), "hello你好")
        Hilog.info(0u32, "cangjietest", "", "testcase testJSString ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSArray_0100
     * @tc.name      : testJSArraySizeAndIndex
     * @tc.desc      : 测试 JSArray.size/[]读取/[]写入(JSValue)/[]写入(JSHeapObject)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSArraySizeAndIndex(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSArraySizeAndIndex begins.")
        let context = sharedPrimContext
        let v1 = context.number(1.0f64).toJSValue()
        let v2 = context.number(2.0f64).toJSValue()
        let arr = context.array([v1, v2])
        @Expect(arr.size, 2)
        @Expect(arr[0i64].asNumber().toFloat64(), 1.0f64)
        arr[0i64] = context.number(9.0f64).toJSValue()
        @Expect(arr[0i64].asNumber().toFloat64(), 9.0f64)
        let numObj = context.number(5.0f64)
        arr[1i64] = numObj.toJSValue()
        @Expect(arr[1i64].asNumber().toFloat64(), 5.0f64)
        Hilog.info(0u32, "cangjietest", "", "testcase testJSArraySizeAndIndex ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSArray_0200
     * @tc.name      : testJSArrayIndexOutOfRange
     * @tc.desc      : 测试 JSArray 越界访问抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSArrayIndexOutOfRange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSArrayIndexOutOfRange begins.")
        let context = sharedPrimContext
        let arr = context.array([context.number(1.0f64).toJSValue()])
        try {
            let _ = arr[5i64]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testJSArrayIndexOutOfRange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSPromiseCapability_0100
     * @tc.name      : testJSPromiseCapability
     * @tc.desc      : 测试 JSPromiseCapability.resolve/reject/toJSValue
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSPromiseCapability(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testJSPromiseCapability begins.")
        let context = sharedPrimContext
        let cap = context.promiseCapability()
        @Expect(cap.toJSValue().isPromise())
        cap.resolve(context.number(1.0f64).toJSValue())
        let cap2 = context.promiseCapability()
        @Expect(cap2.toJSValue().isPromise())
        cap2.reject(context.string("err").toJSValue())
        Hilog.info(0u32, "cangjietest", "", "testcase testJSPromiseCapability ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSKeyable_0100
     * @tc.name      : testStringAsJSKeyable
     * @tc.desc      : 测试 String(实现 JSKeyable).toJSValue(context) 与 JSString 互转
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testStringAsJSKeyable(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testStringAsJSKeyable begins.")
        let context = sharedPrimContext
        let key: String = "akey"
        let v = key.toJSValue(context)
        @Expect(v.isString())
        @Expect(v.asString().toString(), "akey")
        Hilog.info(0u32, "cangjietest", "", "testcase testStringAsJSKeyable ends.")
    }
}
