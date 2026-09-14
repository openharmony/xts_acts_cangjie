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

package ohos_app_cangjie_entry

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSObject}
import std.math.numeric.BigInt

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testBigInt00"] = jsContext.function(testBigInt00).toJSValue()
    jsObject["testBigInt01"] = jsContext.function(testBigInt01).toJSValue()
    jsObject["testBigInt02"] = jsContext.function(testBigInt02).toJSValue()
    jsObject["testBigInt03"] = jsContext.function(testBigInt03).toJSValue()
    jsObject["testBigInt04"] = jsContext.function(testBigInt04).toJSValue()
    jsObject["testBigInt05"] = jsContext.function(testBigInt05).toJSValue()
    jsObject["testBigInt06"] = jsContext.function(testBigInt06).toJSValue()
    jsObject["testBigInt07"] = jsContext.function(testBigInt07).toJSValue()
    jsObject["testBigInt08"] = jsContext.function(testBigInt08).toJSValue()
    jsObject["testBigInt09"] = jsContext.function(testBigInt09).toJSValue()
    jsObject["testBigInt10"] = jsContext.function(testBigInt10).toJSValue()
    jsObject["testBigInt11"] = jsContext.function(testBigInt11).toJSValue()
    jsObject["testBigInt13"] = jsContext.function(testBigInt13).toJSValue()
    jsObject["testBigInt14"] = jsContext.function(testBigInt14).toJSValue()
    jsObject["testBigInt15"] = jsContext.function(testBigInt15).toJSValue()
    jsObject["testBigInt16"] = jsContext.function(testBigInt16).toJSValue()
    jsObject["testBigInt17"] = jsContext.function(testBigInt17).toJSValue()
    jsObject["testBigInt18"] = jsContext.function(testBigInt18).toJSValue()
    jsObject["testBigInt19"] = jsContext.function(testBigInt19).toJSValue()
    jsObject["testBigInt20"] = jsContext.function(testBigInt20).toJSValue()
    jsObject["testBigInt21"] = jsContext.function(testBigInt21).toJSValue()
    jsObject["testBigInt22"] = jsContext.function(testBigInt22).toJSValue()
    jsObject["testBigInt23"] = jsContext.function(testBigInt23).toJSValue()
    jsObject["testBigInt24"] = jsContext.function(testBigInt24).toJSValue()
    jsObject["testBigInt25"] = jsContext.function(testBigInt25).toJSValue()
    jsObject["testBigInt26"] = jsContext.function(testBigInt26).toJSValue()
    jsObject["testBigInt27"] = jsContext.function(testBigInt27).toJSValue()
    jsObject["testBigInt28"] = jsContext.function(testBigInt28).toJSValue()
    jsObject["testBigInt29"] = jsContext.function(testBigInt29).toJSValue()

    jsObject["testBigInt30"] = jsContext.function(testBigInt30).toJSValue()

    jsObject["testBigInt31"] = jsContext.function(testBigInt31).toJSValue()

    jsObject["testBigInt32"] = jsContext.function(testBigInt32).toJSValue()

    jsObject["testBigInt33"] = jsContext.function(testBigInt33).toJSValue()

    jsObject["testBigInt34"] = jsContext.function(testBigInt34).toJSValue()

    jsObject["testBigInt35"] = jsContext.function(testBigInt35).toJSValue()

    jsObject["testBigInt36"] = jsContext.function(testBigInt36).toJSValue()

    jsObject["testBigInt37"] = jsContext.function(testBigInt37).toJSValue()

    jsObject["testBigInt38"] = jsContext.function(testBigInt38).toJSValue()

    jsObject["testBigInt39"] = jsContext.function(testBigInt39).toJSValue()
}

func testBigInt00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(!jsCallInfo[0].isBigInt())
    jsContext.undefined().toJSValue()
}

func testBigInt01(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(0).toJSValue()
}

func testBigInt02(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(!jsCallInfo[0].isBigInt())
    jsContext.undefined().toJSValue()
}

func testBigInt03(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt04(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.isTrue(bigInt == BigInt(3))
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.bitLen, 2)
    jsContext.undefined().toJSValue()
}

func testBigInt05(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt06(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt07(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt08(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt09(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt10(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt11(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt12(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.bigint(3).toJSValue()
}

func testBigInt13(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt14(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt15(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt16(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt17(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt18(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt19(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt20(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt21(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt22(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt23(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    jsContext.undefined().toJSValue()
}

func testBigInt24(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-9223372036854775809")
    jsContext.undefined().toJSValue()
}

func testBigInt25(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-9223372036854775808")
    jsContext.undefined().toJSValue()
}

func testBigInt26(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-9223372036854775807")
    jsContext.undefined().toJSValue()
}

func testBigInt27(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-114514")
    jsContext.undefined().toJSValue()
}

func testBigInt28(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, -1)
    Assert.equals(bigInt.toString(), "-1")
    jsContext.undefined().toJSValue()
}

func testBigInt29(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "0")
    jsContext.undefined().toJSValue()
}

func testBigInt30(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "1")
    jsContext.undefined().toJSValue()
}

func testBigInt31(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "114514")
    jsContext.undefined().toJSValue()
}

func testBigInt32(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "9223372036854775806")
    jsContext.undefined().toJSValue()
}

func testBigInt33(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "9223372036854775807")
    jsContext.undefined().toJSValue()
}

func testBigInt34(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 1)
    Assert.equals(bigInt.toString(), "9223372036854775808")
    jsContext.undefined().toJSValue()
}

func testBigInt35(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "xxx")
    jsContext.undefined().toJSValue()
}

func testBigInt36(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "xxx")
    jsContext.undefined().toJSValue()
}

func testBigInt37(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "xxx")
    jsContext.undefined().toJSValue()
}

func testBigInt38(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "xxx")
    jsContext.undefined().toJSValue()
}

func testBigInt39(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let jsBigInt = jsCallInfo[0].asBigInt()
    let bigInt = jsBigInt.toBigInt()
    Assert.equals(bigInt.sign, 0)
    Assert.equals(bigInt.toString(), "xxx")
    jsContext.undefined().toJSValue()
}
