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

import ohos.file.fs.FileIo
import ohos.ark_interop.{JSValue, JSRuntime, JSContext, JSCallInfo, JSModule, JSObject}

func testString00(jsContext: JSContext, jsCallInfo: JSCallInfo): JSValue {
    Hilog.info(0, "cangjietest", "1%%23%Efdasdf\u{0041}\\\$")
    let s = jsCallInfo[0].toString()
    Assert.equals(s, "123%Efdasdf")
    jsContext.undefined().toJSValue()
}

let _ = JSModule.registerModule {
    jsContext, jsObject => jsObject["testString00"] = jsContext.function(testString00).toJSValue()
}
