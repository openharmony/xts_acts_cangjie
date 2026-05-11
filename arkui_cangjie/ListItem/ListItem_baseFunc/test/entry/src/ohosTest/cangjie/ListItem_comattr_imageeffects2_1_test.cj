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
class ListItem_comattr_imageeffects2_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.ListItem_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_LisIt_ca_imageeffects_02")
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
     * @tc.number    : TestListItem_comattr_imageeffects2_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_10\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_11\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_12\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_13\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_14\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestListItem_comattr_imageeffects2_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the ListItem
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_ListItem_comattr_imageeffects2_15\" by scroller \"scroller\""
        )
        enterPage(scrollerId: "scroller", buttonId: "View_ListItem_comattr_imageeffects2_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("ListItem_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["brightness"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("ListItem_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
}
