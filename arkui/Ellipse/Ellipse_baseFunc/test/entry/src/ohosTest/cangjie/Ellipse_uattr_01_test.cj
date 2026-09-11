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
import ohos_app_cangjie_entry.Ellipse_uattr_01.*
@Test
class Ellipse_uattr_01_test {
    /*
     * @tc.number    : TestEllipse_uattr_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test the uniqueattr of the Ellipse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_01\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_1"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_01(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Butt\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Miter\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"4.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test the uniqueattr of the Ellipse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_02\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_2"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_02(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"1.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[\"5.00vp\",\"5.00vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"5.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Round\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Round\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"5.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"1.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test the uniqueattr of the Ellipse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_03\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_3"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_03(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.500000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[\"10.00vp\",\"5.00vp\",\"2.00vp\",\"5.00vp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"10.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Square\"")

        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Bevel\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"10.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.500000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test the uniqueattr of the Ellipse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_04\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_4"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_04(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FF0000FF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.300000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FFFFFFFF\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[\"3.00px\",\"3.00px\",\"3.00px\",\"3.00px\",\"3.00px\",\"3.00px\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"3.00px\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Butt\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Bevel\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"3.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.700000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test the uniqueattr of the Ellipse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_05\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_5"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_05(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FF008000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.800000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[\"8.00fp\",\"4.00fp\",\"8.00fp\",\"4.00fp\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"8.00fp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Round\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Miter\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"8.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.200000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test the uniqueattr of the Ellipse
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_06\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_6"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_06(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FF000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.600000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"] > "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[\"6.00lpx\",\"3.00lpx\"]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"6.00lpx\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Square\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Round\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"6.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.400000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test the uniqueattr of the Ellipse (string overload: empty string)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_07\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_7"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_07(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.500000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Butt\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Miter\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"4.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.500000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"true\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : TestEllipse_uattr_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test the uniqueattr of the Ellipse (string overload: normal string)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "enter page \"View_Ellipse_uattr_08\" by scroller \"scroller\"")
        TestDriver.driver.waitForComponent(On().id("testButton"), 3000i32)
        launch{
            modtestSuiteText[0] = "Ellipse_uattr_01_test"
            modtestCaseText[0] = "TestCase_8"
            modtestView[0] = {_:CustomView => View_Ellipse_uattr_08(Option<CustomView>.None)}
        }
        TestDriver.driver.waitForComponent(On().id("testButton"), 1000i32)
            .getOrThrow().click()
        Hilog.info(0u32, "CangjieTest", "wait for component under test to appear")
        TestDriver.driver.waitForComponent(On().id("Ellipse_id"), 3000i32)
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fill"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["fillOpacity"], "\"0.500000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["stroke"], "\"#FFFF0000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeWidth"]> "\"0.00\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashArray"], "[]")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeDashOffset"], "\"0.00vp\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineCap"], "\"LineCapStyle.Butt\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeLineJoin"], "\"LineJoinStyle.Miter\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeMiterLimit"], "\"4.000000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["strokeOpacity"], "\"0.500000\"")
        @Expect(Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ellipse_id")["antiAlias"], "\"false\"")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

}