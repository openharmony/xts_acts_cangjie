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
class Text_uniqueattr_4_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Text_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Text_uniqueattr_01")
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
     * @tc.number    : TestText_uniqueattr_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Text_uniqueattr_301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Text_uniqueattr_301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Text_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["baselineOffset"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontFamily"], "\"HarmonyOS Sans\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontSize"], "\"16.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontStyle"], "\"FontStyle.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontWeight"], "\"900\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["lineSpacing"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxFontSize"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["minFontSize"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textCase"], "\"TextCase.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textOverflow"], "\"TextOverflow.Clip\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxLines"], "\"2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestText_uniqueattr_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Text_uniqueattr_302\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Text_uniqueattr_302")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Text_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["baselineOffset"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontFamily"], "\"HarmonyOS Sans\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontSize"], "\"16.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontStyle"], "\"FontStyle.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontWeight"], "\"200\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["lineSpacing"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxFontSize"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["minFontSize"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textCase"], "\"TextCase.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textOverflow"], "\"TextOverflow.Clip\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxLines"], "\"2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestText_uniqueattr_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Text_uniqueattr_303\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Text_uniqueattr_303")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Text_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["baselineOffset"], "\"8\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontFamily"], "\"HarmonyOS Sans\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontSize"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontStyle"], "\"FontStyle.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontWeight"], "\"FontWeight.Bold\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["lineSpacing"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxFontSize"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["minFontSize"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textCase"], "\"TextCase.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textOverflow"], "\"TextOverflow.Clip\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxLines"], "\"2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestText_uniqueattr_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Text_uniqueattr_304\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Text_uniqueattr_304")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Text_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["baselineOffset"], "\"0\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontFamily"], "\"HarmonyOS Sans\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontSize"], "\"16.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontStyle"], "\"FontStyle.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontWeight"], "\"800\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["lineSpacing"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxFontSize"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["minFontSize"], "\"0.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textCase"], "\"TextCase.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textOverflow"], "\"TextOverflow.Clip\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxLines"], "\"2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestText_uniqueattr_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the uniqueattr of the Text
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Text_uniqueattr_305\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Text_uniqueattr_305")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Text_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["baselineOffset"], "\"8\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontColor"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontFamily"], "\"HarmonyOS Sans\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontSize"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontStyle"], "\"FontStyle.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["fontWeight"], "\"700\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["lineSpacing"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxFontSize"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["minFontSize"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textCase"], "\"TextCase.Normal\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textAlign"], "\"TextAlign.Start\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["textOverflow"], "\"TextOverflow.Clip\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Text_id")["maxLines"], "\"2147483648\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
}
