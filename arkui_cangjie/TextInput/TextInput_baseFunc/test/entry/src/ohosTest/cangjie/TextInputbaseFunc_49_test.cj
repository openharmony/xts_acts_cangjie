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
class TextInput_uniqueattr1_4_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.TextInput_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_TInp_uniqueattr_01")
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
     * @tc.number    : TestTextInput_uniqueattr_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the uniqueattr of the TextInput
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_TextInput_uniqueattr_301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_TextInput_uniqueattr_301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("TextInput_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["caretColor"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontFamily"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontStyle"], "\"FontStyle.Italic\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontWeight"], "\"600\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontSize"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["enterKeyType"], "\"EnterKeyType.NewLine\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("TextInput_id")["fontColor"], "\"#FF000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
}
