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
import ohos_app_cangjie_entry.Button_ca_offset_01.*
@Test
class Button_comattr_offset_4_test {
    /*
     * @tc.number    : TestButton_comattr_offset_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_301\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_301"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_301(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_301 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_302\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_302"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_302(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_302 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_303\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_303"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_303(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_303 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_304\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_304"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_304(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_304 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_305\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_305"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_305(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_305 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_306\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_306"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_306(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_306 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_307\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_307"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_307(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_307 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_308\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_308"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_308(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_308 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_309\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_309"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_309(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_309 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_310\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_310"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_310(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_310 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_311\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_311"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_311(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_311 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_312\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_312"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_312(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_312 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_313\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_313"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_313(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_313 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_314\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_314"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_314(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_314 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_315\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_315"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_315(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_315 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_316\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_316"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_316(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_316 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_317\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_317"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_317(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_317 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_318\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_318"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_318(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_318 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_319\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_319"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_319(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_319 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_320\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_320"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_320(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_320 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_321\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_321"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_321(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_321 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_322\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_322"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_322(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_322 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_323\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_323"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_323(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_323 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_324\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_324"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_324(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_324 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_325\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_325"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_325(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_325 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_326\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_326"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_326(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_326 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_327\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_327"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_327(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_327 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_328\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_328"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_328(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_328 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_329\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_329"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_329(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_329 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_330\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_330"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_330(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_330 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_331\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_331"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_331(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_331 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_332\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_332"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_332(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_332 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_333\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_333"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_333(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_333 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_334\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_334"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_334(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_334 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_335\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_335"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_335(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_335 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_336\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_336"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_336(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_336 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_337\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_337"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_337(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_337 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_338\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_338"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_338(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_338 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_339\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_339"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_339(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_339 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_340\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_340"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_340(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_340 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_341\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_341"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_341(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_341 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_342\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_342"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_342(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_342 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_343\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_343"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_343(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_343 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_344\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_344"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_344(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_344 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_345\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_345"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_345(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_345 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_346\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_346"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_346(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_346 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_347\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_347"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_347(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_347 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_348\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_348"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_348(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_348 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_349\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_349"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_349(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_349 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_350\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_350"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_350(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_350 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_351\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_351"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_351(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_351 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_352\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_352"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_352(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_352 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_353\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_353"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_353(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_353 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_354\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_354"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_354(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_354 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_355\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_355"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_355(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_355 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_356\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_356"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_356(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_356 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_357\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_357"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_357(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_357 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_358\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_358"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_358(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_358 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_359\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_359"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_359(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_359 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_360\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_360"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_360(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_360 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_361\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_361"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_361(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_361 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_362\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_362"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_362(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_362 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_363\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_363"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_363(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_363 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_364\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_364"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_364(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_364 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_365\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_365"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_365(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_365 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_366\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_366"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_366(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_366 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_367\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_367"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_367(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_367 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_368\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_368"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_368(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_368 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_369\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_369"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_369(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_369 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_370\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_370"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_370(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_370 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_371\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_371"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_371(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_371 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_372\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_372"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_372(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_372 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_373\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_373"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_373(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_373 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_374\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_374"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_374(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_374 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_375\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_375"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_375(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_375 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_376\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_376"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_376(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_376 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_377\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_377"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_377(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_377 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_378\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_378"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_378(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_378 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_379\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_379"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_379(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_379 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_380\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_380"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_380(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_380 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_381\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_381"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_381(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_381 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_382\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_382"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_382(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_382 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_383\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_383"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_383(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_383 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_384\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_384"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_384(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_384 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_385\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_385"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_385(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_385 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_386\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_386"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_386(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_386 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_387\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_387"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_387(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_387 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_388\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_388"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_388(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_388 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_389\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_389"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_389(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_389 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_390\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_390"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_390(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_390 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_391\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_391"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_391(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_391 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_392\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_392"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_392(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_392 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_393\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_393"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_393(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_393 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_394\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_394"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_394(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_394 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_395\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_395"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_395(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_395 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_396\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_396"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_396(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_396 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_397\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_397"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_397(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_397 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_398\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_398"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_398(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_398 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_399\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_399"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_399(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_399 ends.")
    }
    /*
     * @tc.number    : TestButton_comattr_offset_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : test the comattr of the Button
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_comattr_offset_400\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_comattr_offset_4_test"
            modtestCaseText[0] = "TestCase_400"
            modtestView[0] = {_:CustomView => View_Button_comattr_offset_400(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Button_comattr_id")["offset.y"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_400 ends.")
    }
}
