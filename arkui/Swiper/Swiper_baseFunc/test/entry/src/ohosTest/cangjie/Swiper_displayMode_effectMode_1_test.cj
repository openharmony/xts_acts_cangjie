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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkData.*
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Swiper_autoPlay_cachedCount.*
import ohos_app_cangjie_entry.Swiper_curve_disableSwipe_duration.*
import ohos_app_cangjie_entry.Swiper_displayCount.*
import ohos_app_cangjie_entry.Swiper_displayMode_effectMode.*
import ohos_app_cangjie_entry.Swiper_index_indicatorBool.*
import ohos_app_cangjie_entry.Swiper_interval_itemSpace_loop_vertical.*
@Test
class Swiper_displayMode_effectMode_1_test {
    /*
     * @tc.number    : TestSwiper_DisplayMode_effectMode_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the displayMode(SwiperDisplayMode.Stretch) and effectMode(EdgeEffect.Spring) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_DisplayMode_effectMode1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_displayMode_effectMode_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Swiper_DisplayMode_effectMode1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["displayMode"], "\"SwiperDisplayMode.Stretch\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["effectMode"], "\"EdgeEffect.Spring\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSwiper_DisplayMode_effectMode_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the displayMode(SwiperDisplayMode.Stretch) and effectMode(EdgeEffect.None) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Swiper_DisplayMode_effectMode2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_displayMode_effectMode_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Swiper_DisplayMode_effectMode2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["displayMode"], "\"SwiperDisplayMode.Stretch\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["effectMode"], "\"EdgeEffect.None\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}
