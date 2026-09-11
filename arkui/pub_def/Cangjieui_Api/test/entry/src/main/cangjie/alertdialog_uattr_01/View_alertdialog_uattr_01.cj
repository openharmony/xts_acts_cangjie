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
 * Alert dialog EC test view 1:
 *   - DialogButtonDirection.Auto
 *   - AlertDialogButtonBaseOptions with bool=true (enabled=true, defaultFocus=true) + normal values
 *   - AlertDialogButtonOptions (primary=true), AlertDialogParamWithConfirm,
 *     AlertDialogParamWithButtons, AlertDialogParamWithOptions(buttonDirection=Auto)
 *   - Equatable operators (==, !=) on DialogButtonDirection
 */
@Entry
@Component
public class View_alertdialog_uattr_01 {
    @State var directionAutoResult: String = "None"
    @State var buttonBaseResult: String = "None"
    @State var buttonOptionsResult: String = "None"
    @State var paramWithConfirmResult: String = "None"
    @State var paramWithButtonsResult: String = "None"
    @State var paramWithOptionsResult: String = "None"
    @State var equalityResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // DialogButtonDirection.Auto
        try {
            let dir = DialogButtonDirection.Auto
            this.directionAutoResult = "Auto-ok"
        } catch (e: Exception) {
            this.directionAutoResult = "Auto-fail"
        }

        // AlertDialogButtonBaseOptions with bool=true (enabled, defaultFocus) + normal values
        try {
            let btn = AlertDialogButtonBaseOptions(
                enabled: true,
                defaultFocus: true,
                style: DialogButtonStyle.Default,
                value: "OK",
                fontColor: Color.Blue,
                backgroundColor: Color.Red,
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 buttonBase action")}
            )
            this.buttonBaseResult = "ButtonBase-ok"
        } catch (e: Exception) {
            this.buttonBaseResult = "ButtonBase-fail"
        }

        // AlertDialogButtonOptions with primary=true
        try {
            let btnOpt = AlertDialogButtonOptions(
                enabled: true,
                defaultFocus: true,
                style: DialogButtonStyle.Default,
                value: "Confirm",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 buttonOptions action")},
                primary: true
            )
            this.buttonOptionsResult = "ButtonOptions-ok"
        } catch (e: Exception) {
            this.buttonOptionsResult = "ButtonOptions-fail"
        }

        // AlertDialogParamWithConfirm with bool=true confirm button
        try {
            let confirmBtn = AlertDialogButtonBaseOptions(
                enabled: true,
                defaultFocus: true,
                value: "Confirm",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 confirm action")}
            )
            let param = AlertDialogParamWithConfirm(
                title: "Title",
                subtitle: "Subtitle",
                message: "Message",
                autoCancel: true,
                isModal: true,
                confirm: confirmBtn
            )
            this.paramWithConfirmResult = "ParamConfirm-ok"
        } catch (e: Exception) {
            this.paramWithConfirmResult = "ParamConfirm-fail"
        }

        // AlertDialogParamWithButtons with bool=true buttons
        try {
            let primaryBtn = AlertDialogButtonBaseOptions(
                enabled: true,
                defaultFocus: true,
                value: "Primary",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 primary action")}
            )
            let secondaryBtn = AlertDialogButtonBaseOptions(
                enabled: true,
                defaultFocus: false,
                value: "Secondary",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 secondary action")}
            )
            let param = AlertDialogParamWithButtons(
                title: "Title",
                message: "Message",
                primaryButton: primaryBtn,
                secondaryButton: secondaryBtn
            )
            this.paramWithButtonsResult = "ParamButtons-ok"
        } catch (e: Exception) {
            this.paramWithButtonsResult = "ParamButtons-fail"
        }

        // AlertDialogParamWithOptions with buttonDirection=Auto
        try {
            let btn = AlertDialogButtonOptions(
                enabled: true,
                defaultFocus: true,
                value: "OK",
                action: {=> Hilog.info(0u32, "CangjieTest", "view1 options action")},
                primary: true
            )
            let param = AlertDialogParamWithOptions(
                title: "Title",
                message: "Message",
                buttons: [btn],
                buttonDirection: DialogButtonDirection.Auto
            )
            this.paramWithOptionsResult = "ParamOptions-ok"
        } catch (e: Exception) {
            this.paramWithOptionsResult = "ParamOptions-fail"
        }

        // Equatable operators (==, !=) on DialogButtonDirection
        try {
            if (DialogButtonDirection.Auto == DialogButtonDirection.Auto &&
                DialogButtonDirection.Auto != DialogButtonDirection.Horizontal) {
                this.equalityResult = "Equality-ok"
            } else {
                this.equalityResult = "Equality-mismatch"
            }
        } catch (e: Exception) {
            this.equalityResult = "Equality-fail"
        }

        this.aggregateResult = "${this.directionAutoResult};${this.buttonBaseResult};${this.buttonOptionsResult};${this.paramWithConfirmResult};${this.paramWithButtonsResult};${this.paramWithOptionsResult};${this.equalityResult}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("Direction.Auto: ${this.directionAutoResult}").id("alertdialog_uattr_id")
                Text("ButtonBase(bool=true+normal): ${this.buttonBaseResult}").id("buttonBase_check")
                Text("ButtonOptions(primary=true): ${this.buttonOptionsResult}").id("buttonOptions_check")
                Text("ParamWithConfirm: ${this.paramWithConfirmResult}").id("paramConfirm_check")
                Text("ParamWithButtons: ${this.paramWithButtonsResult}").id("paramButtons_check")
                Text("ParamWithOptions(Auto): ${this.paramWithOptionsResult}").id("paramOptions_check")
                Text("Equality(==,!=): ${this.equalityResult}").id("equality_check")
                Text("Aggregate: ${this.aggregateResult}").id("aggregate_check")
            }.width(80i64.percent)
    }
}
