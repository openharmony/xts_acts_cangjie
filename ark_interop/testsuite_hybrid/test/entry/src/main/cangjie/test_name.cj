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

let _ = JSModule.registerModule {
    jsContext, jsObject =>
    jsObject[""] = jsContext.boolean(true).toJSValue()
    jsObject["123MyName"] = jsContext.null().toJSValue()
    jsObject["var"] = jsContext.number(114.514).toJSValue()
    jsObject["if"] = jsContext.number(114.514).toJSValue()
    jsObject["\\b\\n\\a"] = jsContext.boolean(true).toJSValue()
    jsObject[" "] = jsContext.string("hello").toJSValue()
    jsObject["my name"] = jsContext.number(114.514).toJSValue()
    jsObject["my-name"] = jsContext.boolean(false).toJSValue()
    jsObject["my@name"] = jsContext.null().toJSValue()
    jsObject["{myName"] = jsContext.undefined().toJSValue()
    jsObject["$myName"] = jsContext.boolean(true).toJSValue()
    jsObject["_myName"] = jsContext.number(114.514).toJSValue()
    jsObject["my$Name"] = jsContext.string("hello").toJSValue()
    jsObject["我的名字"] = jsContext.number(114.514).toJSValue()
    jsObject["my名字"] = jsContext.boolean(false).toJSValue()
    jsObject["myUnicode\\u006ame"] = jsContext.number(114.514).toJSValue()
}
