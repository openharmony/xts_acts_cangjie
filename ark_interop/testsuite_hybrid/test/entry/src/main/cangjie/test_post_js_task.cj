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

func testPostJSTask00(jsContext: JSContext, _: JSCallInfo): JSValue {
    Assert.isTrue(jsContext.isInBindThread())
    spawn {
        Assert.isFalse(jsContext.isInBindThread())
    }
    jsContext.undefined().toJSValue()
}

func testPostJSTask01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    let a = jsCallInfo[0].toNumber()
    let b = jsCallInfo[1].toNumber()
    let f = jsCallInfo[2].asFunction()
    let promise = jsContext.promiseCapability()
    spawn {
        jsContext.postJSTask {
            => promise.resolve(jsContext.undefined().toJSValue())
        }
    }
    promise.toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject["testPostJSTask00"] = jsContext.function(testPostJSTask00).toJSValue()
    jsObject["testPostJSTask01"] = jsContext.function(testPostJSTask01).toJSValue()
}
