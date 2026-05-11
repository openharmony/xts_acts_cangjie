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
class List_EdgeEffect_lanes_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.List_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_List_edgeEffect_lanes")
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
     * @tc.number    : TestList_AlignListItem_lanes_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring -1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"-1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"5\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 39
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"39\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 40
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"40\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 41
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"41\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.Spring 1000
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.Spring\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None -1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"-1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"5\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 39
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"39\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 40
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"40\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 41
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"41\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestList_AlignListItem_lanes_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the edgeEffect&lanes of the List EdgeEffect.None 1000
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_edgeEffect_lanes16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_edgeEffect_lanes16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["edgeEffect"], "\"EdgeEffect.None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["lanes"], "\"1000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
}
