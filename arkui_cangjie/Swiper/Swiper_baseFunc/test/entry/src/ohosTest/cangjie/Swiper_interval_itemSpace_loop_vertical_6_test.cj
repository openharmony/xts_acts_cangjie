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
@Test
class Swiper_interval_itemSpace_loop_vertical_6_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Swiper_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Swiper_interval_itemSpace_loop_vertical")
}
    @AfterEach
    func afterEach() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
    }
    @AfterAll
    func afterAll() {
        Hilog.info(0u32, "CangjieTest", "press back")
        pressBack()
            pressBack()
}
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50100
     * @tc.name      : TestCase_501
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical501\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical501")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50200
     * @tc.name      : TestCase_502
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical502\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical502")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50300
     * @tc.name      : TestCase_503
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical503\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical503")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50400
     * @tc.name      : TestCase_504
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical504\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical504")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50500
     * @tc.name      : TestCase_505
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_505(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical505\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical505")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50600
     * @tc.name      : TestCase_506
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_506(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical506\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical506")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50700
     * @tc.name      : TestCase_507
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_507(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical507\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical507")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50800
     * @tc.name      : TestCase_508
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_508(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical508\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical508")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50900
     * @tc.name      : TestCase_509
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_509(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical509\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical509")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_51000
     * @tc.name      : TestCase_510
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_510(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical510\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical510")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_51100
     * @tc.name      : TestCase_511
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_511(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_511 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical511\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical511")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_511 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_51200
     * @tc.name      : TestCase_512
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_512(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_512 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical512\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical512")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_512 ends.")
    }
}
