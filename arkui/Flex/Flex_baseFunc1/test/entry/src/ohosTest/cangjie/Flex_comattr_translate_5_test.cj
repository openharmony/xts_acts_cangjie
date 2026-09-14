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
import ohos_app_cangjie_entry.Flex_ca_translate_01.*
@Test
class Flex_comattr_translate_5_test {
    /*
     * @tc.number    : TestFlex_comattr_translate_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_401\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_401"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_401(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_401 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_402\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_402"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_402(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_402 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_403\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_403"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_403(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_403 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_404\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_404"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_404(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_404 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_405\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_405"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_405(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_405 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_406\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_406"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_406(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_406 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_407\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_407"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_407(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_407 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_408\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_408"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_408(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_408 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_409\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_409"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_409(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_409 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_410\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_410"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_410(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_410 ends.")
    }
    /*
     * @tc.number    : TestFlex_comattr_translate_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : test the comattr of the Flex
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Flex_comattr_translate_411\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Flex_comattr_translate_5_test"
            modtestCaseText[0] = "TestCase_411"
            modtestView[0] = {_:CustomView => View_Flex_comattr_translate_411(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("flex_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_411 ends.")
    }
}
