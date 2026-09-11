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

import ohos.file.fs.FileIo
import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule, JSObject}

let _ = JSModule.registerModule {
    jsContext: JSContext, jsObject: JSObject => jsObject["test_object_02"] = jsContext
        .function(test_object_02)
        .toJSValue()
}

func test_object_02(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isObject())
    let jsObject = jsCallInfo[0].asObject()
    let somePropertyName = "someProperty"
    Assert.isFalse(jsObject.hasProperty(somePropertyName))
    jsObject.defineOwnProperty(somePropertyName, jsContext.boolean(true).toJSValue())
    Assert.isTrue(jsObject.hasProperty(somePropertyName))
    Assert.isTrue(jsObject.getProperty(somePropertyName).isBoolean())
    Assert.equals(jsObject.getProperty(somePropertyName).toBoolean(), true)
    jsContext.undefined().toJSValue()
}
