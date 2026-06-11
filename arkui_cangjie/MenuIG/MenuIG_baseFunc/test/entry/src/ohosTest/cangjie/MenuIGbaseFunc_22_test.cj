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
class MenuIG_comattr_imageeffects_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.MenuIG_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_MenuIG_ca_imageeffects_01")
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
     * @tc.number    : TestMenuIG_comattr_imageeffects_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"-10.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"10.550000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"-10.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"10.550000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"100.120000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"100.120000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestMenuIG_comattr_imageeffects_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the comattr of the MenuItemGroup
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_MenuIG_comattr_imageeffects_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_MenuIG_comattr_imageeffects_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("MenuIG_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["blur"], "10.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["colorBlend"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["backdropBlur"], "-10.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.radius"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.color"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetX"], "\"0.110000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("MenuIG_comattr_id")["shadow.offsetY"], "\"0.110000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
}
