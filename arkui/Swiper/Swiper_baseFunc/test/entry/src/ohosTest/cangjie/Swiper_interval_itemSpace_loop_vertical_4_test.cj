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
class Swiper_interval_itemSpace_loop_vertical_4_test {
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical301\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_301"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical301(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical302\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_302"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical302(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical303\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_303"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical303(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical304\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_304"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical304(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical305\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_305"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical305(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical306\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_306"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical306(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical307\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_307"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical307(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical308\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_308"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical308(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : test the interval(1000)itemSpace(0i64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical309\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_309"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical309(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : test the interval(1000)itemSpace(0i64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical310\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_310"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical310(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : test the interval(1000)itemSpace(0i64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical311\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_311"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical311(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : test the interval(1000)itemSpace(0i64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical312\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_312"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical312(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : test the interval(1000)itemSpace(10i64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical313\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_313"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical313(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : test the interval(1000)itemSpace(10i64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical314\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_314"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical314(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : test the interval(1000)itemSpace(10i64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical315\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_315"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical315(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : test the interval(1000)itemSpace(10i64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical316\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_316"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical316(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical317\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_317"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical317(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical318\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_318"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical318(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical319\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_319"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical319(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical320\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_320"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical320(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical321\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_321"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical321(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical322\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_322"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical322(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical323\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_323"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical323(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical324\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_324"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical324(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical325\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_325"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical325(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical326\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_326"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical326(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical327\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_327"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical327(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical328\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_328"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical328(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : test the interval(1000)itemSpace(30.550000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical329\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_329"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical329(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : test the interval(1000)itemSpace(30.550000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical330\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_330"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical330(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : test the interval(1000)itemSpace(30.550000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical331\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_331"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical331(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : test the interval(1000)itemSpace(30.550000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical332\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_332"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical332(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical333\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_333"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical333(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical334\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_334"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical334(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical335\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_335"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical335(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical336\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_336"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical336(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical337\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_337"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical337(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical338\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_338"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical338(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical339\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_339"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical339(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical340\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_340"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical340(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical341\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_341"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical341(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical342\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_342"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical342(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical343\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_343"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical343(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical344\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_344"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical344(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical345\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_345"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical345(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical346\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_346"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical346(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical347\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_347"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical347(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical348\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_348"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical348(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : test the interval(1000)itemSpace(500.550000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical349\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_349"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical349(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : test the interval(1000)itemSpace(500.550000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical350\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_350"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical350(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : test the interval(1000)itemSpace(500.550000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical351\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_351"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical351(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : test the interval(1000)itemSpace(500.550000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical352\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_352"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical352(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical353\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_353"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical353(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical354\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_354"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical354(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical355\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_355"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical355(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical356\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_356"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical356(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical357\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_357"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical357(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical358\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_358"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical358(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical359\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_359"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical359(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical360\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_360"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical360(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical361\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_361"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical361(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical362\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_362"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical362(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical363\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_363"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical363(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical364\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_364"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical364(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical365\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_365"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical365(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical366\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_366"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical366(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical367\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_367"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical367(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical368\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_368"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical368(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical369\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_369"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical369(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical370\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_370"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical370(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical371\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_371"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical371(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : test the interval(1000)itemSpace((-8.110000f64).lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical372\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_372"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical372(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical373\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_373"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical373(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical374\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_374"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical374(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical375\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_375"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical375(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : test the interval(1000)itemSpace(0.000000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical376\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_376"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical376(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical377\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_377"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical377(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical378\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_378"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical378(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical379\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_379"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical379(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : test the interval(1000)itemSpace(10.550000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical380\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_380"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical380(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical381\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_381"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical381(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical382\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_382"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical382(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical383\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_383"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical383(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : test the interval(1000)itemSpace(2100.550000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical384\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_384"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical384(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical385\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_385"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical385(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical386\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_386"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical386(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical387\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_387"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical387(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical388\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_388"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical388(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical389\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_389"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical389(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical390\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_390"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical390(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical391\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_391"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical391(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical392\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_392"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical392(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : test the interval(1000000)itemSpace(40i64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical393\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_393"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical393(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : test the interval(1000000)itemSpace(40i64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical394\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_394"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical394(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : test the interval(1000000)itemSpace(40i64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical395\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_395"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical395(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : test the interval(1000000)itemSpace(40i64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical396\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_396"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical396(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical397\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_397"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical397(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical398\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_398"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical398(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical399\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_399"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical399(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical400\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Swiper_interval_itemSpace_loop_vertical_4_test"
            modtestCaseText[0] = "TestCase_400"
            modtestView[0] = {_:CustomView => View_Swiper_interval_itemSpace_loop_vertical400(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
