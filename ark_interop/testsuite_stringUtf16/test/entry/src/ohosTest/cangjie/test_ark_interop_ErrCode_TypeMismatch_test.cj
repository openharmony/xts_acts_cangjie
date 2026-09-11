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
import ohos.ark_interop.*
import ohos.business_exception.BusinessException

let sharedMismatchRuntime = JSRuntime()
let sharedMismatchContext = sharedMismatchRuntime.mainContext

@Test
class TestErrCodeTypeMismatch {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0200
     * @tc.name      : testStringExFromJSValueMismatch
     * @tc.desc      : 测试 JSStringEx.fromJSValue 传入 number 类型 JSValue 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testStringExFromJSValueMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = JSStringEx.fromJSValue(context, context.number(1.0f64).toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0210
     * @tc.name      : testArrayExFromJSValueMismatch
     * @tc.desc      : 测试 JSArrayEx.fromJSValue 传入 number 类型 JSValue(非数组)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArrayExFromJSValueMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = JSArrayEx<JSStringEx>.fromJSValue(context, context.number(1.0f64).toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0220
     * @tc.name      : testInteropByteArrayFromJSValueMismatch
     * @tc.desc      : 测试 Array<Byte>(JSInteropType 扩展).fromJSValue 传入 number 类型 JSValue 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testInteropByteArrayFromJSValueMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = Array<Byte>.fromJSValue(context, context.number(1.0f64).toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0230
     * @tc.name      : testValueToBooleanMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 toBoolean() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueToBooleanMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().toBoolean()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0240
     * @tc.name      : testValueToNumberMismatch
     * @tc.desc      : 测试在 object 类型 JSValue 上调用 toNumber() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueToNumberMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.object().toJSValue().toNumber()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0250
     * @tc.name      : testValueToStringMismatch
     * @tc.desc      : 测试在 undefined 类型 JSValue 上调用 toString() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueToStringMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.undefined().toJSValue().toString()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0260
     * @tc.name      : testValueToUtf16StringMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 toUtf16String() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueToUtf16StringMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().toUtf16String()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0270
     * @tc.name      : testValueAsStringMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asString()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsStringMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asString()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0280
     * @tc.name      : testValueAsObjectMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asObject()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsObjectMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0290
     * @tc.name      : testValueAsFunctionMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asFunction()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsFunctionMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asFunction()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0300
     * @tc.name      : testValueAsArrayMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asArray()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsArrayMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0310
     * @tc.name      : testValueAsClassMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asClass()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsClassMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asClass()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0320
     * @tc.name      : testValueAsExternalMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asExternal()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsExternalMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asExternal()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0330
     * @tc.name      : testValueAsPromiseMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asPromise()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsPromiseMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asPromise()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0340
     * @tc.name      : testValueAsSymbolMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asSymbol()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsSymbolMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asSymbol()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0350
     * @tc.name      : testValueAsArrayBufferMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asArrayBuffer()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsArrayBufferMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asArrayBuffer()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0360
     * @tc.name      : testValueAsBigIntMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 asBigInt()(A≠B)类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueAsBigIntMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().asBigInt()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0370
     * @tc.name      : testValueToBigIntMismatch
     * @tc.desc      : 测试在 number 类型 JSValue 上调用 toBigInt() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueToBigIntMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().toBigInt()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0380
     * @tc.name      : testValueGetElementMismatch
     * @tc.desc      : 测试在 number 类型 JSValue(非数组)上调用 getElement() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueGetElementMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().getElement(0i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0390
     * @tc.name      : testValueSetElementMismatch
     * @tc.desc      : 测试在 number 类型 JSValue(非数组)上调用 setElement() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueSetElementMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            context.number(1.0f64).toJSValue().setElement(0i64, context.undefined().toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0400
     * @tc.name      : testValueGetPropertyMismatch
     * @tc.desc      : 测试在 number 类型 JSValue(非对象)上调用 getProperty() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueGetPropertyMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().getProperty("k")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0410
     * @tc.name      : testValueSetPropertyMismatch
     * @tc.desc      : 测试在 number 类型 JSValue(非对象)上调用 setProperty() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueSetPropertyMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            context.number(1.0f64).toJSValue().setProperty("k", context.undefined().toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0420
     * @tc.name      : testValueBindObjectMismatch
     * @tc.desc      : 测试在 number 类型 JSValue(非对象)上调用 bindObject(SharedObject) 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueBindObjectMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            context.number(1.0f64).toJSValue().bindObject(MyData())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0430
     * @tc.name      : testValueGetBindingObjectMismatch
     * @tc.desc      : 测试在 number 类型 JSValue(非对象)上调用 getBindingObject() 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testValueGetBindingObjectMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = context.number(1.0f64).toJSValue().getBindingObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_0440
     * @tc.name      : testUtf16StringFromJSValueMismatch
     * @tc.desc      : 测试 Utf16String.fromJSValue 传入 number 类型 JSValue 类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUtf16StringFromJSValueMismatch(): Unit {
        let context = sharedMismatchContext
        try {
            let _ = Utf16String.fromJSValue(context, context.number(1.0f64).toJSValue())
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }
}
