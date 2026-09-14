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

package ohos_app_cangjie_entry.alertdialog_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.alert_dialog.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

/**
 * Alert dialog EC test view 2:
 *   - DialogButtonDirection.Horizontal (primary) and Vertical (covered)
 *   - AlertDialogButtonBaseOptions with bool=false (enabled=false, defaultFocus=false) + normal values
 *   - AlertDialogButtonBaseOptions with default/None (bool fields omitted)
 *   - AlertDialogButtonOptions (primary=false), AlertDialogParamWithConfirm(None),
 *     AlertDialogParamWithButtons(bool=false), AlertDialogParamWithOptions(Horizontal/Vertical)
 */
@Entry
@Component
public class View_alertdialog_uattr_02 {
    @State var directionHorizontalResult: String = "None"
    @State var directionVerticalResult: String = "None"
    @State var buttonBaseFalseResult: String = "None"
    @State var buttonBaseNoneResult: String = "None"
    @State var buttonOptionsFalseResult: String = "None"
    @State var paramWithConfirmNoneResult: String = "None"
    @State var paramWithButtonsFalseResult: String = "None"
    @State var paramWithOptionsHorizontalResult: String = "None"
    @State var paramWithOptionsVerticalResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // DialogButtonDirection.Horizontal
        try {
            let dir = DialogButtonDirection.Horizontal
            this.directionHorizontalResult = "Horizontal-ok"
        } catch (e: Exception) {
            this.directionHorizontalResult = "Horizontal-fail"
        }

        // DialogButtonDirection.Vertical (covered)
        try {
            let dir = DialogButtonDirection.Vertical
            this.directionVerticalResult = "Vertical-ok"
        } catch (e: Exception) {
            this.directionVerticalResult = "Vertical-fail"
        }

        // AlertDialogButtonBaseOptions with bool=false (enabled=false, defaultFocus=false) + normal values
        try {
            let btn = AlertDialogButtonBaseOptions(
                enabled: false,
                defaultFocus: false,
                style: DialogButtonStyle.Default,
                value: "Cancel",
                fontColor: Color.Gray,
                backgroundColor: Color.Black,
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 buttonBase false action")}
            )
            this.buttonBaseFalseResult = "ButtonBaseFalse-ok"
        } catch (e: Exception) {
            this.buttonBaseFalseResult = "ButtonBaseFalse-fail"
        }

        // AlertDialogButtonBaseOptions with default/None (bool fields omitted)
        try {
            let btn = AlertDialogButtonBaseOptions(
                value: "OK",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 buttonBase none action")}
            )
            this.buttonBaseNoneResult = "ButtonBaseNone-ok"
        } catch (e: Exception) {
            this.buttonBaseNoneResult = "ButtonBaseNone-fail"
        }

        // AlertDialogButtonOptions with primary=false
        try {
            let btnOpt = AlertDialogButtonOptions(
                enabled: false,
                defaultFocus: false,
                value: "Cancel",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 buttonOptions false action")},
                primary: false
            )
            this.buttonOptionsFalseResult = "ButtonOptionsFalse-ok"
        } catch (e: Exception) {
            this.buttonOptionsFalseResult = "ButtonOptionsFalse-fail"
        }

        // AlertDialogParamWithConfirm with default/None fields
        try {
            let confirmBtn = AlertDialogButtonBaseOptions(
                enabled: false,
                defaultFocus: false,
                value: "Confirm",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 confirm none action")}
            )
            let param = AlertDialogParamWithConfirm(
                message: "Message",
                confirm: confirmBtn
            )
            this.paramWithConfirmNoneResult = "ParamConfirmNone-ok"
        } catch (e: Exception) {
            this.paramWithConfirmNoneResult = "ParamConfirmNone-fail"
        }

        // AlertDialogParamWithButtons with bool=false
        try {
            let primaryBtn = AlertDialogButtonBaseOptions(
                enabled: false,
                defaultFocus: false,
                value: "Primary",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 primary false action")}
            )
            let secondaryBtn = AlertDialogButtonBaseOptions(
                enabled: false,
                defaultFocus: false,
                value: "Secondary",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 secondary false action")}
            )
            let param = AlertDialogParamWithButtons(
                message: "Message",
                primaryButton: primaryBtn,
                secondaryButton: secondaryBtn
            )
            this.paramWithButtonsFalseResult = "ParamButtonsFalse-ok"
        } catch (e: Exception) {
            this.paramWithButtonsFalseResult = "ParamButtonsFalse-fail"
        }

        // AlertDialogParamWithOptions with buttonDirection=Horizontal
        try {
            let btn = AlertDialogButtonOptions(
                enabled: false,
                defaultFocus: false,
                value: "OK",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 options horizontal action")},
                primary: false
            )
            let param = AlertDialogParamWithOptions(
                message: "Message",
                buttons: [btn],
                buttonDirection: DialogButtonDirection.Horizontal
            )
            this.paramWithOptionsHorizontalResult = "ParamOptionsHorizontal-ok"
        } catch (e: Exception) {
            this.paramWithOptionsHorizontalResult = "ParamOptionsHorizontal-fail"
        }

        // AlertDialogParamWithOptions with buttonDirection=Vertical (covered)
        try {
            let btn = AlertDialogButtonOptions(
                enabled: false,
                defaultFocus: false,
                value: "OK",
                action: {=> Hilog.info(0u32, "CangjieTest", "view2 options vertical action")},
                primary: false
            )
            let param = AlertDialogParamWithOptions(
                message: "Message",
                buttons: [btn],
                buttonDirection: DialogButtonDirection.Vertical
            )
            this.paramWithOptionsVerticalResult = "ParamOptionsVertical-ok"
        } catch (e: Exception) {
            this.paramWithOptionsVerticalResult = "ParamOptionsVertical-fail"
        }

        this.aggregateResult = "${this.directionHorizontalResult};${this.directionVerticalResult};${this.buttonBaseFalseResult};${this.buttonBaseNoneResult};${this.buttonOptionsFalseResult};${this.paramWithConfirmNoneResult};${this.paramWithButtonsFalseResult};${this.paramWithOptionsHorizontalResult};${this.paramWithOptionsVerticalResult}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("Direction.Horizontal: ${this.directionHorizontalResult}").id("alertdialog_uattr_id")
                Text("Direction.Vertical: ${this.directionVerticalResult}").id("directionVertical_check")
                Text("ButtonBase(bool=false+normal): ${this.buttonBaseFalseResult}").id("buttonBaseFalse_check")
                Text("ButtonBase(default/None): ${this.buttonBaseNoneResult}").id("buttonBaseNone_check")
                Text("ButtonOptions(primary=false): ${this.buttonOptionsFalseResult}").id("buttonOptionsFalse_check")
                Text("ParamWithConfirm(None): ${this.paramWithConfirmNoneResult}").id("paramConfirmNone_check")
                Text("ParamWithButtons(bool=false): ${this.paramWithButtonsFalseResult}").id("paramButtonsFalse_check")
                Text("ParamWithOptions(Horizontal): ${this.paramWithOptionsHorizontalResult}").id("paramOptionsHorizontal_check")
                Text("ParamWithOptions(Vertical): ${this.paramWithOptionsVerticalResult}").id("paramOptionsVertical_check")
                Text("Aggregate: ${this.aggregateResult}").id("aggregate_check")
            }.width(80i64.percent)
    }
}
