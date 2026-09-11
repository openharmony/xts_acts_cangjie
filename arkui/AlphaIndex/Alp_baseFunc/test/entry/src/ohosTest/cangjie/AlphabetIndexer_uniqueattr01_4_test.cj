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
import ohos_app_cangjie_entry.Alp_uniqueattr_01.*
import ohos_app_cangjie_entry.Alp_uniqueattr_02.*
@Test
class AlphabetIndexer_uniqueattr01_4_test {
    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uniqueattr01_301\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uniqueattr01_4_test"
            modtestCaseText[0] = "TestCase_301"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uniqueattr01_301(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontSize"], "\"10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontStyle"], "\"FontStyle::NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontWeight"], "\"100\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontFamily"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["itemSize"], "\"16.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupBackground"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupColor"], "\"#FF000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uniqueattr01_302\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uniqueattr01_4_test"
            modtestCaseText[0] = "TestCase_302"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uniqueattr01_302(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontSize"], "\"10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontStyle"], "\"FontStyle::NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontWeight"], "\"100\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontFamily"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["itemSize"], "\"16.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupBackground"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupColor"], "\"#FF000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestAlphabetIndexer_uniqueattr_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the uniqueattr of the AlphabetIndexer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_AlphabetIndexer_uniqueattr01_303\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "AlphabetIndexer_uniqueattr01_4_test"
            modtestCaseText[0] = "TestCase_303"
            modtestView[0] = {_:CustomView => View_AlphabetIndexer_uniqueattr01_303(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("AlphabetIndexer_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["color"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontSize"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontStyle"], "\"FontStyle::NORMAL\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontWeight"], "\"100\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["font.fontFamily"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["itemSize"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupBackground"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("AlphabetIndexer_id")["popupColor"], "\"#FF000000\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
}
