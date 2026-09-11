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
import ohos.arkui.component.swiper.*

var cbCalled = 0

public open class Indicator {
    public init() {}
    public static func dot(): DotIndicator { DotIndicator() }
    public static func digit(): DigitIndicator { DigitIndicator() }
    public func left(value: ?Length): This { this }
    public func top(value: ?Length): This { this }
    public func right(value: ?Length): This { this }
    public func bottom(value: ?Length): This { this }
    public func start(value: ?Length): This { this }
    public func end(value: ?Length): This { this }
}


@Test
class SwiperInterfaces_test {
    /*
     * @tc.number    : TestIndicator_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test Indicator dot/digit static factory, position methods chaining
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let dotFromStatic = Indicator.dot()
        let digitFromStatic = Indicator.digit()

        let ind = Indicator()
        var step = 0
        ind.left(10i64.vp)
        step = step + 1
        ind.top(20i64.vp)
        step = step + 1
        ind.right(30i64.vp)
        step = step + 1
        ind.bottom(40i64.vp)
        step = step + 1
        ind.start(5i64.vp)
        step = step + 1
        ind.end(15i64.vp)
        step = step + 1
        @Expect(step, 6)

        let chained = ind.left(0i64.vp).top(0i64.vp).right(0i64.vp).bottom(0i64.vp).start(0i64.vp).end(0i64.vp)

        ind.left(Option<Length>.None)
        ind.top(Option<Length>.None)
        ind.right(Option<Length>.None)
        ind.bottom(Option<Length>.None)
        ind.start(Option<Length>.None)
        ind.end(Option<Length>.None)
        step = step + 1
        @Expect(step, 7)
    }

    /*
     * @tc.number    : TestDotIndicator_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test DotIndicator init and all 8 methods with chaining and None params
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let dot = DotIndicator()

        var step = 0
        dot.itemWidth(10i64.vp)
        step = step + 1
        dot.itemHeight(5i64.vp)
        step = step + 1
        dot.selectedItemWidth(12i64.vp)
        step = step + 1
        dot.selectedItemHeight(6i64.vp)
        step = step + 1
        dot.mask(true)
        step = step + 1
        dot.color(baseColor.Red)
        step = step + 1
        dot.selectedColor(baseColor.Blue)
        step = step + 1
        dot.maxDisplayCount(10u32)
        step = step + 1
        @Expect(step, 8)

        dot.itemWidth(Option<Length>.None)
        dot.itemHeight(Option<Length>.None)
        dot.selectedItemWidth(Option<Length>.None)
        dot.selectedItemHeight(Option<Length>.None)
        dot.mask(Option<Bool>.None)
        dot.color(Option<ResourceColor>.None)
        dot.selectedColor(Option<ResourceColor>.None)
        dot.maxDisplayCount(Option<UInt32>.None)
        step = step + 1
        @Expect(step, 9)

        let dotFromFactory = Indicator.dot()
        let chained = dotFromFactory
            .itemWidth(8i64.vp)
            .itemHeight(4i64.vp)
            .selectedItemWidth(10i64.vp)
            .selectedItemHeight(5i64.vp)
            .mask(false)
            .color(baseColor.Green)
            .selectedColor(baseColor.White)
            .maxDisplayCount(5u32)

        let chainedWithPositions = chained
            .left(10i64.vp)
            .top(20i64.vp)
            .right(30i64.vp)
            .bottom(40i64.vp)
            .start(5i64.vp)
            .end(15i64.vp)
    }

    /*
     * @tc.number    : TestDigitIndicator_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test DigitIndicator init and all 4 methods with chaining and None params
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let digit = DigitIndicator()

        var step = 0
        digit.fontColor(baseColor.Red)
        step = step + 1
        digit.selectedFontColor(baseColor.Blue)
        step = step + 1
        digit.digitFont(Font(size: 16i64.vp, weight: FontWeight.Bold))
        step = step + 1
        digit.selectedDigitFont(Font(size: 20i64.vp, weight: FontWeight.Normal))
        step = step + 1
        @Expect(step, 4)

        digit.fontColor(Option<ResourceColor>.None)
        digit.selectedFontColor(Option<ResourceColor>.None)
        digit.digitFont(Option<Font>.None)
        digit.selectedDigitFont(Option<Font>.None)
        step = step + 1
        @Expect(step, 5)

        let digitFromFactory = Indicator.digit()
        let chained = digitFromFactory
            .fontColor(baseColor.Black)
            .selectedFontColor(baseColor.White)
            .digitFont(Font(size: 14i64.vp))
            .selectedDigitFont(Font(size: 18i64.vp, style: FontStyle.Italic))

        let chainedWithPositions = chained
            .left(0i64.vp)
            .top(0i64.vp)
            .right(0i64.vp)
            .bottom(0i64.vp)
            .start(0i64.vp)
            .end(0i64.vp)
    }

    /*
     * @tc.number    : TestSwiperController_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test SwiperController init, showNext, showPrevious, finishAnimation (2 overloads)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let sc = SwiperController()

        var step = 0
        sc.showNext()
        step = step + 1
        sc.showPrevious()
        step = step + 1
        @Expect(step, 2)

        sc.finishAnimation()
        step = step + 1
        @Expect(step, 3)

        
        let cb: VoidCallback = { => cbCalled = cbCalled + 1 }
        sc.finishAnimation(cb)
        step = step + 1
        @Expect(step, 4)

        sc.finishAnimation(Option<VoidCallback>.None)
        step = step + 1
        @Expect(step, 5)

        sc.showNext()
        sc.showPrevious()
        sc.showNext()
        sc.showPrevious()
        sc.finishAnimation()
        step = step + 1
        @Expect(step, 6)

        sc.finishAnimation({ => })
        sc.finishAnimation(Option<VoidCallback>.None)
        step = step + 1
        @Expect(step, 7)
    }
}
