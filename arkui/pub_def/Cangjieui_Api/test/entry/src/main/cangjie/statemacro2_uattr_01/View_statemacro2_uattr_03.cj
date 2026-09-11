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
class ChildBuilder_macro03 {
    @BuilderParam
    var contentBuilder: () -> Unit

    func build() {
        Column(space: 5i64.vp){
                Text("builderParam received").id("sm_builderparam_check")
                this.contentBuilder()
            }.width(90i64.percent)
    }
}

@Entry
@Component
public class View_statemacro2_uattr_03 {
    @State
    var watchedValue: String = "watch_init"
    @State
    var watchTriggered: String = "no"
    @State
    var binderResult: String = "binder_init"

    func onWatchCallback() {
        this.watchTriggered = "yes"
    }

    @Builder
    func headerBuilder() {
        Text("header_from_builder").id("sm_builder_check")
    }

    func build() {
        Column(space: 5i64.vp){
                Text("watched: ${this.watchedValue}").id("sm_watched_check")
                Text("watchTriggered: ${this.watchTriggered}").id("sm_watch_check")
                Button("change watched").onClick({ e =>
                    this.watchedValue = "watch_changed"
                }).id("sm_change_watched_btn")
                this.headerBuilder()
            }.width(100i64.percent)
    }
}
