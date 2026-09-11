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

package ohos_app_cangjie_entry.MenuItem_uevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Component
public class View_MenuItem_uevent_01 {
    @State var select: Bool = false
    @State var onChangeValue: Bool = false

    @Builder
    func MyMenu() {
        Menu() {
            MenuItem(startIcon: "", content: "菜单选项", endIcon: "", labelInfo: "")
                .selectIcon(true)
                .selected(select)
                .onChange({ selected: Bool =>
                    onChangeValue = selected
                })
                .id("MenuItem_id")
        }
            .font(size: 5.vp, weight: FontWeight.Normal, family: "HarmonyOS Sans", style: FontStyle.Normal)
            .fontColor(0x99000000)
            .id("Menu_id")
    }

    func build() {
        Row() {
            Column() {
                Text("click to show menu").fontSize(50).fontWeight(FontWeight.Bold).id("Text_id")
                Text("onChange: ${onChangeValue}").id("onChange_result_id")
            }.bindMenu(builder: this.MyMenu).width(50.percent)
        }.height(100.percent)
    }
}
