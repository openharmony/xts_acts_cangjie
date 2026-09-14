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

import ohos.ark_interop.{JSModule, JSContext, JSCallInfo, JSValue, JSClass, JSObject, SharedObject, JSRuntime}

func testFunction00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isFunction())
    let f = jsCallInfo[0].asFunction()
    let result = f.call(jsContext.number(114.514).toJSValue())
    Assert.isTrue(result.isNumber())
    Assert.equals(result.toNumber(), 115.514)
    jsContext.undefined().toJSValue()
}

func testFunction01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 115.514)
        Assert.isUnreachable()
    } catch (e: Exception) {
        Assert.equals(e.toString(), "xxxx")
    }
    jsContext.undefined().toJSValue()
}

func testFunction02(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 115.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func testFunction03(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 115.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func testFunction04(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 116.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func testFunction05(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    try {
        Assert.equals(jsCallInfo.count, 1)
        Assert.isTrue(jsCallInfo[0].isFunction())
        let f = jsCallInfo[0].asFunction()
        let result = f.call(jsContext.number(114.514).toJSValue())
        Assert.isTrue(result.isNumber())
        Assert.equals(result.toNumber(), 117.514)
    } catch (e: Exception) {
        Assert.isUnreachable()
    }
    jsContext.undefined().toJSValue()
}

func globalFunction_test_function_06(a: Float64): Float64 {
    a + 1.0
}

func testFunction06(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsContext
        .function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            Assert.equals(jsCallInfo.count, 1)
            Assert.isTrue(jsCallInfo[0].isNumber())
            let a = jsCallInfo[0].toNumber()
            let result = globalFunction_test_function_06(a)
            jsContext.number(result).toJSValue()
        }
        .toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testFunction00"] = jsContext.function(testFunction00).toJSValue()
    jsObject["testFunction01"] = jsContext.function(testFunction01).toJSValue()
    jsObject["testFunction02"] = jsContext.function(testFunction02).toJSValue()
    jsObject["testFunction03"] = jsContext.function(testFunction03).toJSValue()
    jsObject["testFunction04"] = jsContext.function(testFunction04).toJSValue()
    jsObject["testFunction05"] = jsContext.function(testFunction05).toJSValue()
    jsObject["testFunction06"] = jsContext.function(testFunction06).toJSValue()
}
