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
import ohos.arkui.ui_context.*
import ohos.arkui.component.common.*

@Test
class UIContextInterfaces_1_test {
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let fillNone = AnimatorFill.None
        let fillFwd = AnimatorFill.Forwards
        let fillBwd = AnimatorFill.Backwards
        let fillBoth = AnimatorFill.Both
        @Expect(fillNone == AnimatorFill.None, true)
        @Expect(fillFwd == AnimatorFill.Forwards, true)
        @Expect(fillBwd == AnimatorFill.Backwards, true)
        @Expect(fillBoth == AnimatorFill.Both, true)
        @Expect(fillNone != fillFwd, true)
        @Expect(fillFwd != fillBoth, true)
        let dirNormal = AnimatorDirection.Normal
        let dirReverse = AnimatorDirection.Reverse
        let dirAlt = AnimatorDirection.Alternate
        let dirAltRev = AnimatorDirection.AlternateReverse
        @Expect(dirNormal == AnimatorDirection.Normal, true)
        @Expect(dirReverse == AnimatorDirection.Reverse, true)
        @Expect(dirAlt == AnimatorDirection.Alternate, true)
        @Expect(dirAltRev == AnimatorDirection.AlternateReverse, true)
        @Expect(dirNormal != dirReverse, true)
        @Expect(dirAlt != dirAltRev, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        @Expect(ToastShowMode.Default == ToastShowMode.Default, true)
        @Expect(ToastShowMode.Default != ToastShowMode.TopMost, true)
        @Expect(ToastShowMode.TopMost == ToastShowMode.TopMost, true)
        @Expect(LevelMode.Overlay == LevelMode.Overlay, true)
        @Expect(LevelMode.Overlay != LevelMode.Embedded, true)
        @Expect(HoverModeAreaType.TopScreen == HoverModeAreaType.TopScreen, true)
        @Expect(HoverModeAreaType.TopScreen != HoverModeAreaType.BottomScreen, true)
        @Expect(KeyboardAvoidMode.Default == KeyboardAvoidMode.Default, true)
        @Expect(KeyboardAvoidMode.Default != KeyboardAvoidMode.None, true)
        @Expect(RouterMode.Standard == RouterMode.Standard, true)
        @Expect(RouterMode.Standard != RouterMode.Single, true)
        @Expect(RouterMode.Single == RouterMode.Single, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let opts = AnimatorOptions(
            duration: 1000i32, easing: "ease", delay: 200i32,
            fill: AnimatorFill.Forwards, direction: AnimatorDirection.Alternate,
            iterations: 3i32, begin: 0.0, end: 1.0
        )
        @Expect(opts.duration, 1000)
        @Expect(opts.easing, "ease")
        @Expect(opts.delay, 200)
        @Expect(opts.fill == AnimatorFill.Forwards, true)
        @Expect(opts.direction == AnimatorDirection.Alternate, true)
        @Expect(opts.iterations, 3)
        @Expect(opts.begin, 0.0)
        @Expect(opts.end, 1.0)
        opts.duration = 500
        @Expect(opts.duration, 500)
        opts.easing = "linear"
        @Expect(opts.easing, "linear")
        opts.delay = 0
        @Expect(opts.delay, 0)
        opts.fill = AnimatorFill.None
        @Expect(opts.fill == AnimatorFill.None, true)
        opts.direction = AnimatorDirection.Normal
        @Expect(opts.direction == AnimatorDirection.Normal, true)
        opts.iterations = -1
        @Expect(opts.iterations, -1)
        opts.begin = 0.5
        @Expect(opts.begin, 0.5)
        opts.end = 2.0
        @Expect(opts.end, 2.0)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let opts1 = SizeOptions()
        @Expect(opts1.width.value == 0.0, true)
        @Expect(opts1.height.value == 0.0, true)
        let opts2 = SizeOptions(width: 100i64.vp, height: 200i64.vp)
        opts2.width = 300i64.vp
        opts2.height = 400i64.vp
        @Expect(opts2.width.value > 0.0, true)
        @Expect(opts2.height.value > 0.0, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let btn = ButtonInfo(text: "OK", color: baseColor.Red, primary: true)
        @Expect(btn.primary, true)
        btn.primary = false
        @Expect(btn.primary, false)
        let btn2 = ButtonInfo(text: "Cancel", color: baseColor.Black)
        @Expect(btn2.primary, false)
        btn2.primary = true
        @Expect(btn2.primary, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let ec = EdgeColors(top: baseColor.Red, right: baseColor.Green, bottom: baseColor.Blue, left: baseColor.Black)
        ec.top = baseColor.White
        ec.right = baseColor.Black
        ec.bottom = baseColor.Transparent
        ec.left = baseColor.Red
        @Expect(ec.top.toUInt32() > 0u32, true)
        @Expect(ec.right.toUInt32() > 0u32, true)
        @Expect(ec.bottom.toUInt32() > 0u32, false)
        @Expect(ec.left.toUInt32() > 0u32, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let state = RouterState(index: 2i32, name: "page1", path: "/pages/page1", params: "data")
        @Expect(state.index, 2)
        @Expect(state.name, "page1")
        @Expect(state.path, "/pages/page1")
        @Expect(state.params, "data")
        state.index = 5
        @Expect(state.index, 5)
        state.name = "page2"
        @Expect(state.name, "page2")
        state.path = "/pages/page2"
        @Expect(state.path, "/pages/page2")
        state.params = "newData"
        @Expect(state.params, "newData")
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let opts = ShowToastOptions(message: "Hello Toast")
        @Expect(opts.duration, 1500)
        @Expect(opts.showMode == ToastShowMode.Default, true)
        @Expect(opts.enableHoverMode, false)
        @Expect(opts.hoverModeArea == HoverModeAreaType.BottomScreen, true)
        @Expect(opts.shadow.isNone(), true)
        opts.duration = 3000
        @Expect(opts.duration, 3000)
        opts.showMode = ToastShowMode.TopMost
        @Expect(opts.showMode == ToastShowMode.TopMost, true)
        opts.enableHoverMode = true
        @Expect(opts.enableHoverMode, true)
        opts.hoverModeArea = HoverModeAreaType.TopScreen
        @Expect(opts.hoverModeArea == HoverModeAreaType.TopScreen, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let opts = ShowDialogOptions()
        @Expect(opts.buttons.size, 0)
        @Expect(opts.showInSubWindow, false)
        @Expect(opts.isModal, true)
        @Expect(opts.enableHoverMode, false)
        @Expect(opts.hoverModeArea == HoverModeAreaType.BottomScreen, true)
        @Expect(opts.shadow.isNone(), true)
        opts.isModal = false
        @Expect(opts.isModal, false)
        opts.showInSubWindow = true
        @Expect(opts.showInSubWindow, true)
        opts.enableHoverMode = true
        @Expect(opts.enableHoverMode, true)
        let btn = ButtonInfo(text: "OK", color: baseColor.Red)
        opts.buttons = [btn]
        @Expect(opts.buttons.size, 1)
        opts.buttons = []
        @Expect(opts.buttons.size, 0)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let btn = ButtonInfo(text: "Action", color: baseColor.Blue)
        let opts = ActionMenuOptions(buttons: [btn])
        @Expect(opts.buttons.size, 1)
        @Expect(opts.showInSubWindow, false)
        @Expect(opts.isModal, true)
        opts.isModal = false
        @Expect(opts.isModal, false)
        opts.showInSubWindow = true
        @Expect(opts.showInSubWindow, true)
        opts.buttons = []
        @Expect(opts.buttons.size, 0)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        let config = BaseDialogConfig()
        @Expect(config.isModal.isNone(), false)
        @Expect(config.showInSubWindow.isNone(), false)
        @Expect(config.autoCancel.isNone(), false)
        @Expect(config.enableHoverMode.isNone(), false)
        @Expect(config.alignment.isNone(), false)
        @Expect(config.keyboardAvoidMode.isNone(), false)
        @Expect(config.hoverModeArea.isNone(), false)
        @Expect(config.levelMode.isNone(), false)
        @Expect(config.maskRect.isNone(), false)
        @Expect(config.offset.isNone(), false)
        let config2 = BaseDialogConfig(
            isModal: true, showInSubWindow: false, autoCancel: true,
            enableHoverMode: false, keyboardAvoidMode: KeyboardAvoidMode.Default,
            hoverModeArea: HoverModeAreaType.TopScreen, levelMode: LevelMode.Overlay
        )
        @Expect(config2.isModal.getOrThrow(), true)
        @Expect(config2.showInSubWindow.getOrThrow(), false)
        @Expect(config2.autoCancel.getOrThrow(), true)
        @Expect(config2.enableHoverMode.getOrThrow(), false)
        @Expect(config2.keyboardAvoidMode.getOrThrow() == KeyboardAvoidMode.Default, true)
        @Expect(config2.hoverModeArea.getOrThrow() == HoverModeAreaType.TopScreen, true)
        @Expect(config2.levelMode.getOrThrow() == LevelMode.Overlay, true)
        config2.isModal = false
        @Expect(config2.isModal.getOrThrow(), false)
        config2.autoCancel = Option<Bool>.None
        @Expect(config2.autoCancel.isNone(), true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0012
     * @tc.name      : TestCase_12
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        let config = ShowDialogConfig()
        @Expect(config.title.isNone(), true)
        @Expect(config.message.isNone(), true)
        @Expect(config.buttons.isNone(), true)
        @Expect(config.isModal.isNone(), true)
        @Expect(config.showInSubWindow.isNone(), true)
        @Expect(config.enableHoverMode.isNone(), true)
        @Expect(config.hoverModeArea.isNone(), true)
        @Expect(config.levelMode.isNone(), true)
        @Expect(config.shadow.isNone(), true)
        let config2 = ShowDialogConfig(title: "Dialog", message: "Content", isModal: false)
        @Expect(config2.title.isSome(), true)
        @Expect(config2.message.isSome(), true)
        @Expect(config2.isModal.getOrThrow(), false)
        config2.isModal = true
        @Expect(config2.isModal.getOrThrow(), true)
        config2.title = Option<ResourceStr>.None
        @Expect(config2.title.isNone(), true)
        let btn = ButtonInfo(text: "OK", color: baseColor.Red)
        config2.buttons = [btn]
        @Expect(config2.buttons.isSome(), true)
        @Expect(config2.buttons.getOrThrow().size, 1)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0013
     * @tc.name      : TestCase_13
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        let config = ActionMenuConfig()
        @Expect(config.title.isNone(), true)
        @Expect(config.buttons.isNone(), true)
        @Expect(config.showInSubWindow.isNone(), true)
        @Expect(config.isModal.isNone(), true)
        @Expect(config.levelMode.isNone(), true)
        let config2 = ActionMenuConfig(title: "Menu", isModal: false, levelMode: LevelMode.Embedded)
        @Expect(config2.title.isSome(), true)
        @Expect(config2.isModal.getOrThrow(), false)
        @Expect(config2.levelMode.getOrThrow() == LevelMode.Embedded, true)
        config2.isModal = true
        @Expect(config2.isModal.getOrThrow(), true)
        config2.levelMode = LevelMode.Overlay
        @Expect(config2.levelMode.getOrThrow() == LevelMode.Overlay, true)
        config2.title = Option<ResourceStr>.None
        @Expect(config2.title.isNone(), true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0014
     * @tc.name      : TestCase_14
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        let opts = BaseDialogOptions()
        @Expect(opts.isModal, true)
        @Expect(opts.showInSubWindow, false)
        @Expect(opts.autoCancel, true)
        @Expect(opts.enableHoverMode, false)
        @Expect(opts.keyboardAvoidMode == KeyboardAvoidMode.Default, true)
        @Expect(opts.hoverModeArea == HoverModeAreaType.BottomScreen, true)
        var count = 0
        opts.onDidAppear()
        count = count + 1
        opts.onDidDisappear()
        count = count + 1
        opts.onWillAppear()
        count = count + 1
        opts.onWillDisappear()
        count = count + 1
        @Expect(count, 4)
        opts.isModal = false
        @Expect(opts.isModal, false)
        opts.autoCancel = false
        @Expect(opts.autoCancel, false)
        opts.enableHoverMode = true
        @Expect(opts.enableHoverMode, true)
        opts.keyboardAvoidMode = KeyboardAvoidMode.None
        @Expect(opts.keyboardAvoidMode == KeyboardAvoidMode.None, true)
        opts.hoverModeArea = HoverModeAreaType.TopScreen
        @Expect(opts.hoverModeArea == HoverModeAreaType.TopScreen, true)
    }
    /*
     * @tc.number    : TestUIContextInterfaces_1_test_0015
     * @tc.name      : TestCase_15
     * @tc.desc      : test UIContextInterfaces_1_test case TestCase_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        let config = CustomDialogConfig(builder: { => })
        @Expect(config.backgroundColor.isNone(), false)
        @Expect(config.cornerRadius.isNone(), false)
        @Expect(config.borderWidth.isNone(), false)
        @Expect(config.borderColor.isNone(), false)
        @Expect(config.borderStyle.isNone(), false)
        @Expect(config.width.isNone(), false)
        @Expect(config.height.isNone(), true)
        @Expect(config.shadow.isNone(), true)
        @Expect(config.backgroundBlurStyle.isNone(), false)
        @Expect(config.isModal.isNone(), false)
        let config2 = CustomDialogConfig(
            builder: { => },
            isModal: true, backgroundColor: baseColor.Red, width: 400i64.vp, height: 200i64.vp,
            backgroundBlurStyle: BlurStyle.Thin
        )
        @Expect(config2.isModal.getOrThrow(), true)
        @Expect(config2.backgroundColor.isSome(), true)
        @Expect(config2.width.isSome(), true)
        @Expect(config2.height.isSome(), true)
        @Expect(config2.backgroundBlurStyle.isSome(), true)
        config2.isModal = false
        @Expect(config2.isModal.getOrThrow(), false)
        config2.width = Option<Length>.None
        @Expect(config2.width.isNone(), true)
    }
}
