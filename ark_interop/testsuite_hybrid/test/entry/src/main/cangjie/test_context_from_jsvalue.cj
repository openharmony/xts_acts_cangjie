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

import ohos.ark_interop.{JSContext, JSCallInfo, JSModule, JSValue}
import ohos.app.ability.ui_ability.{createUIAbilityContextFromJSValue, createAbilityStageContextFromJSValue, createApplicationContextFromJSValue, createContextFromJSValue}
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.testmacro.*

let _ = JSModule.registerFunc("testCreateUIAbilityContextFromJSValue", testCreateUIAbilityContextFromJSValue)
let _ = JSModule.registerFunc("testCreateAbilityStageContextFromJSValue", testCreateAbilityStageContextFromJSValue)
let _ = JSModule.registerFunc("testCreateApplicationContextFromJSValue", testCreateApplicationContextFromJSValue)
let _ = JSModule.registerFunc("testCreateContextFromJSValue", testCreateContextFromJSValue)

func testCreateUIAbilityContextFromJSValue(jsContext: JSContext, callInfo: JSCallInfo): JSValue {
    let input = callInfo[0]
    let result = createUIAbilityContextFromJSValue(jsContext, input)
    Assert.isTrue(result.filesDir.size > 0)
    jsContext.undefined().toJSValue()
}

func testCreateAbilityStageContextFromJSValue(jsContext: JSContext, callInfo: JSCallInfo): JSValue {
    let input = callInfo[0]
    try {
        let result = createAbilityStageContextFromJSValue(jsContext, input)
        Assert.isTrue(result.filesDir.size > 0)
        @Expect(false)
    } catch (e: BusinessException) {
        @Expect(e.code, 401i32)
    }
    jsContext.undefined().toJSValue()
}

func testCreateApplicationContextFromJSValue(jsContext: JSContext, callInfo: JSCallInfo): JSValue {
    let input = callInfo[0]
    let result = createApplicationContextFromJSValue(jsContext, input)
    Assert.isTrue(result.filesDir.size > 0)
    jsContext.undefined().toJSValue()
}

func testCreateContextFromJSValue(jsContext: JSContext, callInfo: JSCallInfo): JSValue {
    let input = callInfo[0]
    let result = createContextFromJSValue(jsContext, input)
    Assert.isTrue(result.filesDir.size > 0)
    jsContext.undefined().toJSValue()
}
