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
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkData.*
import kit.ArkUI.getInspectorByKey
import ohos_app_cangjie_entry.modtestSuiteText
import ohos_app_cangjie_entry.modtestCaseText
import ohos_app_cangjie_entry.modtestView
import ohos.arkui.component.custom_component.CustomView
import ohos_app_cangjie_entry.Line_init.*

@Test
class Line_testStartendPoint_1_test {
    /*
     * @tc.number    : TestLine_testStartendPoint_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the testStartPoint&endPoint of the Line
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Line_testStartendPoint_1\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Line_testStartendPoint_1_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Line_testStartendPoint_1(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Line_id"), 3000i32)
        let inspectorInfo= getInspectorByKey("Line_id")
 	    Hilog.info(0u32, "CangjieTest", "inspectorInfo:" + inspectorInfo)
 	    @Expect(inspectorInfo.contains("\"startPoint\":[0,0]"))
 	    @Expect(inspectorInfo.contains("\"endPoint\":[0,0]"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestLine_testStartendPoint_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the testStartPoint&endPoint of the Line
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Line_testStartendPoint_2\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Line_testStartendPoint_1_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Line_testStartendPoint_2(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Line_id"), 3000i32)
        let inspectorInfo= getInspectorByKey("Line_id")
 	    Hilog.info(0u32, "CangjieTest", "inspectorInfo:" + inspectorInfo)
 	    @Expect(inspectorInfo.contains("\"startPoint\":[30,30]"))
 	    @Expect(inspectorInfo.contains("\"endPoint\":[30,30]"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestLine_testStartendPoint_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the testStartPoint&endPoint of the Line
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Line_testStartendPoint_3\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Line_testStartendPoint_1_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Line_testStartendPoint_3(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Line_id"), 3000i32)
        let inspectorInfo= getInspectorByKey("Line_id")
 	    Hilog.info(0u32, "CangjieTest", "inspectorInfo:" + inspectorInfo)
 	    @Expect(inspectorInfo.contains("\"startPoint\":[50,50]"))
 	    @Expect(inspectorInfo.contains("\"endPoint\":[50,50]"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestLine_testStartendPoint_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the testStartPoint&endPoint of the Line
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Line_testStartendPoint_4\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Line_testStartendPoint_1_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Line_testStartendPoint_4(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Line_id"), 3000i32)
        let inspectorInfo= getInspectorByKey("Line_id")
 	    Hilog.info(0u32, "CangjieTest", "inspectorInfo:" + inspectorInfo)
 	    @Expect(inspectorInfo.contains("\"startPoint\":[500,500]"))
 	    @Expect(inspectorInfo.contains("\"endPoint\":[500,500]"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
}
