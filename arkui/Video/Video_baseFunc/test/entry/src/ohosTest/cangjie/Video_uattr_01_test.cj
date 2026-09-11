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
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Video_uevent_01.*
@Test
class Video_uattr_01_test {
    /*
     * @tc.number    : TestVideo_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test autoPlay=true, controls=true, loop=true, muted=true, objectFit=ImageFit.Contain and all events of the Video
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Video_uevent_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Video_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Video_uevent_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Video_uevent_01_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_01_id")["displayPriority"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_01_id")["contrast"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onError_check")["content"], "\"onError: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFinish_check")["content"], "\"onFinish: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPause_check")["content"], "\"onPause: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onPrepared_check")["content"], "\"onPrepared: prepared\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSeeking_check")["content"], "\"onSeeking: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onSeeked_check")["content"], "\"onSeeked: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onStart_check")["content"], "\"onStart: started\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onUpdate_check")["content"], "\"onUpdate: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("onFullscreenChange_check")["content"], "\"onFullscreenChange: None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestVideo_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test autoPlay=false, controls=false, loop=false, muted=false, objectFit=ImageFit.Cover of the Video
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Video_uevent_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Video_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Video_uevent_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Video_uevent_02_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_02_id")["displayPriority"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_02_id")["contrast"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestVideo_uattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test objectFit=ImageFit.Auto of the Video
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Video_uevent_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Video_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Video_uevent_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Video_uevent_03_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_03_id")["displayPriority"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_03_id")["contrast"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestVideo_uattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test objectFit=ImageFit.Fill of the Video
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Video_uevent_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Video_uattr_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Video_uevent_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Video_uevent_04_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_04_id")["displayPriority"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_04_id")["contrast"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestVideo_uattr_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test objectFit=ImageFit.ScaleDown of the Video
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Video_uevent_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Video_uattr_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Video_uevent_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Video_uevent_05_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_05_id")["displayPriority"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_05_id")["contrast"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestVideo_uattr_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test objectFit=ImageFit.None of the Video
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Video_uevent_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Video_uattr_01_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Video_uevent_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Video_uevent_06_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_06_id")["displayPriority"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Video_uevent_06_id")["contrast"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
}
