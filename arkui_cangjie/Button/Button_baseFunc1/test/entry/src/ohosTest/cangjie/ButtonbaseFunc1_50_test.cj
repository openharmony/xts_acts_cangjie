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
class Button_init4_7_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Button_baseFunc1", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Button_init4_04")
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
     * @tc.number    : TestButton_init4_60100
     * @tc.name      : TestCase_601
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_601(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_601 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_601\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_601")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_601 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60200
     * @tc.name      : TestCase_602
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_602(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_602 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_602\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_602")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_602 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60300
     * @tc.name      : TestCase_603
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_603(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_603 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_603\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_603")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_603 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60400
     * @tc.name      : TestCase_604
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_604(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_604 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_604\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_604")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_604 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60500
     * @tc.name      : TestCase_605
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_605(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_605 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_605\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_605")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_605 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60600
     * @tc.name      : TestCase_606
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_606(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_606 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_606\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_606")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_606 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60700
     * @tc.name      : TestCase_607
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_607(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_607 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_607\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_607")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_607 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60800
     * @tc.name      : TestCase_608
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_608(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_608 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_608\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_608")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_608 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60900
     * @tc.name      : TestCase_609
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_609(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_609 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_609\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_609")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_609 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61000
     * @tc.name      : TestCase_610
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_610(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_610 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_610\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_610")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_610 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61100
     * @tc.name      : TestCase_611
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_611(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_611 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_611\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_611")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_611 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61200
     * @tc.name      : TestCase_612
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_612(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_612 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_612\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_612")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_612 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61300
     * @tc.name      : TestCase_613
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_613(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_613 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_613\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_613")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_613 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61400
     * @tc.name      : TestCase_614
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_614(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_614 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_614\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_614")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_614 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61500
     * @tc.name      : TestCase_615
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_615(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_615 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_615\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_615")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_615 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61600
     * @tc.name      : TestCase_616
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_616(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_616 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_616\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_616")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_616 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61700
     * @tc.name      : TestCase_617
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_617(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_617 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_617\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_617")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_617 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61800
     * @tc.name      : TestCase_618
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_618(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_618 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_618\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_618")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_618 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_61900
     * @tc.name      : TestCase_619
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_619(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_619 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_619\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_619")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_619 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62000
     * @tc.name      : TestCase_620
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_620(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_620 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_620\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_620")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_620 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62100
     * @tc.name      : TestCase_621
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_621(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_621 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_621\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_621")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_621 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62200
     * @tc.name      : TestCase_622
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_622(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_622 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_622\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_622")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_622 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62300
     * @tc.name      : TestCase_623
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_623(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_623 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_623\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_623")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_623 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62400
     * @tc.name      : TestCase_624
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_624(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_624 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_624\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_624")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_624 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62500
     * @tc.name      : TestCase_625
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_625(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_625 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_625\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_625")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_625 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62600
     * @tc.name      : TestCase_626
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_626(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_626 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_626\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_626")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_626 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62700
     * @tc.name      : TestCase_627
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_627(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_627 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_627\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_627")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_627 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62800
     * @tc.name      : TestCase_628
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_628(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_628 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_628\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_628")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_628 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_62900
     * @tc.name      : TestCase_629
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_629(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_629 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_629\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_629")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_629 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63000
     * @tc.name      : TestCase_630
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_630(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_630 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_630\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_630")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_630 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63100
     * @tc.name      : TestCase_631
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_631(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_631 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_631\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_631")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_631 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63200
     * @tc.name      : TestCase_632
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_632(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_632 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_632\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_632")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_632 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63300
     * @tc.name      : TestCase_633
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_633(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_633 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_633\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_633")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_633 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63400
     * @tc.name      : TestCase_634
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_634(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_634 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_634\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_634")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_634 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63500
     * @tc.name      : TestCase_635
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_635(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_635 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_635\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_635")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_635 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63600
     * @tc.name      : TestCase_636
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_636(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_636 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_636\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_636")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_636 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63700
     * @tc.name      : TestCase_637
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_637(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_637 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_637\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_637")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_637 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63800
     * @tc.name      : TestCase_638
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_638(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_638 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_638\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_638")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_638 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_63900
     * @tc.name      : TestCase_639
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_639(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_639 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_639\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_639")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_639 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64000
     * @tc.name      : TestCase_640
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_640(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_640 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_640\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_640")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_640 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64100
     * @tc.name      : TestCase_641
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_641(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_641 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_641\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_641")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_641 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64200
     * @tc.name      : TestCase_642
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_642(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_642 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_642\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_642")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_642 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64300
     * @tc.name      : TestCase_643
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_643(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_643 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_643\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_643")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_643 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64400
     * @tc.name      : TestCase_644
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_644(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_644 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_644\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_644")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_644 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64500
     * @tc.name      : TestCase_645
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_645(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_645 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_645\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_645")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_645 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64600
     * @tc.name      : TestCase_646
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_646(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_646 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_646\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_646")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_646 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64700
     * @tc.name      : TestCase_647
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_647(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_647 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_647\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_647")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_647 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64800
     * @tc.name      : TestCase_648
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_648(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_648 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_648\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_648")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_648 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_64900
     * @tc.name      : TestCase_649
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_649(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_649 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_649\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_649")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_649 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65000
     * @tc.name      : TestCase_650
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_650(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_650 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_650\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_650")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_650 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65100
     * @tc.name      : TestCase_651
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_651(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_651 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_651\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_651")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_651 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65200
     * @tc.name      : TestCase_652
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_652(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_652 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_652\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_652")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_652 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65300
     * @tc.name      : TestCase_653
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_653(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_653 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_653\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_653")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_653 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65400
     * @tc.name      : TestCase_654
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_654(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_654 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_654\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_654")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_654 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65500
     * @tc.name      : TestCase_655
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_655(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_655 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_655\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_655")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_655 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65600
     * @tc.name      : TestCase_656
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_656(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_656 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_656\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_656")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_656 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65700
     * @tc.name      : TestCase_657
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_657(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_657 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_657\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_657")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_657 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65800
     * @tc.name      : TestCase_658
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_658(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_658 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_658\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_658")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_658 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_65900
     * @tc.name      : TestCase_659
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_659(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_659 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_659\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_659")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_659 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66000
     * @tc.name      : TestCase_660
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_660(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_660 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_660\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_660")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_660 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66100
     * @tc.name      : TestCase_661
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_661(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_661 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_661\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_661")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_661 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66200
     * @tc.name      : TestCase_662
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_662(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_662 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_662\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_662")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_662 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66300
     * @tc.name      : TestCase_663
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_663(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_663 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_663\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_663")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_663 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66400
     * @tc.name      : TestCase_664
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_664(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_664 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_664\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_664")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_664 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66500
     * @tc.name      : TestCase_665
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_665(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_665 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_665\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_665")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_665 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66600
     * @tc.name      : TestCase_666
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_666(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_666 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_666\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_666")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_666 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66700
     * @tc.name      : TestCase_667
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_667(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_667 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_667\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_667")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_667 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66800
     * @tc.name      : TestCase_668
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_668(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_668 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_668\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_668")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_668 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_66900
     * @tc.name      : TestCase_669
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_669(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_669 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_669\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_669")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_669 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_67000
     * @tc.name      : TestCase_670
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_670(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_670 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_670\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_670")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_670 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_67100
     * @tc.name      : TestCase_671
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_671(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_671 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_671\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_671")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_671 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_67200
     * @tc.name      : TestCase_672
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_672(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_672 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_672\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_672")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_672 ends.")
    }
}
