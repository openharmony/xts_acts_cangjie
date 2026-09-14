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
import ohos.arkui.component.progress.*


public sealed interface CommonProgressStyleOptions {
}

public class RingStyleOptions <: CommonProgressStyleOptions {
    public var strokeWidth: ?Length
    public var shadow: ?Bool
    public var status: ?ProgressStatus
    public var enableSmoothEffect: ?Bool
    public var enableScanEffect: ?Bool

    public init(
        strokeWidth!: ?Length = None,
        shadow!: ?Bool = None,
        status!: ?ProgressStatus = None,
        enableSmoothEffect!: ?Bool = None,
        enableScanEffect!: ?Bool = None
    ) {
        this.strokeWidth = strokeWidth
        this.shadow = shadow
        this.status = status
        this.enableSmoothEffect = enableSmoothEffect
        this.enableScanEffect = enableScanEffect
    }
}

@Test
class ProgressInterfaces_test {
    /*
     * @tc.number    : TestProgress_0100
     * @tc.name      : TestCase_Progress_1
     * @tc.desc      : validate ProgressStatus enum equality operators and RingStyleOptions full params
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_Progress_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase Progress_1 begins.")

        let loading = ProgressStatus.Loading
        var loadingMatch = 0
        match (loading) {
            case ProgressStatus.Loading => loadingMatch = 1
            case _ => ()
        }
        @Expect(loadingMatch, 1)

        let progressing = ProgressStatus.Progressing
        var progressingMatch = 0
        match (progressing) {
            case ProgressStatus.Progressing => progressingMatch = 1
            case _ => ()
        }
        @Expect(progressingMatch, 1)

        var equalCount = 0
        if (loading == ProgressStatus.Loading) {
            equalCount = 1
        }
        @Expect(equalCount, 1)

        var notEqualCount = 0
        if (loading != progressing) {
            notEqualCount = 1
        }
        @Expect(notEqualCount, 1)

        var progressingSelfEqual = 0
        if (progressing == ProgressStatus.Progressing) {
            progressingSelfEqual = 1
        }
        @Expect(progressingSelfEqual, 1)

        var crossNotEqual = 0
        if (progressing != ProgressStatus.Loading) {
            crossNotEqual = 1
        }
        @Expect(crossNotEqual, 1)

        let opts = RingStyleOptions(
            strokeWidth: 10.0,
            shadow: true,
            status: ProgressStatus.Loading,
            enableSmoothEffect: false,
            enableScanEffect: true
        )
        @Expect(opts.strokeWidth.getOrThrow().value, 10.0f64)
        @Expect(opts.shadow, Some(true))
        @Expect(opts.status, Some(ProgressStatus.Loading))
        @Expect(opts.enableSmoothEffect, Some(false))
        @Expect(opts.enableScanEffect, Some(true))

        var statusEqualInOpts = 0
        if (opts.status == Some(ProgressStatus.Loading)) {
            statusEqualInOpts = 1
        }
        @Expect(statusEqualInOpts, 1)

        opts.strokeWidth = Some(20.0)
        opts.shadow = Some(false)
        opts.status = Some(ProgressStatus.Progressing)
        opts.enableSmoothEffect = Some(true)
        opts.enableScanEffect = Some(false)
        @Expect(opts.strokeWidth.getOrThrow().value, 20.0f64)
        @Expect(opts.shadow, Some(false))
        @Expect(opts.enableSmoothEffect, Some(true))
        @Expect(opts.enableScanEffect, Some(false))

        var statusChangedMatch = 0
        if (opts.status == Some(ProgressStatus.Progressing)) {
            statusChangedMatch = 1
        }
        @Expect(statusChangedMatch, 1)

        let defaultOpts = RingStyleOptions()
        @Expect(defaultOpts.strokeWidth.isNone(), true)
        @Expect(defaultOpts.shadow, Option<Bool>.None)
        @Expect(defaultOpts.enableSmoothEffect, Option<Bool>.None)
        @Expect(defaultOpts.enableScanEffect, Option<Bool>.None)

        Hilog.info(0u32, "CangjieTest", "testcase Progress_1 ends.")
    }
}
