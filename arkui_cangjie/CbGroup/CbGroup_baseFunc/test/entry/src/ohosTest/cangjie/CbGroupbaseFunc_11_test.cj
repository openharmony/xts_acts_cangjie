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
class CbGroup_comattr_constraintsize_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.CbGroup_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_CbGroup_ca_constraintsize_01")
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
     * @tc.number    : TestCbGroup_comattr_constraintsize_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00%\",\"minHeight\":\"-10.00%\",\"maxWidth\":\"-10.00%\",\"maxHeight\":\"-10.00%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.00%\",\"minHeight\":\"7.00%\",\"maxWidth\":\"7.00%\",\"maxHeight\":\"7.00%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00px\",\"minHeight\":\"-10.00px\",\"maxWidth\":\"-10.00px\",\"maxHeight\":\"-10.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00px\",\"minHeight\":\"8.00px\",\"maxWidth\":\"8.00px\",\"maxHeight\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00vp\",\"minHeight\":\"-10.00vp\",\"maxWidth\":\"-10.00vp\",\"maxHeight\":\"-10.00vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.00vp\",\"minHeight\":\"8.00vp\",\"maxWidth\":\"8.00vp\",\"maxHeight\":\"8.00vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00fp\",\"minHeight\":\"-10.00fp\",\"maxWidth\":\"-10.00fp\",\"maxHeight\":\"-10.00fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.00fp\",\"minHeight\":\"10.00fp\",\"maxWidth\":\"10.00fp\",\"maxHeight\":\"10.00fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.00lpx\",\"minHeight\":\"-10.00lpx\",\"maxWidth\":\"-10.00lpx\",\"maxHeight\":\"-10.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.00lpx\",\"minHeight\":\"11.00lpx\",\"maxWidth\":\"11.00lpx\",\"maxHeight\":\"11.00lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11%\",\"minHeight\":\"-10.11%\",\"maxWidth\":\"-10.11%\",\"maxHeight\":\"-10.11%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"7.55%\",\"minHeight\":\"7.55%\",\"maxWidth\":\"7.55%\",\"maxHeight\":\"7.55%\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11px\",\"minHeight\":\"-10.11px\",\"maxWidth\":\"-10.11px\",\"maxHeight\":\"-10.11px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"8.55px\",\"minHeight\":\"8.55px\",\"maxWidth\":\"8.55px\",\"maxHeight\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11vp\",\"minHeight\":\"-10.11vp\",\"maxWidth\":\"-10.11vp\",\"maxHeight\":\"-10.11vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"9.55vp\",\"minHeight\":\"9.55vp\",\"maxWidth\":\"9.55vp\",\"maxHeight\":\"9.55vp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11fp\",\"minHeight\":\"-10.11fp\",\"maxWidth\":\"-10.11fp\",\"maxHeight\":\"-10.11fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"10.55fp\",\"minHeight\":\"10.55fp\",\"maxWidth\":\"10.55fp\",\"maxHeight\":\"10.55fp\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"-10.11lpx\",\"minHeight\":\"-10.11lpx\",\"maxWidth\":\"-10.11lpx\",\"maxHeight\":\"-10.11lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestCbGroup_comattr_constraintsize_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the CheckboxGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_CbBox_comattr_constraintsize_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_CbBox_comattr_constraintsize_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("CheckboxGroup_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("CheckboxGroup_comattr_id")["constraintSize"], "\"{\"minWidth\":\"11.55lpx\",\"minHeight\":\"11.55lpx\",\"maxWidth\":\"11.55lpx\",\"maxHeight\":\"11.55lpx\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
}
