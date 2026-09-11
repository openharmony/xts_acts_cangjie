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
import ohos_app_cangjie_entry.GridRow_ca_translate_01.*
@Test
class GridRow_comattr_translate_3_test {
    /*
     * @tc.number    : TestGridRow_comattr_translate_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_201\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_201"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_201(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_202\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_202"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_202(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_203\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_203"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_203(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_204\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_204"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_204(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_205\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_205"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_205(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_206\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_206"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_206(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_207\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_207"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_207(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_208\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_208"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_208(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_209\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_209"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_209(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_210\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_210"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_210(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_211\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_211"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_211(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_212\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_212"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_212(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_213\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_213"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_213(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_214\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_214"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_214(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_215\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_215"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_215(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_216\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_216"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_216(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_217\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_217"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_217(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_218\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_218"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_218(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_219\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_219"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_219(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_220\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_220"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_220(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_221\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_221"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_221(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_222\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_222"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_222(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_223\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_223"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_223(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_224\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_224"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_224(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_225\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_225"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_225(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_226\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_226"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_226(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_227\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_227"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_227(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_228\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_228"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_228(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_229\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_229"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_229(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_230\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_230"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_230(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_231\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_231"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_231(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_232\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_232"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_232(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_233\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_233"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_233(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_234\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_234"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_234(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_235\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_235"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_235(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_236\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_236"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_236(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_237\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_237"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_237(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_238\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_238"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_238(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_239\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_239"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_239(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_240\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_240"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_240(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_241\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_241"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_241(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_242\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_242"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_242(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_243\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_243"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_243(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_244\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_244"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_244(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_244 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_245\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_245"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_245(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_245 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_246\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_246"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_246(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_246 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_247\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_247"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_247(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_247 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_248\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_248"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_248(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_248 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_249\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_249"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_249(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_249 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_250\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_250"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_250(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_250 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_251\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_251"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_251(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_251 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_252\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_252"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_252(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_252 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_253\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_253"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_253(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_253 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_254\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_254"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_254(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_254 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_255\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_255"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_255(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_255 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_256\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_256"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_256(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_256 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_257\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_257"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_257(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_257 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_258\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_258"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_258(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_258 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_259\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_259"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_259(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_259 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_260\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_260"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_260(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_260 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_261\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_261"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_261(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_261 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_262\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_262"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_262(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_262 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_263\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_263"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_263(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_263 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_264\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_264"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_264(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_264 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_265\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_265"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_265(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_265 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_266\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_266"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_266(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_266 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_267\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_267"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_267(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_267 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_268\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_268"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_268(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_268 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_269\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_269"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_269(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_269 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_270\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_270"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_270(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_270 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27100
     * @tc.name      : TestCase_271
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_271\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_271"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_271(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_271 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27200
     * @tc.name      : TestCase_272
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_272\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_272"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_272(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_272 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27300
     * @tc.name      : TestCase_273
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_273\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_273"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_273(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_273 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27400
     * @tc.name      : TestCase_274
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_274\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_274"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_274(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_274 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27500
     * @tc.name      : TestCase_275
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_275\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_275"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_275(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_275 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27600
     * @tc.name      : TestCase_276
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_276\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_276"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_276(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_276 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27700
     * @tc.name      : TestCase_277
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_277\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_277"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_277(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_277 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27800
     * @tc.name      : TestCase_278
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_278\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_278"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_278(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_278 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_27900
     * @tc.name      : TestCase_279
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_279\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_279"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_279(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_279 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28000
     * @tc.name      : TestCase_280
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_280\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_280"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_280(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_280 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28100
     * @tc.name      : TestCase_281
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_281\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_281"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_281(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_281 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28200
     * @tc.name      : TestCase_282
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_282\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_282"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_282(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.00%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_282 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28300
     * @tc.name      : TestCase_283
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_283\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_283"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_283(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_283 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28400
     * @tc.name      : TestCase_284
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_284\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_284"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_284(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_284 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28500
     * @tc.name      : TestCase_285
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_285\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_285"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_285(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_285 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28600
     * @tc.name      : TestCase_286
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_286\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_286"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_286(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_286 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28700
     * @tc.name      : TestCase_287
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_287\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_287"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_287(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_287 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28800
     * @tc.name      : TestCase_288
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_288\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_288"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_288(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.00fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_288 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_28900
     * @tc.name      : TestCase_289
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_289\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_289"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_289(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"8.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_289 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29000
     * @tc.name      : TestCase_290
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_290\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_290"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_290(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.00lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_290 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29100
     * @tc.name      : TestCase_291
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_291\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_291"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_291(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_291 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29200
     * @tc.name      : TestCase_292
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_292\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_292"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_292(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"7.55%\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_292 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29300
     * @tc.name      : TestCase_293
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_293\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_293"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_293(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_293 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29400
     * @tc.name      : TestCase_294
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_294\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_294"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_294(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"8.55px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"8.55px\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_294 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29500
     * @tc.name      : TestCase_295
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_295\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_295"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_295(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_295 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29600
     * @tc.name      : TestCase_296
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_296\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_296"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_296(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"9.55vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"7.55%\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"9.55vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_296 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29700
     * @tc.name      : TestCase_297
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_297\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_297"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_297(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_297 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29800
     * @tc.name      : TestCase_298
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_298\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_298"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_298(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"10.55fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"10.55fp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_298 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_29900
     * @tc.name      : TestCase_299
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_299\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_299"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_299(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"-10.11lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"-10.11lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_299 ends.")
    }
    /*
     * @tc.number    : TestGridRow_comattr_translate_30000
     * @tc.name      : TestCase_300
     * @tc.desc      : test the comattr of the Row
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridRow_comattr_translate_300\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridRow_comattr_translate_3_test"
            modtestCaseText[0] = "TestCase_300"
            modtestView[0] = {_:CustomView => View_GridRow_comattr_translate_300(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridRow_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.x"], "\"11.55lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.y"], "\"-10.11fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridRow_comattr_id")["translate.z"], "\"11.55lpx\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_300 ends.")
    }
}
