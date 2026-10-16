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
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.{Ability, AbilityStage, Want, LaunchParam, LaunchReason}
import kit.TestKit.*
import ohos.base.*
import ohos_app_cangjie_entry.*
import ohos.arkui.component.custom_component.CustomView
@Test
class Com_Reusable_test {
    /*
     * @tc.number    : Com_Reusable_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the combine of the Component Reusable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Com_Reusable_test"
            modtestCaseText[0] = "TestCase_1"
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("comreusable"), 3000i32)
        TestDriver.driver.findComponent(On().id("comreusable")).getOrThrow().click()
        TestDriver.driver.findComponent(On().id("comreusable")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("comreusable1"), 3000i32) 
        let ComReusable1 = TestDriver.driver.findComponent(On().id("comreusable1")).getOrThrow().getText() 
        @Expect(ComReusable1, "Child")             
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Com_Reusable_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the combine of the Component Reusable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Com_Reusable_test"
            modtestCaseText[0] = "TestCase_2"
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("comreusable"), 3000i32)
        TestDriver.driver.findComponent(On().id("comreusable")).getOrThrow().click()
        TestDriver.driver.findComponent(On().id("comreusable")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("comreusable2"), 3000i32) 
        let ComReusable2 = TestDriver.driver.findComponent(On().id("comreusable2")).getOrThrow().getText() 
        @Expect(ComReusable2, "abouttoreuse")             
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Com_Reusable_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the combine of the Component Reusable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Com_Reusable_test"
            modtestCaseText[0] = "TestCase_3"
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("comreusable"), 3000i32)
        TestDriver.driver.findComponent(On().id("comreusable")).getOrThrow().click()
        TestDriver.driver.findComponent(On().id("comreusable")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().id("comreusable3"), 3000i32) 
        let ComReusable3 = TestDriver.driver.findComponent(On().id("comreusable3")).getOrThrow().getText() 
        @Expect(ComReusable3, "abouttorecycle")             
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Com_Reusable_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the combine of the Component Reusable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Com_Reusable_test"
            modtestCaseText[0] = "TestCase_4"
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("reuse_mul_scroller"), 3000i32)
        TestDriver.driver.findComponent(On().id("reuse_mul_scroller")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Item 18 Child Component C"), 3000i32) 
        let TwoComRecycle = TestDriver.driver.findComponent(On().text("Item 18 Child Component C")).getOrThrow().getText() 
        @Expect(TwoComRecycle, "Item 18 Child Component C")             
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    } 

    /*
     * @tc.number    : Com_Reusable_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the combine of the Component Reusable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Com_Reusable_test"
            modtestCaseText[0] = "TestCase_5"
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("reuse_mul_scroller"), 3000i32)
        TestDriver.driver.findComponent(On().id("reuse_mul_scroller")).getOrThrow().click()
        TestDriver.driver.waitForComponent(On().text("Item 18 Child Component B"), 3000i32) 
        let ThreeComRecycle = TestDriver.driver.findComponent(On().text("Item 18 Child Component B")).getOrThrow().getText() 
        @Expect(ThreeComRecycle, "Item 18 Child Component B")             
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }                             
}









