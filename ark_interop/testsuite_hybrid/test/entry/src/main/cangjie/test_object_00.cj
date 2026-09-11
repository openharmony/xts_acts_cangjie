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
    jsContext: JSContext, jsObject: JSObject => jsObject["test_object_00"] = jsContext
        .function(test_object_00)
        .toJSValue()
}

func test_object_00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 2)
    Assert.isTrue(jsCallInfo[0].isObject())
    let jsObject = jsCallInfo[0].asObject()
    Assert.isTrue(jsCallInfo[1].isClass())
    let jsClass = jsCallInfo[1].asClass()
    Assert.isTrue(jsObject.hasProperty("instanceProperty0"))
    Assert.isFalse(jsObject.hasProperty("nonExistedProperty"))
    Assert.isTrue(jsObject.getProperty("nonExistedProperty").isUndefined())
    Assert.isTrue(jsObject["nonExistedProperty"].isUndefined())
    Assert.isTrue(jsObject.hasProperty("instanceProperty2"))
    Assert.isTrue(jsObject.getProperty("instanceProperty2").isBoolean())
    Assert.equals(jsObject.getProperty("instanceProperty2").toBoolean(), true)
    Assert.equals(jsObject["instanceProperty2"].toBoolean(), true)
    Assert.isTrue(jsObject.hasProperty("ownProperty0"))
    Assert.isTrue(jsObject.getProperty("ownProperty0").isNumber())
    Assert.equals(jsObject.getProperty("ownProperty0").toNumber(), 114514.0f64)

    Assert.equals(jsObject.callMethod("instanceMethod0", jsContext.number(114.514).toJSValue()).toNumber(), 115.514)
    try {
        jsObject.setProperty("nonExistedProperty", jsContext.number(2333.0).toJSValue())
        Assert.isTrue(jsObject.hasProperty("nonExistedProperty"))
    } catch (e: Exception) {
        Hilog.error(0, "cangjietest", e.toString())
    }

    jsContext.undefined().toJSValue()
}
