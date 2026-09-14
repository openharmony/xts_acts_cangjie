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

@Entry
@Component
public class View_statemacro2_uattr_01 {
    @State
    var stateValue: String = "state_init"
    @State
    var linkParent: String = "link_parent"

    func build() {
        Column(space: 5i64.vp){
                Text("state: ${this.stateValue}").id("sm_state_check")
                Button("change state").onClick({ e =>
                    this.stateValue = "state_changed"
                }).id("sm_change_state_btn")
                ChildComponent_macro01(propValue: this.stateValue, linkValue: this.linkParent)
            }.width(100i64.percent)
    }
}

@Reusable
@Component
class ChildComponent_macro01 {
    @Prop
    var propValue: String 
    @Link
    var linkValue: String

    func build() {
        Column(space: 5i64.vp){
                Text("prop: ${this.propValue}").id("sm_prop_check")
                Text("link: ${this.linkValue}").id("sm_link_check")
                Button("change link").onClick({ e =>
                    this.linkValue = "link_changed"
                }).id("sm_change_link_btn")
            }.width(90i64.percent)
    }
}