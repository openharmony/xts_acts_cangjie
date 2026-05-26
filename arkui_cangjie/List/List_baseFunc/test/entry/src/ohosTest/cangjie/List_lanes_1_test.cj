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
class List_lanes_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.List_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_List_lanesLendth")
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
     * @tc.number    : TestList_lanes_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"20.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"40.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"50.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"200.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"20.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"20.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"20.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"20.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"20.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"20.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"21.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"21.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"21.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"21.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"21.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"21.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"21.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"21.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"21.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"80.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"21.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestList_lanes_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the lanes(minLength, maxLength) of the List
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_List_lanes20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_List_lanes20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("list_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMinLength"], "\"21.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("list_id")["laneMaxLength"], "\"80.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
}
