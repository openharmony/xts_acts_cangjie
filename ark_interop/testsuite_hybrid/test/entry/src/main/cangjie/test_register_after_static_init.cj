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

import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule}

let _ = JSModule.registerModule {
    jsContext, jsObject => jsObject["testRegisterAfterStaticInit00"] = jsContext
        .function(testRegisterAfterStaticInit00)
        .toJSValue()
}

func testRegisterAfterStaticInit00(jsContext: JSContext, _: JSCallInfo): JSValue {
    JSModule.registerFunc("testRegisterAfterStaticInit00_00") {
        jsContext, jsCallInfo => jsContext.number(1.0).toJSValue()
    }
    jsContext.undefined().toJSValue()
}
