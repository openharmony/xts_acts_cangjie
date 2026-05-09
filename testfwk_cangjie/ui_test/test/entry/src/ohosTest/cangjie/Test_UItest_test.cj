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

internal import std.sync.*
import std.unittest.testmacro.*

import ohos.ui_test.*
import kit.TestKit.{Rect as Rct, MouseButton as MouseBtn}
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.hilog.Hilog
import ohos.ui_test
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException
import ohos.callback_invoke.Callback1Argument
import ohos.business_exception.*

@Test
class Test_UItest {
    private var _driver: ?Driver = None
    private prop driver: Driver {
        get() {
            match (_driver) {
                case Some(driver) => driver
                case None =>
                    let newDriver = Driver.create()
                    _driver = newDriver
                    newDriver
            }
        }
    }
    override func afterAll(): Unit {
        gc(heavy: true)
        sleep(Duration.second)
    }
    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0001
    * @tc.name      : test_get_value
    * @tc.desc      : test ui_test On
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_value() {

        let on1 = On().text("111", pattern: MatchPattern.Contains)
        let on2 = On().text("111", pattern: MatchPattern.StartsWith)
        let on3 = On().text("111", pattern: MatchPattern.EndsWith)
    }
    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0002
    * @tc.name      : testOn
    * @tc.desc      : test ui_test On
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testOn() {
        let on1 = On()
            .text("111")
            .clickable()
            .longClickable()
            .scrollable()
            .enabled()
            .focused()
            .selected()
            .checked()
            .onType("Button")
            .checkable()
            .inWindow("555")
            .id("id")
            .description("444", pattern: MatchPattern.Equals)
        let on2 = On().isBefore(on1).isAfter(on1).within(on1)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0003
    * @tc.name      : testUIObserver
    * @tc.desc      : test ui_test observer
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUIObserver() {
        let observer: UiEventObserver = driver.createUiEventObserver()
        let callbackTrigger = AtomicBool(false)
        observer.once(
            OnceType.ToastShow,
            {
                element =>
                Hilog.info(0, "", element.bundleName)
                Hilog.info(0, "", element.componentType)
                Hilog.info(0, "", element.text)
            }
        )
        observer.once(
            OnceType.DialogShow,
            {
                element =>
                Hilog.info(0, "", "onceDialogShow")
                Hilog.info(0, "", element.bundleName)
                Hilog.info(0, "", element.componentType)
                Hilog.info(0, "", element.text)
                callbackTrigger.compareAndSwap(false, true)
                @Expect(true)
            }
        )

        driver.delayMs(3000)
        let button = driver.findComponent(On().id("id")).getOrThrow()
        button.click()

        driver.delayMs(3000)
        @Expect(callbackTrigger.load())
    }

    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0004
    * @tc.name      : testPointerMatrix
    * @tc.desc      : test ui_test getPointerMatrix
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPointerMatrix() {
        getPointerMatrix()
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0005
    * @tc.name      : testUIComponent
    * @tc.desc      : test ui_test UIComponent
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUIComponent() {
        let button = driver.findComponent(On().id("id")).getOrThrow()
        driver.assertComponentExist(On().onType("Button"))

        let scrollBar = driver.findComponent(On().onType("Scroll")).getOrThrow()
        let button2 = scrollBar.scrollSearch(On().text("1"))
        scrollBar.scrollToBottom()
        scrollBar.scrollToTop()
        let textComponent: Component = driver.findComponent(On().onType("TextInput")).getOrThrow()
        let point = textComponent.getBoundsCenter()
        driver.inputText(point, "123")
        button.click()
        button.doubleClick()
        button.longClick()

        let id = button.getId()
        let text = button.getText()
        let btype = button.getType()
        let rect = button.getBounds()
        let p = button.getBoundsCenter()
        let c = button.isClickable()
        let c1 = button.isLongClickable()
        let c2 = button.isChecked()
        let c3 = button.isCheckable()
        let s = button.isScrollable()
        let e = button.isEnabled()
        let f = button.isFocused()
        let s1 = button.isSelected()
        let des = button.getDescription()

        let txt = driver.findComponent(On().text("cangjie")).getOrThrow()
        txt.clearText()
        txt.inputText("111")

        let drag = driver.findComponent(On().text("ohos")).getOrThrow()

        button.dragTo(drag)
        let buttons = driver.findComponents(On().onType("Button")).getOrThrow()
        let button1 = driver.waitForComponent(On().onType("Button"), 100).getOrThrow()

        let image = driver.findComponent(On().id("icon")).getOrThrow()
        image.pinchIn(0.5)
        image.pinchOut(2.5)

    }

    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0006
    * @tc.name      : testDriver
    * @tc.desc      : test ui_test Driver
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testDriver() {
        driver.wakeUpDisplay()

        driver.getDisplaySize()
        driver.getDisplayDensity()

        driver.setDisplayRotationEnabled(true)
        driver.setDisplayRotation(DisplayRotation.Rotation0)
        let rotation0 = driver.getDisplayRotation()
        driver.setDisplayRotation(DisplayRotation.Rotation90)
        let rotation90 = driver.getDisplayRotation()
        driver.setDisplayRotation(DisplayRotation.Rotation270)
        let rotation270 = driver.getDisplayRotation()
        driver.setDisplayRotation(DisplayRotation.Rotation180)
        let rotation = driver.getDisplayRotation()
        driver.click(100, 100)
        driver.doubleClick(100, 100)
        driver.screenCap("/data/storage/el2/base/cache/1.png")
        driver.longClick(100, 100)
        driver.waitForIdle(100, 100)

        driver.injectMultiPointerAction(getPointerMatrix())
        driver.screenCapture("/data/storage/el2/base/cache/1.png", rect: Rct(0, 0, 100, 100))

        driver.fling(ui_test.Point(500, 480), ui_test.Point(450, 480), 5, 600)
        driver.fling(UiDirection.Down, 10000)
        driver.fling(UiDirection.Up, 10000)
        driver.fling(UiDirection.Left, 10000)
        driver.fling(UiDirection.Right, 10000)
        driver.fling(UiDirection.Down, 10000)
        driver.swipe(100, 100, 200, 200, speed: 600)
        driver.drag(100, 100, 200, 200, speed: 600)
        driver.pressHome()
        driver.pressBack()

        driver.mouseClick(ui_test.Point(248, 194), MouseBtn.MouseButtonLeft, key1: 2072)
        try {
            driver.mouseClick(ui_test.Point(248, 194), MouseBtn.MouseButtonLeft, key1: 2072, key2: 2035)
            Hilog.info(0u32, "", "cangjie", "mouseClick with key2 success")
        } catch (e: BusinessException) {
            Hilog.info(0u32, "", "cangjie", "mouseClick error : ${e}")
        }
        driver.mouseMoveTo(ui_test.Point(248, 194))
        driver.mouseScroll(ui_test.Point(360, 640), true, 30, key1: 2072)
        try {
            driver.mouseScroll(ui_test.Point(360, 640), true, 30, key1: 2072, key2: 2035)
            Hilog.info(0u32,"", "cangjie", "mouseScroll with key2 success")
        } catch (e: BusinessException) {
            Hilog.info(0u32, "", "cangjie", "mouseClick error : ${e}")
        }
        driver.mouseDoubleClick(ui_test.Point(248, 194), MouseBtn.MouseButtonRight, key1: 2072)
        driver.mouseLongClick(ui_test.Point(248, 194), MouseBtn.MouseButtonMiddle, key1: 2072)
        driver.mouseMoveWithTrack(ui_test.Point(100, 100), ui_test.Point(200, 200))
        driver.mouseDrag(ui_test.Point(100, 100), ui_test.Point(200, 200))
        driver.triggerKey(1)
        driver.triggerCombineKeys(2072, 2047, key2: 2035)
        @Expect(true)
    }

    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0007
    * @tc.name      : testwindow0
    * @tc.desc      : test ui_test findWindow
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testwindow0(): Unit {
        let wf = WindowFilter(bundleName: "com.example.myapplication", title: "test", focused: true, active: true)
        Hilog.info(0, "cangjietest","windowFilter","")
        @Expect(true)
    }
    
    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0008
    * @tc.name      : testUIWindow1
    * @tc.desc      : test ui_test Driver
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */    
    
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUIWindow1() {
        let window = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        let name = window.getBundleName()
        @Expect(!name.isEmpty() && !name.startsWith("\""))
    }

    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0009
    * @tc.name      : testUIWindow2
    * @tc.desc      : test ui_test Driver
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */    
    
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUIWindow2() {
        let window = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        let name = window.getBundleName()
        let rect = window.getBounds()
        let title: String = window.getTitle()
        @Expect(title.isEmpty())

    }  
    /*
    * @tc.number    : Sub_Cangjie_ui_test_Test_UItest_0010
    * @tc.name      : testUIWindow3
    * @tc.desc      : test ui_test Driver
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */    
    
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUIWindow3() {
        let window = driver.findWindow(WindowFilter(active: true)).getOrThrow()
        let name = window.getBundleName()
        let rect = window.getBounds()
        let title: String = window.getTitle()
        let mode = window.getWindowMode()
        window.focus()
        @Expect(window.isFocused())
    }   

}

func getPointerMatrix() {
    let pointers = PointerMatrix.create(2, 3)
    pointers.setPoint(0, 0, ui_test.Point(230, 480))
    pointers.setPoint(0, 1, ui_test.Point(250, 380))
    pointers.setPoint(0, 2, ui_test.Point(270, 280))
    pointers.setPoint(1, 0, ui_test.Point(230, 680))
    pointers.setPoint(1, 1, ui_test.Point(240, 580))
    pointers.setPoint(1, 2, ui_test.Point(250, 480))
    pointers
}