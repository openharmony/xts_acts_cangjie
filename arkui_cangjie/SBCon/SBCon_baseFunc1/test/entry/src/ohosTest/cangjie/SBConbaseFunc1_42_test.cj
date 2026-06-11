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
class SideBarContainer_uniqueattr1_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.SBCon_baseFunc1", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_SBCon_uniqueattr_01")
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
     * @tc.number    : TestSideBarContainer_uniqueattr1_0100
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0200
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0300
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0400
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0500
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0600
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0700
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0800
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_0900
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1000
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1100
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1200
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1300
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1400
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1500
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.Start\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestSideBarContainer_uniqueattr1_1600
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
        Hilog.info(0u32, "CangjieTest", "enter page \"View_SideBarContainer_uniqueattr1_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_SideBarContainer_uniqueattr1_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("sidebarcontainer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["autoHide"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showControlButton"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["showSideBar"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("sidebarcontainer_id")["sideBarPosition"], "\"SideBarPosition.End\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
}
