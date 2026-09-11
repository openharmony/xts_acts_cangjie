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
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.statemanage_uattr_01.*
@Test
class statemanage_uattr_01_test {
    /*
     * @tc.number    : TestStatemanage_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test AppStorage.setAndLink with normal string "testKey",
     *                 AppStorage.setAndProp with normal string "testKey2",
     *                 and AppStorage.has / get / set / keys
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_statemanage_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemanage_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_statemanage_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("statemanage_uattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("statemanage_uattr_id")["content"] != "\"AppStorage.setAndLink(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("setandprop_uattr_check")["content"] != "\"AppStorage.setAndProp(normal): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("has_uattr_check")["content"] != "\"AppStorage.has: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("get_uattr_check")["content"] != "\"AppStorage.get: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("set_uattr_check")["content"] != "\"AppStorage.set: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("keys_uattr_check")["content"] != "\"AppStorage.keys: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("aggregate_uattr_check")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestStatemanage_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test AppStorage.link with empty string "" (boundary),
     *                 AppStorage.property with empty string "" (boundary),
     *                 and AppStorage.delete / clear boundary cases
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_statemanage_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "statemanage_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_statemanage_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("statemanage_uattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("statemanage_uattr_id")["content"] != "\"AppStorage.link(empty): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("property_empty_uattr_check")["content"] != "\"AppStorage.property(empty): None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("delete_uattr_check")["content"] != "\"AppStorage.delete: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("clear_uattr_check")["content"] != "\"AppStorage.clear: None\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("aggregate_uattr_check")["content"].contains("ok"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}
