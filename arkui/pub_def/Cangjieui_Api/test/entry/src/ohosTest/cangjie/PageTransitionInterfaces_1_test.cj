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
import ohos.arkui.component.page_transition.*
import ohos.arkui.component.common.*
var cbRoute = RouteType.None
var cbProgress: Float64 = -1.0
@Test
class PageTransitionInterfaces_1_test {
    /*
     * @tc.number    : TestRouteType_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test RouteType None, Push, Pop, validate == and !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let none = RouteType.None
        let push = RouteType.Push
        let pop = RouteType.Pop
        @Expect(none == RouteType.None, true)
        @Expect(push == RouteType.Push, true)
        @Expect(pop == RouteType.Pop, true)
        @Expect(none != RouteType.Push, true)
        @Expect(push != RouteType.Pop, true)
        @Expect(none != RouteType.Pop, true)
        @Expect(none == push, false)
        @Expect(push == pop, false)
    }
    /*
     * @tc.number    : TestSlideEffect_0100
     * @tc.name      : TestCase_2
     * @tc.desc      : test SlideEffect Left, Right, Top, Bottom, validate == and !=
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let left = SlideEffect.Left
        let right = SlideEffect.Right
        let top = SlideEffect.Top
        let bottom = SlideEffect.Bottom
        @Expect(left == SlideEffect.Left, true)
        @Expect(right == SlideEffect.Right, true)
        @Expect(top == SlideEffect.Top, true)
        @Expect(bottom == SlideEffect.Bottom, true)
        @Expect(left != right, true)
        @Expect(top != bottom, true)
        @Expect(left != bottom, true)
        @Expect(right != top, true)
        @Expect(left == right, false)
    }
    /*
     * @tc.number    : TestPageTransitionEnter_0100
     * @tc.name      : TestCase_3
     * @tc.desc      : test PageTransitionEnter default init, onEnter callback registration and manual invocation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let enter = PageTransitionEnter()
        let cb: PageTransitionCallback = { routeType: RouteType, progress: Float64 =>
            cbRoute = routeType
            cbProgress = progress
        }
        enter.onEnter(cb)
        @Expect(cbRoute == RouteType.None, true)
        @Expect(cbProgress, -1.0)
        enter.onEnter(Option<PageTransitionCallback>.None)
        @Expect(cbRoute == RouteType.None, true)
        cb(RouteType.Push, 0.5)
        @Expect(cbRoute == RouteType.Push, true)
        @Expect(cbProgress, 0.5)
        cb(RouteType.Pop, 1.0)
        @Expect(cbRoute == RouteType.Pop, true)
        @Expect(cbProgress, 1.0)
        cb(RouteType.None, 0.0)
        @Expect(cbRoute == RouteType.None, true)
        @Expect(cbProgress, 0.0)
    }
    /*
     * @tc.number    : TestPageTransitionEnter_0200
     * @tc.name      : TestCase_4
     * @tc.desc      : test PageTransitionEnter init with params, CommonTransition method chaining, onEnter on chained result
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let enter = PageTransitionEnter(
            routeType: RouteType.Push,
            duration: 500i32,
            curve: Curve.Linear,
            delay: 100i32
        )

        let cb: PageTransitionCallback = { routeType: RouteType, progress: Float64 =>
            cbRoute = routeType
            cbProgress = progress
        }
        let chained = enter.slide(SlideEffect.Left)
            .translate(x: 10i64.vp, y: 20i64.vp)
            .scale(x: 1.0f32, y: 0.5f32)
            .opacity(0.8)
        chained.onEnter(cb)
        @Expect(cbRoute == RouteType.None, true)
        @Expect(cbProgress, 0.0)
        cb(RouteType.Push, 0.3)
        @Expect(cbRoute == RouteType.Push, true)
        @Expect(cbProgress, 0.3)
        let chained2 = enter.slide(SlideEffect.Right).opacity(1.0)
        chained2.onEnter(cb)
        @Expect(cbRoute == RouteType.Push, true)
        cb(RouteType.Pop, 0.7)
        @Expect(cbRoute == RouteType.Pop, true)
        @Expect(cbProgress, 0.7)
    }
    /*
     * @tc.number    : TestPageTransitionExit_0100
     * @tc.name      : TestCase_5
     * @tc.desc      : test PageTransitionExit default init, onExit callback registration and manual invocation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let exit = PageTransitionExit()
        let cb: PageTransitionCallback = { routeType: RouteType, progress: Float64 =>
            cbRoute = routeType
            cbProgress = progress
        }
        exit.onExit(cb)
        @Expect(cbRoute == RouteType.None, false)
        @Expect(cbProgress > 0.0)
        exit.onExit(Option<PageTransitionCallback>.None)
        @Expect(cbRoute == RouteType.None, false)
        cb(RouteType.Pop, 0.5)
        @Expect(cbRoute == RouteType.Pop, true)
        @Expect(cbProgress, 0.5)
        cb(RouteType.Push, 0.9)
        @Expect(cbRoute == RouteType.Push, true)
        @Expect(cbProgress, 0.9)
    }
    /*
     * @tc.number    : TestPageTransitionExit_0200
     * @tc.name      : TestCase_6
     * @tc.desc      : test PageTransitionExit init with params, CommonTransition method chaining, onExit on chained result
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let exit = PageTransitionExit(
            routeType: RouteType.Pop,
            duration: 300i32,
            curve: Curve.Linear,
            delay: 50i32
        )
        let cb: PageTransitionCallback = { routeType: RouteType, progress: Float64 =>
            cbRoute = routeType
            cbProgress = progress
        }
        let chained = exit.slide(SlideEffect.Bottom)
            .translate(x: 5i64.vp, z: 15i64.vp)
            .scale(x: 0.5f32, y: 0.5f32, centerX: 50i64.vp, centerY: 50i64.vp)
            .opacity(0.3)
        chained.onExit(cb)
        @Expect(cbRoute == RouteType.None, false)
        @Expect(cbProgress > 0.0)
        cb(RouteType.Pop, 0.6)
        @Expect(cbRoute == RouteType.Pop, true)
        @Expect(cbProgress, 0.6)
        let chained2 = exit.slide(SlideEffect.Top).translate(y: 30i64.vp).opacity(0.0)
        chained2.onExit(cb)
        @Expect(cbRoute == RouteType.Pop, true)
        cb(RouteType.None, 1.0)
        @Expect(cbRoute == RouteType.None, true)
        @Expect(cbProgress, 1.0)
    }
}
