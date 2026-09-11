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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import kit.CoreFileKit.*
import ohos.ui_test.*
import ohos.arkui.state_management.*
import ohos.window.WindowStage
import ohos.device_info.DeviceInfo
import kit.TestKit.*
import ohos.ui_test.Point as PT
import kit.AbilityKit.Want

@Test
class test_UiWindow {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }

    @BeforeEach
    func beforeEach() {
        try {
            getAbilityContext().startAbility(Want(bundleName: "com.example.uiwindow", abilityName: "EntryAbility"))
            sleepFor(2.second)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "beforeEach startAbility error: ${e.message}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : UiWindow isActive()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        let driver: Driver = Driver.create()
        try {
            let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
            let active = window?.isActive()
            @Expect(active, true)
        } catch (e: BusinessException) {
            Hilog.info(0, "cangjietest", "normal-path FAIL code=${e.code} msg=${e.message}")
            @Expect(false)
        }
        let errStage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let errSub = errStage.createSubWindow("err_sub_1")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.isActive()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : UiWindow minimize()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        let driver: Driver = Driver.create()
        let stage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let sub2 = stage.createSubWindow("sub2")
        sub2.setWindowFocusable(true)
        sub2.showWindow()
        driver.delayMs(500)
        let window2 = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window2.minimize()
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "cangjietest", "normal-path FAIL code=${e.code} msg=${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window2.minimize()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        let errStage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let errSub = errStage.createSubWindow("err_sub_2")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.minimize()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : UiWindow maximize()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        let driver: Driver = Driver.create()
        let window: Option<UiWindow> = driver.findWindow(WindowFilter(bundleName: "com.example.uiwindow"))
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window?.maximize()
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "cangjietest", "normal-path FAIL code=${e.code} msg=${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window?.maximize()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        let errStage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let errSub = errStage.createSubWindow("err_sub_3")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.maximize()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0400
     * @tc.name      : TestCase_40
     * @tc.desc      : UiWindow moveTo()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        let driver: Driver = Driver.create()
        let winStage = getWindowStage()
        let sub1 = winStage.createSubWindow("sub1")
        sub1.setWindowFocusable(true)
        sub1.showWindow()
        driver.delayMs(500)
        let window1 = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window1.moveTo(100, 100)
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "test", "${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window1.moveTo(100, 100)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        sub1.destroyWindow()
        driver.delayMs(500)
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0401
     * @tc.name      : TestCase_41
     * @tc.desc      : UiWindow moveTo() fail
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        let driver: Driver = Driver.create()
        let winStage = getWindowStage()
        let errSub = winStage.createSubWindow("err_sub_4")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.moveTo(100, 100)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

/*
     * @tc.number    : Sub_Cangjie_UiWindow_0500
     * @tc.name      : TestCase_50
     * @tc.desc      : UiWindow resume()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_50 begins.")
        let driver: Driver = Driver.create()
        let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window?.resume()
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "test", "${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window?.resume()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0501
     * @tc.name      : TestCase_51
     * @tc.desc      : UiWindow resume() fail
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_51 begins.")
        let driver: Driver = Driver.create()
        let errStage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let errSub = errStage.createSubWindow("err_sub_5")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.resume()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0600
     * @tc.name      : TestCase_60
     * @tc.desc      : UiWindow split()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_60 begins.")
        let driver: Driver = Driver.create()
        let window: Option<UiWindow> = driver.findWindow(WindowFilter(active: true))
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window?.split()
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "test", "${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window?.split()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0601
     * @tc.name      : TestCase_61
     * @tc.desc      : UiWindow split() fail
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_61 begins.")
        let driver: Driver = Driver.create()
        let errStage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let errSub = errStage.createSubWindow("err_sub_6")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.split()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_61 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0700
     * @tc.name      : TestCase_70
     * @tc.desc      : UiWindow resize()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_70 begins.")
        let driver: Driver = Driver.create()
        let winStage = getWindowStage()
        let sub70 = winStage.createSubWindow("sub70")
        sub70.setWindowFocusable(true)
        sub70.showWindow()
        driver.delayMs(500)
        let window70 = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window70.resize(100, 100, ResizeDirection.Left)
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "test", "${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window70.resize(100, 100, ResizeDirection.Left)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        sub70.destroyWindow()
        driver.delayMs(500)
        Hilog.info(0, "cangjietest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0701
     * @tc.name      : TestCase_71
     * @tc.desc      : UiWindow resize() fail
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_71 begins.")
        let driver: Driver = Driver.create()
        let winStage = getWindowStage()
        let errSub = winStage.createSubWindow("err_sub_7")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.resize(100, 100, ResizeDirection.Left)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UiWindow_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : UiWindow close()
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        let driver: Driver = Driver.create()
        let errStage = AppStorage.get<WindowStage>("windowStage").getOrThrow()
        let sub8 = errStage.createSubWindow("sub8")
        sub8.setWindowFocusable(true)
        sub8.showWindow()
        driver.delayMs(500)
        let window8 = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        if (DeviceInfo.deviceType == "phone" || DeviceInfo.deviceType == "default" ||
            DeviceInfo.deviceType == "tablet" || DeviceInfo.deviceType == "2in1") {
            try {
                window8.close()
                @Expect(true)
            } catch (e: BusinessException) {
                Hilog.info(0, "cangjietest", "normal-path FAIL code=${e.code} msg=${e.message}")
                @Expect(false)
            }
        } else {
            try {
                window8.close()
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 17000005)
            }
        }
        let errSub = errStage.createSubWindow("err_sub_8")
        errSub.setWindowFocusable(true)
        errSub.showWindow()
        driver.delayMs(500)
        let staleWindow = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        errSub.destroyWindow()
        driver.delayMs(500)
        try {
            staleWindow.close()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 17000004)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }
}

public func getWindowStage(): WindowStage {
    sleepFor(2.second)
    match (AppStorage.get<WindowStage>("windowStage")) {
        case None => throw Exception("failed to get window stage")
        case Some(windowStage) => windowStage
    }
}
