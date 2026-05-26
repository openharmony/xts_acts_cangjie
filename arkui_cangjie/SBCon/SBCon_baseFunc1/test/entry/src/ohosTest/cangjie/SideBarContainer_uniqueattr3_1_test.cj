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
@Test
class SideBarContainer_uniqueattr3_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.SBCon_baseFunc1", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_SBCon_uniqueattr_03")
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
     * @tc.number    : TestSideBarContainer_uniqueattr3_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"10.000000\\\",\\\"top\\\":\\\"10.000000\\\",\\\"width\\\":\\\"10.000000\\\",\\\"height\\\":\\\"10.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_a\\\",\\\"hidden\\\":\\\"hide_a\\\",\\\"switching\\\":\\\"switch_a\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"10.000000\\\",\\\"top\\\":\\\"10.000000\\\",\\\"width\\\":\\\"10.000000\\\",\\\"height\\\":\\\"10.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_11111\\\",\\\"hidden\\\":\\\"hide_11111\\\",\\\"switching\\\":\\\"switch_11111\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"10.000000\\\",\\\"top\\\":\\\"10.000000\\\",\\\"width\\\":\\\"10.000000\\\",\\\"height\\\":\\\"10.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_#@$%@\\\",\\\"hidden\\\":\\\"hide_#@$%@\\\",\\\"switching\\\":\\\"switch_#@$%@\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"10.000000\\\",\\\"top\\\":\\\"10.000000\\\",\\\"width\\\":\\\"10.000000\\\",\\\"height\\\":\\\"10.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"10.000000\\\",\\\"top\\\":\\\"10.000000\\\",\\\"width\\\":\\\"10.000000\\\",\\\"height\\\":\\\"10.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"0.000000\\\",\\\"top\\\":\\\"0.000000\\\",\\\"width\\\":\\\"0.000000\\\",\\\"height\\\":\\\"0.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"switch_#@$%@\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"0.000000\\\",\\\"top\\\":\\\"0.000000\\\",\\\"width\\\":\\\"0.000000\\\",\\\"height\\\":\\\"0.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"hide_#@$%@\\\",\\\"switching\\\":\\\"switch_11111\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"0.000000\\\",\\\"top\\\":\\\"0.000000\\\",\\\"width\\\":\\\"0.000000\\\",\\\"height\\\":\\\"0.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_#@$%@\\\",\\\"hidden\\\":\\\"hide_11111\\\",\\\"switching\\\":\\\"switch_a\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"0.000000\\\",\\\"top\\\":\\\"0.000000\\\",\\\"width\\\":\\\"0.000000\\\",\\\"height\\\":\\\"0.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_11111\\\",\\\"hidden\\\":\\\"hide_a\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"0.000000\\\",\\\"top\\\":\\\"0.000000\\\",\\\"width\\\":\\\"0.000000\\\",\\\"height\\\":\\\"0.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_a\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_a\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"switch_11111\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_11111\\\",\\\"hidden\\\":\\\"hide_#@$%@\\\",\\\"switching\\\":\\\"switch_a\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_#@$%@\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"switch_11111\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"hide_a\\\",\\\"switching\\\":\\\"switch_#@$%@\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"hide_11111\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"0.000000\\\",\\\"top\\\":\\\"0.000000\\\",\\\"width\\\":\\\"0.000000\\\",\\\"height\\\":\\\"0.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"hide_a\\\",\\\"switching\\\":\\\"switch_11111\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"hide_11111\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_#@$%@\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_11111\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"switch_#@$%@\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_a\\\",\\\"hidden\\\":\\\"hide_#@$%@\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_a\\\",\\\"hidden\\\":\\\"hide_11111\\\",\\\"switching\\\":\\\"switch_#@$%@\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_11111\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"show_#@$%@\\\",\\\"hidden\\\":\\\"hide_a\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"switch_a\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"hide_#@$%@\\\",\\\"switching\\\":\\\"\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr3_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the uniqueattr of the SideBarContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr3_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr3_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["controlButton"], "\"{\\\"left\\\":\\\"20.000000\\\",\\\"top\\\":\\\"20.000000\\\",\\\"width\\\":\\\"20.000000\\\",\\\"height\\\":\\\"20.000000\\\",\\\"icon\\\":{\\\"shown\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"switching\\\":\\\"switch_a\\\"}}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
}
