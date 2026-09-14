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
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.base.Color as baseColor
import ohos.arkui.component.custom_dialog.*
import ohos.arkui.component.action_sheet.*
import ohos.arkui.component.common.*
import ohos.arkui.component.custom_component.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.*

@Component
class TestDialogView {
    var marker: String = "dialogView"
    var counter: Int64 = 0
    public func build(): Unit { }
}

@Test
class CustomDialogInterfaces_1_test {
    /*
     * @tc.number    : TestCustomDialogControllerOptions_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test CustomDialogControllerOptions default init with builder only, validate all optional fields None
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let view = TestDialogView(Option<CustomView>.None)
        @Expect(view.marker, "dialogView")
        @Expect(view.counter, 0)
        let opts = CustomDialogControllerOptions(builder: view)
        @Expect(opts.cancel.isNone(), false)
        @Expect(opts.autoCancel.isNone(), false)
        @Expect(opts.alignment.isNone(), false)
        @Expect(opts.offset.isNone(), false)
        @Expect(opts.customStyle.isNone(), false)
        @Expect(opts.gridCount.isNone(), true)
        @Expect(opts.maskColor.isNone(), false)
        @Expect(opts.maskRect.isNone(), false)
        @Expect(opts.openAnimation.isNone(), true)
        @Expect(opts.closeAnimation.isNone(), true)
        @Expect(opts.showInSubWindow.isNone(), false)
        @Expect(opts.backgroundColor.isNone(), false)
        @Expect(opts.cornerRadius.isNone(), false)
        @Expect(opts.isModal.isNone(), false)
        @Expect(opts.onWillDismiss.isNone(), true)
        @Expect(opts.width.isNone(), true)
        @Expect(opts.height.isNone(), true)
        @Expect(opts.borderWidth.isNone(), false)
        @Expect(opts.borderColor.isNone(), false)
        @Expect(opts.borderStyle.isNone(), false)
        @Expect(opts.shadow.isNone(), true)
        @Expect(opts.backgroundBlurStyle.isNone(), false)
    }
    /*
     * @tc.number    : TestCustomDialogControllerOptions_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test CustomDialogControllerOptions init with many params, validate each field and mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let view = TestDialogView(Option<CustomView>.None)
        let cb: VoidCallback = { => }
        let onWillDismissCb: Callback<DismissDialogAction, Unit> = { action: DismissDialogAction =>
            action.dismiss()
        }
        let opts = CustomDialogControllerOptions(
            builder: view,
            cancel: cb,
            autoCancel: true,
            alignment: DialogAlignment.Bottom,
            customStyle: false,
            gridCount: 8u32,
            maskColor: baseColor.Red,
            showInSubWindow: false,
            isModal: true,
            backgroundColor: baseColor.Red,
            cornerRadius: 10i64.vp,
            onWillDismiss: onWillDismissCb,
            width: 400i64.vp,
            height: 300i64.vp,
            borderWidth: 1i64.vp,
            borderColor: baseColor.Black,
            backgroundBlurStyle: BlurStyle.Thin
        )
        @Expect(opts.cancel.isSome(), true)
        @Expect(opts.autoCancel.isSome(), true)
        @Expect(opts.autoCancel.getOrThrow(), true)
        @Expect(opts.alignment.isSome(), true)
        @Expect(opts.offset.isNone(), false)
        @Expect(opts.customStyle.isSome(), true)
        @Expect(opts.customStyle.getOrThrow(), false)
        @Expect(opts.gridCount.isSome(), true)
        @Expect(opts.gridCount.getOrThrow(), 8u32)
        @Expect(opts.maskColor.isSome(), true)
        @Expect(opts.maskRect.isNone(), false)
        @Expect(opts.openAnimation.isNone(), true)
        @Expect(opts.closeAnimation.isNone(), true)
        @Expect(opts.showInSubWindow.isSome(), true)
        @Expect(opts.showInSubWindow.getOrThrow(), false)
        @Expect(opts.backgroundColor.isSome(), true)
        @Expect(opts.cornerRadius.isSome(), true)
        @Expect(opts.isModal.isSome(), true)
        @Expect(opts.isModal.getOrThrow(), true)
        @Expect(opts.onWillDismiss.isSome(), true)
        @Expect(opts.width.isSome(), true)
        @Expect(opts.height.isSome(), true)
        @Expect(opts.borderWidth.isSome(), true)
        @Expect(opts.borderColor.isSome(), true)
        @Expect(opts.borderStyle.isNone(), false)
        @Expect(opts.shadow.isNone(), true)
        @Expect(opts.backgroundBlurStyle.isSome(), true)
        opts.autoCancel = false
        @Expect(opts.autoCancel.getOrThrow(), false)
        opts.customStyle = true
        @Expect(opts.customStyle.getOrThrow(), true)
        opts.isModal = false
        @Expect(opts.isModal.getOrThrow(), false)
        opts.gridCount = 16u32
        @Expect(opts.gridCount.getOrThrow(), 16u32)
        opts.width = 500i64.vp
        @Expect(opts.width.isSome(), true)
        opts.autoCancel = Option<Bool>.None
        @Expect(opts.autoCancel.isNone(), true)
        opts.backgroundBlurStyle = Option<BlurStyle>.None
        @Expect(opts.backgroundBlurStyle.isNone(), true)
        opts.cornerRadius = Option<Length>.None
        @Expect(opts.cornerRadius.isNone(), true)
        opts.cancel = Option<VoidCallback>.None
        @Expect(opts.cancel.isNone(), true)
        @Expect(view.marker, "dialogView")
        @Expect(view.counter, 0)
    }
    /*
     * @tc.number    : TestCustomDialogController_0100
     * @tc.name      : TestCase_3
     * @tc.desc      : test CustomDialogController init and method calls, validate options state unchanged
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let view = TestDialogView(Option<CustomView>.None)
        @Expect(view.marker, "dialogView")
        let opts = CustomDialogControllerOptions(
            builder: view,
            autoCancel: true,
            isModal: false,
            gridCount: 4u32,
            width: 200i64.vp
        )
        let controller = CustomDialogController(opts)
        @Expect(opts.autoCancel.getOrThrow(), true)
        @Expect(opts.isModal.getOrThrow(), false)
        @Expect(opts.gridCount.getOrThrow(), 4u32)
        @Expect(opts.width.isSome(), true)
        controller.openDialog()
        @Expect(opts.autoCancel.getOrThrow(), true)
        @Expect(opts.gridCount.getOrThrow(), 4u32)
        controller.closeDialog()
        @Expect(opts.isModal.getOrThrow(), false)
        @Expect(opts.width.isSome(), true)
        controller.releaseSelf()
        @Expect(opts.autoCancel.getOrThrow(), true)
        @Expect(opts.isModal.getOrThrow(), false)
        @Expect(view.marker, "dialogView")
        view.counter = 99
        @Expect(view.counter, 99)
    }
}
