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

func testJSThreadMismatchException00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let anotherJSRuntime = JSRuntime()
    let anotherJSContext = anotherJSRuntime.mainContext
    try {
        let f = jsCallInfo[0].asFunction()
        Assert.isUnreachable()
    } catch (e: Exception) {
        Assert.equals(e.toString(), "xxx")
    }
    jsContext.undefined().toJSValue()
}

func testJSArrayRangeMismatchException00(jsContext: JSContext, _: JSCallInfo): JSValue {
    let jsArray = jsContext.array([jsContext.number(1.0).toJSValue()])
    try {
        jsArray[1]
        Assert.isUnreachable()
    } catch (e: Exception) {
        Assert.equals(e.toString(),
            "BusinessException: errorcode: 34300001, message: The accessing index is out of range, allowed: [0, 1), given: 1"
        )
    }
    jsContext.undefined().toJSValue()
}

func testException00(_: JSContext, _: JSCallInfo): JSValue {
    throw Exception("message of this exception")
}

func testException01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    jsCallInfo[0].asFunction().call()
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testException00"] = jsContext.function(testException00).toJSValue()
    jsObject["testException01"] = jsContext.function(testException01).toJSValue()
    jsObject["testJSThreadMismatchException00"] = jsContext.function(testJSThreadMismatchException00).toJSValue()
    jsObject["testJSArrayRangeMismatchException00"] = jsContext
        .function(testJSArrayRangeMismatchException00)
        .toJSValue()
}
