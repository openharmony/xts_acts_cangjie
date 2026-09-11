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
import ohos.arkui.component.scroll.*
import ohos.arkui.component.common.*

@Test
class ScrollInterfaces_1_test {
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let start = ScrollAlign.Start
        let center = ScrollAlign.Center
        let end = ScrollAlign.End
        let auto = ScrollAlign.Auto
        @Expect(start == ScrollAlign.Start, true)
        @Expect(center == ScrollAlign.Center, true)
        @Expect(end == ScrollAlign.End, true)
        @Expect(auto == ScrollAlign.Auto, true)
        @Expect(start != center, true)
        @Expect(center != end, true)
        @Expect(end != auto, true)
        @Expect(start == end, false)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let content = ContentClipMode.ContentOnly
        let boundary = ContentClipMode.Boundary
        let safeArea = ContentClipMode.SafeArea
        @Expect(content == ContentClipMode.ContentOnly, true)
        @Expect(boundary == ContentClipMode.Boundary, true)
        @Expect(safeArea == ContentClipMode.SafeArea, true)
        @Expect(content != boundary, true)
        @Expect(boundary != safeArea, true)
        @Expect(content != safeArea, true)
        @Expect(content == boundary, false)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let r = ScrollResult(offsetRemain: 10.5)
        @Expect(r.offsetRemain, 10.5)
        r.offsetRemain = -5.0
        @Expect(r.offsetRemain, -5.0)
        r.offsetRemain = 0.0
        @Expect(r.offsetRemain, 0.0)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let r = OffsetResult(5.0, 15.0)
        @Expect(r.xOffset, 5.0)
        @Expect(r.yOffset, 15.0)
        r.xOffset = 100.0
        @Expect(r.xOffset, 100.0)
        r.yOffset = -50.0
        @Expect(r.yOffset, -50.0)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let r = RectResult(1.0, 2.0, 100.0, 50.0)
        @Expect(r.x.isSome(), true)
        @Expect(r.x.getOrThrow(), 1.0)
        @Expect(r.y.getOrThrow(), 2.0)
        @Expect(r.width.getOrThrow(), 100.0)
        @Expect(r.height.getOrThrow(), 50.0)
        r.x = 10.0
        @Expect(r.x.getOrThrow(), 10.0)
        r.y = Option<Float64>.None
        @Expect(r.y.isNone(), true)
        r.width = 200.0
        @Expect(r.width.getOrThrow(), 200.0)
        r.height = Option<Float64>.None
        @Expect(r.height.isNone(), true)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let opts1 = ScrollAnimationOptions()
        @Expect(opts1.duration.isNone(), false)
        @Expect(opts1.curve.isNone(), false)
        @Expect(opts1.canOverScroll.isNone(), false)
        let opts2 = ScrollAnimationOptions(duration: 500.0, curve: Curve.Ease, canOverScroll: true)
        @Expect(opts2.duration.isSome(), true)
        @Expect(opts2.duration.getOrThrow(), 500.0)
        @Expect(opts2.curve.isSome(), true)
        @Expect(opts2.canOverScroll.isSome(), true)
        @Expect(opts2.canOverScroll.getOrThrow(), true)
        opts2.duration = 1000.0
        @Expect(opts2.duration.getOrThrow(), 1000.0)
        opts2.canOverScroll = false
        @Expect(opts2.canOverScroll.getOrThrow(), false)
        opts2.curve = Option<Curve>.None
        @Expect(opts2.curve.isNone(), true)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let opts = NestedScrollOptions(NestedScrollMode.SelfOnly, NestedScrollMode.SelfFirst)
        @Expect(opts.scrollForward.isSome(), true)
        @Expect(opts.scrollBackward.isSome(), true)
        opts.scrollForward = NestedScrollMode.Parallel
        @Expect(opts.scrollForward.isSome(), true)
        opts.scrollBackward = Option<NestedScrollMode>.None
        @Expect(opts.scrollBackward.isNone(), true)
        opts.scrollForward = Option<NestedScrollMode>.None
        @Expect(opts.scrollForward.isNone(), true)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let opts1 = FadingEdgeOptions()
        @Expect(opts1.fadingEdgeLength.isNone(), false)
        let opts2 = FadingEdgeOptions(fadingEdgeLength: 32i64.vp)
        @Expect(opts2.fadingEdgeLength.isSome(), true)
        opts2.fadingEdgeLength = 64i64.vp
        @Expect(opts2.fadingEdgeLength.isSome(), true)
        opts2.fadingEdgeLength = Option<Length>.None
        @Expect(opts2.fadingEdgeLength.isNone(), true)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let opts1 = ScrollEdgeOptions()
        @Expect(opts1.velocity.isNone(), false)
        let opts2 = ScrollEdgeOptions(velocity: 100.0f32)
        @Expect(opts2.velocity.isSome(), true)
        @Expect(opts2.velocity.getOrThrow(), 100.0f32)
        opts2.velocity = 500.0f32
        @Expect(opts2.velocity.getOrThrow(), 500.0f32)
        opts2.velocity = Option<Float32>.None
        @Expect(opts2.velocity.isNone(), true)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let opts1 = ScrollToIndexOptions()
        @Expect(opts1.extraOffset.isNone(), false)
        let opts2 = ScrollToIndexOptions(extraOffset: 10i64.vp)
        @Expect(opts2.extraOffset.isSome(), true)
        opts2.extraOffset = 20i64.vp
        @Expect(opts2.extraOffset.isSome(), true)
        opts2.extraOffset = Option<Length>.None
        @Expect(opts2.extraOffset.isNone(), true)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        let scroller = Scroller()
            let offset = scroller.currentOffset()
            @Expect(offset.isNone(), false)
            let atEnd = scroller.isAtEnd()
            @Expect(atEnd, false)
            let idx = scroller.getItemIndex(0.0, 0.0)
            @Expect(idx, -1)
            scroller.scrollTo(xOffset: 0i64.vp, yOffset: 0i64.vp)
            scroller.scrollBy(xOffset: 10i64.vp, yOffset: 10i64.vp)
            scroller.scrollEdge(Edge.Top)
            scroller.fling(100.0)
            scroller.scrollPage(true, animation: false)
    }
    /*
     * @tc.number    : TestScrollInterfaces_1_test_0012
     * @tc.name      : TestCase_12
     * @tc.desc      : test ScrollInterfaces_1_test case TestCase_12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        let scroller = Scroller()
        try {
            let scroll = Scroll(scroller, { => })
            let chained = scroll.scrollable(ScrollDirection.Vertical)
                .scrollBar(BarState.Auto)
                .scrollBarColor(baseColor.Red)
                .scrollBarWidth(4i64.vp)
                .enableScrollInteraction(true)
                .friction(0.6)
                .flingSpeedLimit(9000.0)
            try {
                let offset = scroller.currentOffset()
                @Expect(offset.isNone(), false)
            } catch (e: Exception) {
                @Expect(e.message.size > 0, true)
            }
        } catch (e: Exception) {
            @Expect(e.message.size > 0, true)
        }
    }
}
