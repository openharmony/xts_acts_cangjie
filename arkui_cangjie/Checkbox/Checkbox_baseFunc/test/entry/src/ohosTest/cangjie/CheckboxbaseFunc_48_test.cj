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
class Checkbox_uniqueattr_4_test {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        AbilityDelegatorRegistry
            .getAbilityDelegator()
            .startAbility(Want(bundleName: "com.example.Checkbox_baseFunc", abilityName: "EntryAbility"))
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("scoller"), 3000i32)
            enterPage(scrollerId:"scroller",buttonId:"index_Cbox_uniqueattr_01")
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
     * @tc.number    : TestCheckbox_uniqueattr_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_301\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_301")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FF00000A\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_302\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_302")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_303\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_303")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_304\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_304")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"123456789\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_305\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_305")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"abcdefsghej\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_306\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_306")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"仓颉鸿蒙\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_307\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_307")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"%^$^$*%^\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }
    /*
     * @tc.number    : TestCheckbox_uniqueattr_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : test the uniqueattr of the Checkbox
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Checkbox_uniqueattr_308\" by scroller \"scroller\"")
        enterPage(scrollerId: "scroller", buttonId: "View_Checkbox_uniqueattr_308")
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("checkbox_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["name"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["group"], "\"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["select"], "\"false\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["selectedColor"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("checkbox_id")["shape"], "\"1\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }
}
