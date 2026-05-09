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

package ohos_app_cangjie_entry_test

import ohos.ark_interop.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.state_management.AppStorage
import ohos.data.relational_store.*
import ohos.callback_invoke.Callback1Argument
import ohos.callback_invoke.{CallbackObject, Callback0Argument}

class TestCallback0 <: Callback0Argument {
    public init() {
    }
    public func invoke(err: ?BusinessException): Unit {
        Hilog.info(0u32, "cangjietest", "", "callback invoke.")
    }
}