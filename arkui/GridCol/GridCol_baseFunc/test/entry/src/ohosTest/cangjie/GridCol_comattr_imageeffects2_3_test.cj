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
import ohos_app_cangjie_entry.Gcol_ca_imageeffects_01.*
import ohos_app_cangjie_entry.Gcol_ca_imageeffects_02.*
import ohos_app_cangjie_entry.Gcol_ca_imageeffects_03.*
@Test
class GridCol_comattr_imageeffects2_3_test {
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_201\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_201"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_201(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_202\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_202"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_202(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_203\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_203"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_203(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_204\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_204"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_204(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_205\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_205"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_205(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_206\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_206"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_206(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_207\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_207"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_207(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_208\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_208"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_208(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_209\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_209"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_209(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_210\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_210"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_210(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_211\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_211"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_211(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_212\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_212"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_212(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_213\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_213"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_213(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_214\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_214"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_214(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_215\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_215"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_215(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_216\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_216"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_216(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "0.110000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_217\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_217"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_217(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_218\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_218"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_218(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_219\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_219"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_219(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_220\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_220"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_220(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_221\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_221"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_221(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_221 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_222\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_222"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_222(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_222 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_223\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_223"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_223(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_223 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_224\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_224"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_224(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_224 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_225\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_225"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_225(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_225 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_226\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_226"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_226(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_226 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_227\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_227"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_227(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_227 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_228\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_228"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_228(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_228 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_229\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_229"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_229(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_229 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_230\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_230"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_230(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_230 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_231\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_231"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_231(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_231 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_232\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_232"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_232(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_232 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_233\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_233"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_233(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_233 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_234\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_234"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_234(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "1.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_234 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_235\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_235"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_235(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_235 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_236\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_236"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_236(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_236 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_237\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_237"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_237(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "0")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_237 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_238\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_238"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_238(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_238 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_239\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_239"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_239(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_239 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_240\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_240"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_240(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "5.550000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_240 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_241\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_241"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_241(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "0")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_241 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_242\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_242"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_242(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"].contains("0.100000"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_242 ends.")
    }
    /*
     * @tc.number    : TestGridCol_comattr_imageeffects2_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : test the comattr of the GridCol
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_GridCol_comattr_imageeffects2_243\" by scroller \"scroller\""
        )
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "GridCol_comattr_imageeffects2_3_test"
            modtestCaseText[0] = "TestCase_243"
            modtestView[0] = {_:CustomView => View_GridCol_comattr_imageeffects2_243(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("GridCol_comattr_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["grayscale"], "1")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["brightness"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["saturate"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["contrast"], "100.120000")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("GridCol_comattr_id")["invert"], "1")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_243 ends.")
    }
}
