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

import std.runtime.*
import ohos.ark_interop.*
import ohos.base.*

func testNewScope0(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    let result = promise.toJSValue()
    spawn (UIThread) {
        context.newScope {
            context.string("test")
        }
        promise.resolve(context.undefined().toJSValue())
    }
    result
}

func testNewScopeNested(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    let result = promise.toJSValue()
    spawn (UIThread) {
        context.newScope {
            Hilog.info(0, "Cangjietest", "test")
            context.newScope {
                Hilog.info(0, "CangjietestNested", "test")
            }
        }
        promise.resolve(context.undefined().toJSValue())
    }
    result
}

func createContext(): JSContext {
    JSRuntime().mainContext
}

func testNewScope1(context: JSContext, callInfo: JSCallInfo): JSValue {
    let promise = context.promiseCapability()
    let result = promise.toJSValue()
    let newContext = createContext()
    gc(heavy: true)
    context
        .global
        .callMethod("setTimeout",
            [context
                .function {
                    _ctx, _info =>
                    try {
                        newContext.newScope {}
                        promise.reject(context.string("no exception throw").toJSValue())
                    } catch (e: Exception) {
                        promise.resolve(context.undefined().toJSValue())
                    }
                    context.undefined().toJSValue()
                }
                .toJSValue(), context.number(2000).toJSValue()])
    return result
}

func testNewScope2(context: JSContext, callInfo: JSCallInfo): JSValue {
    let hasThrow = spawn {
        try {
            context.newScope {}
            false
        } catch (e: Exception) {
            true
        }
    }.get()
    context.boolean(hasThrow).toJSValue()
}

let _ = JSModule.registerModule {
    context, exports =>
    exports["testNewScope0"] = context.function(testNewScope0).toJSValue()
    exports["testNewScope1"] = context.function(testNewScope1).toJSValue()
    exports["testNewScope2"] = context.function(testNewScope2).toJSValue()
    exports["testNewScopeNested"] = context.function(testNewScopeNested).toJSValue()
}
