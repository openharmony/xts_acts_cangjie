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

package ohos_app_cangjie_entry.Select_Uniqueevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_Select_uevent_02 {
    @State
    var selectResult: String = "None"

    func build() {
        Column(){
        Text("onSelect: ${this.selectResult}").id("onSelect_check")    
        Row(space: 5i64.vp,
            child: {   
                => Select(
                    [SelectOption(value: "aaa", icon: @r(app.media.startIcon)),
                        SelectOption(value: "SelectB", icon: @r(app.media.background)),
                        SelectOption(value: "1234567", icon: @r(app.media.foreground))])
                    .selected(-1i32)
                    .value("")
                    .onSelect({ index: Int32, text: String =>
                        this.selectResult = "index:${index},text:${text}"
                        Hilog.info(0, "AppLogCj", "Select onSelect index:${index} text:${text}")
                    })
                    .id("Select_uevent_id")
            }).width(80i64.percent)}
    }
}
