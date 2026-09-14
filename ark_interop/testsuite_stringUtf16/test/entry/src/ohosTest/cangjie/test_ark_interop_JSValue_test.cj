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

let sharedValueRuntime = JSRuntime()
let sharedValueContext = sharedValueRuntime.mainContext

@Test
class TestJSValue {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0100
     * @tc.name      : testTypeof
     * @tc.desc      : 测试 typeof() 返回各值的 JSType 正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testTypeof(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testTypeof begins.")
        let context = sharedValueContext
        @Expect(context.undefined().toJSValue().typeof() == JSType.UNDEFINED)
        @Expect(context.null().toJSValue().typeof() == JSType.NULL)
        @Expect(context.number(1.0f64).toJSValue().typeof() == JSType.NUMBER)
        @Expect(context.boolean(true).toJSValue().typeof() == JSType.BOOLEAN)
        @Expect(context.string("a").toJSValue().typeof() == JSType.STRING)
        @Expect(context.object().toJSValue().typeof() == JSType.OBJECT)
        @Expect(context.array([]).toJSValue().typeof() == JSType.OBJECT)
        Hilog.info(0u32, "cangjietest", "", "testcase testTypeof ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0200
     * @tc.name      : testStrictEqual
     * @tc.desc      : 测试 strictEqual 同值返回 true 异值返回 false
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testStrictEqual(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testStrictEqual begins.")
        let context = sharedValueContext
        let a = context.number(1.0f64).toJSValue()
        let b = context.number(1.0f64).toJSValue()
        let c = context.number(2.0f64).toJSValue()
        @Expect(a.strictEqual(a))
        @Expect(a.strictEqual(b))
        @Expect(!a.strictEqual(c))
        @Expect(!a.strictEqual(context.string("1").toJSValue()))
        Hilog.info(0u32, "cangjietest", "", "testcase testStrictEqual ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0300
     * @tc.name      : testIsTypeChecks
     * @tc.desc      : 测试 isNull/isUndefined/isBoolean/isNumber/isString/isObject/isArray/isBigInt 各类型判断
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testIsTypeChecks(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testIsTypeChecks begins.")
        let context = sharedValueContext
        let nullVal = context.null().toJSValue()
        @Expect(nullVal.isNull())
        @Expect(!nullVal.isUndefined())
        let undefVal = context.undefined().toJSValue()
        @Expect(undefVal.isUndefined())
        @Expect(!undefVal.isNull())
        let boolVal = context.boolean(true).toJSValue()
        @Expect(boolVal.isBoolean())
        @Expect(!boolVal.isNumber())
        let numVal = context.number(1.0f64).toJSValue()
        @Expect(numVal.isNumber())
        @Expect(!numVal.isBoolean())
        let strVal = context.string("a").toJSValue()
        @Expect(strVal.isString())
        @Expect(!strVal.isNumber())
        let objVal = context.object().toJSValue()
        @Expect(objVal.isObject())
        let arrVal = context.array([]).toJSValue()
        @Expect(arrVal.isArray())
        let bigVal = context.bigint(1i64).toJSValue()
        @Expect(bigVal.isBigInt())
        Hilog.info(0u32, "cangjietest", "", "testcase testIsTypeChecks ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0400
     * @tc.name      : testIsAdvancedChecks
     * @tc.desc      : 测试 isFunction/isPromise/isClass/isExternal/isSymbol/isArrayBuffer 判断
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testIsAdvancedChecks(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testIsAdvancedChecks begins.")
        let context = sharedValueContext
        let fnVal = context.function({ ctx: JSContext, _: JSCallInfo => ctx.undefined().toJSValue() }).toJSValue()
        @Expect(fnVal.isFunction())
        let promiseVal = context.promiseCapability().toJSValue()
        @Expect(promiseVal.isPromise())
        let clsVal = context.clazz({ ctx: JSContext, _: JSCallInfo => ctx.object().toJSValue() }).toJSValue()
        @Expect(clsVal.isClass())
        let extVal = context.external(MyData()).toJSValue()
        @Expect(extVal.isExternal())
        let symVal = context.symbol(description: "x").toJSValue(context)
        @Expect(symVal.isSymbol())
        let abVal = context.arrayBuffer(8i32).toJSValue()
        @Expect(abVal.isArrayBuffer())
        Hilog.info(0u32, "cangjietest", "", "testcase testIsAdvancedChecks ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0500
     * @tc.name      : testAsNullAndAsUndefined
     * @tc.desc      : 测试 asNull/asUndefined 正确转换及类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAsNullAndAsUndefined(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAsNullAndAsUndefined begins.")
        let context = sharedValueContext
        let nullVal = context.null().toJSValue()
        let _ = nullVal.asNull()
        let undefVal = context.undefined().toJSValue()
        let _ = undefVal.asUndefined()
        try {
            let _ = undefVal.asNull()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = nullVal.asUndefined()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testAsNullAndAsUndefined ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0600
     * @tc.name      : testAsBooleanAndAsNumber
     * @tc.desc      : 测试 asBoolean/asNumber 正确转换及类型不匹配抛 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAsBooleanAndAsNumber(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAsBooleanAndAsNumber begins.")
        let context = sharedValueContext
        let boolVal = context.boolean(true).toJSValue()
        @Expect(boolVal.asBoolean().toBool(), true)
        let numVal = context.number(3.5f64).toJSValue()
        @Expect(numVal.asNumber().toFloat64(), 3.5f64)
        try {
            let _ = boolVal.asNumber()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = numVal.asBoolean()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testAsBooleanAndAsNumber ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0700
     * @tc.name      : testToBooleanToNumberToString
     * @tc.desc      : 测试 toBoolean/toNumber/toString/toUtf16String 转换
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testToBooleanToNumberToString(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testToBooleanToNumberToString begins.")
        let context = sharedValueContext
        let boolVal = context.boolean(true).toJSValue()
        @Expect(boolVal.toBoolean(), true)
        let numVal = context.number(7.0f64).toJSValue()
        @Expect(numVal.toNumber(), 7.0f64)
        let strVal = context.string("hello").toJSValue()
        @Expect(strVal.toString(), "hello")
        @Expect(strVal.toUtf16String().toString(), "hello")
        Hilog.info(0u32, "cangjietest", "", "testcase testToBooleanToNumberToString ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0800
     * @tc.name      : testAsStringAsObjectAsFunction
     * @tc.desc      : 测试 asString/asObject/asFunction 转换
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAsStringAsObjectAsFunction(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAsStringAsObjectAsFunction begins.")
        let context = sharedValueContext
        let strVal = context.string("a").toJSValue()
        @Expect(strVal.asString().toString(), "a")
        let objVal = context.object().toJSValue()
        let _ = objVal.asObject()
        let fn = context.function({ ctx: JSContext, _: JSCallInfo => ctx.undefined().toJSValue() })
        @Expect(fn.toJSValue().asFunction().toJSValue().isFunction())
        Hilog.info(0u32, "cangjietest", "", "testcase testAsStringAsObjectAsFunction ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_0900
     * @tc.name      : testAsReferenceTypes
     * @tc.desc      : 测试 asArray/asClass/asExternal/asPromise/asSymbol/asArrayBuffer/asBigInt 转换
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testAsReferenceTypes(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testAsReferenceTypes begins.")
        let context = sharedValueContext
        let arr = context.array([context.number(1.0f64).toJSValue()])
        let arr2 = arr.toJSValue().asArray()
        @Expect(arr2.size, 1)
        @Expect(arr2[0].toNumber(), 1.0)
        let cls = context.clazz({ ctx: JSContext, _: JSCallInfo => ctx.object().toJSValue() })
        let cls2 = cls.toJSValue().asClass()
        @Expect(cls2.prototype.toJSValue().isObject())
        let ext = context.external(MyData())
        let ext2 = ext.toJSValue().asExternal()
        @Expect(ext2.cast<MyData>().isSome())
        let cap = context.promiseCapability()
        let _ = cap.toJSValue().asPromise()
        let sym = context.symbol(description: "x")
        let sym2 = sym.toJSValue(context).asSymbol()
        @Expect(sym2.description, "x")
        let ab = context.arrayBuffer(8i32)
        @Expect(ab.toJSValue().asArrayBuffer().byteLength, 8)
        let big = context.bigint(1i64)
        @Expect(big.toJSValue().asBigInt().toBigInt().toString(), "1")
        Hilog.info(0u32, "cangjietest", "", "testcase testAsReferenceTypes ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_1000
     * @tc.name      : testToBigInt
     * @tc.desc      : 测试 toBigInt() 将 JSBigInt 转为仓颉 BigInt
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testToBigInt(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testToBigInt begins.")
        let context = sharedValueContext
        let big = context.bigint(123i64).toJSValue()
        let bi = big.toBigInt()
        @Expect(bi.toString(), "123")
        Hilog.info(0u32, "cangjietest", "", "testcase testToBigInt ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_1100
     * @tc.name      : testGetSetElement
     * @tc.desc      : 测试 getElement/setElement 读写数组元素及越界抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetSetElement(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetSetElement begins.")
        let context = sharedValueContext
        let arr = context.array([context.number(1.0f64).toJSValue(), context.number(2.0f64).toJSValue()])
        let arrVal = arr.toJSValue()
        @Expect(arrVal.getElement(0i64).asNumber().toFloat64(), 1.0f64)
        arrVal.setElement(0i64, context.number(9.0f64).toJSValue())
        @Expect(arrVal.getElement(0i64).asNumber().toFloat64(), 9.0f64)
        try {
            let _ = arrVal.getElement(10i64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testGetSetElement ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_1200
     * @tc.name      : testGetSetProperty
     * @tc.desc      : 测试 getProperty/setProperty 读写对象属性
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetSetProperty(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetSetProperty begins.")
        let context = sharedValueContext
        let obj = context.object()
        let objVal = obj.toJSValue()
        objVal.setProperty("name", context.string("hi").toJSValue())
        @Expect(objVal.getProperty("name").asString().toString(), "hi")
        Hilog.info(0u32, "cangjietest", "", "testcase testGetSetProperty ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSValue_1300
     * @tc.name      : testBindObjectAndGetBindingObject
     * @tc.desc      : 测试 bindObject(SharedObject) 与 getBindingObject 绑定/取回
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBindObjectAndGetBindingObject(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testBindObjectAndGetBindingObject begins.")
        let context = sharedValueContext
        let data = MyDataTagged()
        let obj = context.object()
        let objVal = obj.toJSValue()
        objVal.bindObject(data)
        let got = objVal.getBindingObject()
        @Expect(got.isSome())
        Hilog.info(0u32, "cangjietest", "", "testcase testBindObjectAndGetBindingObject ends.")
    }
}

class MyData <: SharedObject {
    public init() { super() }
}

class MyDataTagged <: SharedObject {
    let tag: Int64 = 555
    public init() { super() }
}
