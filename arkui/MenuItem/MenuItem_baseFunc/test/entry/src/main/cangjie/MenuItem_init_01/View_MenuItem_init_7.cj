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

package ohos_app_cangjie_entry.MenuItem_init_01

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
public class View_MenuItem_init_7 {
    @State
    var select: Bool = true
    let iconStr: AppResource = @r(app.media.startIcon)
    var iconStr2: AppResource = @r(app.media.right)

    @Builder
    func SubMenu() {
        Menu() {
            MenuItem(startIcon: "", content: "复制", endIcon: "", labelInfo: "Ctrl+C")
            MenuItem(startIcon: "", content: "粘贴", endIcon: "", labelInfo: "Ctrl+V")
        }.font(size: 5.vp, weight: FontWeight.W100,family:"HarmonyOS Sans",style:FontStyle.Normal).fontColor(0x99000000).id("SubMenu_id")
    }

    @Builder
    func MyMenu() {
        Menu() {
            MenuItem(startIcon: @r(app.media.startIcon), content: @r(app.string.contentName),
                endIcon: @r(app.media.blank), labelInfo: @r(app.string.emptyName))
                .id("MenuItem_id")
                .contentFont(size: 16.vp,weight: FontWeight.W100, family: "HarmonyOS Sans", style: FontStyle.Normal)
                .contentFontColor(0x99000000)
                .labelFont(size: 16.vp,weight: FontWeight.W100, family: "HarmonyOS Sans", style: FontStyle.Normal)
                .labelFontColor(0x99000000)
                .selected(true)
                .selectIcon(true)
                
            MenuItem(startIcon: @r(app.media.startIcon), content: @r(app.string.contentName),
                endIcon: @r(app.media.blank), labelInfo: @r(app.string.emptyName)).enabled(false)
            MenuItem(
                startIcon: this.iconStr,
                content: @r(app.string.contentName),
                endIcon: this.iconStr,
                labelInfo: @r(app.string.emptyName),
                builder:  bind(this.SubMenu, this)
            )
            MenuItemGroup(header: "小标题", footer: "") {
                =>
                MenuItem(
                    startIcon: this.iconStr,
                    content: @r(app.string.contentName),
                    endIcon: @r(app.string.emptyName),
                    labelInfo: @r(app.string.emptyName),
                    builder:bind(this.SubMenu, this)
                )
                MenuItem(
                    startIcon: @r(app.media.startIcon),
                    content: @r(app.string.contentName),
                    endIcon: @r(app.media.right),
                    labelInfo: @r(app.string.emptyName),
                    builder: {=> bind(this.SubMenu, this)()}
                )
                MenuItem(
                    startIcon: "",
                    content: "菜单选项",
                    endIcon: "",
                    labelInfo: "",
                ).selectIcon(true).selected(select).onChange({
                    selected => iconStr2 = @r(app.media.foreground)
                })
            }
        }.font(size: 5.vp, weight: FontWeight.W100,family:"HarmonyOS Sans",style:FontStyle.Normal).fontColor(0x99000000).id("Menu_id")
    }

    func build() {
        Row() {
            Column() {
                Text("click to show menu").fontSize(50).fontWeight(FontWeight.Bold).id("Text_id")
            }.bindMenu(builder: this.MyMenu).width(50.percent)
        }.height(100.percent)
    }
}
