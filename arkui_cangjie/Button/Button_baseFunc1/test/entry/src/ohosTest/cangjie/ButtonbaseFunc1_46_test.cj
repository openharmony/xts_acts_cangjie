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
class Button_init4_3_test {
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
     * @tc.number    : TestButton_init4_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_201\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_201")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_202\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_202")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_203\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_203")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_204\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_204")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_205\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_205")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_206\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_206")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_207\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_207")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_208\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_208")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_209\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_209")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_210\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_210")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_211\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_211")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_212\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_212")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_213\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_213")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_214\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_214")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_215\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_215")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_216\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_216")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_217\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_217")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_218\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_218")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_219\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_219")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_220\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_220")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_221\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_221")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_222\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_222")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_223\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_223")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_224\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_224")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_225\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_225")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_226\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_226")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_227\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_227")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_228\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_228")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_229\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_229")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_230\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_230")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_231\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_231")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_232\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_232")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_233\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_233")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_234\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_234")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_235\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_235")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_236\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_236")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_237\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_237")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_238\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_238")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_239\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_239")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_240\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_240")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_241\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_241")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_242\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_242")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_243\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_243")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_244\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_244")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_245\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_245")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_246\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_246")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_247\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_247")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_248\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_248")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_249\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_249")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_250\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_250")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_251\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_251")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_252\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_252")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_253\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_253")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_254\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_254")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_255\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_255")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_256\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_256")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_257\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_257")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_258\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_258")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_259\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_259")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_260\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_260")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_261\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_261")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_262\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_262")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_263\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_263")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_264\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_264")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Capsule\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_265\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_265")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_266\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_266")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_267\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_267")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_268\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_268")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_269\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_269")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_270\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_270")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27100
     * @tc.name      : TestCase_271
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_271\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_271")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27200
     * @tc.name      : TestCase_272
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_272\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_272")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27300
     * @tc.name      : TestCase_273
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_273\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_273")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27400
     * @tc.name      : TestCase_274
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_274\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_274")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27500
     * @tc.name      : TestCase_275
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_275\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_275")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27600
     * @tc.name      : TestCase_276
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_276\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_276")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Circle\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27700
     * @tc.name      : TestCase_277
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_277\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_277")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27800
     * @tc.name      : TestCase_278
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_278\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_278")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_27900
     * @tc.name      : TestCase_279
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_279\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_279")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28000
     * @tc.name      : TestCase_280
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_280\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_280")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28100
     * @tc.name      : TestCase_281
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_281\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_281")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28200
     * @tc.name      : TestCase_282
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_282\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_282")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28300
     * @tc.name      : TestCase_283
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_283\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_283")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28400
     * @tc.name      : TestCase_284
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_284\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_284")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28500
     * @tc.name      : TestCase_285
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_285\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_285")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28600
     * @tc.name      : TestCase_286
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_286\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_286")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28700
     * @tc.name      : TestCase_287
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_287\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_287")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28800
     * @tc.name      : TestCase_288
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_288\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_288")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.ROUNDED_RECTANGLE\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"123456789\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_28900
     * @tc.name      : TestCase_289
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_289\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_289")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29000
     * @tc.name      : TestCase_290
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_290\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_290")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29100
     * @tc.name      : TestCase_291
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_291\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_291")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29200
     * @tc.name      : TestCase_292
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_292\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_292")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29300
     * @tc.name      : TestCase_293
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_293\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_293")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29400
     * @tc.name      : TestCase_294
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_294\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_294")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.ERROR\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29500
     * @tc.name      : TestCase_295
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_295\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_295")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29600
     * @tc.name      : TestCase_296
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_296\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_296")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29700
     * @tc.name      : TestCase_297
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_297\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_297")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.SMALL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29800
     * @tc.name      : TestCase_298
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_298\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_298")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_29900
     * @tc.name      : TestCase_299
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_299\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_299")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.EMPHASIZED\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 ends.")
    }
    /*
     * @tc.number    : TestButton_init4_30000
     * @tc.name      : TestCase_300
     * @tc.desc      : test the init of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_init4_300\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Button_init4_300")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("button_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["type"], "\"ButtonType.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["stateEffect"], "\"true\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["buttonStyle"], "\"ButtonStyleMode.TEXTUAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["controlSize"], "\"ControlSize.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["role"], "\"ButtonRole.NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("button_id")["label"], "\"abcdefsghej\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 ends.")
    }
}
