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
import ohos_app_cangjie_entry.RCon_Uniqueattr_01.*
import ohos.arkui.component.relative_container.*
import ohos.arkui.component.common.*
@Test
class RCon_uattr_01_test {
    /*
     * @tc.number    : TestRCon_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr guideLine of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RCon_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RCon_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_RCon_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RCon_uattr_id"), 3000i32)
        let style = BarrierStyle(Option<String>.None, Option<BarrierDirection>.None, Option<Array<String>>.None)
        @Expect(style.id.isNone(), false)
        @Expect(style.direction.isNone(), false)
        @Expect(style.referencedId.isNone(), false)
        style.id = "barrier2"
        @Expect(style.id.getOrThrow(), "barrier2")
        style.direction = BarrierDirection.Right
        @Expect(style.direction.isSome(), true)
        style.referencedId = ["ref3"]
        @Expect(style.referencedId.isSome(), true)
        @Expect(style.referencedId.getOrThrow().size, 1)
        style.id = Option<String>.None
        style.direction = Option<BarrierDirection>.None
        style.referencedId = Option<Array<String>>.None
        // @Expect(style.id.isNone(), true)
        // @Expect(style.direction.isNone(), true)
        // @Expect(style.referencedId.isNone(), true)        
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    /*
     * @tc.number    : TestRCon_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr guideLine of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RCon_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RCon_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_RCon_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RCon_uattr_id"), 3000i32)
        let pos = GuideLinePosition(start: 10i64.vp, end: 20i64.vp)
        let style = GuideLineStyle("guide1", Axis.Vertical, pos)
        @Expect(style.id.isSome(), true)
        @Expect(style.id.getOrThrow(), "guide1")
        @Expect(style.direction.isSome(), true)
        @Expect(style.position.isSome(), true)
        let posField: GuideLinePosition = style.position.getOrThrow()
        @Expect(posField.start.isSome(), true)
        @Expect(posField.end.isSome(), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    /*
     * @tc.number    : TestRCon_uattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr barrier of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RCon_uattr_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RCon_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_RCon_uattr_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RCon_uattr_id"), 3000i32)
        let style = GuideLineStyle(Option<String>.None, Option<Axis>.None, Option<GuideLinePosition>.None)
        @Expect(style.id.isNone(), false)
        @Expect(style.direction.isNone(), false)
        @Expect(style.position.isNone(), false)
        style.id = "guide2"
        @Expect(style.id.getOrThrow(), "guide2")
        style.direction = Axis.Horizontal
        @Expect(style.direction.isSome(), true)
        let pos = GuideLinePosition(start: 50i64.vp)
        style.position = pos
        @Expect(style.position.isSome(), true)
        @Expect(style.position.getOrThrow().start.isSome(), true)
        style.id = Option<String>.None
        style.direction = Option<Axis>.None
        style.position = Option<GuideLinePosition>.None
        @Expect(style.id.isNone(), true)
        @Expect(style.direction.isNone(), true)
        @Expect(style.position.isNone(), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    /*
     * @tc.number    : TestRCon_uattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr guideLine and barrier of the RelativeContainer
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_RCon_uattr_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "RCon_uattr_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_RCon_uattr_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32).getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("RCon_uattr_id"), 3000i32)
        @Expect(getInspect.getAttributeValue("RCon_uattr_id","direction"), "\"Direction.Auto\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
}
