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
import ohos_app_cangjie_entry.Swip_ca_background_01.*
import ohos_app_cangjie_entry.Swip_ca_background_02.*
import ohos_app_cangjie_entry.Swiper_autoPlay_cachedCount.*
import ohos_app_cangjie_entry.Swiper_curve_disableSwipe_duration.*
import ohos_app_cangjie_entry.Swiper_displayCount.*
import ohos_app_cangjie_entry.Swiper_displayMode_effectMode.*
import ohos_app_cangjie_entry.Swiper_index_indicatorBool.*
import ohos_app_cangjie_entry.Swiper_interval_itemSpace_loop_vertical.*
@Test
class Swiper_comattr_background_1_test {
    /*
     * @tc.number    : TestSwiper_comattr_background_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_5\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_5(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_6\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_6(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_7\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_7(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_8\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_8(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_9\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_9"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_9(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_10\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_10"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_10(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_11\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_11"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_11(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_12\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_12"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_12(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_13\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_13"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_13(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777226.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_14\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_14"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_14(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_15\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_15"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_15(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_16\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_16"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_16(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_17\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_17"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_17(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_18\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_18"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_18(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_19\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_19"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_19(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_20\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_20"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_20(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_21\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_21"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_21(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_22\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_22"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_22(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_23\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_23"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_23(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_24\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_24"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_24(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_25\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_25"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_25(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_26\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_26"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_26(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_27\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_27"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_27(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_28\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_28"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_28(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_29\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_29"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_29(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_30\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_30"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_30(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_31\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_31"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_31(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_32\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_32"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_32(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_33\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_33"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_33(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_34\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_34"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_34(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_35\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_35"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_35(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_36\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_36"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_36(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_37\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_37"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_37(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10,\"y\":-10}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_38\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_38"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_38(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_39\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_39"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_39(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0,\"y\":0}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_40\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_40"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_40(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_41\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_41"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_41(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8,\"y\":8}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_42\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_42"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_42(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":-10.11,\"y\":-10.11}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_43\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_43"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_43(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":0.01,\"y\":0.01}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestSwiper_comattr_background_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the comattr of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_comattr_background_44\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_comattr_background_1_test"
            modtestCaseText[0] = "TestCase_44"
            modtestView[0] = {_:CustomView => View_Swiper_comattr_background_44(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
}
