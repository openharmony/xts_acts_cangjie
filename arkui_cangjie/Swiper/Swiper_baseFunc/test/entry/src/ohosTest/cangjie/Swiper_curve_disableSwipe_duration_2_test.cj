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
class Swiper_curve_disableSwipe_duration_2_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Swiper_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Swiper_curve_disableSwipe_duration")
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
     * @tc.number    : TestList_Curve_disableSwipe_duration_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(true) and duration(0) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration101\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration101")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(true) and duration(1) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration102\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration102")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(true) and duration(500) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration103\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration103")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"500\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(true) and duration(1000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration104\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration104")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(true) and duration(10000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration105\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration105")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"10000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(false) and duration(0) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration106\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration106")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(false) and duration(1) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration107\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration107")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(false) and duration(500) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration108\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration108")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"500\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(false) and duration(1000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration109\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration109")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : test the curve(Curve.Rhythm) and disableSwipe(false) and duration(10000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration110\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration110")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"cubic-bezier(0.700000,0.000000,0.200000,1.000000)\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"10000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(true) and duration(0) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration111\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration111")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(true) and duration(1) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration112\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration112")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(true) and duration(500) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration113\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration113")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"500\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(true) and duration(1000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration114\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration114")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(true) and duration(10000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration115\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration115")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"10000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(false) and duration(0) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration116\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration116")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_116 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(false) and duration(1) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration117\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration117")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_117 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(false) and duration(500) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration118\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration118")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"500\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_118 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(false) and duration(1000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration119\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration119")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_119 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : test the curve(Curve.Smooth) and disableSwipe(false) and duration(10000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration120\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration120")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Smooth\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"10000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_120 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(true) and duration(0) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration121\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration121")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_121 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(true) and duration(1) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration122\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration122")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_122 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(true) and duration(500) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration123\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration123")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"500\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_123 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(true) and duration(1000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration124\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration124")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_124 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(true) and duration(10000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration125\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration125")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"10000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_125 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(false) and duration(0) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration126\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration126")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_126 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(false) and duration(1) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration127\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration127")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_127 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(false) and duration(500) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration128\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration128")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"500\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_128 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(false) and duration(1000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration129\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration129")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_129 ends.")
    }
    /*
     * @tc.number    : TestList_Curve_disableSwipe_duration_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : test the curve(Curve.Friction) and disableSwipe(false) and duration(10000) of the Swiper
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_Swiper_curve_disableSwipe_duration130\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Swiper_curve_disableSwipe_duration130")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Swiper_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["curve"], "\"Curves.Friction\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["disableSwipe"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Swiper_id")["duration"], "\"10000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_130 ends.")
    }
}
