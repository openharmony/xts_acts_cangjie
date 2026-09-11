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

package ohos_app_cangjie_entry.actionsheet_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.action_sheet.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

/**
 * Action sheet EC test view 1:
 *   - SheetInfo with normal title + icon + action
 *   - ActionSheetButtonOptions with bool=true (enabled=true, defaultFocus=true) + normal values
 *   - ActionSheetOffset with normal dx, dy
 *   - ActionSheetOptions with normal values (title, message, sheets, confirm, autoCancel, isModal)
 *   - DismissDialogAction with reason and dismiss() call
 *   - Equatable operators (==, !=) on DialogButtonStyle
 */
@Entry
@Component
public class View_actionsheet_uattr_01 {
    @State var sheetInfoResult: String = "None"
    @State var buttonOptionsResult: String = "None"
    @State var offsetResult: String = "None"
    @State var optionsResult: String = "None"
    @State var dismissActionResult: String = "None"
    @State var equalityResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // SheetInfo with normal title + icon + action
        try {
            let sheet = SheetInfo(
                title: "Sheet Normal Title",
                icon: "icon_normal",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 sheet action")}
            )
            this.sheetInfoResult = "SheetInfo-ok"
        } catch (e: Exception) {
            this.sheetInfoResult = "SheetInfo-fail"
        }

        // ActionSheetButtonOptions with bool=true (enabled, defaultFocus) + normal values
        try {
            let btn = ActionSheetButtonOptions(
                enabled: true,
                defaultFocus: true,
                style: DialogButtonStyle.Default,
                value: "Confirm",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 buttonOptions action")}
            )
            this.buttonOptionsResult = "ButtonOptions-ok"
        } catch (e: Exception) {
            this.buttonOptionsResult = "ButtonOptions-fail"
        }

        // ActionSheetOffset with normal dx, dy
        try {
            let offset = ActionSheetOffset(
                dx: 0.0f64.vp,
                dy: 40.0f64.vp
            )
            this.offsetResult = "Offset-ok"
        } catch (e: Exception) {
            this.offsetResult = "Offset-fail"
        }

        // ActionSheetOptions with normal values
        try {
            let sheet = SheetInfo(
                title: "Sheet Normal Title",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 options sheet action")}
            )
            let confirmBtn = ActionSheetButtonOptions(
                enabled: true,
                defaultFocus: true,
                value: "OK",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 options confirm action")}
            )
            let options = ActionSheetOptions(
                title: "Dialog Title",
                message: "Dialog Message",
                confirm: confirmBtn,
                sheets: [sheet],
                autoCancel: true,
                isModal: true,
                alignment: DialogAlignment.Bottom,
                showInSubWindow: false
            )
            this.optionsResult = "Options-ok"
        } catch (e: Exception) {
            this.optionsResult = "Options-fail"
        }

        // DismissDialogAction with reason and dismiss() call
        try {
            let action = DismissDialogAction(DismissReason.PressBack)
            action.dismiss()
            this.dismissActionResult = "DismissAction-ok"
        } catch (e: Exception) {
            
            this.dismissActionResult = "DismissAction-fail"
        }

        // Equatable operators (==, !=) on DialogButtonStyle
        try {
            if (DialogButtonStyle.Default == DialogButtonStyle.Default &&
                DialogButtonStyle.Default != DialogButtonStyle.Highlight) {
                this.equalityResult = "Equality-ok"
            } else {
                this.equalityResult = "Equality-mismatch"
            }
        } catch (e: Exception) {
            this.equalityResult = "Equality-fail"
        }

        this.aggregateResult = "${this.sheetInfoResult};${this.buttonOptionsResult};${this.offsetResult};${this.optionsResult};${this.dismissActionResult};${this.equalityResult}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("SheetInfo(normal title): ${this.sheetInfoResult}").id("actionsheet_uattr_id")
                Text("ButtonOptions(bool=true+normal): ${this.buttonOptionsResult}").id("buttonOptions_check")
                Text("Offset(normal dx,dy): ${this.offsetResult}").id("offset_check")
                Text("Options(normal values): ${this.optionsResult}").id("options_check")
                Text("DismissAction(reason+dismiss): ${this.dismissActionResult}").id("dismissAction_check")
                Text("Equality(==,!=): ${this.equalityResult}").id("equality_check")
                Text("Aggregate: ${this.aggregateResult}").id("aggregate_check")
            }.width(80i64.percent)
    }
}
