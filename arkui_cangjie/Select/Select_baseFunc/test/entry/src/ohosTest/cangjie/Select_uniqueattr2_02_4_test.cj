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
import std.convert.*
@Test
class Select_uniqueattr2_02_4_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Select_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Select_uniqueattr2_02")
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
     * @tc.number    : TestSelect_uniqueattr2_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr2_301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr2_301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFontColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionFont"], "\"{\\\"size\\\":\\\"16.00fp\\\",\\\"weight\\\":\\\"FontWeight.Medium\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Normal\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionFontColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["menuBackgroundColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["menuBackgroundBlurStyle"], "\"BlurStyle.Regular\"")
        @Expect(Float64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionWidth"].trimEnd("\"").trimStart("\"")) >= 0.000000f64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr2_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr2_302\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr2_302")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFontColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionFont"], "\"{\\\"size\\\":\\\"16.00fp\\\",\\\"weight\\\":\\\"100\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Normal\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionFontColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["menuBackgroundColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["menuBackgroundBlurStyle"], "\"BlurStyle.Regular\"")
        @Expect(Float64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionWidth"].trimEnd("\"").trimStart("\"")) >= 0.000000f64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestSelect_uniqueattr2_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the uniqueattr of the Select
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Select_uniqueattr2_303\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Select_uniqueattr2_303")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Select_uniqueattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["selectedOptionFontColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionBgColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionFont"], "\"{\\\"size\\\":\\\"8.55px\\\",\\\"weight\\\":\\\"FontWeight.Normal\\\",\\\"family\\\":\\\"qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq\\\",\\\"style\\\":\\\"FontStyle.Normal\\\"}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionFontColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["menuBackgroundColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["menuBackgroundBlurStyle"], "\"BlurStyle.COMPONENT_THICK\"")
        @Expect(Float64.parse(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Select_uniqueattr_id")["optionWidth"].trimEnd("\"").trimStart("\"")) >= 0.000000f64)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
}
