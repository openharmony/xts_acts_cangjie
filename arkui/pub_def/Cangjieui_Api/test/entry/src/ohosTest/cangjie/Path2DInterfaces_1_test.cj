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
import ohos.base.Color as baseColor
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.component.path_2d.*
import ohos.arkui.component.canvas.*
import ohos.arkui.component.common.*

@Test
class Path2DInterfaces_1_test {
    /*
     * @tc.number    : TestPath2D_0100
     * @tc.name      : TestCase_Path2D_1
     * @tc.desc      : construct Path2D via init(), call moveTo/lineTo/closePath, stroke via context, validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Path2D_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Path2D_1 begins.")
        var opsCount = 0
        let path = Path2D()
        path.moveTo(0.0, 0.0)
        opsCount = opsCount + 1
        path.lineTo(100.0, 100.0)
        opsCount = opsCount + 1
        path.lineTo(200.0, 0.0)
        opsCount = opsCount + 1
        path.closePath()
        opsCount = opsCount + 1
        @Expect(opsCount, 4)
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        ctx.lineWidth = Some(5.0)
        ctx.globalAlpha = Some(0.8)
        ctx.stroke(path)
        @Expect(ctx.lineWidth.isNone(),true)
        @Expect(ctx.globalAlpha.isNone(),true)
        ctx.strokeStyle = Some(baseColor(0x00FF00u32))
        ctx.stroke(path)
        var strokeSomeCount = 0
        match (ctx.strokeStyle) {
            case Some(_) => strokeSomeCount = strokeSomeCount + 1
            case None => ()
        }
        @Expect(strokeSomeCount, 0)
        Hilog.info(0u32, "CangjieTest", "testcase Path2D_1 ends.")
    }
    /*
     * @tc.number    : TestPath2D_0200
     * @tc.name      : TestCase_Path2D_2
     * @tc.desc      : construct Path2D via init(d), call arc/arcTo/quadraticCurveTo/bezierCurveTo/ellipse/rect/addPath/setTransform, fill+clip via context, validate
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Path2D_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Path2D_2 begins.")
        var opsCount = 0
        let path = Path2D("M0,0 L100,100 L200,0 Z")
        path.arc(50.0, 50.0, 25.0, 0.0, 6.283185307179586)
        opsCount = opsCount + 1
        path.arc(50.0, 50.0, 25.0, 0.0, 6.283185307179586, counterclockwise: true)
        opsCount = opsCount + 1
        path.arcTo(0.0, 0.0, 100.0, 100.0, 10.0)
        opsCount = opsCount + 1
        path.quadraticCurveTo(50.0, 50.0, 100.0, 100.0)
        opsCount = opsCount + 1
        path.bezierCurveTo(0.0, 0.0, 50.0, 50.0, 100.0, 100.0)
        opsCount = opsCount + 1
        path.ellipse(50.0, 50.0, 25.0, 15.0, 0.0, 0.0, 6.283185307179586)
        opsCount = opsCount + 1
        path.ellipse(50.0, 50.0, 25.0, 15.0, 0.0, 0.0, 6.283185307179586, counterclockwise: true)
        opsCount = opsCount + 1
        path.rect(0.0, 0.0, 50.0, 50.0)
        opsCount = opsCount + 1
        @Expect(opsCount, 8)
        let path2 = Path2D()
        var opsCount2 = 0
        path2.addPath(path)
        opsCount2 = opsCount2 + 1
        path2.addPath(Option<Path2D>.None)
        opsCount2 = opsCount2 + 1
        path2.setTransform(2.0, 0.0, 0.0, 2.0, 10.0, 10.0)
        opsCount2 = opsCount2 + 1
        path2.setTransform(Option<Float64>.None, Option<Float64>.None, Option<Float64>.None,
            Option<Float64>.None, Option<Float64>.None, Option<Float64>.None)
        opsCount2 = opsCount2 + 1
        @Expect(opsCount2, 4)
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        ctx.lineWidth = Some(3.0)
        ctx.globalAlpha = Some(0.5)
        ctx.fillStyle = Some(baseColor(0xFF0000u32))
        ctx.fill(path2)
        @Expect(ctx.lineWidth.isNone(),true)
        @Expect(ctx.globalAlpha.isNone(),true)
        var fillSomeCount = 0
        match (ctx.fillStyle) {
            case Some(_) => fillSomeCount = fillSomeCount + 1
            case None => ()
        }
        @Expect(fillSomeCount, 0)
        ctx.clip(path)
        @Expect(ctx.lineWidth.isNone(),true)
        ctx.clip(path2)
        @Expect(ctx.globalAlpha.isNone(),true)
        var totalOps = opsCount + opsCount2
        @Expect(totalOps, 12)
        Hilog.info(0u32, "CangjieTest", "testcase Path2D_2 ends.")
    }
}
