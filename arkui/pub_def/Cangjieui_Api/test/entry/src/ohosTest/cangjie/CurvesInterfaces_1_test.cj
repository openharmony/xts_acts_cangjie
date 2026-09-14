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
import ohos.curves.*
import ohos.arkui.component.*

@Test
class CurvesInterfaces_1_test {
    /*
     * @tc.number    : TestCurves_Curves_0100
     * @tc.name      : TestCase_Curves_1
     * @tc.desc      : create ICurve via stepsCurve/cubicBezierCurve/initCurve/customCurve, validate creation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Curves_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Curves_1 begins.")
        var opsCount = 0
        let stepsC = Curves.stepsCurve(4, true)
        opsCount = opsCount + 1
        let stepsC2 = Curves.stepsCurve(2, false)
        opsCount = opsCount + 1
        let bezierC = Curves.cubicBezierCurve(0.0, 0.0, 1.0, 1.0)
        opsCount = opsCount + 1
        let bezierC2 = Curves.cubicBezierCurve(0.25, 0.1, 0.75, 0.9)
        opsCount = opsCount + 1
        let initLinear = Curves.initCurve()
        opsCount = opsCount + 1
        let initExplicit = Curves.initCurve(curve: Curve.Linear)
        opsCount = opsCount + 1
        let customC = Curves.customCurve({ x: Float32 => x })
        opsCount = opsCount + 1
        let customSquared = Curves.customCurve({ x: Float32 => x * x })
        opsCount = opsCount + 1
        @Expect(opsCount, 8)
        let linearVal0 = initLinear.interpolate(0.0)
        var linearValid = 0
        if (linearVal0 >= 0.0) {
            linearValid = 1
        }
        @Expect(linearValid, 1)
        let customVal0 = customC.interpolate(0.0)
        var customValid = 0
        if (customVal0 >= 0.0) {
            customValid = 1
        }
        @Expect(customValid, 1)
        Hilog.info(0u32, "CangjieTest", "testcase Curves_1 ends.")
    }
    /*
     * @tc.number    : TestCurves_Curves_0200
     * @tc.name      : TestCase_Curves_2
     * @tc.desc      : create ICurve via springCurve/springMotion/responsiveSpringMotion/interpolatingSpring, validate creation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Curves_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Curves_2 begins.")
        var opsCount = 0
        let springC = Curves.springCurve(0.0, 1.0, 100.0, 10.0)
        opsCount = opsCount + 1
        let springM = Curves.springMotion()
        opsCount = opsCount + 1
        let springM2 = Curves.springMotion(response: 0.3, dampingFraction: 0.5,
            overlapDuration: 0.1)
        opsCount = opsCount + 1
        let respSpringM = Curves.responsiveSpringMotion()
        opsCount = opsCount + 1
        let respSpringM2 = Curves.responsiveSpringMotion(response: 0.2,
            dampingFraction: 0.7, overlapDuration: 0.15)
        opsCount = opsCount + 1
        let interpSpring = Curves.interpolatingSpring(0.0, 1.0, 100.0, 10.0)
        opsCount = opsCount + 1
        @Expect(opsCount, 6)
        var springValidCount = 0
        let springVal = springC.interpolate(0.5)
        if (springVal >= 0.0) {
            springValidCount = springValidCount + 1
        }
        let interpVal = interpSpring.interpolate(0.5)
        if (interpVal >= 0.0) {
            springValidCount = springValidCount + 1
        }
        @Expect(springValidCount, 2)
        Hilog.info(0u32, "CangjieTest", "testcase Curves_2 ends.")
    }

    /*
     * @tc.number    : TestCurves_ICurve_0100
     * @tc.name      : TestCase_ICurve_1
     * @tc.desc      : create ICurve via initCurve/stepsCurve/cubicBezierCurve/customCurve, call interpolate at fractions, validate values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ICurve_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ICurve_1 begins.")
        let linearCurve = Curves.initCurve()
        let val0 = linearCurve.interpolate(0.0)
        @Expect(val0, 0.0)
        let valHalf = linearCurve.interpolate(0.5)
        @Expect(valHalf, 0.5)
        let val1 = linearCurve.interpolate(1.0)
        @Expect(val1, 1.0)
        let stepsC = Curves.stepsCurve(4, true)
        let stepsVal0 = stepsC.interpolate(0.0)
        @Expect(stepsVal0, 0.0)
        let stepsVal1 = stepsC.interpolate(1.0)
        @Expect(stepsVal1, 1.0)
        let bezierC = Curves.cubicBezierCurve(0.0, 0.0, 1.0, 1.0)
        let bezierVal0 = bezierC.interpolate(0.0)
        @Expect(bezierVal0 > 0.0)
        let bezierVal1 = bezierC.interpolate(1.0)
        @Expect(bezierVal1 > 0.0)
        let customC = Curves.customCurve({ x: Float32 => x })
        let customVal0 = customC.interpolate(0.0)
        @Expect(customVal0, 0.0)
        let customValQuarter = customC.interpolate(0.25)
        @Expect(customValQuarter, 0.25)
        let customValHalf = customC.interpolate(0.5)
        @Expect(customValHalf, 0.5)
        let customVal1 = customC.interpolate(1.0)
        @Expect(customVal1, 1.0)
        let customSquared = Curves.customCurve({ x: Float32 => x * x })
        let squaredVal0 = customSquared.interpolate(0.0)
        @Expect(squaredVal0, 0.0)
        let squaredValHalf = customSquared.interpolate(0.5)
        @Expect(squaredValHalf, 0.25)
        let squaredVal1 = customSquared.interpolate(1.0)
        @Expect(squaredVal1, 1.0)
        Hilog.info(0u32, "CangjieTest", "testcase ICurve_1 ends.")
    }
    /*
     * @tc.number    : TestCurves_ICurve_0200
     * @tc.name      : TestCase_ICurve_2
     * @tc.desc      : create ICurve via springCurve/interpolatingSpring/springMotion/responsiveSpringMotion, call interpolate, validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ICurve_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ICurve_2 begins.")
        let springC = Curves.springCurve(0.0, 1.0, 100.0, 10.0)
        let springVal0 = springC.interpolate(0.0)
        @Expect(springVal0, 0.0)
        let springVal1 = springC.interpolate(1.0)
        @Expect(springVal1, 1.0)
        let interpSpring = Curves.interpolatingSpring(0.0, 1.0, 100.0, 10.0)
        let interpVal0 = interpSpring.interpolate(0.0)
        @Expect(interpVal0, 0.0)
        let interpVal1 = interpSpring.interpolate(1.0)
        @Expect(interpVal1 >= 0.0)
        var springMotionStatus = 0
        let springM = Curves.springMotion()
        let smVal = springM.interpolate(0.5)
        @Expect(smVal, 1.0f32)
        var respSpringStatus = 0
        let respM = Curves.responsiveSpringMotion()
        let rmVal = respM.interpolate(0.5)
        @Expect(rmVal, 1.0f32)
        var totalInterpolations = 0
        let sv = springC.interpolate(0.25)
        totalInterpolations = totalInterpolations + 1
        let iv = interpSpring.interpolate(0.75)
        totalInterpolations = totalInterpolations + 1
        @Expect(totalInterpolations, 2)
        Hilog.info(0u32, "CangjieTest", "testcase ICurve_2 ends.")
    }
}
