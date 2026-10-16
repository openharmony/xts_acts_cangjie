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
import ohos.arkui.component.common.{getInspectorByKey,getInspectorTree, sendEventByKey,sendTouchEvent, sendKeyEvent,sendMouseEvent}
import kit.ArkUI.{TouchObject,TouchType,KeyEvent,KeyType,KeySource,MouseEvent,MouseButton as mousebutton,MouseAction}
import ohos_app_cangjie_entry.*
import ohos.arkui.component.custom_component.CustomView

@Test
class Button_ca_comsig_01_test {
    /*
     *@tc.number    : TestButton_ca_componentsign_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the componentsign
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_comsig_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_comsig_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Button_ca_comsig_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("require_id"), 3000i32)
        let Inspector = getInspectorByKey("Button_comattr_id")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let act_height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(act_height, "\"10.00vp\"")
        let inspecttree = getInspectorTree()
        @Expect(inspecttree.size > 0)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestButton_ca_componentsign_0200 
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the componentsign
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_comsig_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_comsig_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Button_ca_comsig_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("require_id"), 3000i32)
        let Inspector = getInspectorByKey("flex_comattr_key")
        let obj = JsonValue.fromStr(Inspector).asObject()
        let act_height = obj.get("$attrs").getOrThrow().asObject().get("height").getOrThrow().toString()
        @Expect(act_height, "\"10.00vp\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestButton_ca_componentsign_0300 
     * @tc.name      : TestCase_3
     * @tc.desc      : test the comattr of the componentsign
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_comsig_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_comsig_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Button_ca_comsig_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("require_id"), 3000i32)
        let Inspector = sendEventByKey("Button_comattr_id", IntNative(10), "")
        @Expect(Inspector, true)
        let Inspector1 = sendEventByKey("Button_comattr_id1", IntNative(10), "")
        @Expect(Inspector1, false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestButton_ca_componentsign_0400 
     * @tc.name      : TestCase_4
     * @tc.desc      : test the comattr of the componentsign
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_comsig_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_comsig_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Button_ca_comsig_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("require_id"), 3000i32)
        let Inspector = sendTouchEvent(TouchObject(TouchType.Move, 10i32,10.0,10.0,20.0,20.0))
        @Expect(Inspector, true)
        let Inspector1 = sendTouchEvent(TouchObject(TouchType.Unknown, 30i32,10.0,10.0,20.0,20.0))
        @Expect(Inspector1, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestButton_ca_componentsign_0500 
     * @tc.name      : TestCase_5
     * @tc.desc      : test the comattr of the componentsign
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_comsig_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_comsig_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Button_ca_comsig_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        let Inspector = sendKeyEvent(KeyEvent("coponentsign_id", KeyType.Up,20i32,KeySource.Keyboard,20i32,20,20))
        @Expect(Inspector, true)
        let Inspector1 = sendKeyEvent(KeyEvent("coponentsign_id1", KeyType.Up,30i32,KeySource.Keyboard,20i32,20,20))
        @Expect(Inspector1, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : TestButton_ca_componentsign_0600 
     * @tc.name      : TestCase_6
     * @tc.desc      : test the comattr of the componentsign
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_comsig_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_comsig_01_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Button_ca_comsig_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        let Inspector = sendMouseEvent(MouseEvent(10, 10.0,10.0,10.0,10.0,mousebutton.Left,MouseAction.Press))
        @Expect(Inspector, true)
        let Inspector1 = sendMouseEvent(MouseEvent(20, 10.0,10.0,10.0,10.0,mousebutton.Left,MouseAction.Press))
        @Expect(Inspector1, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
}
 
