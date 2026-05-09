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
class Swiper_interval_itemSpace_loop_vertical_5_test {
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
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical401\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical401")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical402\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical402")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical403\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical403")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical404\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical404")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical405\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical405")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical406\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical406")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical407\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical407")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical408\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical408")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : test the interval(1000000)itemSpace(400i64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical409\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical409")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : test the interval(1000000)itemSpace(400i64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical410\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical410")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : test the interval(1000000)itemSpace(400i64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical411\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical411")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41200
     * @tc.name      : TestCase_412
     * @tc.desc      : test the interval(1000000)itemSpace(400i64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_412 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical412\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical412")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_412 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41300
     * @tc.name      : TestCase_413
     * @tc.desc      : test the interval(1000000)itemSpace(1000i64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_413 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical413\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical413")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_413 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41400
     * @tc.name      : TestCase_414
     * @tc.desc      : test the interval(1000000)itemSpace(1000i64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_414 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical414\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical414")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_414 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41500
     * @tc.name      : TestCase_415
     * @tc.desc      : test the interval(1000000)itemSpace(1000i64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_415 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical415\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical415")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_415 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41600
     * @tc.name      : TestCase_416
     * @tc.desc      : test the interval(1000000)itemSpace(1000i64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_416 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical416\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical416")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_416 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41700
     * @tc.name      : TestCase_417
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_417 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical417\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical417")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_417 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41800
     * @tc.name      : TestCase_418
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_418 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical418\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical418")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_418 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_41900
     * @tc.name      : TestCase_419
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_419 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical419\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical419")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_419 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42000
     * @tc.name      : TestCase_420
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_420 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical420\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical420")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_420 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42100
     * @tc.name      : TestCase_421
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical421\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical421")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_421 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42200
     * @tc.name      : TestCase_422
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical422\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical422")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_422 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42300
     * @tc.name      : TestCase_423
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical423\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical423")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_423 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42400
     * @tc.name      : TestCase_424
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical424\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical424")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_424 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42500
     * @tc.name      : TestCase_425
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical425\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical425")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_425 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42600
     * @tc.name      : TestCase_426
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical426\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical426")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_426 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42700
     * @tc.name      : TestCase_427
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical427\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical427")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_427 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42800
     * @tc.name      : TestCase_428
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical428\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical428")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_428 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_42900
     * @tc.name      : TestCase_429
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical429\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical429")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_429 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43000
     * @tc.name      : TestCase_430
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical430\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical430")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_430 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43100
     * @tc.name      : TestCase_431
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical431\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical431")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_431 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43200
     * @tc.name      : TestCase_432
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical432\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical432")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_432 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43300
     * @tc.name      : TestCase_433
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical433\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical433")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_433 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43400
     * @tc.name      : TestCase_434
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical434\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical434")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_434 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43500
     * @tc.name      : TestCase_435
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical435\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical435")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_435 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43600
     * @tc.name      : TestCase_436
     * @tc.desc      : test the interval(1000000)itemSpace((-11i64).lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical436\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical436")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_436 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43700
     * @tc.name      : TestCase_437
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical437\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical437")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_437 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43800
     * @tc.name      : TestCase_438
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical438\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical438")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_438 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_43900
     * @tc.name      : TestCase_439
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical439\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical439")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_439 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44000
     * @tc.name      : TestCase_440
     * @tc.desc      : test the interval(1000000)itemSpace(0i64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical440\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical440")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_440 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44100
     * @tc.name      : TestCase_441
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical441\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical441")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_441 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44200
     * @tc.name      : TestCase_442
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical442\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical442")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_442 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44300
     * @tc.name      : TestCase_443
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical443\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical443")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_443 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44400
     * @tc.name      : TestCase_444
     * @tc.desc      : test the interval(1000000)itemSpace(10i64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical444\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical444")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_444 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44500
     * @tc.name      : TestCase_445
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical445\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical445")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_445 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44600
     * @tc.name      : TestCase_446
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical446\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical446")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_446 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44700
     * @tc.name      : TestCase_447
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical447\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical447")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_447 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44800
     * @tc.name      : TestCase_448
     * @tc.desc      : test the interval(1000000)itemSpace(2000i64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical448\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical448")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_448 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_44900
     * @tc.name      : TestCase_449
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical449\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical449")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_449 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45000
     * @tc.name      : TestCase_450
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical450\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical450")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_450 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45100
     * @tc.name      : TestCase_451
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_451(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_451 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical451\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical451")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_451 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45200
     * @tc.name      : TestCase_452
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_452(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_452 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical452\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical452")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_452 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45300
     * @tc.name      : TestCase_453
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_453(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_453 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical453\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical453")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_453 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45400
     * @tc.name      : TestCase_454
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_454(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_454 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical454\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical454")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_454 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45500
     * @tc.name      : TestCase_455
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_455(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_455 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical455\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical455")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_455 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45600
     * @tc.name      : TestCase_456
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_456(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_456 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical456\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical456")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_456 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45700
     * @tc.name      : TestCase_457
     * @tc.desc      : test the interval(1000000)itemSpace(30.550000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_457(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_457 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical457\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical457")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_457 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45800
     * @tc.name      : TestCase_458
     * @tc.desc      : test the interval(1000000)itemSpace(30.550000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_458(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_458 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical458\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical458")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_458 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_45900
     * @tc.name      : TestCase_459
     * @tc.desc      : test the interval(1000000)itemSpace(30.550000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_459(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_459 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical459\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical459")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_459 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46000
     * @tc.name      : TestCase_460
     * @tc.desc      : test the interval(1000000)itemSpace(30.550000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_460(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_460 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical460\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical460")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_460 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46100
     * @tc.name      : TestCase_461
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_461(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_461 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical461\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical461")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_461 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46200
     * @tc.name      : TestCase_462
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_462(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_462 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical462\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical462")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_462 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46300
     * @tc.name      : TestCase_463
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_463(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_463 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical463\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical463")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_463 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46400
     * @tc.name      : TestCase_464
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_464(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_464 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical464\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical464")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_464 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46500
     * @tc.name      : TestCase_465
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_465(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_465 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical465\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical465")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_465 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46600
     * @tc.name      : TestCase_466
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_466(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_466 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical466\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical466")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_466 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46700
     * @tc.name      : TestCase_467
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_467(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_467 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical467\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical467")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_467 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46800
     * @tc.name      : TestCase_468
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_468(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_468 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical468\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical468")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_468 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_46900
     * @tc.name      : TestCase_469
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_469(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_469 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical469\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical469")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_469 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47000
     * @tc.name      : TestCase_470
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_470(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_470 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical470\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical470")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_470 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47100
     * @tc.name      : TestCase_471
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_471(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_471 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical471\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical471")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_471 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47200
     * @tc.name      : TestCase_472
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_472(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_472 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical472\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical472")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_472 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47300
     * @tc.name      : TestCase_473
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_473(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_473 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical473\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical473")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_473 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47400
     * @tc.name      : TestCase_474
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_474(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_474 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical474\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical474")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_474 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47500
     * @tc.name      : TestCase_475
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_475(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_475 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical475\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical475")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_475 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47600
     * @tc.name      : TestCase_476
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_476(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_476 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical476\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical476")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_476 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47700
     * @tc.name      : TestCase_477
     * @tc.desc      : test the interval(1000000)itemSpace(500.550000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_477(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_477 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical477\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical477")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_477 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47800
     * @tc.name      : TestCase_478
     * @tc.desc      : test the interval(1000000)itemSpace(500.550000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_478(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_478 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical478\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical478")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_478 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_47900
     * @tc.name      : TestCase_479
     * @tc.desc      : test the interval(1000000)itemSpace(500.550000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_479(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_479 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical479\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical479")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_479 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48000
     * @tc.name      : TestCase_480
     * @tc.desc      : test the interval(1000000)itemSpace(500.550000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_480(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_480 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical480\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical480")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_480 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48100
     * @tc.name      : TestCase_481
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_481(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_481 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical481\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical481")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_481 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48200
     * @tc.name      : TestCase_482
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_482(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_482 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical482\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical482")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_482 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48300
     * @tc.name      : TestCase_483
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_483(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_483 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical483\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical483")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_483 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48400
     * @tc.name      : TestCase_484
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_484(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_484 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical484\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical484")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_484 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48500
     * @tc.name      : TestCase_485
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_485(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_485 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical485\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical485")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_485 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48600
     * @tc.name      : TestCase_486
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_486(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_486 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical486\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical486")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_486 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48700
     * @tc.name      : TestCase_487
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_487(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_487 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical487\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical487")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_487 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48800
     * @tc.name      : TestCase_488
     * @tc.desc      : test the interval(1000000)itemSpace(0.000000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_488(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_488 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical488\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical488")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_488 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_48900
     * @tc.name      : TestCase_489
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_489(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_489 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical489\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical489")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_489 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49000
     * @tc.name      : TestCase_490
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_490(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_490 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical490\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical490")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_490 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49100
     * @tc.name      : TestCase_491
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_491(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_491 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical491\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical491")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_491 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49200
     * @tc.name      : TestCase_492
     * @tc.desc      : test the interval(1000000)itemSpace(10.550000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_492(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_492 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical492\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical492")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_492 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49300
     * @tc.name      : TestCase_493
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_493(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_493 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical493\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical493")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_493 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49400
     * @tc.name      : TestCase_494
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_494(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_494 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical494\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical494")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_494 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49500
     * @tc.name      : TestCase_495
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_495(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_495 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical495\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical495")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_495 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49600
     * @tc.name      : TestCase_496
     * @tc.desc      : test the interval(1000000)itemSpace(2100.550000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_496(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_496 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical496\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical496")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_496 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49700
     * @tc.name      : TestCase_497
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_497(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_497 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical497\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical497")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_497 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49800
     * @tc.name      : TestCase_498
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_498(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_498 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical498\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical498")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_498 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_49900
     * @tc.name      : TestCase_499
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_499(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_499 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical499\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical499")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_499 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_50000
     * @tc.name      : TestCase_500
     * @tc.desc      : test the interval(1000000)itemSpace((-8.110000f64).lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_500(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_500 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical500\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical500")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_500 ends.")
    }
}
