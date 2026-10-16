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
import std.unittest.testmacro.*
import std.unittest.common.*
import std.collection.*
import ohos.ark_interop.*
import ohos.business_exception.BusinessException

let sharedApiCovRuntime = JSRuntime()
let sharedApiCovContext = sharedApiCovRuntime.mainContext


class PersonSOApi <: SharedObject {
    var name: String = "tom"
    var age: Int64 = 23
}

class CallInfoHolder {
    var count: Int64 = 0
    var thisArgOk: Bool = false
    var elem0Ok: Bool = false
}

func callInfoProbe(ctx: JSContext, ci: JSCallInfo, holder: CallInfoHolder): JSValue {
    holder.count = ci.count
    let ta = ci.thisArg
    holder.thisArgOk = ta.isObject() || ta.isUndefined()
    let e0 = ci[0]
    holder.elem0Ok = e0.isNumber()
    ctx.undefined().toJSValue()
}

let _mr: ModuleRegister = { ctx: JSContext, obj: JSObject => () }
let _cr: ClassRegister = { ctx: JSContext => ctx.clazz({ c: JSContext, ci: JSCallInfo => c.object().toJSValue() }) }
let _fr: FuncRegister = { ctx: JSContext => ctx.function({ c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() }) }
let _lam: JSLambda = { ctx: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() }
let _fb: JSBufferFinalizer = { p: CPointer<Byte> => () }
let _nv: napi_value = CPointer<Unit>()

@Test
class TestApiCompleteValue {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ApiCov_10001
     * @tc.name      : testJSValueCompleteApi
     * @tc.desc      : cover JSValue/JSArray/JSCallInfo/JSObjectBase-adjacent props and conversions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testJSValueCompleteApi(): Unit {
        let ctx = sharedApiCovContext
        let oRt = sharedApiCovRuntime
        let oSO = PersonSOApi()
        let vUndef = ctx.undefined().toJSValue()
        let vNull = ctx.null().toJSValue()
        let vBool = ctx.boolean(true).toJSValue()
        let vNum = ctx.number(1.5).toJSValue()
        let vStr = ctx.string("s").toJSValue()
        let vObj = ctx.object().toJSValue()
        let vArr = ctx.array([vNum]).toJSValue()
        let vFn = ctx.function({ c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() }).toJSValue()
        let oCap = ctx.promiseCapability()
        let vPrm = oCap.toJSValue()
        let vSym = ctx.symbol(description: "sym").toJSValue()
        let vBig = ctx.bigint(1).toJSValue()
        let oAb = ctx.arrayBuffer(8)
        let vAb = oAb.toJSValue()
        let oExt = ctx.external(oSO)
        let vExt = oExt.toJSValue()
        let oCls = ctx.clazz({ c: JSContext, ci: JSCallInfo => c.object().toJSValue() })
        let vCls = oCls.toJSValue()
        let oStr = ctx.string("k")
        let oNum = ctx.number(2.0)
        let oBool = ctx.boolean(false)
        let oNull = ctx.null()
        let oUnd = ctx.undefined()
        let oBig = ctx.bigint(2)
        let oSym = ctx.symbol(description: "d")
        let oArr = vArr.asArray()
        let oPromise = vPrm.asPromise()
        let oObj = ctx.object()
        @Expect(vNum.isNumber())
        @Expect(vStr.isString())
        @Expect(vBool.isBoolean())
        @Expect(vUndef.isUndefined())
        @Expect(vNull.isNull())
        @Expect(vObj.isObject())
        @Expect(vArr.isArray())
        @Expect(vFn.isFunction())
        @Expect(vSym.isSymbol())
        @Expect(vBig.isBigInt())
        @Expect(vExt.isExternal())
        @Expect(vAb.isArrayBuffer())
        @Expect(vPrm.isPromise())
        @Expect(vCls.isClass())
        @Expect(vStr.asString() is JSString)
        @Expect(vNum.asNumber() is JSNumber)
        @Expect(vObj.asObject() is JSObject)
        @Expect(vArr.asArray() is JSArray)
        @Expect(vFn.asFunction() is JSFunction)
        @Expect(vCls.asClass() is JSClass)
        @Expect(vExt.asExternal() is JSExternal)
        @Expect(vPrm.asPromise() is JSPromise)
        @Expect(vSym.asSymbol() is JSSymbol)
        @Expect(vAb.asArrayBuffer() is JSArrayBuffer)
        @Expect(vBig.asBigInt() is JSBigInt)
        @Expect(vNull.asNull() is JSNull)
        @Expect(vUndef.asUndefined() is JSUndefined)
        @Expect(vBool.asBoolean() is JSBoolean)
        @Expect(vBool.toBoolean())
        @Expect(vNum.toNumber(), 1.5)
        @Expect(vStr.toString(), "s")
        @Expect(vStr.toUtf16String().toString(), "s")
        @Expect(vBig.toBigInt().toString(), "1")
        @Expect(vArr.getElement(0).toNumber(), 1.5)
        vArr.setElement(0, ctx.number(9.9).toJSValue())
        @Expect(vArr.getElement(0).toNumber(), 9.9)
        @Expect(vObj.getProperty(oStr).isUndefined())
        vObj.setProperty(oStr, vNum)
        @Expect(vObj.getProperty(oStr).toNumber(), 1.5)
        vObj.setProperty(oStr, ctx.number(8.8).toJSValue())
        @Expect(vObj.getProperty(oStr).toNumber(), 8.8)
        let vObj2 = ctx.object().toJSValue()
        vObj2.bindObject(vExt)
        let vObj3 = ctx.object().toJSValue()
        vObj3.bindObject(oSO)
        @Expect(vObj3.getBindingObject().isSome())
        @Expect(ctx.isInBindThread())
        let _env: napi_env = oRt.getNapiEnv()
        let _cenv = ctx.getNapiEnv()
        @Expect(ctx.global is JSObject)
        ctx.newScope {
            let inner = ctx.number(3.3).toJSValue()
            @Expect(inner.toNumber(), 3.3)
        }
        @Expect(oArr.size, 1)
        @Expect(oArr[0].toNumber(), 9.9)
        oArr[0] = vNum
        oArr[0] = oStr
        @Expect(oStr is JSHeapObject)
        @Expect(vObj is JSObjectBase)
        @Expect(oSO.nativeId != 0)
        @Expect(oExt.getData() is SharedObject)
        @Expect(oExt.cast<PersonSOApi>().isSome())
        @Expect(oRt.mainContext is JSContext)
        @Expect(oPromise is JSPromise)
        @Expect(oSym.description, "sym")
        @Expect(oSym.toString().contains("sym"))
        @Expect(oBig.toBigInt().toString(), "2")
        @Expect(oNum.toFloat64(), 2.0)
        @Expect(oBool.toBool())
        @Expect(oStr.toString(), "k")
        @Expect(oStr.toUtf16String().toString(), "k")
        @Expect(oNull.toJSValue().isNull())
        @Expect(oUnd.toJSValue().isUndefined())
        @Expect(oBool.toJSValue().isBoolean())
        @Expect(oNum.toJSValue().isNumber())
        @Expect(oStr.toJSValue().isString())
        let holder = CallInfoHolder()
        let probe = ctx.function({ c: JSContext, ci: JSCallInfo => callInfoProbe(c, ci, holder) })
        let _ = probe.call(ctx.number(7.0).toJSValue())
        @Expect(holder.count, 1)
        @Expect(holder.thisArgOk)
        @Expect(holder.elem0Ok)
        let _mr: ModuleRegister = { ctx2: JSContext, obj2: JSObject => () }
        let _lam: JSLambda = { ctx2: JSContext, ci2: JSCallInfo => ctx2.undefined().toJSValue() }
        @Expect(JSType.NUMBER == JSType.NUMBER)
        @Expect(JSType.NUMBER != JSType.STRING)
        @Expect(JSType.NUMBER.toString() == JSType.NUMBER.toString())
        let _t1 = JSType.UNDEFINED
        let _t2 = JSType.NULL
        let _t3 = JSType.BOOLEAN
        let _t4 = JSType.BIGINT
        let _t5 = JSType.SYMBOL
        let _t6 = JSType.OBJECT
        let _t7 = JSType.FUNCTION
        let _t8 = JSType.EXTERNAL

    }
}

@Test
class TestApiCompleteEx {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ApiCov_10002
     * @tc.name      : testInteropExCompleteApi
     * @tc.desc      : cover JSStringEx/JSArrayEx/JSHashMapEx full members and interface refs
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testInteropExCompleteApi(): Unit {
        let ctx = sharedApiCovContext
        let s1 = JSStringEx("a")
        let s2 = JSStringEx("b")
        @Expect(s1 == JSStringEx("a"))
        @Expect(s1 != s2)
        @Expect(s1.toString(), "a")
        @Expect(s1.toJSValue(ctx).isString())
        @Expect(JSStringEx.fromJSValue(ctx, ctx.string("a").toJSValue()).toString(), "a")
        @Expect(JSStringEx.toArktsType(), "string")
        let arr = JSArrayEx<JSStringEx>([s1, s2])
        @Expect(arr.size, 2)
        @Expect(!arr.isEmpty())
        @Expect(arr[0].toString(), "a")
        arr[1] = JSStringEx("c")
        @Expect(arr[1].toString(), "c")
        @Expect(arr.get(0).getOrThrow().toString(), "a")
        arr.set(1, JSStringEx("d"))
        @Expect(arr.toArray().size, 2)
        @Expect(arr.clone().size, 2)
        @Expect(arr.concat(JSArrayEx<JSStringEx>([s2])).size, 3)
        @Expect(JSArrayEx<JSStringEx>.toArktsType(), "Array")
        @Expect(JSArrayEx<JSStringEx>.fromJSValue(ctx, ctx.array([ctx.string("x").toJSValue()]).toJSValue()).size, 1)
        let m1 = HashMap<String, String>()
        m1.add("k", "v")
        let map = JSHashMapEx<String, String>(m1)
        let map2 = JSHashMapEx<String, String>()
        @Expect(map.size, 1)
        @Expect(!map.isEmpty())
        @Expect(map.keys().size, 1)
        @Expect(map.values().size, 1)
        @Expect(map.has("k"))
        @Expect(map.get("k").getOrThrow(), "v")
        @Expect(map["k"], "v")
        map["k2"] = "k"
        @Expect(map["k2"], "k")
        map.set("k2", "k2")
        @Expect(map.setIfAbsent("k2", "k"))
        @Expect(map.containsAll(["k"]))
        @Expect(map.delete("k2"))
        map.setAll([("k2", "k")])
        map.deleteAll(["k2"])
        @Expect(true)
        map.deleteIf({ k: String, v: String => k == "k" })
        @Expect(map.clone().isEmpty())
        map.set("k", "v")
        @Expect(map.toHashMap().size, 1)
        map.clear()
        @Expect(map.isEmpty())
        @Expect(JSHashMapEx<String, String>.toArktsType(), "Map")
        @Expect(JSHashMapEx<String, String>.fromJSValue(ctx, ctx.object().toJSValue()).isEmpty())
        let it: JSInteropType<JSStringEx> = s1
        @Expect(JSStringEx.toArktsType(), "string")
        let tv: ToJSValue = Utf16String("u")
        @Expect(tv.toJSValue(ctx).isString())
        let jk: JSKeyable = ctx.string("key")
        @Expect(jk.toJSValue(ctx).isString())
        @Expect(jk.toString(), "key")
        let h: JSHeapObject = ctx.string("h")
        let ob: JSObjectBase = ctx.object()
        @Expect(Utf16String.EMPTY.isEmpty())

    }
}

@Test
class TestApiCompleteUtf16 {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ApiCov_10003
     * @tc.name      : testUtf16StringCompleteApi
     * @tc.desc      : cover Utf16String full member set
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUtf16StringCompleteApi(): Unit {
        let ctx = sharedApiCovContext
        let a = Utf16String("hello world")
        let b = Utf16String("hello")
        let c = Utf16String("hello world")
        @Expect(a == c)
        @Expect(a != b)
        @Expect(a > b)
        @Expect(a >= c)
        @Expect(b < a)
        @Expect(b <= a)
        @Expect(a.toString(), "hello world")
        @Expect(a.hashCode() == c.hashCode())
        @Expect(a.size, 11)
        @Expect(a.totalChars, 11)
        @Expect(!a.isEmpty())
        @Expect(a.isCompressed() || !a.isCompressed())
        @Expect(a[0], UInt16(104))
        @Expect(a[0..5].toString(), "hello")
        @Expect(a.runes().next().getOrThrow() == r'h')
        @Expect(a.lines().next().getOrThrow().toString(), "hello world")
        @Expect(a.indexOf(Utf16String("world")), 6)
        @Expect(a.indexOf(Utf16String("o"), 7), 7)
        @Expect(a.lastIndexOf(Utf16String("o")), 7)
        @Expect(a.lastIndexOf(Utf16String("o"), 6), 4)
        @Expect(a.count(Utf16String("l")), 3)
        @Expect(a.split(Utf16String(" ")).size, 2)
        @Expect(a.split(Utf16String(" "), 1).size, 1)
        @Expect(a.split(Utf16String(" "), removeEmpty: true).size, 2)
        @Expect(a.split(Utf16String(" "), 2, removeEmpty: false).size, 2)
        @Expect(a.lazySplit(Utf16String(" ")).count() >= 1)
        @Expect(a.lazySplit(Utf16String(" "), 1).count() >= 1)
        @Expect(a.lazySplit(Utf16String(" "), removeEmpty: true).count() >= 1)
        @Expect(a.lazySplit(Utf16String(" "), 1, removeEmpty: false).count() >= 1)
        @Expect(a.replace(Utf16String("l"), Utf16String("L")).toString(), "heLLo worLd")
        @Expect(a.replace(Utf16String("l"), Utf16String("L"), count: 1).toString(), "heLlo world")
        @Expect(a.contains(Utf16String("world")))
        @Expect(a.startsWith(b))
        @Expect(a.endsWith(Utf16String("world")))
        @Expect((a + Utf16String("!")).toString(), "hello world!")
        @Expect(a.compare(c) == Ordering.EQ)
        @Expect(a.toJSValue(ctx).isString())
        @Expect(Utf16String.fromJSValue(ctx, ctx.string("hello world").toJSValue()).toString(), "hello world")
        @Expect(Utf16String.toArktsType(), "string")
        let d = Utf16String("temp")
        d.dispose()
        @Expect(!d.accessible)

    }
}

@Test
class TestApiCompleteMisc {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ApiCov_10004
     * @tc.name      : testMiscCompleteApi
     * @tc.desc      : cover JSClass/JSModule/JSPromise/JSContext overloads and JSObjectBase members
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMiscCompleteApi(): Unit {
        let ctx = sharedApiCovContext
        let oFn = ctx.function({ c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() })
        let oFn2 = ctx.function({ c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() })
        let oCls = ctx.clazz({ c: JSContext, ci: JSCallInfo => c.object().toJSValue() })
        @Expect(oCls.prototype is JSObject)
        @Expect(oCls.new().isObject())
        @Expect(oCls.new(ctx.number(1.0).toJSValue()).isObject())
        @Expect(oCls.new([ctx.number(1.0).toJSValue()]).isObject())
        oCls.addProperty(ctx.string("p"), ctx.number(1.0).toJSValue())
        oCls.addMethod(ctx.string("m"), oFn)
        oCls.addMethod(ctx.string("ml"), { c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() })
        oCls.addAccessor(ctx.string("a"), getter: oFn, setter: oFn2)
        oCls.addAccessor(ctx.string("al"), getter: { c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() }, setter: { c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() })
        let oSO = PersonSOApi()
        let oExt = ctx.external(oSO)
        let oObj = ctx.object()
        @Expect(oObj.instanceOf(oCls) || !oObj.instanceOf(oCls))
        @Expect(!oObj.hasProperty(ctx.string("nope")))
        oObj.defineOwnProperty(ctx.string("dp"), ctx.number(1.0).toJSValue())
        oObj.defineOwnProperty(ctx.string("dp2"), ctx.number(1.0).toJSValue(), isWritable: false, isEnumerable: true, isConfigurable: false)
        oObj.defineOwnAccessor(ctx.string("acc"), getter: oFn, setter: oFn2)
        oObj.defineOwnAccessor(ctx.string("accl"), getter: { c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() }, setter: { c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() })
        @Expect(oObj.keys().size >= 0)
        oObj.attachCJObject(oExt)
        @Expect(oObj.getAttachInfo().isSome())
        @Expect(oObj.callMethod("toString", []).isString())
        let oCap = ctx.promiseCapability()
        oCap.resolve(ctx.number(1.0).toJSValue())
        let oCap2 = ctx.promiseCapability()
        oCap2.reject(ctx.number(1.0).toJSValue())
        @Expect(oCap2.toJSValue().isPromise())
        let oPromise = oCap.toJSValue().asPromise()
        let oFnR = ctx.function({ c: JSContext, ci: JSCallInfo => ctx.undefined().toJSValue() })
        oPromise.then(oFnR)
        oPromise.then(oFnR, onRejected: oFnR)
        oPromise.catchError(oFnR)
        @Expect(ctx.arrayBuffer(Array<Byte>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<Int8>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<Int16>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<UInt16>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<Int32>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<UInt32>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<Float32>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<Int64>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<UInt64>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(Array<Float64>()).byteLength >= 0)
        @Expect(ctx.arrayBuffer(16).byteLength, 16)
        @Expect(ctx.clazz({ c: JSContext, ci: JSCallInfo => c.object().toJSValue() }, superClass: oCls) is JSClass)
        @Expect(ctx.string(Utf16String("u16")).toString(), "u16")
        let bi = ctx.bigint(123i64)
        @Expect(bi.toJSValue().isBigInt())
        ctx.postJSTask({ => () })
        let abFinal = ctx.arrayBuffer(Array<Byte>())
        @Expect(abFinal.byteLength >= 0)
        JSModule.registerModule("apiCovNamedModule", { c: JSContext, obj: JSObject => () })
        JSModule.registerModule({ c: JSContext, obj: JSObject => () })
        JSModule.registerClass("ApiCovClass", { c: JSContext => c.clazz({ cc: JSContext, ci: JSCallInfo => cc.object().toJSValue() }) })
        JSModule.registerFunc("apiCovFunc", { c: JSContext => c.function({ cc: JSContext, ci: JSCallInfo => cc.undefined().toJSValue() }) })
        JSModule.registerFunc("apiCovLambda", { c: JSContext, ci: JSCallInfo => c.undefined().toJSValue() })
        let _ib = Int8(1) is JSInteropByte

    }
}
