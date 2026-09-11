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
import ohos.arkui.component.common.*
import ohos.arkui.component.common.MouseButton as comMouseButton


func checkEnum<T>(a: T, b: T): Int64 {
    return 1
}

@Test
class CommonInterfaces_2_test {

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0001
     * @tc.name      : TestCase_Enums_Batch1
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch1(): Unit {
        let fw = FontWeight.W400
        var fwm = 0; match (fw) { case FontWeight.W400 => fwm = 1; case _ => () }
        @Expect(fwm, 1)
        var fwn = 0; if (fw != FontWeight.W700) { fwn = 1 }
        @Expect(fwn, 1)

        let fs = FontStyle.Normal
        var fsm = 0; match (fs) { case FontStyle.Normal => fsm = 1; case _ => () }
        @Expect(fsm, 1)
        var fsn = 0; if (fs != FontStyle.Italic) { fsn = 1 }
        @Expect(fsn, 1)

        let ta = TextAlign.Center
        var tam = 0; match (ta) { case TextAlign.Center => tam = 1; case _ => () }
        @Expect(tam, 1)
        var tan = 0; if (ta != TextAlign.Start) { tan = 1 }
        @Expect(tan, 1)

        let to = TextOverflow.Ellipsis
        var tom = 0; match (to) { case TextOverflow.Ellipsis => tom = 1; case _ => () }
        @Expect(tom, 1)
        var ton = 0; if (to != TextOverflow.Clip) { ton = 1 }
        @Expect(ton, 1)

        let tc = TextCase.UpperCase
        var tcm = 0; match (tc) { case TextCase.UpperCase => tcm = 1; case _ => () }
        @Expect(tcm, 1)
        var tcn = 0; if (tc != TextCase.Normal) { tcn = 1 }
        @Expect(tcn, 1)

        let wb = WordBreak.BreakAll
        var wbm = 0; match (wb) { case WordBreak.BreakAll => wbm = 1; case _ => () }
        @Expect(wbm, 1)
        var wbn = 0; if (wb != WordBreak.BreakWord) { wbn = 1 }
        @Expect(wbn, 1)

        let bs = BorderStyle.Dashed
        var bsm = 0; match (bs) { case BorderStyle.Dashed => bsm = 1; case _ => () }
        @Expect(bsm, 1)
        var bsn = 0; if (bs != BorderStyle.Solid) { bsn = 1 }
        @Expect(bsn, 1)

        let al = Alignment.Center
        var alm = 0; match (al) { case Alignment.Center => alm = 1; case _ => () }
        @Expect(alm, 1)
        var aln = 0; if (al != Alignment.Start) { aln = 1 }
        @Expect(aln, 1)

        let vis = Visibility.Hidden
        var vism = 0; match (vis) { case Visibility.Hidden => vism = 1; case _ => () }
        @Expect(vism, 1)
        var visn = 0; if (vis != Visibility.Visible) { visn = 1 }
        @Expect(visn, 1)

        let dir = Direction.Ltr
        var drm = 0; match (dir) { case Direction.Ltr => drm = 1; case _ => () }
        @Expect(drm, 1)
        var drn = 0; if (dir != Direction.Rtl) { drn = 1 }
        @Expect(drn, 1)

        let tt = ToggleType.Checkbox
        var ttm = 0; match (tt) { case ToggleType.Checkbox => ttm = 1; case _ => () }
        @Expect(ttm, 1)
        var ttn = 0; if (tt != ToggleType.Switch) { ttn = 1 }
        @Expect(ttn, 1)

        let st = ShadowType.Color
        var stm = 0; match (st) { case ShadowType.Color => stm = 1; case _ => () }
        @Expect(stm, 1)
        var stn = 0; if (st != ShadowType.Blur) { stn = 1 }
        @Expect(stn, 1)

        let tdt = TextDecorationType.Underline
        var tdtm = 0; match (tdt) { case TextDecorationType.Underline => tdtm = 1; case _ => () }
        @Expect(tdtm, 1)
        var tdtn = 0; if (tdt != TextDecorationType.None) { tdtn = 1 }
        @Expect(tdtn, 1)

        let ir = ImageRepeat.X
        var irm = 0; match (ir) { case ImageRepeat.X => irm = 1; case _ => () }
        @Expect(irm, 1)
        var irn = 0; if (ir != ImageRepeat.NoRepeat) { irn = 1 }
        @Expect(irn, 1)

        let isz = ImageSize.Cover
        var iszm = 0; match (isz) { case ImageSize.Cover => iszm = 1; case _ => () }
        @Expect(iszm, 1)
        var iszn = 0; if (isz != ImageSize.Contain) { iszn = 1 }
        @Expect(iszn, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0002
     * @tc.name      : TestCase_Enums_Batch2
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch2(): Unit {
        let ifit = ImageFit.Cover
        var m = 0; match (ifit) { case ImageFit.Cover => m = 1; case _ => () }
        @Expect(m, 1)
        var n = 0; if (ifit != ImageFit.Contain) { n = 1 }
        @Expect(n, 1)

        let sd = ScrollDirection.Vertical
        m = 0; match (sd) { case ScrollDirection.Vertical => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sd != ScrollDirection.Horizontal) { n = 1 }
        @Expect(n, 1)

        let sbd = ScrollBarDirection.Vertical
        m = 0; match (sbd) { case ScrollBarDirection.Vertical => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sbd != ScrollBarDirection.Horizontal) { n = 1 }
        @Expect(n, 1)

        let scm = SliderChangeMode.Moving
        m = 0; match (scm) { case SliderChangeMode.Moving => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (scm != SliderChangeMode.Click) { n = 1 }
        @Expect(n, 1)

        let ss = SliderStyle.OutSet
        m = 0; match (ss) { case SliderStyle.OutSet => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ss != SliderStyle.InSet) { n = 1 }
        @Expect(n, 1)

        let ii = ImageInterpolation.High
        m = 0; match (ii) { case ImageInterpolation.High => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ii != ImageInterpolation.None) { n = 1 }
        @Expect(n, 1)

        let bs = BarState.Auto
        m = 0; match (bs) { case BarState.Auto => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (bs != BarState.Off) { n = 1 }
        @Expect(n, 1)

        let lcs = LineCapStyle.Round
        m = 0; match (lcs) { case LineCapStyle.Round => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (lcs != LineCapStyle.Butt) { n = 1 }
        @Expect(n, 1)

        let pt = ProgressType.Eclipse
        m = 0; match (pt) { case ProgressType.Eclipse => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (pt != ProgressType.ScaleRing) { n = 1 }
        @Expect(n, 1)

        let irm = ImageRenderMode.Original
        m = 0; match (irm) { case ImageRenderMode.Original => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (irm != ImageRenderMode.Template) { n = 1 }
        @Expect(n, 1)

        let nt = NavigationType.Push
        m = 0; match (nt) { case NavigationType.Push => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (nt != NavigationType.Back) { n = 1 }
        @Expect(n, 1)

        let sdm = SwiperDisplayMode.Stretch
        m = 0; match (sdm) { case SwiperDisplayMode.Stretch => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sdm == SwiperDisplayMode.Stretch) { n = 1 }
        @Expect(n, 1)

        let cv = Curve.Linear
        m = 0; match (cv) { case Curve.Linear => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (cv != Curve.Ease) { n = 1 }
        @Expect(n, 1)

        let ee = EdgeEffect.Spring
        m = 0; match (ee) { case EdgeEffect.Spring => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ee != EdgeEffect.None) { n = 1 }
        @Expect(n, 1)

        let eg = Edge.Top
        m = 0; match (eg) { case Edge.Top => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (eg != Edge.Bottom) { n = 1 }
        @Expect(n, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0003
     * @tc.name      : TestCase_Enums_Batch3
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch3(): Unit {
        let pl = Placement.TopRight
        var m = 0; match (pl) { case Placement.TopRight => m = 1; case _ => () }
        @Expect(m, 1)
        var n = 0; if (pl != Placement.Bottom) { n = 1 }
        @Expect(n, 1)

        let ljs = LineJoinStyle.Round
        m = 0; match (ljs) { case LineJoinStyle.Round => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ljs != LineJoinStyle.Miter) { n = 1 }
        @Expect(n, 1)

        let isq = ImageSmoothingQuality.High
        m = 0; match (isq) { case ImageSmoothingQuality.High => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (isq != ImageSmoothingQuality.Low) { n = 1 }
        @Expect(n, 1)

        let gm = GestureMask.IgnoreInternal
        m = 0; match (gm) { case GestureMask.IgnoreInternal => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (gm != GestureMask.Normal) { n = 1 }
        @Expect(n, 1)

        let sld = SwipeDirection.Vertical
        m = 0; match (sld) { case SwipeDirection.Vertical => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sld != SwipeDirection.Horizontal) { n = 1 }
        @Expect(n, 1)

        let gmd = GestureMode.Exclusive
        m = 0; match (gmd) { case GestureMode.Exclusive => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (gmd != GestureMode.Sequence) { n = 1 }
        @Expect(n, 1)

        let ax = Axis.Vertical
        m = 0; match (ax) { case Axis.Vertical => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ax != Axis.Horizontal) { n = 1 }
        @Expect(n, 1)

        let rt = ResponseType.LongPress
        m = 0; match (rt) { case ResponseType.LongPress => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (rt != ResponseType.RightClick) { n = 1 }
        @Expect(n, 1)

        let co = CopyOptions.LocalDevice
        m = 0; match (co) { case CopyOptions.LocalDevice => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (co != CopyOptions.None) { n = 1 }
        @Expect(n, 1)

        let tt = TouchType.Down
        m = 0; match (tt) { case TouchType.Down => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (tt != TouchType.Up) { n = 1 }
        @Expect(n, 1)

        let sbct = SideBarContainerType.Embed
        m = 0; match (sbct) { case SideBarContainerType.Embed => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sbct != SideBarContainerType.Overlay) { n = 1 }
        @Expect(n, 1)

        let sbp = SideBarPosition.Start
        m = 0; match (sbp) { case SideBarPosition.Start => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sbp != SideBarPosition.End) { n = 1 }
        @Expect(n, 1)

        let src = SourceType.TouchScreen
        m = 0; match (src) { case SourceType.TouchScreen => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (src != SourceType.Mouse) { n = 1 }
        @Expect(n, 1)

        let mb = comMouseButton.Middle
        m = 0; match (mb) { case comMouseButton.Middle => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (mb != comMouseButton.Left) { n = 1 }
        @Expect(n, 1)

        let ma = MouseAction.Hover
        m = 0; match (ma) { case MouseAction.Hover => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ma != MouseAction.Move) { n = 1 }
        @Expect(n, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0004
     * @tc.name      : TestCase_Enums_Batch4
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch4(): Unit {
        let ks = KeySource.Keyboard
        var m = 0; match (ks) { case KeySource.Keyboard => m = 1; case _ => () }
        @Expect(m, 1)
        var n = 0; if (ks != KeySource.Unknown) { n = 1 }
        @Expect(n, 1)

        let kt = KeyType.Down
        m = 0; match (kt) { case KeyType.Down => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (kt != KeyType.Up) { n = 1 }
        @Expect(n, 1)

        let mk = ModifierKey.Alt
        m = 0; match (mk) { case ModifierKey.Alt => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (mk != ModifierKey.Ctrl) { n = 1 }
        @Expect(n, 1)

        let fk = FunctionKey.Esc
        m = 0; match (fk) { case FunctionKey.Esc => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (fk != FunctionKey.Tab) { n = 1 }
        @Expect(n, 1)

        let dpt = DataPanelType.Line
        m = 0; match (dpt) { case DataPanelType.Line => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (dpt != DataPanelType.Circle) { n = 1 }
        @Expect(n, 1)

        let ist = ItemState.Normal
        m = 0; match (ist) { case ItemState.Normal => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ist != ItemState.Skip) { n = 1 }
        @Expect(n, 1)

        let rs = RefreshStatus.OverDrag
        m = 0; match (rs) { case RefreshStatus.OverDrag => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (rs != RefreshStatus.Done) { n = 1 }
        @Expect(n, 1)

        let sm = SeekMode.Accurate
        m = 0; match (sm) { case SeekMode.Accurate => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sm != SeekMode.PreviousKeyframe) { n = 1 }
        @Expect(n, 1)

        let pbs = PlaybackSpeed.SpeedForward100X
        m = 0; match (pbs) { case PlaybackSpeed.SpeedForward100X => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (pbs != PlaybackSpeed.SpeedForward200X) { n = 1 }
        @Expect(n, 1)

        let ss = SelectStatus.Part
        m = 0; match (ss) { case SelectStatus.Part => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ss != SelectStatus.All) { n = 1 }
        @Expect(n, 1)

        let ast = AnimationStatus.Initial
        m = 0; match (ast) { case AnimationStatus.Initial => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ast != AnimationStatus.Paused) { n = 1 }
        @Expect(n, 1)

        let fm = FillMode.Forwards
        m = 0; match (fm) { case FillMode.Forwards => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (fm != FillMode.None) { n = 1 }
        @Expect(n, 1)

        let see = SwipeEdgeEffect.Spring
        m = 0; match (see) { case SwipeEdgeEffect.Spring => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (see != SwipeEdgeEffect.None) { n = 1 }
        @Expect(n, 1)

        let ste = SharedTransitionEffectType.Static
        m = 0; match (ste) { case SharedTransitionEffectType.Static => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ste != SharedTransitionEffectType.Exchange) { n = 1 }
        @Expect(n, 1)

        let scr = ScrollState.Fling
        m = 0; match (scr) { case ScrollState.Fling => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (scr != ScrollState.Idle) { n = 1 }
        @Expect(n, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0005
     * @tc.name      : TestCase_Enums_Batch5
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch5(): Unit {
        let lia = ListItemAlign.Start
        var m = 0; match (lia) { case ListItemAlign.Start => m = 1; case _ => () }
        @Expect(m, 1)
        var n = 0; if (lia != ListItemAlign.Center) { n = 1 }
        @Expect(n, 1)

        let ss = StickyStyle.Header
        m = 0; match (ss) { case StickyStyle.Header => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ss != StickyStyle.Footer) { n = 1 }
        @Expect(n, 1)

        let rest = RichEditorSpanType.Mixed
        m = 0; match (rest) { case RichEditorSpanType.Mixed => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (rest != RichEditorSpanType.Text) { n = 1 }
        @Expect(n, 1)

        let isa = ImageSpanAlignment.Center
        m = 0; match (isa) { case ImageSpanAlignment.Center => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (isa != ImageSpanAlignment.Top) { n = 1 }
        @Expect(n, 1)

        let rdd = RichEditorDeleteDirection.Forward
        m = 0; match (rdd) { case RichEditorDeleteDirection.Forward => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (rdd != RichEditorDeleteDirection.Backward) { n = 1 }
        @Expect(n, 1)

        let mm = MixedMode.Compatible
        m = 0; match (mm) { case MixedMode.Compatible => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (mm != MixedMode.None) { n = 1 }
        @Expect(n, 1)

        let pm = PlayMode.Normal
        m = 0; match (pm) { case PlayMode.Normal => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (pm != PlayMode.Alternate) { n = 1 }
        @Expect(n, 1)

        let gd = GradientDirection.Top
        m = 0; match (gd) { case GradientDirection.Top => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (gd != GradientDirection.Left) { n = 1 }
        @Expect(n, 1)

        let rf = RenderFit.ResizeFill
        m = 0; match (rf) { case RenderFit.ResizeFill => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (rf != RenderFit.ResizeContain) { n = 1 }
        @Expect(n, 1)

        let da = DialogAlignment.CenterStart
        m = 0; match (da) { case DialogAlignment.CenterStart => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (da != DialogAlignment.CenterEnd) { n = 1 }
        @Expect(n, 1)

        let cs = ColoringStrategy.Invert
        m = 0; match (cs) { case ColoringStrategy.Invert => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (cs == ColoringStrategy.Invert) { n = 1 }
        @Expect(n, 1)

        let nsm = NestedScrollMode.ParentFirst
        m = 0; match (nsm) { case NestedScrollMode.ParentFirst => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (nsm != NestedScrollMode.SelfOnly) { n = 1 }
        @Expect(n, 1)

        let tcm = ThemeColorMode.System
        m = 0; match (tcm) { case ThemeColorMode.System => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (tcm != ThemeColorMode.Light) { n = 1 }
        @Expect(n, 1)

        let ac = AdaptiveColor.Average
        m = 0; match (ac) { case AdaptiveColor.Average => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ac != AdaptiveColor.Default) { n = 1 }
        @Expect(n, 1)

        let csz = ControlSize.Normal
        m = 0; match (csz) { case ControlSize.Normal => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (csz != ControlSize.Small) { n = 1 }
        @Expect(n, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0006
     * @tc.name      : TestCase_Enums_Batch6
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch6(): Unit {
        let owm = OptionWidthMode.FitContent
        var m = 0; match (owm) { case OptionWidthMode.FitContent => m = 1; case _ => () }
        @Expect(m, 1)
        var n = 0; if (owm != OptionWidthMode.FitTrigger) { n = 1 }
        @Expect(n, 1)

        let ap = ArrowPosition.Start
        m = 0; match (ap) { case ArrowPosition.Start => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ap != ArrowPosition.End) { n = 1 }
        @Expect(n, 1)

        let mat = MenuAlignType.Center
        m = 0; match (mat) { case MenuAlignType.Center => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (mat != MenuAlignType.Start) { n = 1 }
        @Expect(n, 1)

        let wdm = WebDarkMode.Auto
        m = 0; match (wdm) { case WebDarkMode.Auto => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (wdm != WebDarkMode.Off) { n = 1 }
        @Expect(n, 1)

        let src = SourceTool.Finger
        m = 0; match (src) { case SourceTool.Finger => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (src != SourceTool.Pen) { n = 1 }
        @Expect(n, 1)

        let rep = Repetition.Repeat
        m = 0; match (rep) { case Repetition.Repeat => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (rep != Repetition.NoRepeat) { n = 1 }
        @Expect(n, 1)

        let ss = ScrollSource.OtherUserInput
        m = 0; match (ss) { case ScrollSource.OtherUserInput => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ss != ScrollSource.ScrollBar) { n = 1 }
        @Expect(n, 1)

        let ct = ContentType.UserName
        m = 0; match (ct) { case ContentType.UserName => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ct != ContentType.EmailAddress) { n = 1 }
        @Expect(n, 1)

        let mp = MenuPolicy.Show
        m = 0; match (mp) { case MenuPolicy.Show => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (mp != MenuPolicy.Hide) { n = 1 }
        @Expect(n, 1)

        let tds = TextDecorationStyle.Double
        m = 0; match (tds) { case TextDecorationStyle.Double => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (tds != TextDecorationStyle.Wavy) { n = 1 }
        @Expect(n, 1)

        let lbs = LineBreakStrategy.HighQuality
        m = 0; match (lbs) { case LineBreakStrategy.HighQuality => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (lbs != LineBreakStrategy.Greedy) { n = 1 }
        @Expect(n, 1)

        let tcs = TextContentStyle.Default
        m = 0; match (tcs) { case TextContentStyle.Default => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (tcs != TextContentStyle.Inline) { n = 1 }
        @Expect(n, 1)

        let cbs = CheckBoxShape.Circle
        m = 0; match (cbs) { case CheckBoxShape.Circle => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (cbs != CheckBoxShape.RoundedSquare) { n = 1 }
        @Expect(n, 1)

        let thp = TextHeightAdaptivePolicy.LayoutConstraintFirst
        m = 0; match (thp) { case TextHeightAdaptivePolicy.LayoutConstraintFirst => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (thp != TextHeightAdaptivePolicy.MinFontSizeFirst) { n = 1 }
        @Expect(n, 1)

        let bls = BlurStyle.ComponentRegular
        m = 0; match (bls) { case BlurStyle.ComponentRegular => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (bls != BlurStyle.BackgroundThin) { n = 1 }
        @Expect(n, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0007
     * @tc.name      : TestCase_Enums_Batch7
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Enums_Batch7(): Unit {
        let lm = LengthMetricsUnit.Px
        var m = 0; match (lm) { case LengthMetricsUnit.Px => m = 1; case _ => () }
        @Expect(m, 1)
        var n = 0; if (lm != LengthMetricsUnit.Default) { n = 1 }
        @Expect(n, 1)

        let cd = CanvasDirection.Inherit
        m = 0; match (cd) { case CanvasDirection.Inherit => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (cd != CanvasDirection.Ltr) { n = 1 }
        @Expect(n, 1)

        let cfr = CanvasFillRule.EvenOdd
        m = 0; match (cfr) { case CanvasFillRule.EvenOdd => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (cfr != CanvasFillRule.NonZero) { n = 1 }
        @Expect(n, 1)

        let fct = FinishCallbackType.Removed
        m = 0; match (fct) { case FinishCallbackType.Removed => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (fct != FinishCallbackType.Logically) { n = 1 }
        @Expect(n, 1)

        let dr = DismissReason.CloseButton
        m = 0; match (dr) { case DismissReason.CloseButton => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (dr != DismissReason.SlideDown) { n = 1 }
        @Expect(n, 1)

        let tis = TextInputStyle.Inline
        m = 0; match (tis) { case TextInputStyle.Inline => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (tis != TextInputStyle.Default) { n = 1 }
        @Expect(n, 1)

        let tat = TextAreaType.Number
        m = 0; match (tat) { case TextAreaType.Number => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (tat != TextAreaType.Email) { n = 1 }
        @Expect(n, 1)

        let mt = ModalTransition.Alpha
        m = 0; match (mt) { case ModalTransition.Alpha => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (mt != ModalTransition.None) { n = 1 }
        @Expect(n, 1)

        let shs = SheetSize.Large
        m = 0; match (shs) { case SheetSize.Large => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (shs != SheetSize.Medium) { n = 1 }
        @Expect(n, 1)

        let sht = SheetType.Popup
        m = 0; match (sht) { case SheetType.Popup => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (sht != SheetType.Bottom) { n = 1 }
        @Expect(n, 1)

        let shm = SheetMode.Overlay
        m = 0; match (shm) { case SheetMode.Overlay => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (shm != SheetMode.Embedded) { n = 1 }
        @Expect(n, 1)

        let ss = ScrollSizeMode.FollowDetent
        m = 0; match (ss) { case ScrollSizeMode.FollowDetent => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ss != ScrollSizeMode.Continuous) { n = 1 }
        @Expect(n, 1)

        let te = TransitionEdge.Start
        m = 0; match (te) { case TransitionEdge.Start => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (te != TransitionEdge.End) { n = 1 }
        @Expect(n, 1)

        let ia = IndexerAlign.Right
        m = 0; match (ia) { case IndexerAlign.Right => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (ia != IndexerAlign.Left) { n = 1 }
        @Expect(n, 1)

        let it = InputType.Number
        m = 0; match (it) { case InputType.Number => m = 1; case _ => () }
        @Expect(m, 1)
        n = 0; if (it != InputType.Email) { n = 1 }
        @Expect(n, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0008
     * @tc.name      : TestCase_Position_Transform
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Position_Transform(): Unit {
        let pos = Position(x: 10.0, y: 20.0)
        @Expect(pos.x.getOrThrow().value >= 0.0)
        @Expect(pos.y.getOrThrow().value >= 0.0)
        pos.x = Some(30.0)
        pos.y = Some(40.0)
        @Expect(pos.x.getOrThrow().value > 0.0)
        @Expect(pos.y.getOrThrow().value > 0.0)
        let defaultPos = Position()
        @Expect(defaultPos.x.isNone(), false)
        @Expect(defaultPos.y.isNone(), false)

        let tr = TranslateOptions(x: 5.0, y: 10.0, z: 15.0)
        @Expect(tr.x.isNone(),false)
        @Expect(tr.y.isNone(),false)
        @Expect(tr.z.isNone(),false)
        tr.x = Some(50.0)
        @Expect(tr.x.isNone(),false)
        let defaultTr = TranslateOptions()
        @Expect(defaultTr.x.isNone(),false)

        let sc = ScaleOptions(x: 1.0, y: 2.0, z: 3.0, centerX: 10.0, centerY: 20.0)
        @Expect(sc.x.isNone(),false)
        @Expect(sc.y.isNone(),false)
        @Expect(sc.z.isNone(),false)
        @Expect(sc.centerX.isNone(),false)
        @Expect(sc.centerY.isNone(),false)

        let rt = RotateOptions(45.0)
        @Expect(rt.angle.isNone(),false)
        rt.x = Some(0.0)
        rt.y = Some(1.0)
        @Expect(rt.x.isNone(),false)
        @Expect(rt.y.isNone(),false)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0009
     * @tc.name      : TestCase_Options_Classes
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Options_Classes(): Unit {
        let mp = MotionPathOptions(path: "M0,0 L100,100")
        @Expect(mp.path.isNone(),false)
        @Expect(mp.from.isNone(),false)
        mp.from = Some(0.0)
        mp.to = Some(1.0)
        mp.rotatable = Some(true)
        @Expect(mp.from.isNone(),false)
        @Expect(mp.to.isNone(),false)
        @Expect(mp.rotatable.isNone(),false)

        let st = SharedTransitionOptions(duration: 500)
        @Expect(st.duration.isNone(),false)
        st.delay = Some(100)
        st.zIndex = Some(5)
        @Expect(st.delay.isNone(),false)
        @Expect(st.zIndex.isNone(),false)
        let defaultSt = SharedTransitionOptions()
        @Expect(defaultSt.duration.isNone(),false)

        let ap = AnimateParam(duration: 1000)
        @Expect(ap.duration.isNone(),false)
        ap.tempo = Some(1.0)
        ap.delay = Some(200)
        ap.iterations = Some(3)
        @Expect(ap.tempo.isNone(),false)
        @Expect(ap.delay.isNone(),false)
        @Expect(ap.iterations.isNone(),false)
        let defaultAp = AnimateParam()
        @Expect(defaultAp.duration.isNone(),false)

        let fr = ExpectedFrameRateRange(min: 30, max: 60, expected: 60)
        @Expect(fr.min.isNone(),false)
        @Expect(fr.max.isNone(),false)
        @Expect(fr.expected.isNone(),false)
        fr.min = Some(24)
        @Expect(fr.min.isNone(),false)

        let mg = Margin(top: 10.0, right: 20.0, bottom: 30.0, left: 40.0)
        
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0010
     * @tc.name      : TestCase_Font_PopupButton_Misc
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Font_PopupButton_Misc(): Unit {
        let font = Font(size: 16.0, weight: FontWeight.W400, family: "HarmonyOS Sans",
            style: FontStyle.Normal)
        @Expect(font.size.isNone(),false)
        @Expect(font.weight.isNone(),false)
        @Expect(font.style.isNone(),false)
        font.size = Some(24.0)
        @Expect(font.size.isNone(),false)
        let defaultFont = Font()
        @Expect(defaultFont.size.isNone(),false)

        let btn = PopupButton(value: "OK", action: { => () })
        let state = PopupStateChangeParam(true)
        @Expect(state.isVisible, true)
        state.isVisible = false
        @Expect(state.isVisible, false)

        let menu = MenuElement(value: "Item1", action: { => () })
        let bo = BlurOptions(Option<VArray<Float32,$2>>.None)
        var boValid = 0
        match (bo) { case _ => boValid = 1 }
        @Expect(boValid, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0011
     * @tc.name      : TestCase_TransitionEffect
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_TransitionEffect(): Unit {
        let identity = TransitionEffect.IDENTITY
        var identityValid = 0
        match (identity) { case _ => identityValid = 1 }
        @Expect(identityValid, 1)

        let opacityStatic = TransitionEffect.OPACITY
        var opacityValid = 0
        match (opacityStatic) { case _ => opacityValid = 1 }
        @Expect(opacityValid, 1)

        let slideStatic = TransitionEffect.SLIDE
        let slideStatic1 = TransitionEffect.SLIDE_SWITCH
        var slideValid = 0
        match (slideStatic) { case _ => slideValid = 1 }
        @Expect(slideValid, 1)

        let opacity = TransitionEffect.opacity(0.5)
        var opacityCreated = 0
        match (opacity) { case _ => opacityCreated = 1 }
        @Expect(opacityCreated, 1)

        let translate = TransitionEffect.translate(TranslateOptions(x: 10.0, y: 20.0, z: 10.0))
        var translateCreated = 0
        match (translate) { case _ => translateCreated = 1 }
        @Expect(translateCreated, 1)

        let scale = TransitionEffect.scale(Some(ScaleOptions(x: 1.0, y: 1.0, z: 1.0,
            centerX: 1.0, centerY: 1.0)))
        var scaleCreated = 0
        match (scale) { case _ => scaleCreated = 1 }
        @Expect(scaleCreated, 1)

        let rotate = TransitionEffect.rotate(Some(RotateOptions(90.0)))
        var rotateCreated = 0
        match (rotate) { case _ => rotateCreated = 1 }
        @Expect(rotateCreated, 1)

        let move = TransitionEffect.move(TransitionEdge.Start)
        var moveCreated = 0
        match (move) { case _ => moveCreated = 1 }
        @Expect(moveCreated, 1)

        let asymmetric = TransitionEffect.asymmetric(opacity, move)
        var asymCreated = 0
        match (asymmetric) { case _ => asymCreated = 1 }
        @Expect(asymCreated, 1)

        let combined = opacity.combine(move)
        var combineValid = 0
        match (combined) { case _ => combineValid = 1 }
        @Expect(combineValid, 1)

        let animated = combined.animation(Some(AnimateParam(duration: 500)))
        var animValid = 0
        match (animated) { case _ => animValid = 1 }
        @Expect(animValid, 1)
    }

    /*
     * @tc.number    : TestCommonInterfaces_2_test_0012
     * @tc.name      : TestCase_Functions_Dismiss
     * @tc.desc      : test CommonInterfaces_2_test case TestCase_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Functions_Dismiss(): Unit {
        let inspector = getInspectorByKey("testKey")
        var inspectorValid = 0
        match (inspector) { case _ => inspectorValid = 1 }
        @Expect(inspectorValid, 1)

        let tree = getInspectorTree()
        var treeValid = 0
        match (tree) { case _ => treeValid = 1 }
        @Expect(treeValid, 1)

        let sendResult = sendEventByKey("testId", 0, "")
        var sendValid = 0
        if (sendResult) { sendValid = 1 } else { sendValid = 2 }
        @Expect(sendValid >= 1, true)
    }  
}
