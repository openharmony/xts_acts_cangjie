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
import std.math.MathExtension

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject => jsObject["testArray02"] = jsContext.function(testArray02).toJSValue()
}

// js创建空array传入cj
func testArray02(jsContext: JSContext, _: JSCallInfo): JSValue {
    let array = jsContext.array(Array<JSValue>(5, repeat: jsContext.null().toJSValue()))
    array[0] = jsContext.number(114.514f64).toJSValue()
    array[1] = jsContext.boolean(false).toJSValue()
    array.toJSValue()
}
