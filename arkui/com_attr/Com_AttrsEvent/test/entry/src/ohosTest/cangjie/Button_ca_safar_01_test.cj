/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
import ohos.arkui.component.common.getInspectorByKey
import std.convert.*
import ohos_app_cangjie_entry.*
import ohos.arkui.component.custom_component.CustomView

@Test
class Button_ca_safar_01_test {
    /*
     * @tc.number    : TestButton_ca_safearea_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the comattr of the safearea
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_safar_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_safar_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Button_ca_safar_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id1"), 3000i32)
        let inspector1 = getInspectorByKey("Button_comattr_id1")
        let jsonObject1 =JsonValue.fromStr(inspector1).asObject()
        let rect1 = jsonObject1.get("$rect").getOrThrow().toString()
        let rectArr1 = rect1.replace("[","").replace("]","").replace(" ", "").replace("\"","").split(",")

        let inspector2 = getInspectorByKey("Button_comattr_id2")
        let jsonObject2 =JsonValue.fromStr(inspector2).asObject()
        let rect2 = jsonObject2.get("$rect").getOrThrow().toString()
        let rectArr2 = rect2.replace("[","").replace("]","").replace(" ", "").replace("\"","").split(",")

        @Expect(Float64.tryParse(rectArr1[0]).getOrThrow() == Float64.tryParse(rectArr2[0]).getOrThrow())
        @Expect(Float64.tryParse(rectArr1[1]).getOrThrow() < Float64.tryParse(rectArr2[1]).getOrThrow())
        @Expect(Float64.tryParse(rectArr1[2]).getOrThrow() == Float64.tryParse(rectArr2[2]).getOrThrow())
        @Expect(Float64.tryParse(rectArr1[3]).getOrThrow() < Float64.tryParse(rectArr2[3]).getOrThrow())
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestButton_ca_safearea_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the comattr of the safearea
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Button_ca_safar_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Button_ca_safar_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Button_ca_safar_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Button_comattr_id1"), 3000i32)
        let inspector1 = getInspectorByKey("Button_comattr_id1")
        let jsonObject1 =JsonValue.fromStr(inspector1).asObject()
        let rect1 = jsonObject1.get("$rect").getOrThrow().toString()
        let rectArr1 = rect1.replace("[","").replace("]","").replace(" ", "").replace("\"","").split(",")

        let inspector2 = getInspectorByKey("Button_comattr_id2")
        let jsonObject2 =JsonValue.fromStr(inspector2).asObject()
        let rect2 = jsonObject2.get("$rect").getOrThrow().toString()
        let rectArr2 = rect2.replace("[","").replace("]","").replace(" ", "").replace("\"","").split(",")

        @Expect(Float64.tryParse(rectArr1[0]).getOrThrow() < Float64.tryParse(rectArr2[0]).getOrThrow())
        @Expect(Float64.tryParse(rectArr1[1]).getOrThrow() > Float64.tryParse(rectArr2[1]).getOrThrow(), false)
        @Expect(Float64.tryParse(rectArr1[2]).getOrThrow() < Float64.tryParse(rectArr2[2]).getOrThrow())
        @Expect(Float64.tryParse(rectArr1[3]).getOrThrow() > Float64.tryParse(rectArr2[3]).getOrThrow(), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
}
 
