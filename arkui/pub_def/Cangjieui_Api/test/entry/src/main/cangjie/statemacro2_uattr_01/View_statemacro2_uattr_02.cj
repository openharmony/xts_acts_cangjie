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

package ohos_app_cangjie_entry.statemacro2_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Component
class ChildConsume_macro02 {
    @Consume
    var consumedValue: String
    @Consume
    var consumedValue2: String

    func build() {
        Column(space: 5i64.vp){
                Text("consume: ${this.consumedValue}").id("sm_consume_check")
                Text("consume2: ${this.consumedValue2}").id("sm_consume2_check")
            }.width(90i64.percent)
    }
}

@Entry
@Component
public class View_statemacro2_uattr_02 {
    @Provide //("testKey")
    var providedValue: String = "provided_normal"
    @Provide //("testKey2", "InterOp")
    var providedValue2: String = "provided_interop"

    func build() {
        Column(space: 5i64.vp){
                Text("provide: ${this.providedValue}").id("sm_provide_check")
                Text("provide2: ${this.providedValue2}").id("sm_provide2_check")
            }.width(100i64.percent)
    }
}
