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

package ohos_app_cangjie_entry.RTex_Uniqueevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import ohos.resource.__GenerateResource__
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_RichText_uevent_03 {
    @State
    var startResult: String = "None"
    @State
    var completeResult: String = "None"

    func build() {
        Column(){
        Text("onStart: ${this.startResult}").id("onStart_check")
        Text("onComplete: ${this.completeResult}").id("onComplete_check")
        Column(space: 5i64.vp, child: {

            => RichText("<p>RichText onStart onComplete test</p>").id("RichText_id")
                .onStart({ =>
                    this.startResult = "started"

                })
                .onComplete({ =>
                    this.completeResult = "completed"
                })
        }).width(80i64.percent)}
    }
}
