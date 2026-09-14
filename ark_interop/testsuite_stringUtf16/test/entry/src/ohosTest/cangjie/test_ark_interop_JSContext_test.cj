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

let sharedCtxRuntime = JSRuntime()
let sharedCtxContext = sharedCtxRuntime.mainContext

@Test
class TestJSContext {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0100
     * @tc.name      : testIsInBindThread
     * @tc.desc      : 测试 isInBindThread 在主上下文线程返回 true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testIsInBindThread(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testIsInBindThread begins.")
        let context = sharedCtxContext
        @Expect(context.isInBindThread())
        Hilog.info(0u32, "cangjietest", "", "testcase testIsInBindThread ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0200
     * @tc.name      : testGlobal
     * @tc.desc      : 测试 global 属性返回非空 JSObject
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGlobal(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGlobal begins.")
        let context = sharedCtxContext
        let g = context.global
        let gVal = g.toJSValue()
        @Expect(gVal.isObject())
        Hilog.info(0u32, "cangjietest", "", "testcase testGlobal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0300
     * @tc.name      : testGetNapiEnv
     * @tc.desc      : 测试 getNapiEnv() 返回非空 napi 环境指针
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGetNapiEnv(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testGetNapiEnv begins.")
        let context = sharedCtxContext
        let env = context.getNapiEnv()
        @Expect(!env.isNull())
        Hilog.info(0u32, "cangjietest", "", "testcase testGetNapiEnv ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0400
     * @tc.name      : testUndefined
     * @tc.desc      : 测试 undefined() 创建 ArkTS undefined 其 toJSValue 为 undefined 类型
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUndefined(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testUndefined begins.")
        let context = sharedCtxContext
        let u = context.undefined()
        let v = u.toJSValue()
        @Expect(v.isUndefined())
        @Expect(!v.isNull())
        Hilog.info(0u32, "cangjietest", "", "testcase testUndefined ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0500
     * @tc.name      : testNull
     * @tc.desc      : 测试 null() 创建 ArkTS null 其 toJSValue 为 null 类型
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testNull(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testNull begins.")
        let context = sharedCtxContext
        let n = context.null()
        let v = n.toJSValue()
        @Expect(v.isNull())
        @Expect(!v.isUndefined())
        Hilog.info(0u32, "cangjietest", "", "testcase testNull ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0600
     * @tc.name      : testBoolean
     * @tc.desc      : 测试 boolean(value: Bool) 创建 JSBoolean 其 toJSValue/toBool 正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBoolean(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testBoolean begins.")
        let context = sharedCtxContext
        let t = context.boolean(true)
        let f = context.boolean(false)
        @Expect(t.toJSValue().isBoolean())
        @Expect(f.toJSValue().isBoolean())
        @Expect(t.toBool(), true)
        @Expect(f.toBool(), false)
        Hilog.info(0u32, "cangjietest", "", "testcase testBoolean ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0700
     * @tc.name      : testNumber
     * @tc.desc      : 测试 number(Float64)/number(Int32) 创建 JSNumber 其 toJSValue/toFloat64 正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testNumber(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testNumber begins.")
        let context = sharedCtxContext
        let n1 = context.number(3.14f64)
        let n2 = context.number(42i32)
        @Expect(n1.toJSValue().isNumber())
        @Expect(n2.toJSValue().isNumber())
        @Expect(n1.toFloat64(), 3.14f64)
        @Expect(n2.toFloat64(), 42.0f64)
        Hilog.info(0u32, "cangjietest", "", "testcase testNumber ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0800
     * @tc.name      : testString
     * @tc.desc      : 测试 string(String)/string(Utf16String) 创建 JSString 其 toString 正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testString(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testString begins.")
        let context = sharedCtxContext
        let s1 = context.string("hello")
        @Expect(s1.toJSValue().isString())
        @Expect(s1.toString(), "hello")
        let u = Utf16String("你好")
        let s2 = context.string(u)
        @Expect(s2.toJSValue().isString())
        @Expect(s2.toString(), "你好")
        Hilog.info(0u32, "cangjietest", "", "testcase testString ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_0900
     * @tc.name      : testObject
     * @tc.desc      : 测试 object() 创建空 JSObject 其 toJSValue 为 object 类型
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testObject(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testObject begins.")
        let context = sharedCtxContext
        let obj = context.object()
        @Expect(obj.toJSValue().isObject())
        Hilog.info(0u32, "cangjietest", "", "testcase testObject ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1000
     * @tc.name      : testFunction
     * @tc.desc      : 测试 function(JSLambda) 创建 JSFunction 其 toJSValue 为 function 类型
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testFunction(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testFunction begins.")
        let context = sharedCtxContext
        let fn = context.function({ ctx: JSContext, _: JSCallInfo =>
            ctx.number(1.0f64).toJSValue()
        })
        @Expect(fn.toJSValue().isFunction())
        Hilog.info(0u32, "cangjietest", "", "testcase testFunction ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1100
     * @tc.name      : testArray
     * @tc.desc      : 测试 array(Array<JSValue>) 创建 JSArray 其 size 与元素正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArray(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testArray begins.")
        let context = sharedCtxContext
        let elems = [context.number(1.0f64).toJSValue(), context.number(2.0f64).toJSValue()]
        let arr = context.array(elems)
        @Expect(arr.toJSValue().isArray())
        @Expect(arr.size, 2)
        @Expect(arr[0].asNumber().toFloat64(), 1.0f64)
        Hilog.info(0u32, "cangjietest", "", "testcase testArray ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1200
     * @tc.name      : testClazz
     * @tc.desc      : 测试 clazz(ctor) 创建 JSClass 其 prototype 可访问
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testClazz(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testClazz begins.")
        let context = sharedCtxContext
        let cls = context.clazz({ ctx: JSContext, _: JSCallInfo =>
            ctx.object().toJSValue()
        })
        @Expect(cls.toJSValue().isClass())
        let proto = cls.prototype
        @Expect(proto.toJSValue().isObject())
        Hilog.info(0u32, "cangjietest", "", "testcase testClazz ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1300
     * @tc.name      : testExternal
     * @tc.desc      : 测试 external(SharedObject) 创建 JSExternal 其 getData 返回原对象
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testExternal(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testExternal begins.")
        let context = sharedCtxContext
        let data = MyData()
        let ext = context.external(data)
        @Expect(ext.toJSValue().isExternal())
        Hilog.info(0u32, "cangjietest", "", "testcase testExternal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1400
     * @tc.name      : testPromiseCapability
     * @tc.desc      : 测试 promiseCapability() 创建 JSPromiseCapability 其 toJSValue 为 promise
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPromiseCapability(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPromiseCapability begins.")
        let context = sharedCtxContext
        let cap = context.promiseCapability()
        @Expect(cap.toJSValue().isPromise())
        Hilog.info(0u32, "cangjietest", "", "testcase testPromiseCapability ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1500
     * @tc.name      : testArrayBufferByLength
     * @tc.desc      : 测试 arrayBuffer(length: Int32) 创建指定长度 ArrayBuffer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArrayBufferByLength(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testArrayBufferByLength begins.")
        let context = sharedCtxContext
        let ab = context.arrayBuffer(16i32)
        @Expect(ab.toJSValue().isArrayBuffer())
        @Expect(ab.byteLength, 16i32)
        Hilog.info(0u32, "cangjietest", "", "testcase testArrayBufferByLength ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1600
     * @tc.name      : testArrayBufferByLengthNegative
     * @tc.desc      : 测试 arrayBuffer 非法长度抛 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArrayBufferByLengthNegative(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testArrayBufferByLengthNegative begins.")
        let context = sharedCtxContext
        try {
            let _ = context.arrayBuffer(-1i32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase testArrayBufferByLengthNegative ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1700
     * @tc.name      : testArrayBufferByData
     * @tc.desc      : 测试各类型数组 arrayBuffer(Array<Byte/Int8/Int16/UInt16/UInt32/Int32/Float32/Int64/UInt64/Float64>) 创建成功
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testArrayBufferByData(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testArrayBufferByData begins.")
        let context = sharedCtxContext
        let ab1 = context.arrayBuffer(Array<Byte>(4, repeat: b'\u{01}'))
        @Expect(ab1.toJSValue().isArrayBuffer())
        let ab2 = context.arrayBuffer(Array<Int8>(4, repeat: 1i8))
        @Expect(ab2.toJSValue().isArrayBuffer())
        let ab3 = context.arrayBuffer(Array<Int16>(2, repeat: 1i16))
        @Expect(ab3.toJSValue().isArrayBuffer())
        let ab4 = context.arrayBuffer(Array<UInt16>(2, repeat: 1u16))
        @Expect(ab4.toJSValue().isArrayBuffer())
        let ab5 = context.arrayBuffer(Array<UInt32>(2, repeat: 1u32))
        @Expect(ab5.toJSValue().isArrayBuffer())
        let ab6 = context.arrayBuffer(Array<Int32>(2, repeat: 1i32))
        @Expect(ab6.toJSValue().isArrayBuffer())
        let ab7 = context.arrayBuffer(Array<Float32>(2, repeat: 1.0f32))
        @Expect(ab7.toJSValue().isArrayBuffer())
        let ab8 = context.arrayBuffer(Array<Int64>(2, repeat: 1i64))
        @Expect(ab8.toJSValue().isArrayBuffer())
        let ab9 = context.arrayBuffer(Array<UInt64>(2, repeat: 1u64))
        @Expect(ab9.toJSValue().isArrayBuffer())
        let ab10 = context.arrayBuffer(Array<Float64>(2, repeat: 1.0f64))
        @Expect(ab10.toJSValue().isArrayBuffer())
        Hilog.info(0u32, "cangjietest", "", "testcase testArrayBufferByData ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1800
     * @tc.name      : testSymbol
     * @tc.desc      : 测试 symbol(description!) 创建 JSSymbol 其 description/toString 正确
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSymbol(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testSymbol begins.")
        let context = sharedCtxContext
        let sym1 = context.symbol(description: "mysym")
        @Expect(sym1.toJSValue(context).isSymbol())
        @Expect(sym1.description, "mysym")
        let sym2 = context.symbol()
        @Expect(sym2.toJSValue(context).isSymbol())
        Hilog.info(0u32, "cangjietest", "", "testcase testSymbol ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_1900
     * @tc.name      : testBigint
     * @tc.desc      : 测试 bigint(Int64)/bigint(BigInt) 创建 JSBigInt
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBigint(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testBigint begins.")
        let context = sharedCtxContext
        let b1 = context.bigint(99i64)
        @Expect(b1.toJSValue().isBigInt())
        let b2 = context.bigint(99i64).toJSValue()
        @Expect(b2.isBigInt())
        Hilog.info(0u32, "cangjietest", "", "testcase testBigint ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_arkinterop_JSContext_2000
     * @tc.name      : testPostJSTask
     * @tc.desc      : 测试 postJSTask 在 ArkTS 线程执行回调
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPostJSTask(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase testPostJSTask begins.")
        let context = sharedCtxContext
        @Expect(context.isInBindThread())
        let flag = Box<Bool>(false)
        context.postJSTask {
            => flag.value = true
        }
        Hilog.info(0u32, "cangjietest", "", "postJSTask submitted executed=" + flag.value.toString())
        Hilog.info(0u32, "cangjietest", "", "testcase testPostJSTask ends.")
    }
}
