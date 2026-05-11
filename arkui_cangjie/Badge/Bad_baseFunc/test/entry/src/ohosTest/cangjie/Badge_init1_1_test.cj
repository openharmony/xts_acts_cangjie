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
class Badge_init1_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.huawei.Bad_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Bad_init1_01")
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
     * @tc.number    : TestBadge_init1_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_29")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_30")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_34")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_35")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_36")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_37")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_38")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_39")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_40")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#00000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_44")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_45")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_46\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_46")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_47\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_47")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_48\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_48")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_49\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_49")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_50\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_50")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_51\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_51")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_52\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_52")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_53\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_53")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_54\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_54")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_55\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_55")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF0000FF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_56\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_56")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_57\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_57")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_58\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_58")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_59\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_59")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_60\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_60")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_61\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_61")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_62\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_62")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF00000A\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_63\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_63")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_64\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_64")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Right\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_65\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_65")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_66\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_66")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_67\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_67")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_68\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_68")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_69\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_69")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.Left\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_70\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_70")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_71\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_71")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_72\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_72")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_73\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_73")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_74\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_74")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_75\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_75")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_76\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_76")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Regular\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_77\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_77")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bold\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_78\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_78")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF008000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"200\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_79\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_79")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"900\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_80\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_80")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"400\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_81\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_81")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_82\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_82")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_83\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_83")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_84\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_84")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_85\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_85")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_86\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_86")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_87\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_87")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF000000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_88\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_88")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_89\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_89")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_90\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_90")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_91\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_91")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFF0000\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"800\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_92\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_92")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"500\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_93\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_93")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"300\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_94\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_94")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Lighter\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_95\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_95")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FF808080\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"600\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_96\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_96")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Normal\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_97\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_97")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483647\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Bolder\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483647\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_98\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_98")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"700\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"0\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_99\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_99")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"2147483646\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFF6\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"100\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"2147483646\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }
    /*
     * @tc.number    : TestBadge_init1_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : test the init of the Badge
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Badge_init1_100\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Badge_init1_100")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("badge_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["count"], "\"-2147483648\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"badgeSize\":\"16.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderColor\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"borderWidth\":\"1.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"color\":\"#FFFFFFFF\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontSize\":\"10.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["style"].contains("\"fontWeight\":\"FontWeight.Medium\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["position"], "\"BadgePosition.RightTop\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("badge_id")["maxCount"], "\"-2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}
