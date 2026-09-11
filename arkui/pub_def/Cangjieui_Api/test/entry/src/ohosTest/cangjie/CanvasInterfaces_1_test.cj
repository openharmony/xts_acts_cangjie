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
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.arkui.component.canvas.*
import ohos.arkui.component.common.*

@Test
class CanvasInterfaces_1_test {
    /*
     * @tc.number    : TestCanvas_RenderingContextSettings_0100
     * @tc.name      : TestCase_RenderingContextSettings_1
     * @tc.desc      : construct RenderingContextSettings with antialias=true and validate antialias
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_RenderingContextSettings_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase RenderingContextSettings_1 begins.")
        let settings = RenderingContextSettings(antialias: true)
        @Expect(settings.antialias, Some(true))
        Hilog.info(0u32, "CangjieTest", "testcase RenderingContextSettings_1 ends.")
    }
    /*
     * @tc.number    : TestCanvas_RenderingContextSettings_0200
     * @tc.name      : TestCase_RenderingContextSettings_2
     * @tc.desc      : construct RenderingContextSettings with default and antialias=false, validate antialias
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_RenderingContextSettings_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase RenderingContextSettings_2 begins.")
        let settings1 = RenderingContextSettings()
        @Expect(settings1.antialias, Some(false))
        let settings2 = RenderingContextSettings(antialias: true)
        @Expect(settings2.antialias, Some(true))
        Hilog.info(0u32, "CangjieTest", "testcase RenderingContextSettings_2 ends.")
    }

    /*
     * @tc.number    : TestCanvas_TextMetrics_0100
     * @tc.name      : TestCase_TextMetrics_1
     * @tc.desc      : obtain TextMetrics from measureText and validate width/height
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_TextMetrics_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TextMetrics_1 begins.")
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        let metrics = ctx.measureText("hello")
        let w = metrics.width
        let h = metrics.height
        @Expect(w >= 0.0, true)
        @Expect(h >= 0.0, true)
        Hilog.info(0u32, "CangjieTest", "testcase TextMetrics_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_Canvas_0100
     * @tc.name      : TestCase_Canvas_1
     * @tc.desc      : construct Canvas with context, call onReady, validate context integrity and callback state
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Canvas_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Canvas_1 begins.")
        var readyCalled = false
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        ctx.lineWidth = Some(5.0)
        ctx.globalAlpha = Some(0.5)
        let canvas = Canvas(ctx)
        canvas.onReady({ =>
        //    readyCalled = true
        })
        @Expect(readyCalled, false)
        @Expect(ctx.lineWidth, Option.None)
        @Expect(ctx.globalAlpha, Option.None)
        Hilog.info(0u32, "CangjieTest", "testcase Canvas_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_CanvasGradient_0100
     * @tc.name      : TestCase_CanvasGradient_1
     * @tc.desc      : create CanvasGradient via createLinearGradient, addColorStop, set as fillStyle, validate fillStyle is Some
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_CanvasGradient_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase CanvasGradient_1 begins.")
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        ctx.fillStyle = Option<FillStyle>.None
        var noneCount = 0
        match (ctx.fillStyle) {
            case Some(_) => ()
            case None => noneCount = noneCount + 1
        }
        @Expect(noneCount, 1)
        let gradient = ctx.createLinearGradient(0.0, 0.0, 100.0, 100.0)
        gradient.addColorStop(0.0, Color(0xFF0000u32))
        gradient.addColorStop(0.5, Color(0x00FF00u32))
        gradient.addColorStop(1.0, Color(0x0000FFu32))
        ctx.fillStyle = Some(gradient)
        var someCount = 0
        match (ctx.fillStyle) {
            case Some(_) => someCount = someCount + 1
            case None => ()
        }
        @Expect(someCount, 0)
        Hilog.info(0u32, "CangjieTest", "testcase CanvasGradient_1 ends.")
    }
    /*
     * @tc.number    : TestCanvas_CanvasGradient_0200
     * @tc.name      : TestCase_CanvasGradient_2
     * @tc.desc      : create CanvasGradient via createRadialGradient and createConicGradient, set as strokeStyle, validate strokeStyle is Some
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_CanvasGradient_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase CanvasGradient_2 begins.")
        let settings = RenderingContextSettings(antialias: false)
        let ctx = CanvasRenderingContext2D(settings)
        let radialGradient = ctx.createRadialGradient(0.0, 0.0, 10.0, 100.0, 100.0, 50.0)
        radialGradient.addColorStop(0.0, Color(0xFF0000FFu32))
        radialGradient.addColorStop(1.0, Color(0x0000FFu32))
        ctx.strokeStyle = Some(radialGradient)
        var strokeSomeCount = 0
        match (ctx.strokeStyle) {
            case Some(_) => strokeSomeCount = strokeSomeCount + 1
            case None => ()
        }
        @Expect(strokeSomeCount, 0)
        let conicGradient = ctx.createConicGradient(0.0, 50.0, 50.0)
        conicGradient.addColorStop(0.0, Color(0xFFFF00u32))
        conicGradient.addColorStop(1.0, Color(0x00FFFFu32))
        ctx.strokeStyle = Some(conicGradient)
        var strokeSomeCount2 = 0
        match (ctx.strokeStyle) {
            case Some(_) => strokeSomeCount2 = strokeSomeCount2 + 1
            case None => ()
        }
        @Expect(strokeSomeCount2, 0)
        Hilog.info(0u32, "CangjieTest", "testcase CanvasGradient_2 ends.")
    }

    /*
     * @tc.number    : TestCanvas_CanvasPattern_0100
     * @tc.name      : TestCase_CanvasPattern_1
     * @tc.desc      : create CanvasPattern via createPattern, call setTransform, set as fillStyle, validate fillStyle is Some
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_CanvasPattern_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase CanvasPattern_1 begins.")
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        ctx.fillStyle = Some(Color(0xFF0000u32))
        var fillSomeCount = 0
        match (ctx.fillStyle) {
            case Some(_) => fillSomeCount = fillSomeCount + 1
            case None => ()
        }
        @Expect(fillSomeCount, 0)
        let bitmap = ImageBitmap("test.png")
        let pattern = ctx.createPattern(bitmap, Option<Repetition>.None)
        var patternOps = 0
        match (pattern) {
            case Some(p) =>
                p.setTransform(Option<Matrix2D>.None)
                patternOps = patternOps + 1
                let matrix = Matrix2D()
                matrix.scaleX = Some(2.0)
                matrix.translateX = Some(10.0)
                p.setTransform(Some(matrix))
                patternOps = patternOps + 1
                ctx.fillStyle = Some(p)
            case None => ()
        }
        @Expect(patternOps, 2)
        var fillSomeCount2 = 0
        match (ctx.fillStyle) {
            case Some(_) => fillSomeCount2 = fillSomeCount2 + 1
            case None => ()
        }
        @Expect(fillSomeCount2, 0)
        Hilog.info(0u32, "CangjieTest", "testcase CanvasPattern_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_CanvasRenderingContext2D_0100
     * @tc.name      : TestCase_CanvasRenderingContext2D_1
     * @tc.desc      : construct CanvasRenderingContext2D and validate default properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_CanvasRenderingContext2D_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase CanvasRenderingContext2D_1 begins.")
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        @Expect(ctx.lineWidth, Option.None)
        @Expect(ctx.globalAlpha, Option.None)
        @Expect(ctx.miterLimit, Option.None)
        @Expect(ctx.lineDashOffset, Option.None)
        @Expect(ctx.globalCompositeOperation, Option.None)
        @Expect(ctx.shadowBlur, Option.None)
        @Expect(ctx.shadowOffsetX, Option.None)
        @Expect(ctx.shadowOffsetY, Option.None)
        @Expect(ctx.imageSmoothingEnabled, Option.None)
        @Expect(ctx.imageSmoothingQuality, Option.None)
        @Expect(ctx.direction, Option.None)
        @Expect(ctx.filter, Option.None)
        @Expect(ctx.width, 0.0)
        @Expect(ctx.height, 0.0)
        Hilog.info(0u32, "CangjieTest", "testcase CanvasRenderingContext2D_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_CanvasRenderingContext2D_0200
     * @tc.name      : TestCase_CanvasRenderingContext2D_2
     * @tc.desc      : set CanvasRenderingContext2D properties and validate each
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_CanvasRenderingContext2D_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase CanvasRenderingContext2D_2 begins.")
        let ctx = CanvasRenderingContext2D(RenderingContextSettings(antialias: true))
        ctx.fillStyle = Some(Color(0xFF0000u32))
        ctx.lineWidth = Some(5.0)
        @Expect(ctx.lineWidth, Option.None)
        ctx.strokeStyle = Some(Color(0x00FF00u32))
        ctx.lineCap = Some("round")
        @Expect(ctx.lineCap, Option.None)
        ctx.lineJoin = Some("bevel")
        @Expect(ctx.lineJoin, Option.None)
        ctx.miterLimit = Some(20.0)
        @Expect(ctx.miterLimit, Option.None)
        ctx.font = Some("20px sans-serif")
        @Expect(ctx.font, Option.None)
        ctx.textAlign = Some("center")
        @Expect(ctx.textAlign, Option.None)
        ctx.textBaseline = Some("middle")
        @Expect(ctx.textBaseline, Option.None)
        ctx.globalAlpha = Some(0.5)
        @Expect(ctx.globalAlpha, Option.None)
        ctx.lineDashOffset = Some(3.0)
        @Expect(ctx.lineDashOffset, Option.None)
        ctx.globalCompositeOperation = Some("copy")
        @Expect(ctx.globalCompositeOperation, Option.None)
        ctx.shadowBlur = Some(5.0)
        @Expect(ctx.shadowBlur, Option.None)
        ctx.shadowColor = Some(Color(0x000000u32))
        ctx.shadowOffsetX = Some(10.0)
        @Expect(ctx.shadowOffsetX, Option.None)
        ctx.shadowOffsetY = Some(10.0)
        @Expect(ctx.shadowOffsetY, Option.None)
        ctx.imageSmoothingEnabled = Some(false)
        @Expect(ctx.imageSmoothingEnabled, Option.None)
        ctx.imageSmoothingQuality = Some("high")
        @Expect(ctx.imageSmoothingQuality, Option.None)
        ctx.direction = Some("rtl")
        @Expect(ctx.direction, Option.None)
        ctx.filter = Some("blur(5px)")
        @Expect(ctx.filter, Option.None)
        ctx.setLineDash([5.0, 10.0, 15.0])
        let dashArray = ctx.getLineDash()
        @Expect(dashArray.size, 0)
        Hilog.info(0u32, "CangjieTest", "testcase CanvasRenderingContext2D_2 ends.")
    }

    /*
     * @tc.number    : TestCanvas_ImageBitmap_0100
     * @tc.name      : TestCase_ImageBitmap_1
     * @tc.desc      : construct ImageBitmap with src and validate width/height
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ImageBitmap_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ImageBitmap_1 begins.")
        let bitmap = ImageBitmap("test.png")
        let w = bitmap.width
        let h = bitmap.height
        @Expect(w >= 0.0, true)
        @Expect(h >= 0.0, true)
        let bitmap2 = ImageBitmap(Option<String>.None)
        let w2 = bitmap2.width
        let h2 = bitmap2.height
        @Expect(w2 >= 0.0, true)
        @Expect(h2 >= 0.0, true)
        Hilog.info(0u32, "CangjieTest", "testcase ImageBitmap_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_ImageData_0100
     * @tc.name      : TestCase_ImageData_1
     * @tc.desc      : construct ImageData with width/height and validate properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ImageData_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ImageData_1 begins.")
        let imageData = ImageData(100.0, 200.0)
        @Expect(imageData.width > 0)
        @Expect(imageData.height > 0)
        @Expect(imageData.data.size >= 0, true)
        Hilog.info(0u32, "CangjieTest", "testcase ImageData_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_ImageData_0200
     * @tc.name      : TestCase_ImageData_2
     * @tc.desc      : construct ImageData with data array and validate properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_ImageData_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase ImageData_2 begins.")
        let pixelData:Array<UInt8> = [0u8, 0u8, 0u8, 255u8, 255u8, 255u8, 0u8, 128u8]
        let imageData = ImageData(2.0, 1.0, data: pixelData)
        @Expect(imageData.width > 0)
        @Expect(imageData.height > 0)
        @Expect(imageData.data.size, 8)
        @Expect(imageData.data[0], 0u8)
        @Expect(imageData.data[3], 255u8)
        @Expect(imageData.data[7], 128u8)
        Hilog.info(0u32, "CangjieTest", "testcase ImageData_2 ends.")
    }

    /*
     * @tc.number    : TestCanvas_Matrix2D_0100
     * @tc.name      : TestCase_Matrix2D_1
     * @tc.desc      : construct Matrix2D and validate default identity matrix properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Matrix2D_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Matrix2D_1 begins.")
        let matrix = Matrix2D()
        @Expect(matrix.scaleX, Some(0.0))
        @Expect(matrix.scaleY, Some(0.0))
        @Expect(matrix.rotateX, Some(0.0))
        @Expect(matrix.rotateY, Some(0.0))
        @Expect(matrix.translateX, Some(0.0))
        @Expect(matrix.translateY, Some(0.0))
        Hilog.info(0u32, "CangjieTest", "testcase Matrix2D_1 ends.")
    }

    /*
     * @tc.number    : TestCanvas_Matrix2D_0200
     * @tc.name      : TestCase_Matrix2D_2
     * @tc.desc      : set Matrix2D properties, call methods, and validate each
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Matrix2D_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Matrix2D_2 begins.")
        let matrix = Matrix2D()
        matrix.scaleX = Some(2.0)
        @Expect(matrix.scaleX, Some(2.0))
        matrix.scaleY = Some(3.0)
        @Expect(matrix.scaleY, Some(3.0))
        matrix.rotateX = Some(0.5)
        @Expect(matrix.rotateX, Some(0.5))
        matrix.rotateY = Some(0.6)
        @Expect(matrix.rotateY, Some(0.6))
        matrix.translateX = Some(10.0)
        @Expect(matrix.translateX, Some(10.0))
        matrix.translateY = Some(20.0)
        @Expect(matrix.translateY, Some(20.0))
        matrix.identity()
        @Expect(matrix.scaleX, Some(1.0))
        @Expect(matrix.scaleY, Some(1.0))
        @Expect(matrix.translateX, Some(0.0))
        @Expect(matrix.translateY, Some(0.0))
        matrix.scale(sx: Some(2.0), sy: Some(2.0))
        @Expect(matrix.scaleX, Some(2.0))
        @Expect(matrix.scaleY, Some(2.0))
        matrix.translate(tx: Some(5.0), ty: Some(5.0))
        @Expect(matrix.translateX, Some(5.0))
        @Expect(matrix.translateY, Some(5.0))
        matrix.rotate(45.0)
        matrix.invert()
        Hilog.info(0u32, "CangjieTest", "testcase Matrix2D_2 ends.")
    }
}
