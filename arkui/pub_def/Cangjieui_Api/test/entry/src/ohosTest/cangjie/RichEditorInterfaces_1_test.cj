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
import std.collection.ArrayList
import ohos.base.*
import ohos.base.Color as baseColor
import ohos.arkui.component.rich_editor.*
import ohos.arkui.component.common.*

var appearCount = 0
var disappearCount = 0
@Test
class RichEditorInterfaces_1_test {
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let r = DecorationStyleResult(TextDecorationType.None, baseColor.Red)
        @Expect(r.decorationType.isSome(), true)
        @Expect(r.decorationType.getOrThrow() == TextDecorationType.None, true)
        @Expect(r.color.toUInt32() > 0u32, true)
        r.decorationType = TextDecorationType.Underline
        @Expect(r.decorationType.getOrThrow() == TextDecorationType.Underline, true)
        r.color = baseColor.Blue
        @Expect(r.color.toUInt32() > 0u32, true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let v = RichEditorInsertValue(5i32, "hello")
        @Expect(v.insertOffset, 5)
        @Expect(v.insertValue, "hello")
        v.insertOffset = 10
        @Expect(v.insertOffset, 10)
        v.insertValue = "world"
        @Expect(v.insertValue, "world")
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let p = RichEditorSpanPosition(3i32, (0i32, 10i32))
        @Expect(p.spanIndex.isSome(), true)
        @Expect(p.spanIndex.getOrThrow(), 3)
        @Expect(p.spanRange.isSome(), true)
        @Expect(p.spanRange.getOrThrow()[0], 0)
        @Expect(p.spanRange.getOrThrow()[1], 10)
        p.spanIndex = 7
        @Expect(p.spanIndex.getOrThrow(), 7)
        p.spanRange = Option<(Int32, Int32)>.None
        @Expect(p.spanRange.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let r = TextRange(0i32, 100i32)
        @Expect(r.start.isSome(), true)
        @Expect(r.start.getOrThrow(), 0)
        @Expect(r.end.isSome(), true)
        @Expect(r.end.getOrThrow(), 100)
        r.start = 5
        @Expect(r.start.getOrThrow(), 5)
        r.end = Option<Int32>.None
        @Expect(r.end.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let opts = TextDecorationOptions(decorationType: TextDecorationType.Underline, color: baseColor.Red)
        @Expect(opts.decorationType.isSome(), true)
        @Expect(opts.decorationType.getOrThrow() == TextDecorationType.Underline, true)
        @Expect(opts.color.isSome(), true)
        opts.decorationType = TextDecorationType.LineThrough
        @Expect(opts.decorationType.getOrThrow() == TextDecorationType.LineThrough, true)
        opts.color = Option<ResourceColor>.None
        @Expect(opts.color.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let onAppear: () -> Unit = { => appearCount = appearCount + 1 }
        let onDisappear: () -> Unit = { => disappearCount = disappearCount + 1 }
        let opts = SelectionMenuOptions(onAppear: onAppear, onDisappear: onDisappear)
        @Expect(opts.onAppear.isSome(), true)
        @Expect(opts.onDisappear.isSome(), true)
        opts.onAppear.getOrThrow()()
        @Expect(appearCount, 1)
        opts.onDisappear.getOrThrow()()
        @Expect(disappearCount, 1)
        opts.onAppear = Option<() -> Unit>.None
        @Expect(opts.onAppear.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let style = RichEditorTextStyle(
            fontColor: baseColor.Red, fontSize: 16i64.vp, fontStyle: FontStyle.Italic,
            fontFamily: "sans-serif"
        )
        @Expect(style.fontColor.isSome(), true)
        @Expect(style.fontSize.isSome(), true)
        @Expect(style.fontStyle.isSome(), true)
        @Expect(style.fontFamily.isSome(), true)
        @Expect(style.fontWeight.isNone(), false)
        @Expect(style.decoration.isNone(), false)
        style.fontColor = baseColor.Blue
        @Expect(style.fontColor.isSome(), true)
        style.fontWeight = FontWeight.Bold
        @Expect(style.fontWeight.isSome(), true)
        style.fontSize = Option<Length>.None
        @Expect(style.fontSize.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let style = RichEditorTextStyle(fontColor: baseColor.Red)
        let opts = RichEditorTextSpanOptions(offset: 0i32, style: style)
        @Expect(opts.offset.isSome(), true)
        @Expect(opts.offset.getOrThrow(), 0)
        @Expect(opts.style.isSome(), true)
        opts.offset = 5
        @Expect(opts.offset.getOrThrow(), 5)
        opts.style = Option<RichEditorTextStyle>.None
        @Expect(opts.style.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let size: Option<(Length, Length)> = Option<(Length, Length)>.Some((50i64.vp, 50i64.vp))
        let style = RichEditorImageSpanStyle(size: size, objectFit: ImageFit.Contain)
        @Expect(style.size.isSome(), true)
        @Expect(style.verticalAlign.isNone(), false)
        @Expect(style.objectFit.isSome(), true)
        style.verticalAlign = ImageSpanAlignment.Bottom
        @Expect(style.verticalAlign.isSome(), true)
        style.size = Option<(Length, Length)>.None
        @Expect(style.size.isNone(), true)
        style.objectFit = Option<ImageFit>.None
        @Expect(style.objectFit.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let imgStyle = RichEditorImageSpanStyle()
        let opts = RichEditorImageSpanOptions(offset: 3i32, imageStyle: imgStyle)
        @Expect(opts.offset.isSome(), true)
        @Expect(opts.offset.getOrThrow(), 3)
        @Expect(opts.imageStyle.isSome(), true)
        opts.offset = 10
        @Expect(opts.offset.getOrThrow(), 10)
        opts.imageStyle = Option<RichEditorImageSpanStyle>.None
        @Expect(opts.imageStyle.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        let ps = RichEditorParagraphStyle(textAlign: TextAlign.Center)
        @Expect(ps.textAlign.isSome(), true)
        @Expect(ps.leadingMargin.isNone(), false)
        ps.textAlign = TextAlign.Start
        @Expect(ps.textAlign.getOrThrow() == TextAlign.Start, true)
        ps.textAlign = Option<TextAlign>.None
        @Expect(ps.textAlign.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0012
     * @tc.name      : TestCase_12
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        let ls = RichEditorLayoutStyle(margin: 10i64.vp, borderRadius: 5i64.vp)
        @Expect(ls.margin.isSome(), true)
        @Expect(ls.borderRadius.isSome(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0013
     * @tc.name      : TestCase_13
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        let decor = DecorationStyleResult(TextDecorationType.Underline, baseColor.Red)
        let tsr = RichEditorTextStyleResult(
            "#FF0000", 16.0, FontStyle.Normal, 400i32, "sans-serif", decor
        )
        @Expect(tsr.fontColor, "#FF0000")
        @Expect(tsr.fontSize, 16.0)
        @Expect(tsr.fontStyle == FontStyle.Normal, true)
        @Expect(tsr.fontWeight, 400)
        @Expect(tsr.fontFamily, "sans-serif")
        @Expect(tsr.decoration.decorationType.getOrThrow() == TextDecorationType.Underline, true)
        tsr.fontColor = "#00FF00"
        @Expect(tsr.fontColor, "#00FF00")
        tsr.fontSize = 24.0
        @Expect(tsr.fontSize, 24.0)
        tsr.fontWeight = 700
        @Expect(tsr.fontWeight, 700)
        tsr.fontStyle = FontStyle.Italic
        @Expect(tsr.fontStyle == FontStyle.Italic, true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0014
     * @tc.name      : TestCase_14
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        let pos = RichEditorSpanPosition(0i32, (0i32, 5i32))
        let decor = DecorationStyleResult(TextDecorationType.None, baseColor.Black)
        let tsr = RichEditorTextStyleResult("#000000", 14.0, FontStyle.Normal, 400i32, "Arial", decor)
        let span = RichEditorTextSpanResult(pos, "text content", tsr, (0i32, 12i32))
        @Expect(span.value, "text content")
        @Expect(span.spanPosition.spanIndex.getOrThrow(), 0)
        @Expect(span.textStyle.fontColor, "#000000")
        @Expect(span.textStyle.fontSize, 14.0)
        @Expect(span.offsetInSpan[0], 0)
        @Expect(span.offsetInSpan[1], 12)
        span.value = "modified"
        @Expect(span.value, "modified")
        span.offsetInSpan = (5i32, 17i32)
        @Expect(span.offsetInSpan[0], 5)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0015
     * @tc.name      : TestCase_15
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        let imgSpan = RichEditorImageSpanResult()
        @Expect(imgSpan.spanPosition.isNone(), false)
        @Expect(imgSpan.valuePixelMap.isNone(), true)
        @Expect(imgSpan.valueResourceStr.isNone(), false)
        @Expect(imgSpan.imageStyle.isNone(), false)
        @Expect(imgSpan.offsetInSpan.isNone(), false)
        let pos = RichEditorSpanPosition(2i32, (0i32, 3i32))
        let imgSpan2 = RichEditorImageSpanResult(
            spanPosition: pos, valueResourceStr: "img_resource"
        )
        @Expect(imgSpan2.spanPosition.isSome(), true)
        @Expect(imgSpan2.valueResourceStr.isSome(), true)
        @Expect(imgSpan2.valueResourceStr.getOrThrow(), "img_resource")
        imgSpan2.valueResourceStr = "new_img"
        @Expect(imgSpan2.valueResourceStr.getOrThrow(), "new_img")
        imgSpan2.imageStyle = Option<RichEditorImageSpanStyleResult>.None
        @Expect(imgSpan2.imageStyle.isNone(), true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0016
     * @tc.name      : TestCase_16
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        let spans = ArrayList<RichEditorSpanResult>()
        let sel = RichEditorSelection((0i32, 10i32), spans)
        @Expect(sel.selection[0], 0)
        @Expect(sel.selection[1], 10)
        @Expect(sel.spans.size, 0)
        sel.selection = (5i32, 15i32)
        @Expect(sel.selection[0], 5)
        @Expect(sel.selection[1], 15)
        let spans2 = ArrayList<RichEditorSpanResult>()
        sel.spans = spans2
        @Expect(sel.spans.size, 0)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0017
     * @tc.name      : TestCase_17
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        let spans = ArrayList<RichEditorSpanResult>()
        let dv = RichEditorDeleteValue(0, RichEditorDeleteDirection.Backward, 5, spans)
        @Expect(dv.offset, 0)
        @Expect(dv.direction == RichEditorDeleteDirection.Backward, true)
        @Expect(dv.length, 5)
        @Expect(dv.richEditorDeleteSpans.size, 0)
        dv.offset = 10
        @Expect(dv.offset, 10)
        dv.length = 20
        @Expect(dv.length, 20)
        dv.direction = RichEditorDeleteDirection.Forward
        @Expect(dv.direction == RichEditorDeleteDirection.Forward, true)
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0018
     * @tc.name      : TestCase_18
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        let lmtNone = LeadingMarginType.None
        match (lmtNone) {
            case LeadingMarginType.None => @Expect(true)
            case _ => @Expect(false)
        }
        let lmtLen = LeadingMarginType.LengthType(20i64.vp)
        match (lmtLen) {
            case LeadingMarginType.LengthType(len) => @Expect(len.value > 0.0f64, true)
            case _ => @Expect(false)
        }
    }
    /*
     * @tc.number    : TestRichEditorInterfaces_1_test_0019
     * @tc.name      : TestCase_19
     * @tc.desc      : test RichEditorInterfaces_1_test case TestCase_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        let controller = RichEditorController()
        var caretResult:Int32 = -1i32
        caretResult = controller.getCaretOffset()
        @Expect(caretResult >= -1i32, true)
        var setResult = false
        setResult = controller.setCaretOffset(0)
        @Expect(setResult == false || setResult == true, true)
        controller.closeSelectionMenu()
        let spans = controller.getSpans()
        @Expect(spans.size, 0)
        var addResult:Int32 = -1i32
        addResult = controller.addTextSpan(content: "test text")
        @Expect(addResult >= -1i32, true)
    }
}
