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
class Blank_comattr_radialgradient_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Blank_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Blank_ca_radialgradient_01")
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
     * @tc.number    : TestBlank_comattr_radialgradient_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-1000.00%\",\"-1000.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"700.00%\",\"700.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF0000FF\",\"0.110000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.00px\",\"-10.00px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF808080\",\"1.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"8.00px\",\"8.00px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF008000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.00vp\",\"-10.00vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FFFF0000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"8.00vp\",\"8.00vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FFFFFFFF\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.00fp\",\"-10.00fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#00000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"10.00fp\",\"10.00fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.00lpx\",\"-10.00lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"11.00lpx\",\"11.00lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-1011.00%\",\"-1011.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"755.00%\",\"755.00%\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.11px\",\"-10.11px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"8.55px\",\"8.55px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.11vp\",\"-10.11vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"9.55vp\",\"9.55vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.11fp\",\"-10.11fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"10.55fp\",\"10.55fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"-10.11lpx\",\"-10.11lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestBlank_comattr_radialgradient_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the Blank
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Blank_comattr_radialgradient_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Blank_comattr_radialgradient_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Blank_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.center"], "[\"11.55lpx\",\"11.55lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.radius"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.colors"], "[[\"#FF000000\",\"0.000000\"]]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Blank_comattr_id")["radialGradient.repeating"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
}
