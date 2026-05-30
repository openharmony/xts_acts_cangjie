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
class RowSplit_comattr_padding_margin_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.RowSplit_baseFunc1", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_RowSpl_ca_padding_margin_01")
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
     * @tc.number    : TestRowSplit_comattr_padding_margin_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_1\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_2\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_3\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_4\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_5\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_6\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_7\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_8\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RowSplit_comattr_padding_margin_9\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_29")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_30")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_34")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_35")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_36")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_37")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_38")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_39")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_40")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_44")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_45")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_46\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_46")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_47\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_47")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_48\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_48")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_49\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_49")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_50\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_50")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_51\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_51")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_52\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_52")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_53\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_53")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_54\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_54")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_55\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_55")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_56\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_56")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_57\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_57")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_58\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_58")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_59\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_59")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_60\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_60")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_61\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_61")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_62\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_62")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_63\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_63")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_64\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_64")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_65\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_65")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_66\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_66")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_67\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_67")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_68\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_68")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_69\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_69")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_70\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_70")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_71\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_71")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_72\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_72")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_73\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_73")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_74\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_74")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_75\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_75")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_76\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_76")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_77\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_77")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_78\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_78")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_79\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_79")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_80\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_80")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_81\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_81")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_82\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_82")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_83\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_83")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_84\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_84")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_85\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_85")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_86\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_86")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_87\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_87")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_88\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_88")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_89\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_89")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_90\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_90")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_91\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_91")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_92\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_92")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_93\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_93")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_94\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_94")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_95\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_95")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_96\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_96")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_97\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_97")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_98\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_98")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_99\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_99")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"0.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }
    /*
     * @tc.number    : TestRowSplit_comattr_padding_margin_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : test the comattr of the RowSplit
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest",
            "enter page \"View_RowSplit_comattr_padding_margin_100\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_RowSplit_comattr_padding_margin_100")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RowSplit_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["margin"], "\"-2.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("RowSplit_comattr_id")["padding"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}
