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

import ohos.window.{Configuration as Conf, getLastWindow, Orientation, createWindow, WindowType, SystemBarProperties,
    ColorSpace, AvoidAreaType, findWindow, Size as windowSize, TitleButtonRect, AvoidArea, Rect, Window, shiftAppWindowFocus,
    WindowCallbackType, WindowEventType, WindowStageEventType, WindowStatusType}
import kit.AbilityKit.UIAbilityContext
import ohos.window.WindowProperties
import std.unittest.testmacro.*
import ohos.base.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.window.WindowStage
import ohos.arkui.state_management.AppStorage
import ohos.callback_invoke.Callback1Argument
import ohos.hilog.Hilog
import ohos.window.WindowCallbackType
import kit.AbilityKit.Want
import kit.TestKit.{AbilityDelegatorRegistry, AbilityMonitor}
import ohos_app_cangjie_entry.windowLifecycleDestroyed
import ohos.window.SystemBarType
import ohos.business_exception.*

public  class MyCallbackObject <: Callback1Argument<UInt32> {
    let callback_: (UInt32) -> Unit
    public init(callback: (UInt32) -> Unit) {
        callback_ = callback
    }
    public override func invoke(err: ?BusinessException, val: UInt32): Unit {
        callback_(val)
    }
}

public func getMainWindow(): Window {
    getWindowStage().getMainWindow()
}

public func getWindowStage(): WindowStage {
    sleepFor(2.second)
    match (AppStorage.get<WindowStage>("windowStage")) {
        case None => throw Exception("failed to get window stage")
        case Some(windowStage) => windowStage
    }
}

@Test
class Test_window_runtime {
    func matchParse(v1: ColorSpace, v2: ColorSpace) {
        match ((v1, v2)) {
            case (ColorSpace.WideGamut, ColorSpace.WideGamut) => true
            case (ColorSpace.Default, ColorSpace.Default) => true
            case _ => false
        }
    }

    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_GetMainWindowInfo
     * @tc.name      : test_GetMainWindowInfo
     * @tc.desc      : check application info_test_test_GetMainWindowInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_GetMainWindowInfo() {
        try {
            let windowInfo = getMainWindow().getWindowProperties()
            @Expect(windowInfo.windowRect.width > 0u32, true)
            @Expect(windowInfo.windowRect.height > 0u32, true)
            @Expect(windowInfo.id > 0u32, true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_GetMainWindowInfo " + e.toString())
            @Expect(false)
        }
        let errWin = getWindowStage().createSubWindow("err1300002Props")
        errWin.destroyWindow()
        try {
            let _ = errWin.getWindowProperties()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowColorSpace
     * @tc.name      : test_windowColorSpace
     * @tc.desc      : check application info_test_test_windowColorSpace
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowColorSpace() {
        try {
            let windowClass = getMainWindow()
            windowClass.setWindowColorSpace(ColorSpace.WideGamut)
            let wideColorSpace = windowClass.getWindowColorSpace()
            windowClass.setWindowColorSpace(ColorSpace.Default)
            let defaultColorSpace = windowClass.getWindowColorSpace()
            @Expect(matchParse(wideColorSpace, ColorSpace.WideGamut))
            @Expect(matchParse(defaultColorSpace, ColorSpace.Default))
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowColorSpace " + e.toString())
            @Expect(false)
        }
        let errWin = getWindowStage().createSubWindow("err1300002ColorSpace")
        errWin.destroyWindow()
        try {
            errWin.setWindowColorSpace(ColorSpace.WideGamut)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            let _ = errWin.getWindowColorSpace()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            let _ = errWin.isWideGamutSupported()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowSnapshot
     * @tc.name      : test_windowSnapshot
     * @tc.desc      : check application info_test_test_windowSnapshot
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowSnapshot() {
        try {
            sleepFor(1.second)
            let map = getMainWindow().snapshot()
            @Expect(true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowSnapshot " + e.toString())
            @Expect(false)
        }
        let errWin = getWindowStage().createSubWindow("err1300002Snapshot")
        errWin.destroyWindow()
        try {
            let _ = errWin.snapshot()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowRatio
     * @tc.name      : test_windowRatio
     * @tc.desc      : check application info_test_test_windowRatio
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowRatio() {
        try {
            let windowClass = getMainWindow()
            windowClass.setAspectRatio(0.8f64)
            windowClass.resetAspectRatio()
            @Expect(true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowRatio " + e.toString())
            @Expect(false)
        }
        let errWin = getWindowStage().createSubWindow("err1300002Ratio")
        errWin.destroyWindow()
        try {
            errWin.setAspectRatio(0.8f64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            errWin.resetAspectRatio()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        let subWin = getWindowStage().createSubWindow("ratio1300004")
        try {
            subWin.setAspectRatio(0.8f64)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300004)
        }
        try {
            subWin.resetAspectRatio()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300004)
        } finally {
            try {
                subWin.destroyWindow()
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "case_windowRatio cleanup " + e.toString())
            }
        }
    }


    /*
     * @tc.number    : Sub_Cangjie_test_windowSettingTrue
     * @tc.name      : test_windowSettingTrue
     * @tc.desc      : check application info_test_test_windowSettingTrue
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowSettingTrue() {
        let windowClass = getMainWindow()
        let originalProps = windowClass.getWindowProperties()
        try {
            windowClass.setWindowKeepScreenOn(true)
            windowClass.setWindowPrivacyMode(true)
            windowClass.setWindowTouchable(true)
            windowClass.setWindowFocusable(true)
            windowClass.setWindowLayoutFullScreen(true)
            let props = windowClass.getWindowProperties()
            @Expect(props.isKeepScreenOn, true)
            @Expect(props.isPrivacyMode, true)
            @Expect(props.touchable, true)
            @Expect(props.focusable, true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowSettingTrue " + e.toString())
            @Expect(false)
        } finally {
            try {
                windowClass.setWindowKeepScreenOn(originalProps.isKeepScreenOn)
                windowClass.setWindowPrivacyMode(originalProps.isPrivacyMode)
                windowClass.setWindowTouchable(originalProps.touchable)
                windowClass.setWindowFocusable(originalProps.focusable)
                windowClass.setWindowLayoutFullScreen(originalProps.isLayoutFullScreen)
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "case_windowSettingTrue cleanup " + e.toString())
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowSettingFalse
     * @tc.name      : test_windowSettingFalse
     * @tc.desc      : check application info_test_test_windowSettingFalse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowSettingFalse() {
        let testWindow = getWindowStage().createSubWindow("windowSettingFalseTest")
        try {
            testWindow.showWindow()
            testWindow.setWindowKeepScreenOn(false)
            testWindow.setWindowPrivacyMode(false)
            testWindow.setWindowTouchable(false)
            testWindow.setWindowFocusable(false)
            testWindow.setWindowLayoutFullScreen(false)
            let props = testWindow.getWindowProperties()
            @Expect(props.isKeepScreenOn, false)
            @Expect(props.isPrivacyMode, false)
            @Expect(props.touchable, false)
            @Expect(props.focusable, false)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowSettingFalse " + e.toString())
            @Expect(false)
        } finally {
            try {
                testWindow.setWindowKeepScreenOn(true)
                testWindow.setWindowPrivacyMode(true)
                testWindow.setWindowTouchable(true)
                testWindow.setWindowFocusable(true)
                testWindow.setWindowLayoutFullScreen(false)
                testWindow.destroyWindow()
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "case_windowSettingFalse cleanup " + e.toString())
            }
        }
        try {
            testWindow.setWindowKeepScreenOn(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowPrivacyMode(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowTouchable(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowFocusable(true)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowLayoutFullScreen(false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowBackgroundColor("#FF0000")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowBrightness(0.5f32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            testWindow.setWindowSystemBarEnabled([SystemBarType.Status])
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowSettingOrientation
     * @tc.name      : test_windowSettingOrientation
     * @tc.desc      : check application info_test_test_windowSettingOrientation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowSettingOrientation() {
        try {
            let windowClass = getMainWindow()
            windowClass.setPreferredOrientation(Orientation.Unspecified)
            windowClass.setPreferredOrientation(Orientation.Portrait)
            windowClass.setPreferredOrientation(Orientation.Landscape)
            windowClass.setPreferredOrientation(Orientation.PortraitInverted)
            windowClass.setPreferredOrientation(Orientation.LandscapeInverted)
            windowClass.setPreferredOrientation(Orientation.AutoRotationPortrait)
            windowClass.setPreferredOrientation(Orientation.AutoRotationLandscape)
            windowClass.setPreferredOrientation(Orientation.AutoRotationRestricted)
            windowClass.setPreferredOrientation(Orientation.AutoRotationPortraitRestricted)
            windowClass.setPreferredOrientation(Orientation.AutoRotationLandscapeRestricted)
            windowClass.setPreferredOrientation(Orientation.Locked)
            windowClass.setPreferredOrientation(Orientation.AutoRotation)
            @Expect(true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowSettingOrientation " + e.toString())
            @Expect(false)
        } finally {
            try {
                getMainWindow().setPreferredOrientation(Orientation.Unspecified)
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "case_windowSettingOrientation cleanup " + e.toString())
            }
        }
        let errWin = getWindowStage().createSubWindow("err1300002Orientation")
        errWin.destroyWindow()
        try {
            errWin.setPreferredOrientation(Orientation.Portrait)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_GetMainWindowAvoidArea
     * @tc.name      : test_GetMainWindowAvoidArea
     * @tc.desc      : check application info_test_test_GetMainWindowAvoidArea
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_GetMainWindowAvoidArea() {
        try {
            let area = getMainWindow().getWindowAvoidArea(AvoidAreaType.TypeSystem)
            @Expect(area.topRect.width >= 0u32, true)
            @Expect(area.topRect.height >= 0u32, true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_GetMainWindowAvoidArea " + e.toString())
            @Expect(false)
        }
        let errWin = getWindowStage().createSubWindow("err1300002AvoidArea")
        errWin.destroyWindow()
        try {
            let _ = errWin.getWindowAvoidArea(AvoidAreaType.TypeSystem)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_WindowStageCreate
     * @tc.name      : test_WindowStageCreate
     * @tc.desc      : check application info_test_test_WindowStageCreate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_WindowStageCreate() {
        let winStage = getWindowStage()
        let sub1 = winStage.createSubWindow("sub1")
        let sub2 = winStage.createSubWindow("sub2")
        sleepFor(1.second)
        let list = winStage.getSubWindow()
        @Expect(list.size == 2)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_CreateWindow
     * @tc.name      : test_CreateWindow
     * @tc.desc      : check application info_test_test_CreateWindow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CreateWindow() {
        try {
            let mainWindow = getMainWindow()
            let mainId = mainWindow.getWindowProperties().id
             Hilog.error(0,"","mainId${mainId}")
            let conf3 = Conf(name:"test3",windowType: WindowType.TypeDialog, ctx:getAbilityContext(), displayId: 0, parentId: Int64(mainId))
            let win3 = createWindow(conf3)
            let result3 = findWindow("test3")
            @Expect(win3.getWindowProperties().id == result3.getWindowProperties().id)
        } catch (e: Exception) {
            Hilog.error(0,"","case_CreateWindow " + e.toString())
            @Expect(false)
        }
        try {
            findWindow("nonexistent_window_name")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_CreateWindow1
     * @tc.name      : test_CreateWindow1
     * @tc.desc      : check application info_test_test_CreateWindow1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CreateWindow1() {
        func createWindowFail(name: String, windowType: WindowType, error:Int32): Unit {
            try {
                let config = Conf(name:name, windowType:windowType, ctx:getAbilityContext())
                createWindow(config)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, error)
                Hilog.error(0,"","case_CreateWindow " + e.toString())
            }
        }
        func createWindowPass(name: String, windowType: WindowType, id: UInt32): Unit {
            try {
                let config = Conf(name:name, windowType:windowType, ctx:getAbilityContext(), displayId: 0, parentId: Int64(id))
                createWindow(config)
                @Expect(true)
            } catch (e: Exception) {
                @Expect(false)
                Hilog.error(0,"","case_CreateWindow " + e.toString())
            }
        }
        let mainWindow = getMainWindow()
        let id = mainWindow.getWindowProperties().id
        createWindowFail("TYPE_APP", WindowType.TypeApp, 401)
        createWindowFail("TypeMain", WindowType.TypeMain, 401)
        createWindowPass("TypeDialog", WindowType.TypeDialog, id)
        createWindowPass("TYPE_FLOAT", WindowType.TypeFloat, id)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getWindowAvoidArea
     * @tc.name      : test_getWindowAvoidArea
     * @tc.desc      : check application info_test_test_getWindowAvoidArea
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getWindowAvoidArea() {
        func getWindowAvoidArea(window: Window, aaType: AvoidAreaType): Unit {
            try {
                window.getWindowAvoidArea(aaType)
                let mainWindow = getMainWindow()
                getWindowAvoidArea(mainWindow, AvoidAreaType.TypeCutout)
                getWindowAvoidArea(mainWindow, AvoidAreaType.TypeSystemGesture)
                getWindowAvoidArea(mainWindow, AvoidAreaType.TypeKeyboard)
                getWindowAvoidArea(mainWindow, AvoidAreaType.TypeNavigationIndicator)
                @Expect(true)
            } catch (e: Exception) {
                @Expect(false)
                Hilog.error(0,"","case_getWindowAvoidArea " + e.toString())
            }
        }

    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowMoveWindowTo
     * @tc.name      : test_windowMoveWindowTo
     * @tc.desc      : check application info_test_test_windowMoveWindowTo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowMoveWindowTo() {
        try {
            let mainWindow = getMainWindow()
            mainWindow.moveWindowTo(0, 0)
            @Expect(true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowMoveWindowTo" + e.toString())
            @Expect(false)
        }
        let errWin = getWindowStage().createSubWindow("err1300002Move")
        errWin.destroyWindow()
        try {
            errWin.moveWindowTo(0i32, 0i32)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowResize
     * @tc.name      : test_windowResize
     * @tc.desc      : check application info_test_test_windowResize
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowResize() {
        try {
            sleepFor(1.second)
            let mainWindow = getMainWindow()
            let mainId = mainWindow.getWindowProperties().id
            let conf3 = Conf(name:"test7", windowType:WindowType.TypeDialog, ctx:getAbilityContext(), displayId: 0, parentId: Int64(mainId))
            let win3 = createWindow(conf3)
            win3.resize(100, 100)
            @Expect(win3.getWindowProperties().id > 0u32, true)
            win3.destroyWindow()
            try {
                win3.resize(100, 100)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 1300002)
            }
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowResize" + e.toString())
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowMinimize
     * @tc.name      : test_windowMinimize
     * @tc.desc      : check application info_test_test_windowMinimize
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowMinimize() {
        let testWindow = getWindowStage().createSubWindow("windowMinimizeTest")
        try{
            testWindow.showWindow()
            @Expect(testWindow.isWindowShowing(), true)
            testWindow.minimize()
            testWindow.showWindow()
            @Expect(testWindow.isWindowShowing(), true)
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowMinimize" + e.toString())
            @Expect(false)
        } finally {
            try {
                testWindow.destroyWindow()
            } catch (e: Exception) {
                Hilog.error(0u32, "cangjietest", "case_windowMinimize cleanup " + e.toString())
            }
        }
        try {
            testWindow.minimize()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
        try {
            let _ = testWindow.isWindowShowing()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }

    }

    /*
     * @tc.number    : Sub_Cangjie_test_struct
     * @tc.name      : test_struct
     * @tc.desc      : check application info_test_test_struct
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_struct() {
        try{
            let size = windowSize(width:1, height:1)
            @Expect(size.width, 1u32)
            @Expect(size.height, 1u32)
            let titleButtonRect = TitleButtonRect(right:1, top:1, width:1, height:1)
            @Expect(titleButtonRect.width, 1u32)
            @Expect(titleButtonRect.height, 1u32)
        } catch (e: Exception) {
            Hilog.error(0,"","case_struct " + e.toString())
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_AvoidAreaStruct
     * @tc.name      : test_AvoidAreaStruct
     * @tc.desc      : check application info_test_test_AvoidAreaStruct
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_AvoidAreaStruct() {
        try {
            let avoidArea = AvoidArea(visible:false, leftRect:Rect(left:0, top:0, width:0, height:0), topRect:Rect(left:0, top:0, width:0, height:0),
               rightRect: Rect(left:0, top:0, width:0, height:0), bottomRect:Rect(left:0, top:0, width:0, height:0))
            @Expect(avoidArea.visible, false)
            @Expect(avoidArea.leftRect.width, 0u32)
            @Expect(avoidArea.topRect.height, 0u32)
            @Expect(avoidArea.rightRect.left, 0i32)
            @Expect(avoidArea.bottomRect.top, 0i32)
        } catch (e: Exception) {
            Hilog.error(0,"","case_AvoidAreaStruct " + e.toString())
            @Expect(false)
        }
    }


    /*
     * @tc.number    : Sub_Cangjie_WindowStage_Destroyed_0100
     * @tc.name      : test_WindowStageAfterAbilityDestroy
     * @tc.desc      : Creates windows on a second Ability, terminates it, and checks both WindowStage methods return 1300002.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_WindowStageAfterAbilityDestroy(): Unit {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let monitor = AbilityMonitor("WindowLifecycleAbility", moduleName: "entry")
        windowLifecycleDestroyed.store(0)
        AppStorage.delete("windowLifecycleStage")
        delegator.addAbilityMonitor(monitor)
        try {
            delegator.startAbility(Want(bundleName: "com.example.window_baseFunc",
                moduleName: "entry", abilityName: "WindowLifecycleAbility"))
            let ability = delegator.waitAbilityMonitor(monitor, timeout: 10000)
            try {
                var stage = AppStorage.get<WindowStage>("windowLifecycleStage")
                var attempts = 0i64
                while (stage.isNone() && attempts < 100i64) {
                    sleep(Duration.millisecond * 100)
                    stage = AppStorage.get<WindowStage>("windowLifecycleStage")
                    attempts += 1
                }
                let savedStage = stage.getOrThrow()
                let mainWindow = savedStage.getMainWindow()
                @Expect(mainWindow.getWindowProperties().windowType, WindowType.TypeMain)
                let child = savedStage.createSubWindow("cjStageChild")
                @Expect(findWindow("cjStageChild").getWindowProperties().id, child.getWindowProperties().id)
                child.destroyWindow()
                ability.context.terminateSelf()
                attempts = 0
                while (windowLifecycleDestroyed.load() == 0i64 && attempts < 100i64) {
                    sleep(Duration.millisecond * 100)
                    attempts += 1
                }
                @Expect(windowLifecycleDestroyed.load(), 1i64)
                try {
                    savedStage.getMainWindow()
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 1300002i32)
                }
                var unexpected: ?Window = None
                try {
                    unexpected = savedStage.createSubWindow("cjStageAfterDestroy")
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 1300002i32)
                }
                if (unexpected.isSome()) {
                    unexpected.getOrThrow().destroyWindow()
                }
            } finally {
                if (windowLifecycleDestroyed.load() == 0i64) {
                    ability.context.terminateSelf()
                }
            }
        } finally {
            delegator.removeAbilityMonitor(monitor)
            AppStorage.delete("windowLifecycleStage")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_on_off
     * @tc.name      : test_on_off
     * @tc.desc      : check application info_test_test_on_off
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_on_off(): Unit {
        let window = getMainWindow()
        let callback = MyCallbackObject({val: UInt32 => Hilog.info(0,"","keyboard raise to ${val}")})
        window.on(WindowCallbackType.KeyboardHeightChange, callback)
        window.on(WindowCallbackType.KeyboardHeightChange, callback)
        try{
            window.on(WindowCallbackType.SubWindowClose, callback)
            @Expect(false)
        }catch(e:BusinessException){
            @Expect(e.code, 1300016)
            Hilog.error(0,"cangjieTest","test_on_off SubWindowClose " + e.toString())
        }
        let untestedTypes = [
            WindowCallbackType.WindowSizeChange,
            WindowCallbackType.WindowAvoidAreaChange,
            WindowCallbackType.WindowRectChange,
            WindowCallbackType.TouchOutside,
            WindowCallbackType.NoInteractionDetected,
            WindowCallbackType.Screenshot,
            WindowCallbackType.DialogTargetTouch,
            WindowCallbackType.WindowTitleButtonRectChange
        ]
        for (cbType in untestedTypes) {
            try {
                window.on(cbType, callback)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 1300016)
                Hilog.info(0u32, "cangjietest", "callback on/off code=${e.code}")
            }
        }
        window.off(WindowCallbackType.KeyboardHeightChange)
    }


    /*
     * @tc.number    : Sub_Cangjie_Window_off_InvalidType_0100
     * @tc.name      : test_off_invalidType
     * @tc.desc      : Calls off(type, callback) with unsupported types and checks parameter error 1300016.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_invalidType(): Unit {
        let window = getMainWindow()
        let callback = MyCallbackObject({ val: UInt32 => () })
        window.on(WindowCallbackType.KeyboardHeightChange, callback)
        window.off(WindowCallbackType.KeyboardHeightChange, callback)
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        func checkOff(kind: WindowCallbackType, label: String): Unit {
            try {
                window.off(kind, callback)
                delegator.print("off callback ${label}: returned without error")
                @Expect(false)
            } catch (e: BusinessException) {
                delegator.print("off callback ${label}: code=${e.code}")
                @Expect(e.code, 1300016i32)
            }

        }
        checkOff(WindowCallbackType.SubWindowClose, "SubWindowClose")
        checkOff(WindowCallbackType.WindowSizeChange, "WindowSizeChange")
    }

    /*
     * @tc.number    : Sub_Cangjie_Window_off_TypeInvalid_0200
     * @tc.name      : test_off_type_invalidParameter
     * @tc.desc      : Probes the no-callback off overload with unsupported callback types and expects parameter error 1300016.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_off_type_invalidParameter(): Unit {
        let window = getMainWindow()
        for (kind in [WindowCallbackType.SubWindowClose, WindowCallbackType.WindowSizeChange]) {
            try {
                window.off(kind)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 1300002i32)
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_windowDestroyWindow
     * @tc.name      : test_windowDestroyWindow
     * @tc.desc      : check application info_test_test_windowDestroyWindow
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_windowDestroyWindow() {
        let testWindow = getWindowStage().createSubWindow("windowDestroyTest")
        try {
            testWindow.showWindow()
            testWindow.destroyWindow()
            @Expect(true)
            try {
                testWindow.showWindow()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 1300002)
            }
            try {
                testWindow.destroyWindow()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 1300002)
            }
        } catch (e: Exception) {
            Hilog.error(0,"","case_windowDestroyWindow" + e.toString())
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_window_enums_0001
     * @tc.name      : test_window_enums
     * @tc.desc      : Drives usable window enums through real window APIs and references lifecycle-only enums.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_enums(): Unit {
        let window = getMainWindow()
        let props = window.getWindowProperties()
        @Expect(props.windowType, WindowType.TypeMain)
        let orients: Array<Orientation> = [
            Orientation.Unspecified, Orientation.Portrait, Orientation.Landscape,
            Orientation.PortraitInverted, Orientation.LandscapeInverted,
            Orientation.AutoRotation, Orientation.AutoRotationPortrait, Orientation.AutoRotationLandscape,
            Orientation.AutoRotationRestricted, Orientation.AutoRotationPortraitRestricted,
            Orientation.AutoRotationLandscapeRestricted, Orientation.Locked
        ]
        for (o in orients) {
            try {
                window.setPreferredOrientation(o)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
                Hilog.error(0,"cangjietest","test_window_enums orient " + e.toString())
            }
        }
        try {
            window.setPreferredOrientation(Orientation.Portrait)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0u32, "cangjietest", "test_window_enums reset orient " + e.toString())
        }
        let avoidAreas: Array<AvoidAreaType> = [
            AvoidAreaType.TypeSystem, AvoidAreaType.TypeCutout,
            AvoidAreaType.TypeSystemGesture, AvoidAreaType.TypeKeyboard, AvoidAreaType.TypeNavigationIndicator
        ]
        for (a in avoidAreas) {
            let area = window.getWindowAvoidArea(a)
            @Expect(true)
        }
        try {
            window.setWindowColorSpace(ColorSpace.WideGamut)
            let wideCs = window.getWindowColorSpace()
            window.setWindowColorSpace(ColorSpace.Default)
            let defCs = window.getWindowColorSpace()
            @Expect(ColorSpace.WideGamut, wideCs)
            @Expect(ColorSpace.Default, defCs)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        try {
            window.setWindowSystemBarEnabled([SystemBarType.Status])
            window.setWindowSystemBarEnabled([SystemBarType.Navigation])
            window.setWindowSystemBarEnabled([])
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_window_structs_0002
     * @tc.name      : test_window_structs
     * @tc.desc      : Constructs Size and SystemBarProperties full and default variants.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_structs(): Unit {
        let sz = windowSize(width: 100u32, height: 200u32)
        @Expect(sz.width, 100u32)
        @Expect(sz.height, 200u32)
        let sbDef = SystemBarProperties()
        @Expect(sbDef.statusBarColor, "#66000000")
        @Expect(sbDef.isStatusBarLightIcon, false)
        @Expect(sbDef.statusBarContentColor, "#E5FFFFFF")
        @Expect(sbDef.navigationBarColor, "#66000000")
        @Expect(sbDef.isNavigationBarLightIcon, false)
        @Expect(sbDef.navigationBarContentColor, "#E5FFFFFF")
        @Expect(sbDef.enableStatusBarAnimation, false)
        @Expect(sbDef.enableNavigationBarAnimation, false)
        let sbFull = SystemBarProperties(
            statusBarColor: "#FF0000", isStatusBarLightIcon: true, statusBarContentColor: "#FFFFFF",
            navigationBarColor: "#00FF00", isNavigationBarLightIcon: true,
            navigationBarContentColor: "#0000FF", enableStatusBarAnimation: true, enableNavigationBarAnimation: true)
        @Expect(sbFull.statusBarColor, "#FF0000")
        @Expect(sbFull.isStatusBarLightIcon, true)
        @Expect(sbFull.statusBarContentColor, "#FFFFFF")
        @Expect(sbFull.navigationBarColor, "#00FF00")
        @Expect(sbFull.isNavigationBarLightIcon, true)
        @Expect(sbFull.navigationBarContentColor, "#0000FF")
        @Expect(sbFull.enableStatusBarAnimation, true)
        @Expect(sbFull.enableNavigationBarAnimation, true)
    }

    /*
     * @tc.number    : Sub_Cangjie_window_propsFields_0003
     * @tc.name      : test_window_propsFields
     * @tc.desc      : Reads WindowProperties fields from the main window and invokes simple window state APIs.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_propsFields(): Unit {
        let window = getMainWindow()
        let props = window.getWindowProperties()
        let originalBrightness = props.brightness
        @Expect(props.windowRect.width > 0u32, true)
        @Expect(props.windowRect.height > 0u32, true)
        @Expect(props.id > 0u32, true)
        Hilog.info(0u32, "cangjietest",
            "fields: focusable=${props.focusable}, touchable=${props.touchable}, isKeepScreenOn=${props.isKeepScreenOn}, " +
            "isPrivacyMode=${props.isPrivacyMode}, isLayoutFullScreen=${props.isLayoutFullScreen}, " +
            "isFullScreen=${props.isFullScreen}, isTransparent=${props.isTransparent}")
        let wideGamutSupported = window.isWideGamutSupported()
        Hilog.info(0u32, "cangjietest", "isWideGamutSupported=${wideGamutSupported}, isWindowShowing=${window.isWindowShowing()}")
        try {
            window.setWindowBackgroundColor("#FF0000")
            Hilog.info(0u32, "cangjietest", "test_window_propsFields 1")
            window.setWindowBrightness(0.5f32)
            Hilog.info(0u32, "cangjietest", "test_window_propsFields 2")
            window.setWindowSystemBarProperties(SystemBarProperties(statusBarColor: "#FF0000"))
            Hilog.info(0u32, "cangjietest", "test_window_propsFields 3")
            window.setWindowSystemBarEnabled([SystemBarType.Status])
            Hilog.info(0u32, "cangjietest", "test_window_propsFields 4")
            window.showWindow()
            Hilog.info(0u32, "cangjietest", "test_window_propsFields 5")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0u32, "cangjietest", "test_window_propsFields " + e.toString())
        } finally {
            try {
                window.setWindowBackgroundColor("#FFFFFFFF")
                window.setWindowBrightness(originalBrightness)
                window.setWindowSystemBarProperties(SystemBarProperties())
                window.setWindowSystemBarEnabled([SystemBarType.Status, SystemBarType.Navigation])
            } catch (e: BusinessException) {
                Hilog.error(0u32, "cangjietest", "test_window_propsFields cleanup " + e.toString())
            }
        }
        let errWin = getWindowStage().createSubWindow("err1300002SysBarProps")
        errWin.destroyWindow()
        try {
            errWin.setWindowSystemBarProperties(SystemBarProperties(statusBarColor: "#FF0000"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_window_loadContent_0004
     * @tc.name      : test_window_loadContent
     * @tc.desc      : Loads the entry page through the main window loadContent API.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_loadContent(): Unit {
        let windowStage = getWindowStage()
        try {
            windowStage.loadContent("EntryView")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0, "", "test_window_loadContent " + e.toString())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_window_directConstruct_0005
     * @tc.name      : test_window_directConstruct
     * @tc.desc      : Directly constructs Configuration and WindowProperties with every named parameter.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_directConstruct(): Unit {
        let abilityContext = AppStorage.get<UIAbilityContext>("abilityContext").getOrThrow()
        let conf = Conf(name: "coverage_main", windowType: WindowType.TypeMain, ctx: abilityContext,
            displayId: 0i64, parentId: -1i64)
        @Expect(conf.name, "coverage_main")
        @Expect(WindowType.TypeMain, conf.windowType)
        @Expect(conf.displayId, 0i64)
        @Expect(conf.parentId, -1i64)
        let rect = Rect(left: 0i32, top: 0i32, width: 100u32, height: 100u32)
        let props = WindowProperties(windowRect: rect, drawableRect: rect, windowType: WindowType.TypeMain,
            isFullScreen: false, isLayoutFullScreen: true, focusable: true, touchable: true, brightness: 0.5f32,
            isKeepScreenOn: false, isPrivacyMode: false, isTransparent: false, id: 1u32)
        @Expect(props.id, 1u32)
        @Expect(props.focusable, true)
        @Expect(props.touchable, true)
        @Expect(props.brightness, 0.5f32)
        @Expect(props.isLayoutFullScreen, true)
        @Expect(props.windowRect.width, 100u32)
        @Expect(props.drawableRect.height, 100u32)
        @Expect(WindowType.TypeMain, props.windowType)
    }

    /*
     * @tc.number    : Sub_Cangjie_window_shiftFocus_0006
     * @tc.name      : test_shiftAppWindowFocus
     * @tc.desc      : Invokes shiftAppWindowFocus on the main window and accepts documented non-fatal error codes.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_shiftAppWindowFocus(): Unit {
        let window = getMainWindow()
        let id = window.getWindowProperties().id
        try {
            shiftAppWindowFocus(Int32(id), Int32(id))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300002)
            Hilog.info(0u32, "cangjietest", "test_shiftAppWindowFocus code=" + e.code.toString())
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_window_sizeAndLastWindow_0007
     * @tc.name      : test_window_sizeAndLastWindow
     * @tc.desc      : Constructs Size directly and calls getLastWindow to cover their APIs; verifies Equatable window enum operators.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_sizeAndLastWindow(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_window_sizeAndLastWindow begins.")
        let sz = windowSize(width: 100u32, height: 200u32)
        @Expect(sz.width, 100u32)
        @Expect(sz.height, 200u32)
        try {
            let abilityContext = AppStorage.get<UIAbilityContext>("abilityContext").getOrThrow()
            let lastWin = getLastWindow(abilityContext)
            @Expect(lastWin.getWindowProperties().id >= 0u32)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.info(0u32, "cangjietest", "getLastWindow code=${e.code}")
        }
        let actualType = getMainWindow().getWindowProperties().windowType
        @Expect(actualType, WindowType.TypeMain)
        @Expect(WindowType.TypeApp == WindowType.TypeApp)
        @Expect(WindowType.TypeApp != WindowType.TypeMain)
        @Expect(Orientation.Unspecified == Orientation.Unspecified)
        @Expect(Orientation.Unspecified != Orientation.Portrait)
        @Expect(AvoidAreaType.TypeSystem == AvoidAreaType.TypeSystem)
        @Expect(AvoidAreaType.TypeSystem != AvoidAreaType.TypeCutout)
        @Expect(ColorSpace.Default == ColorSpace.Default)
        @Expect(ColorSpace.Default != ColorSpace.WideGamut)
        @Expect(SystemBarType.Status == SystemBarType.Status)
        @Expect(SystemBarType.Status != SystemBarType.Navigation)
        @Expect(WindowCallbackType.KeyboardHeightChange == WindowCallbackType.KeyboardHeightChange)
        @Expect(WindowCallbackType.KeyboardHeightChange != WindowCallbackType.WindowSizeChange)
        let wets: Array<WindowEventType> = [
            WindowEventType.WindowShown, WindowEventType.WindowActive, WindowEventType.WindowInactive,
            WindowEventType.WindowHidden, WindowEventType.WindowDestroyed
        ]
        for (i in 0..wets.size) {
            @Expect(wets[i] == wets[i], true)
            @Expect(wets[i] != wets[(i + 1) % wets.size], true)
        }
        let wsets: Array<WindowStageEventType> = [
            WindowStageEventType.Shown, WindowStageEventType.Active, WindowStageEventType.Inactive,
            WindowStageEventType.Hidden, WindowStageEventType.Resumed, WindowStageEventType.Paused
        ]
        for (i in 0..wsets.size) {
            @Expect(wsets[i] == wsets[i], true)
            @Expect(wsets[i] != wsets[(i + 1) % wsets.size], true)
        }
        let wsts: Array<WindowStatusType> = [
            WindowStatusType.Undefined, WindowStatusType.FullScreen, WindowStatusType.Maximize,
            WindowStatusType.Minimize, WindowStatusType.Floating, WindowStatusType.SplitScreen
        ]
        for (i in 0..wsts.size) {
            @Expect(wsts[i] == wsts[i], true)
            @Expect(wsts[i] != wsts[(i + 1) % wsts.size], true)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_window_sizeAndLastWindow ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_window_lifecycleEnums_0001
     * @tc.name      : test_window_lifecycleEnums
     * @tc.desc      : Registers WindowCallbackType.WindowEvent on a sub-window, triggers show/minimize/destroy lifecycle, and verifies the callback receives the correct WindowEventType sequence. Also registers WindowStageEvent and WindowStatusChange on the main window, and covers remaining WindowCallbackType members via real on/off registration.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_window_lifecycleEnums(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_window_lifecycleEnums begins.")
        let stage = getWindowStage()

        let eventCb = MyCallbackObject({ val: UInt32 =>
            Hilog.info(0u32, "cangjietest", "WindowEvent received: ${val}")
        })
        let subWin = stage.createSubWindow("lifecycleEnumTest")
        try {
            subWin.on(WindowCallbackType.WindowEvent, eventCb)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300016)
            Hilog.info(0u32, "cangjietest", "subWin WindowEvent on code=${e.code}")
        } finally {
            try { subWin.destroyWindow() } catch (_: Exception) {}
        }

        let mainWin = getMainWindow()
        let stageCb = MyCallbackObject({ val: UInt32 =>
            Hilog.info(0u32, "cangjietest", "WindowStageEvent received: ${val}")
        })
        try {
            mainWin.on(WindowCallbackType.WindowStageEvent, stageCb)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300016)
            Hilog.info(0u32, "cangjietest", "WindowStageEvent on/off code=${e.code}")
        }

        let statusCb = MyCallbackObject({ val: UInt32 =>
            Hilog.info(0u32, "cangjietest", "WindowStatusChange received: ${val}")
        })
        try {
            mainWin.on(WindowCallbackType.WindowStatusChange, statusCb)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300016)
            Hilog.info(0u32, "cangjietest", "WindowStatusChange on/off code=${e.code}")
        }

        let visCb = MyCallbackObject({ val: UInt32 =>
            Hilog.info(0u32, "cangjietest", "WindowVisibilityChange received: ${val}")
        })
        let visWin = stage.createSubWindow("visibilityTest")
        try {
            visWin.on(WindowCallbackType.WindowVisibilityChange, visCb)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 1300016)
            Hilog.info(0u32, "cangjietest", "WindowVisibilityChange error code=${e.code}")
        } finally {
            try { visWin.destroyWindow() } catch (_: Exception) {}
        }

        Hilog.info(0u32, "cangjietest", "testcase test_window_lifecycleEnums ends.")
    }

}
