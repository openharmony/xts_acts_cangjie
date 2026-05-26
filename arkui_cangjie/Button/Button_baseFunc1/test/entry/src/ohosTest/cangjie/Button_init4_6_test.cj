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
class Button_init4_6_test {
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
     * @tc.number    : TestButton_init4_50100
     * @tc.name      : TestCase_501
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_501\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_501")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50200
     * @tc.name      : TestCase_502
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_502\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_502")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50300
     * @tc.name      : TestCase_503
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_503\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_503")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50400
     * @tc.name      : TestCase_504
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_504\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_504")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50500
     * @tc.name      : TestCase_505
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_505(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_505\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_505")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_505 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50600
     * @tc.name      : TestCase_506
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_506(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_506\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_506")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_506 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50700
     * @tc.name      : TestCase_507
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_507(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_507\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_507")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_507 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50800
     * @tc.name      : TestCase_508
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_508(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_508\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_508")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_508 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_50900
     * @tc.name      : TestCase_509
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_509(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_509\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_509")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_509 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51000
     * @tc.name      : TestCase_510
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_510(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_510\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_510")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_510 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51100
     * @tc.name      : TestCase_511
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_511(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_511 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_511\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_511")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_511 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51200
     * @tc.name      : TestCase_512
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_512(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_512 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_512\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_512")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_512 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51300
     * @tc.name      : TestCase_513
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_513(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_513 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_513\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_513")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_513 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51400
     * @tc.name      : TestCase_514
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_514(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_514 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_514\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_514")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_514 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51500
     * @tc.name      : TestCase_515
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_515(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_515 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_515\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_515")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_515 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51600
     * @tc.name      : TestCase_516
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_516(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_516 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_516\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_516")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_516 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51700
     * @tc.name      : TestCase_517
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_517(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_517 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_517\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_517")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_517 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51800
     * @tc.name      : TestCase_518
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_518(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_518 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_518\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_518")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_518 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_51900
     * @tc.name      : TestCase_519
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_519(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_519 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_519\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_519")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_519 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52000
     * @tc.name      : TestCase_520
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_520(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_520 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_520\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_520")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_520 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52100
     * @tc.name      : TestCase_521
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_521(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_521 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_521\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_521")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_521 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52200
     * @tc.name      : TestCase_522
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_522(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_522 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_522\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_522")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_522 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52300
     * @tc.name      : TestCase_523
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_523(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_523 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_523\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_523")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_523 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52400
     * @tc.name      : TestCase_524
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_524(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_524 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_524\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_524")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_524 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52500
     * @tc.name      : TestCase_525
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_525(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_525 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_525\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_525")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_525 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52600
     * @tc.name      : TestCase_526
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_526(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_526 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_526\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_526")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_526 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52700
     * @tc.name      : TestCase_527
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_527(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_527 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_527\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_527")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_527 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52800
     * @tc.name      : TestCase_528
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_528(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_528 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_528\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_528")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_528 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_52900
     * @tc.name      : TestCase_529
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_529(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_529 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_529\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_529")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_529 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53000
     * @tc.name      : TestCase_530
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_530(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_530 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_530\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_530")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_530 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53100
     * @tc.name      : TestCase_531
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_531(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_531 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_531\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_531")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_531 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53200
     * @tc.name      : TestCase_532
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_532(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_532 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_532\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_532")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_532 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53300
     * @tc.name      : TestCase_533
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_533(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_533 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_533\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_533")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_533 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53400
     * @tc.name      : TestCase_534
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_534(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_534 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_534\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_534")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_534 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53500
     * @tc.name      : TestCase_535
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_535(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_535 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_535\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_535")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_535 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53600
     * @tc.name      : TestCase_536
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_536(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_536 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_536\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_536")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_536 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53700
     * @tc.name      : TestCase_537
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_537(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_537 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_537\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_537")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_537 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53800
     * @tc.name      : TestCase_538
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_538(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_538 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_538\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_538")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_538 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_53900
     * @tc.name      : TestCase_539
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_539(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_539 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_539\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_539")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_539 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54000
     * @tc.name      : TestCase_540
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_540(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_540 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_540\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_540")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_540 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54100
     * @tc.name      : TestCase_541
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_541(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_541 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_541\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_541")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_541 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54200
     * @tc.name      : TestCase_542
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_542(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_542 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_542\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_542")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_542 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54300
     * @tc.name      : TestCase_543
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_543(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_543 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_543\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_543")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_543 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54400
     * @tc.name      : TestCase_544
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_544(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_544 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_544\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_544")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_544 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54500
     * @tc.name      : TestCase_545
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_545(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_545 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_545\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_545")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_545 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54600
     * @tc.name      : TestCase_546
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_546(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_546 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_546\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_546")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_546 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54700
     * @tc.name      : TestCase_547
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_547(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_547 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_547\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_547")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_547 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54800
     * @tc.name      : TestCase_548
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_548(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_548 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_548\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_548")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_548 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_54900
     * @tc.name      : TestCase_549
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_549(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_549 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_549\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_549")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_549 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55000
     * @tc.name      : TestCase_550
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_550(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_550 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_550\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_550")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_550 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55100
     * @tc.name      : TestCase_551
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_551(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_551 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_551\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_551")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_551 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55200
     * @tc.name      : TestCase_552
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_552(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_552 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_552\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_552")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_552 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55300
     * @tc.name      : TestCase_553
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_553(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_553 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_553\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_553")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_553 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55400
     * @tc.name      : TestCase_554
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_554(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_554 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_554\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_554")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_554 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55500
     * @tc.name      : TestCase_555
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_555(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_555 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_555\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_555")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_555 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55600
     * @tc.name      : TestCase_556
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_556(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_556 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_556\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_556")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_556 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55700
     * @tc.name      : TestCase_557
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_557(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_557 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_557\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_557")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_557 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55800
     * @tc.name      : TestCase_558
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_558(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_558 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_558\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_558")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_558 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_55900
     * @tc.name      : TestCase_559
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_559(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_559 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_559\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_559")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_559 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56000
     * @tc.name      : TestCase_560
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_560(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_560 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_560\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_560")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_560 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56100
     * @tc.name      : TestCase_561
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_561(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_561 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_561\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_561")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_561 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56200
     * @tc.name      : TestCase_562
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_562(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_562 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_562\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_562")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_562 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56300
     * @tc.name      : TestCase_563
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_563(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_563 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_563\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_563")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_563 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56400
     * @tc.name      : TestCase_564
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_564(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_564 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_564\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_564")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_564 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56500
     * @tc.name      : TestCase_565
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_565(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_565 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_565\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_565")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_565 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56600
     * @tc.name      : TestCase_566
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_566(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_566 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_566\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_566")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_566 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56700
     * @tc.name      : TestCase_567
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_567(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_567 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_567\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_567")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_567 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56800
     * @tc.name      : TestCase_568
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_568(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_568 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_568\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_568")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_568 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_56900
     * @tc.name      : TestCase_569
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_569(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_569 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_569\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_569")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_569 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57000
     * @tc.name      : TestCase_570
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_570(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_570 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_570\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_570")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_570 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57100
     * @tc.name      : TestCase_571
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_571(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_571 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_571\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_571")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_571 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57200
     * @tc.name      : TestCase_572
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_572(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_572 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_572\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_572")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_572 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57300
     * @tc.name      : TestCase_573
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_573(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_573 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_573\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_573")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_573 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57400
     * @tc.name      : TestCase_574
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_574(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_574 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_574\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_574")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_574 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57500
     * @tc.name      : TestCase_575
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_575(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_575 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_575\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_575")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_575 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57600
     * @tc.name      : TestCase_576
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_576(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_576 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_576\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_576")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"%^$^$*%^\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_576 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57700
     * @tc.name      : TestCase_577
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_577(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_577 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_577\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_577")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_577 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57800
     * @tc.name      : TestCase_578
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_578(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_578 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_578\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_578")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_578 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_57900
     * @tc.name      : TestCase_579
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_579(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_579 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_579\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_579")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_579 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58000
     * @tc.name      : TestCase_580
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_580(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_580 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_580\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_580")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_580 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58100
     * @tc.name      : TestCase_581
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_581(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_581 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_581\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_581")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_581 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58200
     * @tc.name      : TestCase_582
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_582(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_582 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_582\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_582")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_582 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58300
     * @tc.name      : TestCase_583
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_583(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_583 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_583\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_583")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_583 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58400
     * @tc.name      : TestCase_584
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_584(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_584 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_584\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_584")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_584 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58500
     * @tc.name      : TestCase_585
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_585(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_585 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_585\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_585")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_585 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58600
     * @tc.name      : TestCase_586
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_586(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_586 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_586\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_586")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_586 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58700
     * @tc.name      : TestCase_587
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_587(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_587 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_587\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_587")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_587 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58800
     * @tc.name      : TestCase_588
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_588(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_588 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_588\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_588")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_588 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_58900
     * @tc.name      : TestCase_589
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_589(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_589 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_589\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_589")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_589 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59000
     * @tc.name      : TestCase_590
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_590(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_590 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_590\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_590")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_590 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59100
     * @tc.name      : TestCase_591
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_591(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_591 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_591\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_591")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_591 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59200
     * @tc.name      : TestCase_592
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_592(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_592 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_592\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_592")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_592 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59300
     * @tc.name      : TestCase_593
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_593(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_593 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_593\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_593")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_593 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59400
     * @tc.name      : TestCase_594
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_594(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_594 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_594\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_594")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_594 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59500
     * @tc.name      : TestCase_595
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_595(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_595 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_595\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_595")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_595 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59600
     * @tc.name      : TestCase_596
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_596(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_596 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_596\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_596")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_596 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59700
     * @tc.name      : TestCase_597
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_597(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_597 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_597\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_597")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_597 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59800
     * @tc.name      : TestCase_598
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_598(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_598 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_598\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_598")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_598 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_59900
     * @tc.name      : TestCase_599
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_599(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_599 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_599\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_599")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_599 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_60000
     * @tc.name      : TestCase_600
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_600(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_600 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_600\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_600")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_600 ends.")
    }
}
