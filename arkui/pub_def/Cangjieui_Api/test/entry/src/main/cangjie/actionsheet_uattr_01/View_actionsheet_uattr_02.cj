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
 * Action sheet EC test view 2:
 *   - SheetInfo with empty title "" + action
 *   - ActionSheetButtonOptions with bool=false (enabled=false, defaultFocus=false) + normal values
 *   - ActionSheetButtonOptions with default/None (bool fields omitted)
 *   - ActionSheetOffset with zero dx, dy
 *   - ActionSheetOptions with default/None values
 *   - DismissDialogAction with another reason (covered)
 *   - Equatable operators (==, !=) on DialogAlignment
 */
@Entry
@Component
public class View_actionsheet_uattr_02 {
    @State var sheetInfoEmptyResult: String = "None"
    @State var buttonOptionsFalseResult: String = "None"
    @State var buttonOptionsNoneResult: String = "None"
    @State var offsetZeroResult: String = "None"
    @State var optionsNoneResult: String = "None"
    @State var dismissActionCoveredResult: String = "None"
    @State var equalityAlignmentResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // SheetInfo with empty title "" + action
        try {
            let sheet = SheetInfo(
                title: "",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 sheet empty title action")}
            )
            this.sheetInfoEmptyResult = "SheetInfoEmpty-ok"
        } catch (e: Exception) {
            this.sheetInfoEmptyResult = "SheetInfoEmpty-fail"
        }

        // ActionSheetButtonOptions with bool=false (enabled=false, defaultFocus=false) + normal values
        try {
            let btn = ActionSheetButtonOptions(
                enabled: false,
                defaultFocus: false,
                style: DialogButtonStyle.Default,
                value: "Cancel",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 buttonOptions false action")}
            )
            this.buttonOptionsFalseResult = "ButtonOptionsFalse-ok"
        } catch (e: Exception) {
            this.buttonOptionsFalseResult = "ButtonOptionsFalse-fail"
        }

        // ActionSheetButtonOptions with default/None (bool fields omitted)
        try {
            let btn = ActionSheetButtonOptions(
                value: "OK",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 buttonOptions none action")}
            )
            this.buttonOptionsNoneResult = "ButtonOptionsNone-ok"
        } catch (e: Exception) {
            this.buttonOptionsNoneResult = "ButtonOptionsNone-fail"
        }

        // ActionSheetOffset with zero dx, dy
        try {
            let offset = ActionSheetOffset(
                dx: 0.0f64.vp,
                dy: 0.0f64.vp
            )
            this.offsetZeroResult = "OffsetZero-ok"
        } catch (e: Exception) {
            this.offsetZeroResult = "OffsetZero-fail"
        }

        // ActionSheetOptions with default/None values
        try {
            let sheet = SheetInfo(
                title: "",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 options sheet action")}
            )
            let confirmBtn = ActionSheetButtonOptions(
                enabled: false,
                defaultFocus: false,
                value: "Cancel",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 options confirm action")}
            )
            let options = ActionSheetOptions(
                title: "Title only",
                message: "Message only",
                sheets: [sheet]
            )
            this.optionsNoneResult = "OptionsNone-ok"
        } catch (e: Exception) {
            this.optionsNoneResult = "OptionsNone-fail"
        }

        // DismissDialogAction with another reason (covered)
        try {
            let action = DismissDialogAction( DismissReason.TouchOutside)
            action.dismiss()
            this.dismissActionCoveredResult = "DismissActionCovered-ok"
        } catch (e: Exception) {
            this.dismissActionCoveredResult = "DismissActionCovered-fail"
        }

        // Equatable operators (==, !=) on DialogAlignment
        try {
            if (DialogAlignment.Bottom == DialogAlignment.Bottom &&
                DialogAlignment.Bottom != DialogAlignment.Top) {
                this.equalityAlignmentResult = "EqualityAlignment-ok"
            } else {
                this.equalityAlignmentResult = "EqualityAlignment-mismatch"
            }
        } catch (e: Exception) {
            this.equalityAlignmentResult = "EqualityAlignment-fail"
        }

        this.aggregateResult = "${this.sheetInfoEmptyResult};${this.buttonOptionsFalseResult};${this.buttonOptionsNoneResult};${this.offsetZeroResult};${this.optionsNoneResult};${this.dismissActionCoveredResult};${this.equalityAlignmentResult}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("SheetInfo(empty title): ${this.sheetInfoEmptyResult}").id("actionsheet_uattr_id")
                Text("ButtonOptions(bool=false+normal): ${this.buttonOptionsFalseResult}").id("buttonOptionsFalse_check")
                Text("ButtonOptions(default/None): ${this.buttonOptionsNoneResult}").id("buttonOptionsNone_check")
                Text("Offset(zero dx,dy): ${this.offsetZeroResult}").id("offsetZero_check")
                Text("Options(default/None): ${this.optionsNoneResult}").id("optionsNone_check")
                Text("DismissAction(covered): ${this.dismissActionCoveredResult}").id("dismissActionCovered_check")
                Text("EqualityAlignment(==,!=): ${this.equalityAlignmentResult}").id("equalityAlignment_check")
                Text("Aggregate: ${this.aggregateResult}").id("aggregate_check")
            }.width(80i64.percent)
    }
}
