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
import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.common.*

@Test
class ActionSheetInterfaces_1_test {
    /*
     * @tc.number    : TestSheetInfo_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test SheetInfo init with title, icon, action, validate all fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let cb: VoidCallback = { => }
        let info = SheetInfo(title: "SheetTitle", icon: "SheetIcon", action: cb)
        @Expect(info.title.isSome(), true)
        @Expect(info.icon.isSome(), true)
        @Expect(info.action.isSome(), true)
        info.title = "ModifiedTitle"
        @Expect(info.title.isSome(), true)
        info.icon = Option<ResourceStr>.None
        @Expect(info.icon.isNone(), true)
        info.action = Option<VoidCallback>.None
        @Expect(info.action.isNone(), true)
    }
    /*
     * @tc.number    : TestActionSheetButtonOptions_0100
     * @tc.name      : TestCase_2
     * @tc.desc      : test ActionSheetButtonOptions init with required params only, validate defaults and required fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let cb: VoidCallback = { => }
        let opts = ActionSheetButtonOptions(value: "OK", action: cb)
        @Expect(opts.enabled, true)
        @Expect(opts.defaultFocus, false)
        @Expect(opts.style.isSome(), true)
        @Expect(opts.value.isSome(), true)
        @Expect(opts.action.isSome(), true)
    }
    /*
     * @tc.number    : TestActionSheetButtonOptions_0200
     * @tc.name      : TestCase_3
     * @tc.desc      : test ActionSheetButtonOptions init with all params, validate each field and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let cb: VoidCallback = { => }
        let opts = ActionSheetButtonOptions(
            enabled: true,
            defaultFocus: false,
            style: DialogButtonStyle.Default,
            value: "Confirm",
            action: cb
        )
        @Expect(opts.enabled.isSome(), true)
        @Expect(opts.enabled.getOrThrow(), true)
        @Expect(opts.defaultFocus.isSome(), true)
        @Expect(opts.defaultFocus.getOrThrow(), false)
        @Expect(opts.style.isSome(), true)
        @Expect(opts.value.isSome(), true)
        @Expect(opts.action.isSome(), true)
        opts.enabled = false
        @Expect(opts.enabled.getOrThrow(), false)
        opts.defaultFocus = true
        @Expect(opts.defaultFocus.getOrThrow(), true)
        opts.value = Option<ResourceStr>.None
        @Expect(opts.value.isNone(), true)
        opts.action = Option<VoidCallback>.None
        @Expect(opts.action.isNone(), true)
    }
    /*
     * @tc.number    : TestDismissDialogAction_0100
     * @tc.name      : TestCase_4
     * @tc.desc      : test DismissDialogAction init with reason, validate reason field and dismiss method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let action = DismissDialogAction(DismissReason.PressBack)
        @Expect(action.reason == DismissReason.PressBack, true)
        action.reason = DismissReason.TouchOutside
        @Expect(action.reason == DismissReason.TouchOutside, true)
        @Expect(action.reason != DismissReason.PressBack, true)
        action.dismiss()
    }
    /*
     * @tc.number    : TestActionSheetOptions_0100
     * @tc.name      : TestCase_5
     * @tc.desc      : test ActionSheetOptions init with required params only, validate required fields Some and optional fields None
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let cb: VoidCallback = { => }
        let sheets: Array<SheetInfo> = [SheetInfo(title: "Option1", action: cb)]
        let opts = ActionSheetOptions(title: "Title", message: "Message", sheets: sheets)
        @Expect(opts.title.isSome(), true)
        @Expect(opts.message.isSome(), true)
        @Expect(opts.sheets.isSome(), true)
        @Expect(opts.sheets.getOrThrow().size, 1)
        @Expect(opts.subtitle.getOrThrow() as String, "")
        @Expect(opts.confirm.isSome(), true)
        @Expect(opts.cancel.isSome(), true)
        @Expect(opts.autoCancel, true)
        @Expect(opts.alignment.isSome(), true)
        @Expect(opts.offset.isSome(), true)
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
        @Expect(opts.borderWidth.isSome(), true)
        @Expect(opts.borderColor.isSome(), true)
        @Expect(opts.borderStyle.isSome(), true)
        @Expect(opts.shadow.isSome(), true)
    }
    /*
     * @tc.number    : TestActionSheetOptions_0200
     * @tc.name      : TestCase_6
     * @tc.desc      : test ActionSheetOptions init with many params, validate each field and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let cb: VoidCallback = { => }
        let confirmBtn = ActionSheetButtonOptions(value: "Confirm", action: cb)
        let sheets: Array<SheetInfo> = [
            SheetInfo(title: "Sheet1", action: cb),
            SheetInfo(title: "Sheet2", icon: "Icon2", action: cb)
        ]
        let offset = ActionSheetOffset(dx: 0i64.vp, dy: 40i64.vp)
        let onWillDismissCb: Callback<DismissDialogAction, Unit> = { dismissAction: DismissDialogAction =>
            dismissAction.dismiss()
        }
        let opts = ActionSheetOptions(
            title: "DialogTitle",
            subtitle: "Subtitle",
            message: "ContentMessage",
            confirm: confirmBtn,
            cancel: cb,
            sheets: sheets,
            autoCancel: true,
            alignment: DialogAlignment.Bottom,
            offset: offset,
            showInSubWindow: false,
            isModal: true,
            backgroundColor: Color.Red,
            backgroundBlurStyle: BlurStyle.Thin,
            onWillDismiss: onWillDismissCb,
            width: 400i64.vp,
            height: 300i64.vp,
            borderWidth: 1i64.vp,
            borderColor: Color.Black
        )
        @Expect(opts.title.isSome(), true)
        @Expect(opts.subtitle.isSome(), true)
        @Expect(opts.message.isSome(), true)
        @Expect(opts.confirm.isSome(), true)
        @Expect(opts.cancel.isSome(), true)
        @Expect(opts.sheets.isSome(), true)
        @Expect(opts.sheets.getOrThrow().size, 2)
        @Expect(opts.autoCancel.isSome(), true)
        @Expect(opts.autoCancel.getOrThrow(), true)
        @Expect(opts.alignment.isSome(), true)
        @Expect(opts.offset.isSome(), true)
        @Expect(opts.offset.getOrThrow().dx.isSome(), true)
        @Expect(opts.offset.getOrThrow().dy.isSome(), true)
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
        opts.title = "ModifiedTitle"
        @Expect(opts.title.isSome(), true)
        opts.autoCancel = false
        @Expect(opts.autoCancel.getOrThrow(), false)
        opts.isModal = Option<Bool>.None
        @Expect(opts.isModal.isNone(), true)
        opts.width = Option<Length>.None
        @Expect(opts.width.isNone(), true)
    }
    /*
     * @tc.number    : TestActionSheetOffset_0100
     * @tc.name      : TestCase_7
     * @tc.desc      : test ActionSheetOffset init with dx and dy, validate both fields and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let offset = ActionSheetOffset(dx: 10i64.vp, dy: 20i64.vp)
        @Expect(offset.dx.isSome(), true)
        @Expect(offset.dy.isSome(), true)
        offset.dx = 0i64.vp
        @Expect(offset.dx.isSome(), true)
        offset.dy = Option<Length>.None
        @Expect(offset.dy.isNone(), true)
        offset.dx = Option<Length>.None
        @Expect(offset.dx.isNone(), true)
        offset.dy = (-40i64).vp
        @Expect(offset.dy.isSome(), true)
    }
}
