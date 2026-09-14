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
import std.collection.*
import ohos.base.*
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.app.ability.ability_delegator_registry.*
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import ohos.ui_test.*
import ohos.arkui.component.*
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Image_uevent_01.*
@Test
class Image_uevent_01_test {
    /*
     * @tc.number    : TestImage_uevent_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the onComplete event of the Image (Success)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Image_uevent_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Image_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_id"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onComplete event to fire (Success)")
        TestDriver.driver.waitForComponent(On().id("onComplete_status_id"), 5000i32)
        @Expect(getInspect.getAttributeValue("Image_id","src"), "\"https://www.example.com/icon.png\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onComplete_status_id")["content"], "\"status: pending\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestImage_uevent_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the onComplete event of the Image (Failed)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uevent_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Image_uevent_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Image_uevent_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_id"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onComplete event to fire (Failed)")
        TestDriver.driver.waitForComponent(On().id("onComplete_status_id"), 5000i32)
        @Expect(getInspect.getAttributeValue("Image_id","src"), "\"https://invalid.example.com/no.png\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onComplete_status_id")["content"], "\"status: pending\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestImage_uevent_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the onError event of the Image (non-empty error)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uevent_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Image_uevent_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Image_uevent_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_id"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onError event to fire (non-empty)")
        TestDriver.driver.waitForComponent(On().id("onError_empty_id"), 5000i32)
        @Expect(getInspect.getAttributeValue("Image_id","src"), "\"https://invalid.example.com/no.png\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onError_empty_id")["content"], "\"empty: \"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestImage_uevent_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the onError event of the Image (empty error)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uevent_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Image_uevent_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Image_uevent_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_id"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onError event to fire (empty)")
        TestDriver.driver.waitForComponent(On().id("onError_empty_id"), 5000i32)
        @Expect(getInspect.getAttributeValue("Image_id","src"), "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onError_empty_id")["content"], "\"empty: empty: true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestImage_uevent_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the onFinish event of the Image
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Image_uevent_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Image_uevent_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Image_uevent_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Image_id"), 5000i32)
        Hilog.info(0u32, "CangjieTest", "wait for onFinish event to fire")
        TestDriver.driver.waitForComponent(On().id("onFinish_result_id"), 5000i32)
        @Expect(getInspect.getAttributeValue("Image_id","src"), "\"https://www.example.com/animated.gif\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_result_id")["content"], "\"finish: false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

}