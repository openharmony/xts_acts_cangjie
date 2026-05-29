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
    ColorSpace, AvoidAreaType, findWindow, Size as windowSize, TitleButtonRect, AvoidArea, Rect, Window}
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
    //windowStagevar.getOrThrow()
    getWindowStage().getMainWindow()
}

public func getWindowStage(): WindowStage {
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_GetMainWindowInfo " + e.toString())
            @Expect(true)
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
            Hilog.error(0,"","","case_windowColorSpace " + e.toString())
            @Expect(true)
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowSnapshot " + e.toString())
            @Expect(false)
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowRatio " + e.toString())
            @Expect(false)
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
        try {
            let callback = MyCallbackObject({val: UInt32 => Hilog.info(0,"","","keyboard raise to ${val}")})
            let windowClass = getLastWindow(getAbilityContext())
            windowClass.setWindowKeepScreenOn(true)
            windowClass.setWindowPrivacyMode(true)
            windowClass.setWindowTouchable(true)
            windowClass.setWindowFocusable(true)
            windowClass.setWindowLayoutFullScreen(true)
            windowClass.on(WindowCallbackType.KeyboardHeightChange, callback)
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowSettingTrue " + e.toString())
            @Expect(false)
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
        try {
            let windowClass = getLastWindow(getAbilityContext())
            windowClass.setWindowKeepScreenOn(false)
            windowClass.setWindowPrivacyMode(false)
            windowClass.setWindowTouchable(false)
            windowClass.setWindowFocusable(false)
            windowClass.setWindowLayoutFullScreen(false)
            windowClass.off(WindowCallbackType.KeyboardHeightChange)
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowSettingFalse " + e.toString())
            @Expect(false)
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
            let windowClass = getLastWindow(getAbilityContext())
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowSettingOrientation " + e.toString())
            @Expect(false)
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_GetMainWindowAvoidArea " + e.toString())
            @Expect(false)
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
             Hilog.error(0,"","","mainId${mainId}")
            let conf3 = Conf(name:"test3",windowType: WindowType.TypeDialog, ctx:getAbilityContext(), displayId: 0, parentId: Int64(mainId))
            let win3 = createWindow(conf3)
            let result3 = findWindow("test3")
            @Expect(win3.getWindowProperties().id == result3.getWindowProperties().id)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_CreateWindow " + e.toString())
            @Expect(true)
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
        func createWindow(name: String, windowType: WindowType, id: UInt32): Unit {
            try {
                let config = Conf(name:name, windowType:windowType, ctx:getAbilityContext(), displayId: 0, parentId: Int64(id))
                createWindow(config)
                @Expect(false)
            } catch (e: Exception) {
                Hilog.error(0,"","","case_CreateWindow " + e.toString())
            }
        }
        let mainWindow = getMainWindow()
        let id = mainWindow.getWindowProperties().id
        createWindow("TYPE_APP", WindowType.TypeApp, id)
        createWindow("TypeDialog", WindowType.TypeDialog, id)
        createWindow("TYPE_FLOAT", WindowType.TypeFloat, id)
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
                @Expect(false)
            } catch (e: Exception) {
                Hilog.error(0,"","","case_getWindowAvoidArea " + e.toString())
            }
        }
        let mainWindow = getMainWindow()
        getWindowAvoidArea(mainWindow, AvoidAreaType.TypeCutout)
        getWindowAvoidArea(mainWindow, AvoidAreaType.TypeSystemGesture)
        getWindowAvoidArea(mainWindow, AvoidAreaType.TypeKeyboard)
        getWindowAvoidArea(mainWindow, AvoidAreaType.TypeNavigationIndicator)
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
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowMoveWindowTo" + e.toString())
            @Expect(false)
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
            let win3 = createWindow(conf3).resize(100, 100)
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowResize" + e.toString())
            @Expect(true)
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
        let mainWindow = getMainWindow()
        mainWindow.minimize()
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
        let size = windowSize(width:1, height:1)
        let titleButtonRect = TitleButtonRect(right:1, top:1, width:1, height:1)
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
            var avoidArea: AvoidArea = AvoidArea(visible:false, leftRect:Rect(left:0, top:0, width:0, height:0), topRect:Rect(left:0, top:0, width:0, height:0),
               rightRect: Rect(left:0, top:0, width:0, height:0), bottomRect:Rect(left:0, top:0, width:0, height:0))
               @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_AvoidAreaStruct " + e.toString())
            @Expect(false)
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
        let callback = MyCallbackObject({val: UInt32 => Hilog.info(0,"","","keyboard raise to ${val}")})
        window.on(WindowCallbackType.KeyboardHeightChange, callback)
        window.on(WindowCallbackType.KeyboardHeightChange, callback)
        try{
            window.on(WindowCallbackType.SubWindowClose, callback)
            @Expect(false)
        }catch(e:BusinessException){
            @Expect(e.code, 1300016)
            @Expect(e.message, "Parameter validation error.")
        }        
        window.off(WindowCallbackType.KeyboardHeightChange)
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
        try {
            let mainWindow = getMainWindow()
            mainWindow.destroyWindow()
            @Expect(false)
        } catch (e: Exception) {
            Hilog.error(0,"","","case_windowDestroyWindow" + e.toString())
            @Expect(false)
        }
    }
}
