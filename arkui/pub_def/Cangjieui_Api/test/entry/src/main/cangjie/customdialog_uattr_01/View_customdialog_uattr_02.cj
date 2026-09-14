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

package ohos_app_cangjie_entry.customdialog_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.custom_dialog.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.PerformanceAnalysisKit.Hilog

@CustomDialog
class MyDialogView2 {
    @Link
    var message: String
    var controller: Option<CustomDialogController> = Option.None
    func build() {
        Row(space: 60) {
            Button("cancel").onClick(
                {
                    evt =>
                    message = "cancel_2"
                    controller?.closeDialog()
                }
            ).id("cancel_button_2")

            Button("confirm").onClick(
                {
                    evt =>
                    message = "confirm_2"
                    controller?.closeDialog()
                }
            ).id("confirm_button_2")
        }.height(500.px)
    }
}

@Entry
@Component
public class View_customdialog_uattr_02 {
    @State
    var message: String = "begin"
    var dialogController2: CustomDialogController = CustomDialogController(
        CustomDialogControllerOptions(
            builder: MyDialogView2(message: message),
            autoCancel: false,
            customStyle: false,
            showInSubWindow: false,
            isModal: false
        )
    )

    func build() {
        Column {
            Text(this.message).width(100.percent).id("text_2")
            Button("release self 2").onClick(
                {
                    evt =>
                    message = "release_self_2"
                    dialogController2.releaseSelf()
                }
            ).id("release_button_2")
        }.id("my_dialog_2").height(100.percent)
    }
}
