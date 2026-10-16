// NOTE: This testsuite does not have its own Ability entry. It depends on testsuite_hybrid's Ability entry to run.
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

package ohos_app_cangjie_entry

import ohos.ark_interop.*

func testCJ(runtime: JSContext, _: JSCallInfo): JSValue {
    return runtime
        .number(Int32(1))
        .toJSValue()
}

func testNumKey(context: JSContext, callInfo: JSCallInfo): JSValue {
    let object = context.object();
    let key1 = "keyName"
    let a = callInfo[0].toNumber()
    let b = callInfo[1].toNumber()
    let callback = callInfo[2].asFunction()
    spawn {
        let result = a + b
        context.postJSTask {
            callback.call(context
                .number(result)
                .toJSValue())
        }
    }
    object[key1] = context
        .string("abc")
        .toJSValue()
    return object[key1]
}

let EXPORT_MODULE = JSModule.registerModule {
    runtime, exports =>
    exports["testCJ"] = runtime
        .function(testCJ)
        .toJSValue()
    exports["testNumKey"] = runtime
        .function(testNumKey)
        .toJSValue()
}
