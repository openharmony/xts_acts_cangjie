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
package ohos_app_cangjie_entry_test
import std.unittest.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.arkui.component.alert_dialog.*
import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.common.*

@Test
class AlertDialogInterfaces_1_test {
    /*
     * @tc.number    : TestDialogButtonDirection_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test DialogButtonDirection Auto, Horizontal, Vertical, validate == and !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let auto = DialogButtonDirection.Auto
        let horizontal = DialogButtonDirection.Horizontal
        let vertical = DialogButtonDirection.Vertical
        @Expect(auto == DialogButtonDirection.Auto, true)
        @Expect(horizontal == DialogButtonDirection.Horizontal, true)
        @Expect(vertical == DialogButtonDirection.Vertical, true)
        @Expect(auto != horizontal, true)
        @Expect(horizontal != vertical, true)
        @Expect(auto == vertical, false)
    }
    /*
     * @tc.number    : TestAlertDialogButtonBaseOptions_0100
     * @tc.name      : TestCase_2
     * @tc.desc      : test AlertDialogButtonBaseOptions init with required params only, validate defaults None and required Some
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let cb: VoidCallback = { => }
        let opts = AlertDialogButtonBaseOptions(value: "OK", action: cb)
        @Expect(opts.enabled, true)
        @Expect(opts.defaultFocus, false)
        @Expect(opts.style.isSome(), true)
        @Expect(opts.value.isSome(), true)
        @Expect(opts.fontColor.isNone(), true)
        @Expect(opts.backgroundColor.isNone(), true)
        @Expect(opts.action.isSome(), true)
    }
    /*
     * @tc.number    : TestAlertDialogButtonBaseOptions_0200
     * @tc.name      : TestCase_3
     * @tc.desc      : test AlertDialogButtonBaseOptions init with all params, validate each field and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let cb: VoidCallback = { => }
        let opts = AlertDialogButtonBaseOptions(
            enabled: true,
            defaultFocus: false,
            style: DialogButtonStyle.Default,
            value: "Confirm",
            fontColor: Color.Red,
            backgroundColor: Color.Black,
            action: cb
        )
        @Expect(opts.enabled.isSome(), true)
        @Expect(opts.enabled.getOrThrow(), true)
        @Expect(opts.defaultFocus.isSome(), true)
        @Expect(opts.defaultFocus.getOrThrow(), false)
        @Expect(opts.style.isSome(), true)
        @Expect(opts.value.isSome(), true)
        @Expect(opts.fontColor.isSome(), true)
        @Expect(opts.backgroundColor.isSome(), true)
        @Expect(opts.action.isSome(), true)
        opts.enabled = false
        @Expect(opts.enabled.getOrThrow(), false)
        opts.defaultFocus = true
        @Expect(opts.defaultFocus.getOrThrow(), true)
        opts.fontColor = Option<ResourceColor>.None
        @Expect(opts.fontColor.isNone(), true)
        opts.backgroundColor = Option<ResourceColor>.None
        @Expect(opts.backgroundColor.isNone(), true)
    }
    /*
     * @tc.number    : TestAlertDialogButtonOptions_0100
     * @tc.name      : TestCase_4
     * @tc.desc      : test AlertDialogButtonOptions init with all params including primary, validate all 8 fields and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let cb: VoidCallback = { => }
        let opts = AlertDialogButtonOptions(
            enabled: true,
            defaultFocus: false,
            style: DialogButtonStyle.Default,
            value: "OK",
            fontColor: Color.Red,
            backgroundColor: Color.Black,
            action: cb,
            primary: true
        )
        @Expect(opts.enabled.isSome(), true)
        @Expect(opts.defaultFocus.isSome(), true)
        @Expect(opts.style.isSome(), true)
        @Expect(opts.value.isSome(), true)
        @Expect(opts.fontColor.isSome(), true)
        @Expect(opts.backgroundColor.isSome(), true)
        @Expect(opts.action.isSome(), true)
        @Expect(opts.primary.isSome(), true)
        @Expect(opts.primary.getOrThrow(), true)
        opts.primary = false
        @Expect(opts.primary.getOrThrow(), false)
        opts.primary = Option<Bool>.None
        @Expect(opts.primary.isNone(), true)
    }
    /*
     * @tc.number    : TestAlertDialogParam_0100
     * @tc.name      : TestCase_5
     * @tc.desc      : test AlertDialogParam init with required message only, validate message Some and all others None
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let opts = AlertDialogParam(message: "Message")
        @Expect(opts.title.getOrThrow() as String, "")
        @Expect(opts.subtitle.getOrThrow() as String, "")
        @Expect(opts.message.isSome(), true)
        @Expect(opts.autoCancel, true)
        @Expect(opts.cancel.isSome(), true)
        @Expect(opts.alignment.isSome(), true)
        @Expect(opts.offset.isSome(), true)
        @Expect(opts.gridCount, 4)
        @Expect(opts.maskRect.isSome(), true)
        @Expect(opts.showInSubWindow, false)
        @Expect(opts.isModal, true)
        @Expect(opts.backgroundColor.isSome(), true)
        @Expect(opts.backgroundBlurStyle.isSome(), true)
        @Expect(opts.onWillDismiss.isNone(), true)
        @Expect(opts.transition.isNone(), true)
        @Expect(opts.cornerRadius.isSome(), true)
        @Expect(opts.width.isNone(), true)
        @Expect(opts.height.isNone(), true)
        @Expect(opts.borderWidth.getOrThrow().value, 0.000000f64)
        @Expect(opts.borderColor.isSome(), true)
        @Expect(opts.borderStyle.isSome(), true)
        @Expect(opts.shadow.isSome(), true)
        @Expect(opts.textStyle.isSome(), true)
    }
    /*
     * @tc.number    : TestAlertDialogParam_0200
     * @tc.name      : TestCase_6
     * @tc.desc      : test AlertDialogParam init with many params, validate each field and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let cb: VoidCallback = { => }
        let onWillDismissCb: Callback<DismissDialogAction, Unit> = { action: DismissDialogAction =>
            action.dismiss()
        }
        let borderColorVal = BorderColor(color: Color.Red)
        let opts = AlertDialogParam(
            title: "Title",
            subtitle: "Subtitle",
            message: "ContentMessage",
            autoCancel: true,
            cancel: cb,
            alignment: DialogAlignment.Bottom,
            gridCount: 8u32,
            showInSubWindow: false,
            isModal: true,
            backgroundColor: Color.Red,
            backgroundBlurStyle: BlurStyle.Thin,
            onWillDismiss: onWillDismissCb,
            width: 400i64.vp,
            height: 300i64.vp,
            borderWidth: 1i64.vp,
            borderColor: borderColorVal
        )
        @Expect(opts.title.isSome(), true)
        @Expect(opts.subtitle.isSome(), true)
        @Expect(opts.message.isSome(), true)
        @Expect(opts.autoCancel.isSome(), true)
        @Expect(opts.autoCancel.getOrThrow(), true)
        @Expect(opts.cancel.isSome(), true)
        @Expect(opts.alignment.isSome(), true)
        @Expect(opts.offset.isSome(), true)
        @Expect(opts.gridCount.isSome(), true)
        @Expect(opts.gridCount.getOrThrow(), 8u32)
        @Expect(opts.maskRect.isSome(), true)
        @Expect(opts.showInSubWindow.isSome(), true)
        @Expect(opts.showInSubWindow.getOrThrow(), false)
        @Expect(opts.isModal.isSome(), true)
        @Expect(opts.isModal.getOrThrow(), true)
        @Expect(opts.backgroundColor.isSome(), true)
        @Expect(opts.backgroundBlurStyle.isSome(), true)
        @Expect(opts.onWillDismiss.isSome(), true)
        @Expect(opts.transition.isNone(), true)
        @Expect(opts.cornerRadius.isSome(), true)
        @Expect(opts.width.isSome(), true)
        @Expect(opts.height.isSome(), true)
        @Expect(opts.borderWidth.isSome(), true)
        @Expect(opts.borderColor.isSome(), true)
        @Expect(opts.borderStyle.isSome(), true)
        @Expect(opts.shadow.isSome(), true)
        @Expect(opts.textStyle.isSome(), true)
        opts.title = "Modified"
        @Expect(opts.title.isSome(), true)
        opts.autoCancel = false
        @Expect(opts.autoCancel.getOrThrow(), false)
        opts.isModal = Option<Bool>.None
        @Expect(opts.isModal.isNone(), true)
        opts.width = Option<Length>.None
        @Expect(opts.width.isNone(), true)
    }
    /*
     * @tc.number    : TestAlertDialogParamWithConfirm_0100
     * @tc.name      : TestCase_7
     * @tc.desc      : test AlertDialogParamWithConfirm init with message and confirm, validate confirm and inherited fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let cb: VoidCallback = { => }
        let confirmBtn = AlertDialogButtonBaseOptions(value: "Confirm", action: cb)
        let param = AlertDialogParamWithConfirm(
            message: "ConfirmMessage",
            confirm: confirmBtn,
            title: "ConfirmTitle",
            autoCancel: false
        )
        @Expect(param.message.isSome(), true)
        @Expect(param.confirm.isSome(), true)
        @Expect(param.confirm.getOrThrow().value.isSome(), true)
        @Expect(param.title.isSome(), true)
        @Expect(param.autoCancel.isSome(), true)
        @Expect(param.autoCancel.getOrThrow(), false)
        @Expect(param.subtitle.getOrThrow() as String, "")
        @Expect(param.isModal, true)
        param.confirm = Option<AlertDialogButtonBaseOptions>.None
        @Expect(param.confirm.isNone(), true)
        param.confirm = AlertDialogButtonBaseOptions(value: "NewConfirm", action: cb)
        @Expect(param.confirm.isSome(), true)
        @Expect(param.confirm.getOrThrow().value.isSome(), true)
    }
    /*
     * @tc.number    : TestAlertDialogParamWithButtons_0100
     * @tc.name      : TestCase_8
     * @tc.desc      : test AlertDialogParamWithButtons init with message, primaryButton, secondaryButton, validate all fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let cb: VoidCallback = { => }
        let primaryBtn = AlertDialogButtonBaseOptions(value: "OK", action: cb)
        let secondaryBtn = AlertDialogButtonBaseOptions(value: "Cancel", action: cb)
        let param = AlertDialogParamWithButtons(
            message: "ButtonMessage",
            primaryButton: primaryBtn,
            secondaryButton: secondaryBtn,
            title: "ButtonTitle"
        )
        @Expect(param.message.isSome(), true)
        @Expect(param.primaryButton.isSome(), true)
        @Expect(param.primaryButton.getOrThrow().value.isSome(), true)
        @Expect(param.secondaryButton.isSome(), true)
        @Expect(param.secondaryButton.getOrThrow().action.isSome(), true)
        @Expect(param.title.isSome(), true)
        @Expect(param.autoCancel, true)
        param.primaryButton = Option<AlertDialogButtonBaseOptions>.None
        @Expect(param.primaryButton.isNone(), true)
        param.primaryButton = AlertDialogButtonBaseOptions(value: "NewPrimary", action: cb)
        @Expect(param.primaryButton.isSome(), true)
    }
    /*
     * @tc.number    : TestAlertDialogParamWithOptions_0100
     * @tc.name      : TestCase_9
     * @tc.desc      : test AlertDialogParamWithOptions init with message, buttons, buttonDirection, validate all fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let cb: VoidCallback = { => }
        let buttons: Array<AlertDialogButtonOptions> = [
            AlertDialogButtonOptions(value: "OK", action: cb),
            AlertDialogButtonOptions(value: "Cancel", action: cb, primary: true)
        ]
        let param = AlertDialogParamWithOptions(
            message: "OptionsMessage",
            buttons: buttons,
            buttonDirection: DialogButtonDirection.Horizontal,
            title: "OptionsTitle"
        )
        @Expect(param.message.isSome(), true)
        @Expect(param.buttons.isSome(), true)
        @Expect(param.buttons.getOrThrow().size, 2)
        @Expect(param.buttonDirection.isSome(), true)
        @Expect(param.buttonDirection.getOrThrow() == DialogButtonDirection.Horizontal, true)
        @Expect(param.title.isSome(), true)
        @Expect(param.autoCancel, true)
        param.buttonDirection = DialogButtonDirection.Vertical
        @Expect(param.buttonDirection.getOrThrow() == DialogButtonDirection.Vertical, true)
        param.buttonDirection = Option<DialogButtonDirection>.None
        @Expect(param.buttonDirection.isNone(), true)
        param.buttons = Option<Array<AlertDialogButtonOptions>>.None
        @Expect(param.buttons.isNone(), true)
    }
    /*
     * @tc.number    : TestBorderColor_0100
     * @tc.name      : TestCase_10
     * @tc.desc      : test BorderColor init with color and default, validate resourceColor field and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let bc = BorderColor(color: Color.Red)
        let c: ResourceColor = bc.resourceColor
        @Expect(c.toUInt32() > 0u32)
        bc.resourceColor = Color.Black
        let c2: ResourceColor = bc.resourceColor
        @Expect(c2.toUInt32() > 0u32)
        let bcDefault = BorderColor()
        let c3: ResourceColor = bcDefault.resourceColor
        @Expect(c3.toUInt32() > 0u32)
        bcDefault.resourceColor = Color.White
        let c4: ResourceColor = bcDefault.resourceColor
        @Expect(c4.toUInt32() > 0u32)
    }
}
