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
import ohos.base.*
import ohos.base.Color as baseColor
import ohos.arkui.component.common.*
import ohos.arkui.component.path_2d.*
import ohos.arkui.component.canvas.*
import ohos.multimedia.image.PixelMap
import kit.ImageKit.{InitializationOptions,createPixelMap, Size, PixelMap}

public class TextMetrics {
    public let width: Float64
    public let height: Float64
    public init(width: Float64, height: Float64) {
        this.width = width; this.height = height
    }
}

var readyCalled = 0

@Test
class CanvasInterfaces_2_test {
    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let tm = TextMetrics(100.5, 50.0)
        @Expect(tm.width, 100.5)
        @Expect(tm.height, 50.0)
        let ib = ImageBitmap("test.png")
        @Expect(ib.width, 0.0)
        @Expect(ib.height, 0.0)
        let ib2 = ImageBitmap(Option<String>.None)
        @Expect(ib2.width, 0.0)
        let id1 = ImageData(100.0, 50.0)
        @Expect(id1.width > 0)
        @Expect(id1.height > 0)
        @Expect(id1.data.size > 0)
        let id2 = ImageData(200.0, 100.0, data: [0u8, 255u8])
        @Expect(id2.data.size > 0)
        let id3 = ImageData(50.0, 50.0, unit: LengthMetricsUnit.Px)
        @Expect(id3.width > 0)
        let id4 = ImageData(50.0, 50.0, data: [], unit: LengthMetricsUnit.Px)
        @Expect(id4.height, 0)
        @Expect(LengthMetricsUnit.Px != LengthMetricsUnit.Default, true)
        @Expect(LengthMetricsUnit.Px == LengthMetricsUnit.Px, true)
    }

    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let m = Matrix2D()
        @Expect(m.scaleX.isNone(), false)
        @Expect(m.scaleY.isNone(), false)
        @Expect(m.rotateX.isNone(), false)
        @Expect(m.rotateY.isNone(), false)
        @Expect(m.translateX.isNone(), false)
        @Expect(m.translateY.isNone(), false)
        m.scaleX = 2.0
        @Expect(m.scaleX.getOrThrow(), 2.0)
        m.scaleY = 0.5
        @Expect(m.scaleY.getOrThrow(), 0.5)
        m.rotateX = 1.0
        @Expect(m.rotateX.getOrThrow(), 1.0)
        m.rotateY = -1.0
        @Expect(m.rotateY.getOrThrow(), -1.0)
        m.translateX = 10.0
        @Expect(m.translateX.getOrThrow(), 10.0)
        m.translateY = 20.0
        @Expect(m.translateY.getOrThrow(), 20.0)
        m.scaleX = Option<Float64>.None
        @Expect(m.scaleX.isNone(), false)
        let m2 = Matrix2D(unit: LengthMetricsUnit.Px)
        @Expect(m2.scaleX.isNone(), false)
        let id1 = m.identity()
        @Expect(id1.scaleX.isNone(), false)
        let inv = m.invert()
        @Expect(inv.scaleX.isNone(), false)
        let rot = m.rotate(45.0)
        @Expect(rot.scaleX.isNone(), false)
        let rot2 = m.rotate(90.0, rx: 0.0, ry: 0.0)
        @Expect(rot2.scaleX.isNone(), false)
        let tr = m.translate(tx: 10.0, ty: 20.0)
        @Expect(tr.scaleX.isNone(), false)
        let sc = m.scale(sx: 2.0, sy: 2.0)
        @Expect(sc.scaleX.isNone(), false)
        let chained = m.identity().rotate(30.0).translate(tx: 5.0).scale(sx: 1.5)
        @Expect(chained.scaleX.isNone(), false)
    }

    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        let ib = ImageBitmap("test.png")
        let cg = ctx.createLinearGradient(0.0,0.0,100.0,100.0)
        var step = 0
        cg.addColorStop(0.0, baseColor.Red)
        step = step + 1
        cg.addColorStop(0.5, baseColor.Blue)
        step = step + 1
        cg.addColorStop(1.0, baseColor.Green)
        step = step + 1
        cg.addColorStop(0.3, Option<ResourceColor>.None)
        step = step + 1
        @Expect(step, 4)
        let cp = ctx.createPattern(Option<ImageBitmap>.Some(ib), Option<Repetition>.Some(Repetition.Repeat)).getOrThrow()
        let m = Matrix2D()
        cp.setTransform(Option<Matrix2D>.Some(m))
        step = step + 1
        cp.setTransform(Option<Matrix2D>.None)
        step = step + 1
        @Expect(step, 6)

    }

    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let settings = RenderingContextSettings(antialias: true)
        let ctx = CanvasRenderingContext2D(settings)
        var step = 0
        ctx.fillStyle = Option<FillStyle>.None
        step = step + 1
        ctx.lineWidth = Option<Float64>.Some(2.0)
        step = step + 1
        @Expect(ctx.lineWidth.isNone(), true)
        ctx.strokeStyle = Option<StrokeStyle>.None
        step = step + 1
        ctx.lineCap = Option<String>.Some("round")
        step = step + 1
        @Expect(ctx.lineCap.isNone(), true)
        ctx.lineJoin = Option<String>.Some("bevel")
        step = step + 1
        @Expect(ctx.lineJoin.isNone(), true)
        ctx.miterLimit = Option<Float64>.Some(10.0)
        step = step + 1
        @Expect(ctx.miterLimit.isNone(), true)
        ctx.font = Option<String>.Some("16px sans-serif")
        step = step + 1
        @Expect(ctx.font.isNone(), true)
        ctx.textAlign = Option<String>.Some("center")
        step = step + 1
        @Expect(ctx.textAlign.isNone(), true)
        ctx.textBaseline = Option<String>.Some("middle")
        step = step + 1
        @Expect(ctx.textBaseline.isNone(), true)
        ctx.globalAlpha = Option<Float64>.Some(0.5)
        step = step + 1
        @Expect(ctx.globalAlpha.isNone(), true)
        ctx.lineDashOffset = Option<Float64>.Some(5.0)
        step = step + 1
        @Expect(ctx.lineDashOffset.isNone(), true)
        ctx.globalCompositeOperation = Option<String>.Some("source-over")
        step = step + 1
        @Expect(ctx.globalCompositeOperation.isNone(), true)
        ctx.shadowBlur = Option<Float64>.Some(3.0)
        step = step + 1
        @Expect(ctx.shadowBlur.isNone(), true)
        ctx.shadowColor = Option<ResourceColor>.Some(baseColor.Red)
        step = step + 1
        @Expect(ctx.shadowColor.isSome(), false)
        ctx.shadowOffsetX = Option<Float64>.Some(2.0)
        step = step + 1
        @Expect(ctx.shadowOffsetX.isNone(), true)
        ctx.shadowOffsetY = Option<Float64>.Some(4.0)
        step = step + 1
        @Expect(ctx.shadowOffsetY.isNone(), true)
        ctx.imageSmoothingEnabled = Option<Bool>.Some(true)
        step = step + 1
        @Expect(ctx.imageSmoothingEnabled.isNone(), true)
        ctx.imageSmoothingQuality = Option<String>.Some("high")
        step = step + 1
        @Expect(ctx.imageSmoothingQuality.isNone(), true)
        ctx.direction = Option<String>.Some("ltr")
        step = step + 1
        @Expect(ctx.direction.isNone(), true)
        ctx.filter = Option<String>.Some("blur(5px)")
        step = step + 1
        @Expect(ctx.filter.isNone(), true)
        ctx.lineWidth = Option<Float64>.None
        @Expect(ctx.lineWidth.isNone(), true)
        ctx.font = Option<String>.None
        @Expect(ctx.font.isNone(), true)
        ctx.shadowColor = Option<ResourceColor>.None
        @Expect(ctx.shadowColor.isNone(), true)
        ctx.imageSmoothingEnabled = Option<Bool>.None
        @Expect(ctx.imageSmoothingEnabled.isNone(), true)
        @Expect(step, 20)
        @Expect(ctx.height, 0.0)
        @Expect(ctx.width, 0.0)
        ctx.setLineDash([5.0, 10.0])
        step = step + 1
        ctx.setLineDash([])
        step = step + 1
        ctx.setLineDash(Option<Array<Float64>>.None)
        step = step + 1
        let dash = ctx.getLineDash()
        @Expect(dash.size, 0)
        @Expect(step, 23)
    }

    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let ctx = CanvasRenderingContext2D(RenderingContextSettings(antialias: true))
        var step = 0
        ctx.fillRect(0.0, 0.0, 100.0, 50.0); step = step + 1
        ctx.strokeRect(10.0, 10.0, 80.0, 40.0); step = step + 1
        ctx.clearRect(0.0, 0.0, 50.0, 25.0); step = step + 1
        ctx.fillText("hello", 0.0, 0.0); step = step + 1
        ctx.fillText("hello", 0.0, 0.0, maxWidth: Option<Float64>.Some(100.0)); step = step + 1
        ctx.fillText("hello", 0.0, 0.0, maxWidth: Option<Float64>.None); step = step + 1
        ctx.strokeText("world", 10.0, 10.0); step = step + 1
        ctx.strokeText("world", 10.0, 10.0, maxWidth: Option<Float64>.Some(50.0)); step = step + 1
        ctx.stroke(); step = step + 1
        let p2d = Path2D(); ctx.stroke(p2d); step = step + 1
        ctx.beginPath(); step = step + 1
        ctx.moveTo(0.0, 0.0); step = step + 1
        ctx.lineTo(100.0, 100.0); step = step + 1
        ctx.closePath(); step = step + 1
        ctx.bezierCurveTo(10.0, 10.0, 50.0, 50.0, 100.0, 100.0); step = step + 1
        ctx.quadraticCurveTo(50.0, 50.0, 100.0, 100.0); step = step + 1
        ctx.arc(50.0, 50.0, 25.0, 0.0, 3.14159); step = step + 1
        ctx.arc(50.0, 50.0, 25.0, 0.0, 3.14159, counterclockwise: true); step = step + 1
        ctx.arc(0.0, 0.0, 0.0, 0.0, 0.0, counterclockwise: false); step = step + 1
        ctx.arcTo(0.0, 0.0, 100.0, 100.0, 25.0); step = step + 1
        ctx.ellipse(50.0, 50.0, 30.0, 20.0, 0.0, 0.0, 6.28318); step = step + 1
        ctx.ellipse(0.0, 0.0, 30.0, 20.0, 0.0, 0.0, 6.28318, counterclockwise: true); step = step + 1
        ctx.rect(0.0, 0.0, 100.0, 50.0); step = step + 1
        ctx.fill(); step = step + 1
        ctx.fill(fillRule: CanvasFillRule.NonZero); step = step + 1
        ctx.fill(fillRule: CanvasFillRule.EvenOdd); step = step + 1
        ctx.fill(fillRule: Option<CanvasFillRule>.None); step = step + 1
        ctx.fill(Option<Path2D>.Some(Path2D()), fillRule: CanvasFillRule.NonZero); step = step + 1
        ctx.fill(Option<Path2D>.None); step = step + 1
        ctx.clip(); step = step + 1
        ctx.clip(fillRule: CanvasFillRule.EvenOdd); step = step + 1
        ctx.clip(Option<Path2D>.Some(Path2D()), fillRule: CanvasFillRule.NonZero); step = step + 1
        ctx.clip(Option<Path2D>.None); step = step + 1
        ctx.rotate(1.5708); step = step + 1
        ctx.scale(2.0, 0.5); step = step + 1
        ctx.transform(1.0, 0.0, 0.0, 1.0, 10.0, 20.0); step = step + 1
        ctx.setTransform(1.0, 0.0, 0.0, 1.0, 0.0, 0.0); step = step + 1
        ctx.setTransform(Option<Matrix2D>.Some(Matrix2D())); step = step + 1
        ctx.setTransform(Option<Matrix2D>.None); step = step + 1
        ctx.translate(10.0, 20.0); step = step + 1
        ctx.restore(); step = step + 1
        ctx.save(); step = step + 1
        @Expect(step, 42)
        @Expect(CanvasFillRule.NonZero != CanvasFillRule.EvenOdd, true)
        @Expect(CanvasFillRule.NonZero == CanvasFillRule.NonZero, true)
    }

    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let ctx = CanvasRenderingContext2D(RenderingContextSettings(antialias: true))
        var step = 0
        let lg = ctx.createLinearGradient(0.0, 0.0, 100.0, 100.0)
        lg.addColorStop(0.0, baseColor.Red); step = step + 1
        let rg = ctx.createRadialGradient(0.0, 0.0, 10.0, 100.0, 100.0, 50.0)
        rg.addColorStop(0.5, baseColor.Blue); step = step + 1
        let cg = ctx.createConicGradient(0.0, 50.0, 50.0)
        cg.addColorStop(0.5, baseColor.Green); step = step + 1
        let cg2 = ctx.createConicGradient(Option<Float64>.None, Option<Float64>.None, Option<Float64>.None)
        let ib = ImageBitmap("img.png")
        ctx.drawImage(ib, 0.0, 0.0); step = step + 1
        ctx.drawImage(ib, 10.0, 10.0, 50.0, 50.0); step = step + 1
        ctx.drawImage(ib, 0.0, 0.0, 50.0, 50.0, 10.0, 10.0, 100.0, 100.0); step = step + 1
        let pattern = ctx.createPattern(Option<ImageBitmap>.Some(ib), Option<Repetition>.Some(Repetition.Repeat))
        @Expect(pattern.isNone(), false)
        let pattern2 = ctx.createPattern(Option<ImageBitmap>.None, Option<Repetition>.None)
        @Expect(pattern2.isNone(), false)
        let pm = ctx.getPixelMap(0.0, 0.0, 100.0, 100.0)
        @Expect(pm.isEditable , true)
        ctx.reset(); step = step + 1
        ctx.saveLayer(); step = step + 1
        ctx.restoreLayer(); step = step + 1
        ctx.resetTransform(); step = step + 1
        let matrix = ctx.getTransform()
        @Expect(matrix.scaleX.isNone(), false)
        ctx.transferFromImageBitmap(Option<ImageBitmap>.Some(ib)); step = step + 1
        ctx.transferFromImageBitmap(Option<ImageBitmap>.None); step = step + 1
        let col: Array<UInt8> =Array<UInt8>(96,repeat:0)
        let opts: InitializationOptions = InitializationOptions(Size(4,6))
        let pixelMap = createPixelMap(col,opts)
        ctx.setPixelMap(pixelMap); step = step + 1
        ctx.setPixelMap(Option<PixelMap>.None); step = step + 1
        let url = ctx.toDataURL()
        @Expect(url.size, 0)
        let url2 = ctx.toDataURL(imageType: "image/png")
        @Expect(url2.size, 0)
        let url3 = ctx.toDataURL(imageType: "image/jpeg", quality: 0.8)
        @Expect(url3.size, 0)
        let id1 = ctx.createImageData(100.0, 50.0)
        @Expect(id1.width > 0i32, true)
        let id2 = ctx.createImageData(Option<ImageData>.Some(id1))
        @Expect(id2.height > 0i32, true)
        let id4 = ctx.getImageData(0.0, 0.0, 100.0, 50.0)
        @Expect(id4.data.size > 0, true)
        ctx.putImageData(id1, 0i64.vp, 0i64.vp); step = step + 1
        ctx.putImageData(id1, 10i64.vp, 10i64.vp, 0i64.vp, 0i64.vp, 50i64.vp, 50i64.vp); step = step + 1
        @Expect(step, 16)
        @Expect(Repetition.Repeat != Repetition.NoRepeat, true)
        @Expect(Repetition.RepeatX == Repetition.RepeatX, true)
        @Expect(Repetition.RepeatY != Repetition.Repeat, true)
    }

    /*
     * @tc.number    : TestCanvasInterfaces_2_test_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : test CanvasInterfaces_2_test case TestCase_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase 
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let readyCb: () -> Unit = { => readyCalled = readyCalled + 1 }
        let ctx = CanvasRenderingContext2D(RenderingContextSettings(antialias: true))
        let canvas = Canvas(ctx)
        let chained = canvas.onReady(readyCb)
        canvas.onReady(readyCb)
        canvas.onReady(Option<() -> Unit>.None)
        readyCb()
        @Expect(readyCalled, 1)
    }
}
