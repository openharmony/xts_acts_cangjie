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
import ohos.arkui.component.common.*
import ohos.arkui.component.grid_row.*

@Test
class GridRowInterfaces_test {
    /*
     * @tc.number    : TestGridRowSizeOption_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test GridRowSizeOption default init all None, 6-param init, single-value init, mutability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let opts1 = GridRowSizeOption()
        @Expect(opts1.xs.isNone(), false)
        @Expect(opts1.sm.isNone(), false)
        @Expect(opts1.md.isNone(), false)
        @Expect(opts1.lg.isNone(), false)
        @Expect(opts1.xl.isNone(), false)
        @Expect(opts1.xxl.isNone(), false)

        let opts2 = GridRowSizeOption(
            xs: 1i64.vp, sm: 2i64.vp, md: 3i64.vp,
            lg: 4i64.vp, xl: 5i64.vp, xxl: 6i64.vp
        )
        @Expect(opts2.xs.isSome(), true)
        @Expect(opts2.sm.isSome(), true)
        @Expect(opts2.md.isSome(), true)
        @Expect(opts2.lg.isSome(), true)
        @Expect(opts2.xl.isSome(), true)
        @Expect(opts2.xxl.isSome(), true)

        opts2.xs = 10i64.vp
        @Expect(opts2.xs.isSome(), true)
        opts2.sm = 20i64.vp
        @Expect(opts2.sm.isSome(), true)
        opts2.md = 30i64.vp
        @Expect(opts2.md.isSome(), true)
        opts2.lg = 40i64.vp
        @Expect(opts2.lg.isSome(), true)
        opts2.xl = 50i64.vp
        @Expect(opts2.xl.isSome(), true)
        opts2.xxl = 60i64.vp
        @Expect(opts2.xxl.isSome(), true)

        opts2.xs = Option<Length>.None
        @Expect(opts2.xs.isNone(), true)
        opts2.sm = Option<Length>.None
        @Expect(opts2.sm.isNone(), true)
        opts2.md = Option<Length>.None
        @Expect(opts2.md.isNone(), true)
        opts2.lg = Option<Length>.None
        @Expect(opts2.lg.isNone(), true)
        opts2.xl = Option<Length>.None
        @Expect(opts2.xl.isNone(), true)
        opts2.xxl = Option<Length>.None
        @Expect(opts2.xxl.isNone(), true)

        let opts3 = GridRowSizeOption(Option<Length>.None)
        @Expect(opts3.xs.isNone(), false)
        @Expect(opts3.sm.isNone(), false)
        @Expect(opts3.md.isNone(), false)
        @Expect(opts3.lg.isNone(), false)
        @Expect(opts3.xl.isNone(), false)
        @Expect(opts3.xxl.isNone(), false)

        let opts4 = GridRowSizeOption(100i64.vp)
        @Expect(opts4.xs.isSome(), true)
        @Expect(opts4.sm.isSome(), true)
        @Expect(opts4.md.isSome(), true)
        @Expect(opts4.lg.isSome(), true)
        @Expect(opts4.xl.isSome(), true)
        @Expect(opts4.xxl.isSome(), true)

        let opts5 = GridRowSizeOption(xs: 1i64.vp, lg: 4i64.vp)
        @Expect(opts5.xs.isSome(), true)
        @Expect(opts5.sm.isNone(), false)
        @Expect(opts5.md.isNone(), false)
        @Expect(opts5.lg.isSome(), true)
        @Expect(opts5.xl.isNone(), false)
        @Expect(opts5.xxl.isNone(), false)
    }

    /*
     * @tc.number    : TestBreakPoints_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test BreakPoints default init, param init, mutability, and BreakpointsReference enum
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let bp1 = BreakPoints()
        @Expect(bp1.value.isNone(), false)
        @Expect(bp1.reference.isNone(), false)

        let bp2 = BreakPoints(
            value: [100i64.vp, 200i64.vp, 300i64.vp],
            reference: BreakpointsReference.WindowSize
        )
        @Expect(bp2.value.isSome(), true)
        @Expect(bp2.value.getOrThrow().size, 3)
        @Expect(bp2.reference.isSome(), true)
        @Expect(bp2.reference.getOrThrow() == BreakpointsReference.WindowSize, true)
        @Expect(bp2.reference.getOrThrow() != BreakpointsReference.ComponentSize, true)

        @Expect(BreakpointsReference.WindowSize == BreakpointsReference.WindowSize, true)
        @Expect(BreakpointsReference.ComponentSize == BreakpointsReference.ComponentSize, true)
        @Expect(BreakpointsReference.WindowSize != BreakpointsReference.ComponentSize, true)

        bp2.reference = BreakpointsReference.ComponentSize
        @Expect(bp2.reference.getOrThrow() == BreakpointsReference.ComponentSize, true)
        @Expect(bp2.reference.getOrThrow() != BreakpointsReference.WindowSize, true)

        bp2.value = [50i64.vp, 100i64.vp]
        @Expect(bp2.value.isSome(), true)
        @Expect(bp2.value.getOrThrow().size, 2)

        bp2.value = Option<Array<Length>>.None
        @Expect(bp2.value.isNone(), true)
        bp2.reference = Option<BreakpointsReference>.None
        @Expect(bp2.reference.isNone(), true)

        let bp3 = BreakPoints(value: [0i64.vp])
        @Expect(bp3.value.isSome(), true)
        @Expect(bp3.value.getOrThrow().size, 1)
        @Expect(bp3.reference.isNone(), false)

        let bp4 = BreakPoints(reference: BreakpointsReference.ComponentSize)
        @Expect(bp4.value.isNone(), false)
        @Expect(bp4.reference.isSome(), true)
        @Expect(bp4.reference.getOrThrow() == BreakpointsReference.ComponentSize, true)

        let bp5 = BreakPoints(value: [], reference: BreakpointsReference.WindowSize)
        @Expect(bp5.value.isSome(), true)
        @Expect(bp5.value.getOrThrow().size, 0)
        @Expect(bp5.reference.isSome(), true)
    }
}
