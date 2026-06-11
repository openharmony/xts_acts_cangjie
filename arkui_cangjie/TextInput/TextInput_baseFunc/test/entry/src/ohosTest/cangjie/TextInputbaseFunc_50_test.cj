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
class TextInput_uniqueattr2_1_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.TextInput_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_TInp_uniqueattr_02")
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
     * @tc.number    : TestTextInput_uniqueattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_1\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_1")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_2\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_2")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_3\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_3")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_4\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_4")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"114514\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_5\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_5")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_6\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_6")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_7\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_7")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_8\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_8")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_9\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_9")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_10\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_10")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_11\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_11")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_12\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_12")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_13\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_13")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_14\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_14")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_15\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_15")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_16\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_16")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_17\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_17")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_18\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_18")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_19\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_19")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_20\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_20")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"114514\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_21\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_21")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "true")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Default\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_22\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_22")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"114514\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_23\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_23")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"114514\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_24\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_24")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_25\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_25")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_26\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_26")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_27\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_27")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_28\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_28")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_29\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_29")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_30\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_30")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"114514\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_31\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_31")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"114514\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_32\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_32")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.Center\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_33\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_33")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"INF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_34\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_34")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_35\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_35")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_36\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_36")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_37\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_37")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_38\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_38")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_39\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_39")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_40\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_40")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_41\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_41")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_42\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_42")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF808080\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"114514\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_43\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_43")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_44\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_44")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    /*
     * @tc.number    : TestTextInput_uniqueattr_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_45\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_45")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["placeholderColor"], "\"#FFFFFFF6\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["showUnderline"], "false")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["style"], "\"TextInputStyle.Inline\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["textAlign"], "\"TextAlign.End\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLength"], "\"1\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["maxLines"], "\"3\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
}
