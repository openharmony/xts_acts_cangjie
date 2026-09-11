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
    jsContext: JSContext, jsObject: JSObject => jsObject["testArray01"] = jsContext.function(testArray01).toJSValue()
}

func testArray01(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Assert.equals(jsCallInfo.count, 1)
    Assert.isTrue(jsCallInfo[0].isArray())
    let array = jsCallInfo[0].asArray()
    Assert.equals(array.size, 5)
    let elem_0 = array[0]
    Assert.isTrue(elem_0.isNumber())
    Assert.equals(elem_0.toNumber(), 114.514f64)
    let elem_1 = array[1]
    Assert.isTrue(elem_1.isString())
    Assert.equals(elem_1.toString(), "my love")
    let elem_2 = array[2]
    Assert.isTrue(elem_2.isUndefined())
    let elem_3 = array[3]
    Assert.isTrue(elem_3.isNull())
    let elem_4 = array[4]
    Assert.isTrue(elem_4.isBoolean())
    Assert.equals(elem_4.toBoolean(), true)
    jsContext.undefined().toJSValue()
}
