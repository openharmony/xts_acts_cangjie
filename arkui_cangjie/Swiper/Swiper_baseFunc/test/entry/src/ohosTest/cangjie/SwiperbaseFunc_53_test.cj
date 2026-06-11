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
class Swiper_interval_itemSpace_loop_vertical_3_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Swiper_baseFunc", abilityName: "EntryAbility"))
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
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the interval(1)itemSpace(30.550000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical201\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical201")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the interval(1)itemSpace(30.550000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical202\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical202")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the interval(1)itemSpace(30.550000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical203\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical203")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the interval(1)itemSpace(30.550000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical204\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical204")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"30.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical205\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical205")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical206\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical206")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical207\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical207")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical208\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical208")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical209\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical209")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical210\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical210")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical211\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical211")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical212\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical212")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical213\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical213")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical214\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical214")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical215\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical215")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical216\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical216")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical217\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical217")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical218\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical218")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical219\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical219")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical220\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical220")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the interval(1)itemSpace(500.550000f64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical221\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical221")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the interval(1)itemSpace(500.550000f64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical222\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical222")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the interval(1)itemSpace(500.550000f64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical223\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical223")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the interval(1)itemSpace(500.550000f64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical224\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical224")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"500.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical225\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical225")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical226\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical226")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical227\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical227")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical228\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical228")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical229\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical229")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical230\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical230")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical231\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical231")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical232\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical232")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical233\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical233")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical234\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical234")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical235\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical235")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical236\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical236")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical237\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical237")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical238\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical238")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical239\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical239")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical240\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical240")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical241\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical241")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical242\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical242")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical243\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical243")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : test the interval(1)itemSpace((-8.110000f64).lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical244\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical244")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical245\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical245")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical246\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical246")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical247\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical247")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : test the interval(1)itemSpace(0.000000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical248\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical248")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical249\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical249")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical250\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical250")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical251\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical251")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : test the interval(1)itemSpace(10.550000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical252\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical252")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.lpx)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical253\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical253")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.lpx)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical254\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical254")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.lpx)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical255\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical255")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : test the interval(1)itemSpace(2100.550000f64.lpx)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical256\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical256")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2100.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical257\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical257")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical258\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical258")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical259\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical259")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical260\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical260")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : test the interval(1000)itemSpace(0i64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical261\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical261")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : test the interval(1000)itemSpace(0i64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical262\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical262")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : test the interval(1000)itemSpace(0i64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical263\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical263")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : test the interval(1000)itemSpace(0i64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical264\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical264")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : test the interval(1000)itemSpace(40i64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical265\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical265")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : test the interval(1000)itemSpace(40i64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical266\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical266")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : test the interval(1000)itemSpace(40i64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical267\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical267")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : test the interval(1000)itemSpace(40i64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical268\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical268")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"40.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.px)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical269\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical269")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.px)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical270\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical270")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27100
     * @tc.name      : TestCase_271
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.px)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical271\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical271")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27200
     * @tc.name      : TestCase_272
     * @tc.desc      : test the interval(1000)itemSpace(2000i64.px)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical272\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical272")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"2000.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27300
     * @tc.name      : TestCase_273
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical273\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical273")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27400
     * @tc.name      : TestCase_274
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical274\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical274")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27500
     * @tc.name      : TestCase_275
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical275\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical275")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27600
     * @tc.name      : TestCase_276
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical276\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical276")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27700
     * @tc.name      : TestCase_277
     * @tc.desc      : test the interval(1000)itemSpace(0i64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical277\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical277")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27800
     * @tc.name      : TestCase_278
     * @tc.desc      : test the interval(1000)itemSpace(0i64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical278\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical278")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_27900
     * @tc.name      : TestCase_279
     * @tc.desc      : test the interval(1000)itemSpace(0i64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical279\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical279")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28000
     * @tc.name      : TestCase_280
     * @tc.desc      : test the interval(1000)itemSpace(0i64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical280\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical280")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28100
     * @tc.name      : TestCase_281
     * @tc.desc      : test the interval(1000)itemSpace(400i64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical281\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical281")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28200
     * @tc.name      : TestCase_282
     * @tc.desc      : test the interval(1000)itemSpace(400i64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical282\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical282")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28300
     * @tc.name      : TestCase_283
     * @tc.desc      : test the interval(1000)itemSpace(400i64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical283\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical283")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28400
     * @tc.name      : TestCase_284
     * @tc.desc      : test the interval(1000)itemSpace(400i64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical284\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical284")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"400.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28500
     * @tc.name      : TestCase_285
     * @tc.desc      : test the interval(1000)itemSpace(1000i64.vp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical285\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical285")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28600
     * @tc.name      : TestCase_286
     * @tc.desc      : test the interval(1000)itemSpace(1000i64.vp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical286\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical286")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28700
     * @tc.name      : TestCase_287
     * @tc.desc      : test the interval(1000)itemSpace(1000i64.vp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical287\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical287")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28800
     * @tc.name      : TestCase_288
     * @tc.desc      : test the interval(1000)itemSpace(1000i64.vp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical288\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical288")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"1000.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_28900
     * @tc.name      : TestCase_289
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical289\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical289")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29000
     * @tc.name      : TestCase_290
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical290\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical290")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29100
     * @tc.name      : TestCase_291
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical291\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical291")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29200
     * @tc.name      : TestCase_292
     * @tc.desc      : test the interval(1000)itemSpace((-11i64).fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical292\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical292")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29300
     * @tc.name      : TestCase_293
     * @tc.desc      : test the interval(1000)itemSpace(0i64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical293\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical293")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29400
     * @tc.name      : TestCase_294
     * @tc.desc      : test the interval(1000)itemSpace(0i64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical294\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical294")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29500
     * @tc.name      : TestCase_295
     * @tc.desc      : test the interval(1000)itemSpace(0i64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical295\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical295")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29600
     * @tc.name      : TestCase_296
     * @tc.desc      : test the interval(1000)itemSpace(0i64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical296\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical296")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"0.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29700
     * @tc.name      : TestCase_297
     * @tc.desc      : test the interval(1000)itemSpace(10i64.fp)loop(true)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical297\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical297")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29800
     * @tc.name      : TestCase_298
     * @tc.desc      : test the interval(1000)itemSpace(10i64.fp)loop(true)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical298\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical298")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_29900
     * @tc.name      : TestCase_299
     * @tc.desc      : test the interval(1000)itemSpace(10i64.fp)loop(false)vertical(true) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical299\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical299")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 ends.")
    }
    /*
     * @tc.number    : TestSwiper_interval_itemSpace_loop_vertical_30000
     * @tc.name      : TestCase_300
     * @tc.desc      : test the interval(1000)itemSpace(10i64.fp)loop(false)vertical(false) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_interval_itemSpace_loop_vertical300\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_interval_itemSpace_loop_vertical300")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["interval"], "\"1000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["loop"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["vertical"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["itemSpace"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 ends.")
    }
}
