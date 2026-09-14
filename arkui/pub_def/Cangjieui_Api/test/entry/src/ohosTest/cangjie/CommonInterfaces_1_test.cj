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
import kit.ImageKit.PixelMap

@Test
class CommonInterfaces_1_test {
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        @Expect(FlexDirection.Row == FlexDirection.Row, true)
        @Expect(FlexDirection.Row != FlexDirection.Column, true)
        @Expect(FlexWrap.NoWrap != FlexWrap.Wrap, true)
        @Expect(FlexAlign.Start != FlexAlign.Center, true)
        @Expect(FlexAlign.SpaceBetween != FlexAlign.SpaceEvenly, true)
        @Expect(ItemAlign.Auto != ItemAlign.Start, true)
        @Expect(Alignment.TopStart == Alignment.TopStart, true)
        @Expect(Alignment.Center != Alignment.Bottom, true)
        @Expect(HorizontalAlign.Start != HorizontalAlign.End, true)
        @Expect(VerticalAlign.Top != VerticalAlign.Bottom, true)
        @Expect(FontStyle.Normal != FontStyle.Italic, true)
        @Expect(FontWeight.Normal != FontWeight.Bold, true)
        @Expect(FontWeight.W100 != FontWeight.W900, true)
        @Expect(TextAlign.Start != TextAlign.End, true)
        @Expect(TextOverflow.Clip != TextOverflow.Ellipsis, true)
        @Expect(WordBreak.Normal != WordBreak.BreakAll, true)
        @Expect(TextCase.LowerCase != TextCase.UpperCase, true)
        @Expect(TextDecorationType.None != TextDecorationType.Underline, true)
        @Expect(TextDecorationType.Overline != TextDecorationType.LineThrough, true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        @Expect(ImageRepeat.NoRepeat != ImageRepeat.XY, true)
        @Expect(ImageSize.Contain != ImageSize.Cover, true)
        @Expect(ImageFit.Fill != ImageFit.Contain, true)
        @Expect(ImageFit.None != ImageFit.ScaleDown, true)
        @Expect(ImageRenderMode.Original != ImageRenderMode.Template, true)
        @Expect(ImageInterpolation.None != ImageInterpolation.High, true)
        @Expect(ScrollDirection.Vertical != ScrollDirection.Horizontal, true)
        @Expect(ScrollBarDirection.Vertical == ScrollBarDirection.Vertical, true)
        @Expect(BarState.Off != BarState.On, true)
        @Expect(Visibility.Visible != Visibility.Hidden, true)
        @Expect(BorderStyle.Solid != BorderStyle.Dashed, true)
        @Expect(ProgressType.Linear != ProgressType.Ring, true)
        @Expect(LineCapStyle.Butt != LineCapStyle.Round, true)
        @Expect(Direction.Ltr != Direction.Rtl, true)
        @Expect(ToggleType.Checkbox != ToggleType.Switch, true)
        @Expect(ShadowType.Color != ShadowType.Blur, true)
        @Expect(ShadowStyle.OuterDefaultXS != ShadowStyle.OuterDefaultSM, true)
        @Expect(IndexerAlign.Left != IndexerAlign.Right, true)
        @Expect(InputType.Normal != InputType.Password, true)
        @Expect(EnterKeyType.Go != EnterKeyType.Done, true)
        @Expect(SliderChangeMode.Begin != SliderChangeMode.End, true)
        @Expect(SliderStyle.OutSet != SliderStyle.InSet, true)
        @Expect(BarPosition.Start != BarPosition.End, true)
        @Expect(BarMode.Fixed != BarMode.Scrollable, true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        @Expect(NavigationType.Push != NavigationType.Replace, true)
        @Expect(SwiperDisplayMode.Stretch == SwiperDisplayMode.Stretch, true)
        @Expect(Curve.Linear != Curve.Ease, true)
        @Expect(Curve.EaseIn != Curve.EaseOut, true)
        @Expect(Curve.FastOutSlowIn == Curve.FastOutSlowIn, true)
        @Expect(EdgeEffect.Spring != EdgeEffect.Fade, true)
        @Expect(EdgeEffect.None == EdgeEffect.None, true)
        @Expect(Edge.Top != Edge.Bottom, true)
        @Expect(Edge.Start != Edge.End, true)
        @Expect(Placement.Left != Placement.Right, true)
        @Expect(Placement.TopLeft != Placement.BottomRight, true)
        @Expect(LineJoinStyle.Miter != LineJoinStyle.Round, true)
        @Expect(ImageSmoothingQuality.Low != ImageSmoothingQuality.High, true)
        @Expect(GestureMask.Normal != GestureMask.IgnoreInternal, true)
        @Expect(SwipeDirection.Horizontal != SwipeDirection.Vertical, true)
        @Expect(PanDirection.Left != PanDirection.Right, true)
        @Expect(PanDirection.All == PanDirection.All, true)
        @Expect(GestureMode.Sequence != GestureMode.Parallel, true)
        @Expect(Axis.Vertical != Axis.Horizontal, true)
        @Expect(ResponseType.RightClick != ResponseType.LongPress, true)
        @Expect(CopyOptions.None != CopyOptions.LocalDevice, true)
        @Expect(TouchType.Down != TouchType.Up, true)
        @Expect(TouchType.Move != TouchType.Cancel, true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        @Expect(SideBarContainerType.Embed != SideBarContainerType.Overlay, true)
        @Expect(SideBarPosition.Start != SideBarPosition.End, true)
        @Expect(SourceType.Unknown != SourceType.Mouse, true)
        @Expect(MouseButton.Left != MouseButton.Right, true)
        @Expect(MouseAction.Press != MouseAction.Release, true)
        @Expect(KeySource.Unknown != KeySource.Keyboard, true)
        @Expect(KeyType.Down != KeyType.Up, true)
        @Expect(ModifierKey.Ctrl != ModifierKey.Shift, true)
        @Expect(FunctionKey.F1 != FunctionKey.F12, true)
        @Expect(DataPanelType.Circle != DataPanelType.Line, true)
        @Expect(ItemState.Normal == ItemState.Normal, true)
        @Expect(RefreshStatus.Refresh == RefreshStatus.Refresh, true)
        @Expect(PlaybackSpeed.SpeedForward075X == PlaybackSpeed.SpeedForward075X, true)
        @Expect(SelectStatus.All != SelectStatus.None, true)
        @Expect(AnimationStatus.Running != AnimationStatus.Stopped, true)
        @Expect(FillMode.Forwards != FillMode.Backwards, true)
        @Expect(SwipeEdgeEffect.Spring != SwipeEdgeEffect.None, true)
        @Expect(SharedTransitionEffectType.Exchange != SharedTransitionEffectType.Static, true)
        @Expect(ScrollState.Idle != ScrollState.Scroll, true)
        @Expect(ListItemAlign.Start != ListItemAlign.Center, true)
        @Expect(StickyStyle.None != StickyStyle.Header, true)
        @Expect(RichEditorSpanType.Text != RichEditorSpanType.Image, true)
        @Expect(ImageSpanAlignment.Bottom != ImageSpanAlignment.Top, true)
        @Expect(RichEditorDeleteDirection.Backward != RichEditorDeleteDirection.Forward, true)
        @Expect(MixedMode.All!= MixedMode.None, true)
        @Expect(PlayMode.Normal != PlayMode.Alternate, true)
        @Expect(GradientDirection.Left != GradientDirection.Right, true)
        @Expect(RenderFit.Center != RenderFit.Top, true)
        @Expect(DialogAlignment.Top != DialogAlignment.Bottom, true)
        @Expect(BarrierDirection.Left != BarrierDirection.Right, true)
        @Expect(SafeAreaType.Cutout != SafeAreaType.System, true)
        @Expect(SafeAreaEdge.Top != SafeAreaEdge.Bottom, true)
        @Expect(ColoringStrategy.Invert != ColoringStrategy.Invert, false)
        @Expect(NestedScrollMode.SelfOnly != NestedScrollMode.Parallel, true)
        @Expect(ThemeColorMode.System != ThemeColorMode.Dark, true)
        @Expect(AdaptiveColor.Default != AdaptiveColor.Average, true)
        @Expect(ControlSize.Normal != ControlSize.Small, true)
        @Expect(OptionWidthMode.FitContent != OptionWidthMode.FitTrigger, true)
        @Expect(ArrowPosition.End != ArrowPosition.Start, true)
        @Expect(MenuAlignType.Start != MenuAlignType.Center, true)
        @Expect(WebDarkMode.On != WebDarkMode.Off, true)
        @Expect(Repetition.NoRepeat != Repetition.RepeatX, true)
        @Expect(ScrollSource.Drag != ScrollSource.Fling, true)
        @Expect(MenuPolicy.Default != MenuPolicy.Hide, true)
        @Expect(TextDecorationStyle.Solid != TextDecorationStyle.Dashed, true)
        @Expect(LineBreakStrategy.Greedy != LineBreakStrategy.Balanced, true)
        @Expect(TextContentStyle.Default != TextContentStyle.Inline, true)
        @Expect(CheckBoxShape.Circle != CheckBoxShape.RoundedSquare, true)
        @Expect(TextHeightAdaptivePolicy.MaxLinesFirst != TextHeightAdaptivePolicy.MinFontSizeFirst, true)
        @Expect(ArrowPointPosition.Start != ArrowPointPosition.End, true)
        @Expect(TitleHeight.MainOnly != TitleHeight.MainWithSub, true)
        @Expect(DialogButtonStyle.Default != DialogButtonStyle.Highlight, true)
        @Expect(LengthMetricsUnit.Default != LengthMetricsUnit.Px, true)
        @Expect(CanvasDirection.Ltr != CanvasDirection.Rtl, true)
        @Expect(CanvasFillRule.NonZero != CanvasFillRule.EvenOdd, true)
        @Expect(FinishCallbackType.Removed != FinishCallbackType.Logically, true)
        @Expect(BlurStyle.Thin != BlurStyle.Thick, true)
        @Expect(DismissReason.PressBack != DismissReason.TouchOutside, true)
        @Expect(TextInputStyle.Inline != TextInputStyle.Default, true)
        @Expect(TransitionEdge.Start != TransitionEdge.End, true)
        @Expect(ModalTransition.Default != ModalTransition.None, true)
        @Expect(SheetSize.Large != SheetSize.Medium, true)
        @Expect(SheetType.Bottom != SheetType.Center, true)
        @Expect(SheetMode.Overlay != SheetMode.Embedded, true)
        @Expect(ScrollSizeMode.FollowDetent != ScrollSizeMode.Continuous, true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let pos = Position(x: 10i64.vp, y: 20i64.vp)
        @Expect(pos.x.isSome(), true)
        @Expect(pos.y.isSome(), true)
        pos.x = Option<Length>.None
        @Expect(pos.x.isNone(), true)
        let off = Offset(5i64.vp, 15i64.vp)
        @Expect(off.dx.isSome(), true)
        @Expect(off.dy.isSome(), true)
        off.dy = Option<Length>.None
        @Expect(off.dy.isNone(), true)
        let bias = Bias(horizontal: 0.3f32, vertical: 0.7f32)
        @Expect(bias.horizontal.getOrThrow(), 0.3f32)
        @Expect(bias.vertical.getOrThrow(), 0.7f32)
        let defaultBias = Bias()
        @Expect(defaultBias.horizontal.isNone(), false)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let br = BorderRadiuses(topLeft: 10i64.vp, topRight: 20i64.vp, bottomLeft: 30i64.vp, bottomRight: 40i64.vp)
        @Expect(br.topLeft.isSome(), true)
        @Expect(br.topRight.isSome(), true)
        @Expect(br.bottomLeft.isSome(), true)
        @Expect(br.bottomRight.isSome(), true)
        br.topLeft = Option<Length>.None
        @Expect(br.topLeft.isNone(), true)
        let es = EdgeStyles(top: BorderStyle.Solid, bottom: BorderStyle.Dashed)
        @Expect(es.top.isSome(), true)
        @Expect(es.bottom.isSome(), true)
        @Expect(es.left.isNone(), false)
        let ew = EdgeWidths(top: 1i64.vp, right: 2i64.vp, bottom: 3i64.vp, left: 4i64.vp)
        @Expect(ew.top.isSome(), true)
        @Expect(ew.right.isSome(), true)
        @Expect(ew.bottom.isSome(), true)
        @Expect(ew.left.isSome(), true)
        ew.top = Option<Length>.None
        @Expect(ew.top.isNone(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let frr = ExpectedFrameRateRange(min: 30i32, max: 60i32, expected: 60i32)
        @Expect(frr.min.getOrThrow(), 30)
        @Expect(frr.max.getOrThrow(), 60)
        @Expect(frr.expected.getOrThrow(), 60)
        frr.min = 24
        @Expect(frr.min.getOrThrow(), 24)
        let hap = HorizontalAlignParam("a1", HorizontalAlign.Start)
        @Expect(hap.anchor.getOrThrow(), "a1")
        @Expect(hap.align.isSome(), true)
        let vap = VerticalAlignParam("a2", VerticalAlign.Top)
        @Expect(vap.anchor.getOrThrow(), "a2")
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let ap = AnimateParam(duration: 2000i32, tempo: 2.0f32, curve: Curve.EaseInOut, delay: 100i32, iterations: 3i32, playMode: PlayMode.Normal)
        @Expect(ap.duration.getOrThrow(), 2000)
        @Expect(ap.tempo.getOrThrow(), 2.0f32)
        @Expect(ap.curve.isSome(), true)
        @Expect(ap.delay.getOrThrow(), 100)
        @Expect(ap.iterations.getOrThrow(), 3)
        @Expect(ap.playMode.isSome(), true)
        @Expect(ap.onFinish.isNone(), true)
        @Expect(ap.expectedFrameRateRange.isNone(), true)
        ap.duration = 500
        @Expect(ap.duration.getOrThrow(), 500)
        ap.curve = Option<Curve>.None
        @Expect(ap.curve.isNone(), true)
        let defaultAp = AnimateParam()
        @Expect(defaultAp.duration.isNone(), false)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let so = ShadowOptions(radius: 20.0, shadowType: ShadowType.Color, color: baseColor.Red, offsetX: 5.0, offsetY: 10.0, fill: true)
        @Expect(so.radius.getOrThrow(), 20.0)
        @Expect(so.shadowType.isSome(), true)
        @Expect(so.color.isSome(), true)
        @Expect(so.offsetX.getOrThrow(), 5.0)
        @Expect(so.offsetY.getOrThrow(), 10.0)
        @Expect(so.fill.getOrThrow(), true)
        so.radius = 0.0
        @Expect(so.radius.getOrThrow(), 0.0)
        so.fill = false
        @Expect(so.fill.getOrThrow(), false)
        so.color = Option<ResourceColor>.None
        @Expect(so.color.isNone(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let font = Font(size: 16i64.vp, weight: FontWeight.Bold, family: "Arial", style: FontStyle.Italic)
        @Expect(font.size.isSome(), true)
        @Expect(font.weight.isSome(), true)
        @Expect(font.family.isSome(), true)
        @Expect(font.style.isSome(), true)
        font.size = Option<Length>.None
        @Expect(font.size.isNone(), true)
        let fonts = Fonts(size: 14i64.vp, weight: FontWeight.Medium, family: "Sans", style: FontStyle.Normal)
        @Expect(fonts.size.isSome(), true)
        @Expect(fonts.weight.isSome(), true)
        @Expect(fonts.family.isSome(), true)
        @Expect(fonts.style.isSome(), true)
        let mp = MotionPathOptions(path: "M0 0 L100 100", from: 0.0, to: 1.0, rotatable: true)
        @Expect(mp.path.getOrThrow(), "M0 0 L100 100")
        @Expect(mp.from.getOrThrow(), 0.0)
        @Expect(mp.to.getOrThrow(), 1.0)
        @Expect(mp.rotatable.getOrThrow(), true)
        mp.path = Option<String>.None
        @Expect(mp.path.isNone(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        let b = Bindable<Int64>(42, { v: Int64 => })
        @Expect(b.value, 42)
        var captured = 0
        let rect = Rectangle(x: 0i64.vp, y: 0i64.vp, width: 100i64.vp, height: 50i64.vp)
        @Expect(rect.x.isSome(), true)
        @Expect(rect.y.isSome(), true)
        @Expect(rect.width.isSome(), true)
        @Expect(rect.height.isSome(), true)
        rect.x = 10i64.vp
        @Expect(rect.x.isSome(), true)
        let ov = OverlayOffset(x: 5.0, y: 10.0)
        @Expect(ov.x.getOrThrow(), 5.0)
        @Expect(ov.y.getOrThrow(), 10.0)
        ov.x = Option<Float64>.None
        @Expect(ov.x.isNone(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0012
     * @tc.name      : TestCase_12
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        let to = TouchObject(TouchType.Down, 0i32, 100.0, 200.0, 50.0, 60.0)
        @Expect(to.touchType == TouchType.Down, true)
        @Expect(to.id, 0)
        @Expect(to.screenX, 100.0)
        @Expect(to.screenY, 200.0)
        @Expect(to.x, 50.0)
        @Expect(to.y, 60.0)
        to.x = 75.0
        @Expect(to.x, 75.0)
        let ke = KeyEvent("A", KeyType.Down, 65i32, KeySource.Keyboard, 0i32, 1i64, 1000i64)
        @Expect(ke.keyText, "A")
        @Expect(ke.keyType == KeyType.Down, true)
        @Expect(ke.keyCode, 65)
        @Expect(ke.keySource == KeySource.Keyboard, true)
        @Expect(ke.metaKey, 0)
        @Expect(ke.deviceId, 1)
        @Expect(ke.timestamp, 1000)
        ke.stopPropagation()
        ke.keyText = "B"
        @Expect(ke.keyText, "B")
        ke.keyCode = 66
        @Expect(ke.keyCode, 66)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0013
     * @tc.name      : TestCase_13
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        let tr = TranslateOptions(x: 10i64.vp, y: 20i64.vp, z: 5i64.vp)
        @Expect(tr.x.isSome(), true)
        @Expect(tr.y.isSome(), true)
        @Expect(tr.z.isSome(), true)
        tr.x = Option<Length>.None
        @Expect(tr.x.isNone(), true)
        let sc = ScaleOptions(x: 2.0f32, y: 0.5f32, centerX: 50i64.vp, centerY: 50i64.vp)
        @Expect(sc.x.isSome(), true)
        @Expect(sc.y.getOrThrow(), 0.5f32)
        @Expect(sc.centerX.isSome(), true)
        @Expect(sc.centerY.isSome(), true)
        @Expect(sc.z.isNone(), false)
        sc.x = 1.0f32
        @Expect(sc.x.getOrThrow(), 1.0f32)
        let ro = RotateOptions(45.0f32, x: 0.0f32, y: 1.0f32, z: 0.0f32, centerX: 0i64.vp, centerY: 0i64.vp, centerZ: 0i64.vp, perspective: 1.0f32)
        @Expect(ro.angle, 45.0f32)
        @Expect(ro.x.getOrThrow(), 0.0f32)
        @Expect(ro.y.getOrThrow(), 1.0f32)
        @Expect(ro.z.getOrThrow(), 0.0f32)
        @Expect(ro.centerX.isSome(), true)
        @Expect(ro.perspective.getOrThrow(), 1.0f32)
        ro.angle = 90.0f32
        @Expect(ro.angle, 90.0f32)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0014
     * @tc.name      : TestCase_14
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        let bo = BlurOptions(Option<VArray<Float32, $2>>.None)
        @Expect(bo.grayscale.isNone(), false)
        bo.grayscale = Option<VArray<Float32, $2>>.Some([0.0f32, 0.0f32])
        @Expect(bo.grayscale.isSome(), true)
        let fbo = ForegroundBlurStyleOptions(colorMode: ThemeColorMode.System, adaptiveColor: AdaptiveColor.Default, scale: 1.0f32)
        @Expect(fbo.colorMode.isSome(), true)
        @Expect(fbo.adaptiveColor.isSome(), true)
        @Expect(fbo.blurOptions.isNone(), false)
        @Expect(fbo.scale.getOrThrow(), 1.0f32)
        fbo.scale = 0.5f32
        @Expect(fbo.scale.getOrThrow(), 0.5f32)
        fbo.colorMode = Option<ThemeColorMode>.None
        @Expect(fbo.colorMode.isNone(), true)
        let pmo = PopupMessageOptions(textColor: baseColor.Red, font: Font(size: 14i64.vp))
        @Expect(pmo.textColor.isSome(), true)
        @Expect(pmo.font.isSome(), true)
        pmo.textColor = Option<ResourceColor>.None
        @Expect(pmo.textColor.isNone(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0015
     * @tc.name      : TestCase_15
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        let pscp = PopupStateChangeParam(true)
        @Expect(pscp.isVisible, true)
        pscp.isVisible = false
        @Expect(pscp.isVisible, false)
        let co = ContextMenuAnimationOptions(scale: Option<VArray<Float64, $2>>.None, transition: Option<TransitionEffect>.None, hoverScale: Option<VArray<Float64, $2>>.None)
        @Expect(co.scale.isNone(), true)
        @Expect(co.transition.isNone(), true)
        @Expect(co.hoverScale.isNone(), true)
        co.scale = Option<VArray<Float64, $2>>.Some([1.0, 1.0])
        @Expect(co.scale.isSome(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0016
     * @tc.name      : TestCase_18
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        let po = PopupOptions(message: "Hello", enableArrow: true, autoCancel: false, width: 200i64.vp)
        @Expect(po.onStateChange.isNone(),true)
        @Expect(po.messageOptions.isNone(),false)
        @Expect(po.targetSpace.isNone(),false)
        @Expect(po.message.isSome(), true)
        @Expect(po.message.getOrThrow(), "Hello")
        @Expect(po.enableArrow.getOrThrow(), true)
        @Expect(po.autoCancel.getOrThrow(), false)
        @Expect(po.width.isSome(), true)
        @Expect(po.placement.isNone(), false)
        @Expect(po.primaryButton.isNone(), false)
        @Expect(po.secondaryButton.isNone(), false)
        po.autoCancel = true
        @Expect(po.autoCancel.getOrThrow(), true)
        po.width = Option<Length>.None
        @Expect(po.width.isNone(), true)
        @Expect(po.arrowPointPosition.isNone(),true)
        @Expect(po.arrowWidth.isNone(), false)
        @Expect(po.arrowHeight.isNone(), false)
        @Expect(po.followTransformOfTarget.isNone(), false)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0017
     * @tc.name      : TestCase_19
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        let cpo = CustomPopupOptions(builder: { => }, placement: Placement.Top, backgroundColor: baseColor.Red, enableArrow: true, autoCancel: false, width: 150i64.vp, radius: 10i64.vp)
        @Expect(cpo.placement.isSome(), true)
        @Expect(cpo.backgroundColor.isSome(), true)
        @Expect(cpo.enableArrow.getOrThrow(), true)
        @Expect(cpo.autoCancel.getOrThrow(), false)
        @Expect(cpo.width.isSome(), true)
        @Expect(cpo.radius.isSome(), true)
        @Expect(cpo.shadow.isNone(), false)
        cpo.autoCancel = true
        @Expect(cpo.autoCancel.getOrThrow(), true)
        cpo.enableArrow = Option<Bool>.None
        @Expect(cpo.enableArrow.isNone(), true)
        @Expect(cpo.arrowPointPosition.isNone(),true)
        @Expect(cpo.arrowWidth.isNone(), false)
        @Expect(cpo.arrowHeight.isNone(), false)
        @Expect(cpo.followTransformOfTarget.isNone(), false)
        @Expect(cpo.onStateChange.isNone(),true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0018
     * @tc.name      : TestCase_20
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        let cmo = ContextMenuOptions(placement: Placement.BottomLeft, enableArrow: true, arrowOffset: 10i64.vp, backgroundColor: baseColor.White, backgroundBlurStyle: BlurStyle.Thin)
        @Expect(cmo.placement.isSome(), true)
        @Expect(cmo.enableArrow.getOrThrow(), true)
        @Expect(cmo.arrowOffset.isSome(), true)
        @Expect(cmo.backgroundColor.isSome(), true)
        @Expect(cmo.backgroundBlurStyle.isSome(), true)
        @Expect(cmo.offset.isNone(), false)
        @Expect(cmo.preview.isNone(), true)
        cmo.enableArrow = false
        @Expect(cmo.enableArrow.getOrThrow(), false)
        cmo.placement = Option<Placement>.None
        @Expect(cmo.placement.isNone(), true)
        @Expect(cmo.previewAnimationOptions.isNone(), true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0019
     * @tc.name      : TestCase_21
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        let identity = TransitionEffect.IDENTITY
        let opacity = TransitionEffect.OPACITY
        let slide = TransitionEffect.SLIDE
        let customOpacity = TransitionEffect.opacity(0.5)
        let customTranslate = TransitionEffect.translate(TranslateOptions(x: 10i64.vp, y: 20i64.vp))
        let customScale = TransitionEffect.scale(ScaleOptions(x: 2.0f32, y: 2.0f32))
        let customRotate = TransitionEffect.rotate(RotateOptions(90.0f32))
        let customMove = TransitionEffect.move(TransitionEdge.Start)
        let customAsym = TransitionEffect.asymmetric(TransitionEffect.opacity(0.0), TransitionEffect.opacity(1.0))
        let combined = customOpacity.combine(customTranslate)
        let animated = combined.animation(AnimateParam(duration: 300i32))
        @Expect(true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0020
     * @tc.name      : TestCase_22
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_22
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        let pos = Position(x: 0i64.vp, y: 0i64.vp)
        let gpos = Position(x: 100i64.vp, y: 200i64.vp)
        let area = Area(0i64.vp, 0i64.vp, pos, gpos)
        @Expect(area.position.x.isSome(), true)
        @Expect(area.position.y.isSome(), true)
        @Expect(area.globalPosition.x.isSome(), true)
        @Expect(area.globalPosition.y.isSome(), true)
        let et = EventTarget(area)
        @Expect(et.area.width.value > 0.0, false)
        @Expect(et.area.height.value > 0.0, false)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0021
     * @tc.name      : TestCase_23
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_23
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        let me = MouseEvent(1000i64, 50.0, 60.0, 10.0, 20.0, MouseButton.Left, MouseAction.Press)
        @Expect(me.button == MouseButton.Left, true)
        @Expect(me.screenX, 50.0)
        @Expect(me.screenY, 60.0)
        @Expect(me.x, 10.0)
        @Expect(me.y, 20.0)
        @Expect(me.action == MouseAction.Press, true)
        me.x = 30.0
        @Expect(me.x, 30.0)
        me.button = MouseButton.Right
        @Expect(me.button == MouseButton.Right, true)
        me.action = MouseAction.Release
        @Expect(me.action == MouseAction.Release, true)
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0022
     * @tc.name      : TestCase_24
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_24
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        let clickCb: (ClickEvent) -> Unit = { e: ClickEvent =>
            let dx: Float64 = e.displayX
            let dy: Float64 = e.displayY
            let wx: Float64 = e.windowX
            let wy: Float64 = e.windowY
            let ex: Float64 = e.x
            let ey: Float64 = e.y
        }
        let touchCb: (TouchEvent) -> Unit = { e: TouchEvent =>
            e.stopPropagation()
            let et: TouchType = e.eventType
            let ts: Array<TouchObject> = e.touches
            let ct: Array<TouchObject> = e.changedTouches
            
        }
        let touchObj = TouchObject(TouchType.Down, 0i32, 10.0, 20.0, 5.0, 5.0)
        let touchCb2: (TouchEvent) -> Unit = { e: TouchEvent =>
            e.stopPropagation()
        }
        let keyEvent = KeyEvent("Enter", KeyType.Down, 13i32, KeySource.Keyboard, 0i32, 1i64, 500i64)
        let keyCb: (KeyEvent) -> Unit = { e: KeyEvent =>
            e.stopPropagation()
        }
        @Expect(keyEvent.keyText, "Enter")
    }
    /*
     * @tc.number    : TestCommonInterfaces_1_test_0023
     * @tc.name      : TestCase_25
     * @tc.desc      : test CommonInterfaces_1_test case TestCase_25
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        let sto = SharedTransitionOptions(duration: 500i32, curve: Curve.Ease, delay: 100i32, zIndex: 10i32, effectType: SharedTransitionEffectType.Exchange)
        @Expect(sto.duration.getOrThrow(), 500)
        @Expect(sto.curve.isSome(), true)
        @Expect(sto.delay.getOrThrow(), 100)
        @Expect(sto.motionPath.isNone(), false)
        @Expect(sto.zIndex.getOrThrow(), 10)
        @Expect(sto.effectType.isSome(), true)
        sto.duration = 1000
        @Expect(sto.duration.getOrThrow(), 1000)
        sto.curve = Option<Curve>.None
        @Expect(sto.curve.isNone(), true)
        let defaultSto = SharedTransitionOptions()
        @Expect(defaultSto.duration.isNone(), false)
        let aro = AlignRuleOption(left: HorizontalAlignParam("a1", HorizontalAlign.Start), top: VerticalAlignParam("a2", VerticalAlign.Top))
        @Expect(aro.left.isSome(), true)
        @Expect(aro.top.isSome(), true)
        @Expect(aro.right.isNone(), true)
        @Expect(aro.bottom.isNone(), true)
        @Expect(aro.middle.isNone(), true)
        @Expect(aro.center.isNone(), true)
        @Expect(aro.bias.isNone(), false)
        aro.right = HorizontalAlignParam("a3", HorizontalAlign.End)
        @Expect(aro.right.isSome(), true)
        let pts = PickerTextStyle(color: baseColor.Red, font: Font(size: 16i64.vp, weight: FontWeight.Bold))
        @Expect(pts.color.isSome(), true)
        @Expect(pts.font.isSome(), true)
        pts.color = Option<ResourceColor>.None
        @Expect(pts.color.isNone(), true)
        let defaultPts = PickerTextStyle()
        @Expect(defaultPts.color.isNone(), true)
        @Expect(defaultPts.font.isNone(), true)
    }
}
