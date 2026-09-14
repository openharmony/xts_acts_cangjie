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
class MyDialogView1 {
    @Link
    var message: String
    var controller: Option<CustomDialogController> = Option.None
    func build() {
        Row(space: 60) {
            Button("cancel").onClick(
                {
                    evt =>
                    message = "cancel_1"
                    controller?.closeDialog()
                }
            ).id("cancel_button_1")

            Button("confirm").onClick(
                {
                    evt =>
                    message = "confirm_1"
                    controller?.closeDialog()
                }
            ).id("confirm_button_1")
        }.height(500.px)
    }
}

@Entry
@Component
public class View_customdialog_uattr_01 {
    @State
    var message: String = "begin"
    var dialogController1: CustomDialogController = CustomDialogController(
        CustomDialogControllerOptions(
            builder: MyDialogView1(message: message),
            autoCancel: true,
            customStyle: true,
            showInSubWindow: true,
            isModal: true,
            cancel: {=> Hilog.info(1, "1", "1", "view1 cancel callback")},
            alignment: DialogAlignment.Center,
            offset: Offset(10.vp, 10.vp),
            gridCount: 1,
            maskColor: Color.Red,
            maskRect: Rectangle(x: 0, y: 0, width: 100.percent, height: 100.percent),
            openAnimation: AnimateParam(),
            closeAnimation: AnimateParam(),
            backgroundColor: Color.Blue,
            cornerRadius: 50.vp,
            width: 350.vp,
            height: 300.vp,
            borderWidth: 3.vp,
            borderColor: Color.Black,
            borderStyle: EdgeStyles(),
            shadow: ShadowOptions(radius: 20.0, color: Color.Gray, offsetX: 50.0, offsetY: 10.0),
            backgroundBlurStyle: BlurStyle.Thin,
            onWillDismiss: {
                action =>
                match (action.reason) {
                    case PressBack => Hilog.info(1, "1", "1", "view1 PRESS_BACK")
                    case TouchOutside => Hilog.info(1, "1", "1", "view1 TOUCH_OUTSIDE")
                    case CloseButton => Hilog.info(1, "1", "1", "view1 CLOSE_BUTTON")
                    case SlideDown => Hilog.info(1, "1", "1", "view1 SLIDE_DOWN")
                    case _ => Hilog.info(1, "1", "1", "view1 default")
                }
                action.dismiss()
            }
        )
    )

    func build() {
        Column {
            Text(this.message).width(100.percent).id("text_1")
            Button("open dialog 1").onClick(
                {
                    evt =>
                    message = "open_dialog_1"
                    dialogController1.openDialog()
                }
            ).id("open_button_1")

            Button("close dialog 1").onClick(
                {
                    evt =>
                    message = "close_dialog_1"
                    dialogController1.closeDialog()
                }
            ).id("close_button_1")
        }.id("my_dialog_1").height(100.percent)
    }
}
