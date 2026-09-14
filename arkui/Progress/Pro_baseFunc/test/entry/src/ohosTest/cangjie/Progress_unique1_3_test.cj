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
import ohos_app_cangjie_entry.Prog_unique1_01.*
@Test
class Progress_unique1_3_test {
    /*
     * @tc.number    : TestProgress_unique1_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_201\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_201"
            modtestView[0] = {_:CustomView => View_Progress_unique1_201(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_201 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_202\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_202"
            modtestView[0] = {_:CustomView => View_Progress_unique1_202(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_202 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_203\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_203"
            modtestView[0] = {_:CustomView => View_Progress_unique1_203(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_203 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_204\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_204"
            modtestView[0] = {_:CustomView => View_Progress_unique1_204(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"11.00lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"11.00lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_204 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_205\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_205"
            modtestView[0] = {_:CustomView => View_Progress_unique1_205(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_205 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_206\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_206"
            modtestView[0] = {_:CustomView => View_Progress_unique1_206(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"10.55fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"10.55fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_206 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_207\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_207"
            modtestView[0] = {_:CustomView => View_Progress_unique1_207(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"8.00px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"8.00px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_207 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_208\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_208"
            modtestView[0] = {_:CustomView => View_Progress_unique1_208(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_208 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_209\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_209"
            modtestView[0] = {_:CustomView => View_Progress_unique1_209(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"11.55lpx\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"11.55lpx\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_209 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_210\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_210"
            modtestView[0] = {_:CustomView => View_Progress_unique1_210(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_210 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_211\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_211"
            modtestView[0] = {_:CustomView => View_Progress_unique1_211(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"10.00fp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"10.00fp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_211 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_212\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_212"
            modtestView[0] = {_:CustomView => View_Progress_unique1_212(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"8.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"8.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_212 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_213\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_213"
            modtestView[0] = {_:CustomView => View_Progress_unique1_213(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"9.55vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"9.55vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_213 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_214\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_214"
            modtestView[0] = {_:CustomView => View_Progress_unique1_214(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_214 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_215\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_215"
            modtestView[0] = {_:CustomView => View_Progress_unique1_215(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_215 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_216\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_216"
            modtestView[0] = {_:CustomView => View_Progress_unique1_216(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_216 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_217\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_217"
            modtestView[0] = {_:CustomView => View_Progress_unique1_217(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"8.55px\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"8.55px\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_217 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_218\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_218"
            modtestView[0] = {_:CustomView => View_Progress_unique1_218(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_218 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_219\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_219"
            modtestView[0] = {_:CustomView => View_Progress_unique1_219(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_219 ends.")
    }
    /*
     * @tc.number    : TestProgress_unique1_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : test the unique of the Progress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Progress_unique1_220\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Progress_unique1_3_test"
            modtestCaseText[0] = "TestCase_220"
            modtestView[0] = {_:CustomView => View_Progress_unique1_220(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Progress_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["color"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"strokeWidth\":\"4.00vp\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleCount\":\"120\""))
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Progress_id")["style"].contains("\"scaleWidth\":\"2.00vp\""))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_220 ends.")
    }
}
