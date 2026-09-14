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

// js创建promise resolve number，cj then resolve
func testPromise00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsCallInfo[0].isPromise())
    let promise = jsCallInfo[0].asPromise()
    promise.then(
        jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            let result = jsCallInfo[0].toNumber()
            Assert.approxEquals(114514.0, result, reason: "my reason")
            jsContext.undefined().toJSValue()
        },
        onRejected: jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            Assert.isUnreachable()
            jsContext.undefined().toJSValue()
        }
    )
    promise.catchError(
        jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            Assert.isUnreachable()
            jsContext.undefined().toJSValue()
        }
    )
    jsContext.undefined().toJSValue()
}

// js创建promise reject number，cj then reject
func testPromise01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsCallInfo[0].isPromise())
    let promise = jsCallInfo[0].asPromise()
    promise.then(
        jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            Assert.isUnreachable()
            jsContext.undefined().toJSValue()
        },
        onRejected: jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            let result = jsCallInfo[0].toNumber()
            Assert.approxEquals(114514.0, result)
            jsContext.undefined().toJSValue()
        }
    )
    jsContext.undefined().toJSValue()
}

func testPromise02(jsContext: JSContext, _: JSCallInfo): JSValue {
    let promise = jsContext.promiseCapability()
    spawn {
        jsContext.postJSTask {
            promise.resolve(jsContext.string("666").toJSValue())
        }
    }
    promise.toJSValue()
}

func testPromise03(jsContext: JSContext, _: JSCallInfo): JSValue {
    let promise = jsContext.promiseCapability()
    spawn {
        jsContext.postJSTask {
            promise.reject(jsContext.undefined().toJSValue())
        }
    }
    promise.toJSValue()
}

func testPromise04(jsContext: JSContext, _: JSCallInfo): JSValue {
    let promise = jsContext.promiseCapability()
    spawn {
        jsContext.postJSTask {
            promise.reject(jsContext.string("this is an error").toJSValue())
        }
    }
    promise.toJSValue()
}

func testPromise05(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.isTrue(jsCallInfo[0].isPromise())
    let promise = jsCallInfo[0].asPromise()
    promise.then(
        jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            Assert.isUnreachable()
            jsContext.undefined().toJSValue()
        }
    )

    promise.catchError(
        jsContext.function {
            jsContext: JSContext, jsCallInfo: JSCallInfo =>
            let result = jsCallInfo[0].toNumber()
            Assert.equals(114514.0, result)
            jsContext.undefined().toJSValue()
        }
    )
    jsContext.undefined().toJSValue()
}

func testPromise06(jsContext: JSContext, _: JSCallInfo): JSValue {
    let promise = jsContext.promiseCapability()
    promise.resolve(jsContext.undefined().toJSValue())
    promise.toJSValue()
}

func testPromise07(jsContext: JSContext, _: JSCallInfo): JSValue {
    let promise = jsContext.promiseCapability()
    spawn {
        promise.resolve(jsContext.undefined().toJSValue())
    }
    promise.toJSValue()
}

func testPromise08(jsContext: JSContext, _: JSCallInfo): JSValue {
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testPromise00"] = jsContext.function(testPromise00).toJSValue()
    jsObject["testPromise01"] = jsContext.function(testPromise01).toJSValue()
    jsObject["testPromise02"] = jsContext.function(testPromise02).toJSValue()
    jsObject["testPromise03"] = jsContext.function(testPromise03).toJSValue()
    jsObject["testPromise04"] = jsContext.function(testPromise04).toJSValue()
    jsObject["testPromise05"] = jsContext.function(testPromise05).toJSValue()
}
