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
import ohos.business_exception.*

func testRequireArkModulePubSys(context: JSContext, callInfo: JSCallInfo): JSValue {
    let module = context.requireArkModule("@ohos.hilog").asObject()
    let value = module["info"]
    if (!value.isFunction()) {
        return context.boolean(false).toJSValue()
    }
    value.asFunction().call(
        context.number(0).toJSValue(),
        context.string("test").toJSValue(),
        context.string("call pub sys").toJSValue()
    )
    context.boolean(true).toJSValue()
}

func testRequireArkModuleHmsNapi(context: JSContext, callInfo: JSCallInfo): JSValue {
    let module = context.requireArkModule("@hms.core.AAID").asObject()
    let result = module.callMethod("getAAID")
    context.boolean(result.isPromise()).toJSValue()
}

func testRequireArkModuleHmsHsp(context: JSContext, callInfo: JSCallInfo): JSValue {
    context.requireArkModule("@hms.ai.interactiveLiveness").asObject()
    context.boolean(true).toJSValue()
}

func testRequireArkModulePubSysKit(context: JSContext, callInfo: JSCallInfo): JSValue {
    let module = context.requireArkModule("@kit.PerformanceAnalysisKit").asObject()
    let hilog = module["hilog"].asObject()
    hilog.callMethod("info", [
        context.number(0).toJSValue(),
        context.string("test").toJSValue(),
        context.string("call pub sys kit").toJSValue()
    ])
    context.boolean(true).toJSValue()
}

func testRequireArkModuleLoadFail(context: JSContext, callInfo: JSCallInfo): JSValue {
    let specifier = callInfo[0].toString()
    try {
        context.requireArkModule(specifier)
        context.boolean(false).toJSValue()
    } catch (e: BusinessException) {
        context.boolean(e.code == 34300006).toJSValue()
    } catch (e: Exception) {
        context.boolean(false).toJSValue()
    }
}

let _ = JSModule.registerModule {
    context: JSContext, exports: JSObject =>
    exports["testRequireArkModulePubSys"] = context.function(testRequireArkModulePubSys).toJSValue()
    exports["testRequireArkModuleHmsNapi"] = context.function(testRequireArkModuleHmsNapi).toJSValue()
    exports["testRequireArkModuleHmsHsp"] = context.function(testRequireArkModuleHmsHsp).toJSValue()
    exports["testRequireArkModulePubSysKit"] = context.function(testRequireArkModulePubSysKit).toJSValue()
    exports["testRequireArkModuleLoadFail"] = context.function(testRequireArkModuleLoadFail).toJSValue()
}
