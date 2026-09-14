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

@Test
class PageTransitionInterfaces_2_test {
    /*
     * @tc.number    : TestPageTransitionInterfaces_2_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test PageTransitionInterfaces_2_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let enter = PageTransitionEnter()
        var step = 0

        enter.slide(SlideEffect.Left)
        step = step + 1
        enter.slide(SlideEffect.Right)
        step = step + 1
        enter.slide(SlideEffect.Top)
        step = step + 1
        enter.slide(SlideEffect.Bottom)
        step = step + 1
        @Expect(step, 4)
        @Expect(SlideEffect.Left != SlideEffect.Right, true)
        @Expect(SlideEffect.Top != SlideEffect.Bottom, true)
        @Expect(SlideEffect.Left == SlideEffect.Left, true)

        enter.translate(x: 10i64.vp)
        step = step + 1
        enter.translate(y: 20i64.vp)
        step = step + 1
        enter.translate(x: 5i64.vp, y: 15i64.vp)
        step = step + 1
        enter.translate(x: 0i64.vp, y: 0i64.vp, z: 0i64.vp)
        step = step + 1
        enter.translate(x: Option<Length>.None, y: Option<Length>.None, z: Option<Length>.None)
        step = step + 1
        @Expect(step, 9)

        enter.scale(x: 2.0f32)
        step = step + 1
        enter.scale(y: 0.5f32)
        step = step + 1
        enter.scale(x: 1.0f32, y: 1.0f32)
        step = step + 1
        enter.scale(x: 2.0f32, y: 2.0f32, centerX: 50i64.vp, centerY: 50i64.vp)
        step = step + 1
        enter.scale(x: Option<Float32>.None, y: Option<Float32>.None, z: Option<Float32>.None,
            centerX: Option<Length>.None, centerY: Option<Length>.None)
        step = step + 1
        @Expect(step, 14)

        enter.opacity(0.0)
        step = step + 1
        enter.opacity(0.5)
        step = step + 1
        enter.opacity(1.0)
        step = step + 1
        enter.opacity(-1.0)
        step = step + 1
        enter.opacity(100.0)
        step = step + 1
        @Expect(step, 19)

        let chained = enter
            .slide(SlideEffect.Left)
            .translate(x: 10i64.vp, y: 20i64.vp)
            .scale(x: 1.5f32, y: 1.5f32)
            .opacity(0.8)
        step = step + 1
        @Expect(step, 20)

        let exit = PageTransitionExit()
        exit.slide(SlideEffect.Right).translate(x: 0i64.vp, y: 0i64.vp).scale(x: 1.0f32, y: 1.0f32).opacity(1.0)
        step = step + 1
        @Expect(step, 21)

        let chained2 = enter
            .slide(SlideEffect.Bottom)
            .translate(z: 50i64.vp)
            .scale(x: 0.5f32, y: 0.5f32, z: 0.5f32, centerX: 100i64.vp, centerY: 100i64.vp)
            .opacity(0.0)

        enter.opacity(0.3)
        enter.scale(x: 3.0f32)
        enter.translate(x: 200i64.vp, y: 300i64.vp, z: 100i64.vp)
        enter.slide(SlideEffect.Top)
        step = step + 1
        @Expect(step, 22)
    }
}
