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
class Column_comattr_background_6_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Column_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Col_ca_background_01")
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
     * @tc.number    : TestColumn_comattr_background_50100
     * @tc.name      : TestCase_501
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_background_501\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_background_501")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.00px\",\"height\":\"8.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_501 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_background_50200
     * @tc.name      : TestCase_502
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_background_502\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_background_502")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.00px\",\"height\":\"0.00px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_502 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_background_50300
     * @tc.name      : TestCase_503
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_background_503\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_background_503")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImageSize"], "\"{\"width\":\"0.01px\",\"height\":\"0.01px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_503 ends.")
    }
    /*
     * @tc.number    : TestColumn_comattr_background_50400
     * @tc.name      : TestCase_504
     * @tc.desc      : test the comattr of the Column
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Column_comattr_background_504\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Column_comattr_background_504")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Column_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundColor"], "\"#00000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImage"], "\"resource:///16777218.png, ImageRepeat.NoRepeat\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImagePosition"], "\"{\"x\":8.55,\"y\":8.55}\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Column_comattr_id")["backgroundImageSize"], "\"{\"width\":\"8.55px\",\"height\":\"8.55px\"}\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_504 ends.")
    }
}
