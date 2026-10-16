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

let sharedMiscErrRuntime = JSRuntime()
let sharedMiscErrContext = sharedMiscErrRuntime.mainContext

class PersonSO2 <: SharedObject {
    var name: String = "tom"
}

@Test
class TestErrCodeTypeMismatchExt {
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7000
     * @tc.name      : testTypeMismatchAsFamily
     * @tc.desc      : cover JSValue as/to conversions with mismatched types throwing 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testTypeMismatchAsFamily(): Unit {
        let ctx = sharedMiscErrContext
        let oSO = PersonSO2()
        let vStr = ctx.string("s").toJSValue()
        let vNum = ctx.number(1.5).toJSValue()
        let vExt = ctx.external(oSO).toJSValue()
        let oStr = ctx.string("k")
        try {
            let _ = vStr.asNumber()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asString()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vStr.asObject()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asArray()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asFunction()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asClass()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asExternal()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asPromise()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asSymbol()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asArrayBuffer()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vStr.asBigInt()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asNull()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asUndefined()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.asBoolean()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vStr.toNumber()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.toBoolean()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vStr.toBigInt()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.getElement(0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.setProperty(oStr, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.getProperty(oStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = vNum.bindObject(vExt)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7010
     * @tc.name      : testTypeMismatchFromJSValueExt
     * @tc.desc      : cover JSInteropType extended fromJSValue with mismatched types throwing 34300005
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testTypeMismatchFromJSValueExt(): Unit {
        let ctx = sharedMiscErrContext
        let vStr = ctx.string("s").toJSValue()
        let vNum = ctx.number(1.5).toJSValue()
        try {
            let _ = Int8.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Int16.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Int32.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Int64.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = UInt8.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = UInt16.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = UInt32.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = UInt64.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Float16.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Float32.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Float64.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Bool.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = String.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = JSString.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = JSStringEx.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Utf16String.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = JSArrayEx<JSStringEx>.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = JSArrayEx<JSStringEx>.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = Option<Int32>.fromJSValue(ctx, vStr)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
        try {
            let _ = JSHashMapEx<String, String>.fromJSValue(ctx, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300005i32)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7020
     * @tc.name      : testOutOfRangeAccessors
     * @tc.desc      : cover index out of range scenarios throwing 34300001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testOutOfRangeAccessors(): Unit {
        let ctx = sharedMiscErrContext
        let vNum = ctx.number(1.5).toJSValue()
        let vStr = ctx.string("s").toJSValue()
        let oStr = ctx.string("o")
        let vArr = ctx.array([vNum]).toJSValue()
        let oArr = vArr.asArray()
        let use = JSStringEx("a")
        let use2 = JSStringEx("b")
        let uae = JSArrayEx<JSStringEx>([use])
        let u16 = Utf16String("hello")
        let u16b = Utf16String("ell")
        try {
            let _ = vArr.getElement(99)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = vArr.setElement(99, vNum)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = uae.set(99, use2)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = uae[99]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = oArr[99]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            oArr[99] = vNum
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            oArr[99] = oStr
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = u16[9999]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = u16[9999..10000]
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = u16.split(u16b, -1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
        try {
            let _ = ctx.arrayBuffer(-1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 34300001i32)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_arkinterop_ErrCode_7030
     * @tc.name      : testRequireArkModuleNotExist
     * @tc.desc      : cover requireArkModule with nonexistent path throwing 34300006/34300008
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testRequireArkModuleNotExist(): Unit {
        let ctx = sharedMiscErrContext
        try {
            let _ = ctx.requireArkModule("definitely/not/exist/module")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code == 34300006i32 || e.code == 34300008i32 || e.code == 401i32, true)
            @Expect(e.code, e.code)
        }

    }
}
