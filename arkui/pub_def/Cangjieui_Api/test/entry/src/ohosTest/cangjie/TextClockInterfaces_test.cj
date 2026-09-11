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
import ohos.arkui.component.text_clock.*

@Test
class TextClockInterfaces_test {
    /*
     * @tc.number    : TestTextClockInterfaces_test_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test TextClockInterfaces_test case TestCase_1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        let opts = DateTimeOptions()
        @Expect(opts.locale.isNone(), false)
        @Expect(opts.dateStyle.isNone(), false)
        @Expect(opts.timeStyle.isNone(), false)
        @Expect(opts.hourCycle.isNone(), false)
        @Expect(opts.timeZone.isNone(), false)
        @Expect(opts.numberingSystem.isNone(), false)
        @Expect(opts.hour12.isNone(), false)
        @Expect(opts.weekday.isNone(), false)
        @Expect(opts.era.isNone(), false)
        @Expect(opts.year.isNone(), false)
        @Expect(opts.month.isNone(), false)
        @Expect(opts.day.isNone(), false)
        @Expect(opts.hour.isNone(), false)
        @Expect(opts.minute.isNone(), false)
        @Expect(opts.second.isNone(), false)
        @Expect(opts.timeZoneName.isNone(), false)
        @Expect(opts.dayPeriod.isNone(), false)
        @Expect(opts.localeMatcher.isNone(), false)
        @Expect(opts.formatMatcher.isNone(), false)

        let opts2 = DateTimeOptions(
            locale: "zh-CN", dateStyle: "full", timeStyle: "medium",
            hourCycle: "h12", timeZone: "Asia/Shanghai", numberingSystem: "latn",
            hour12: true, weekday: "long", era: "short",
            year: "numeric", month: "long", day: "numeric",
            hour: "2-digit", minute: "2-digit", second: "2-digit",
            timeZoneName: "long", dayPeriod: "short",
            localeMatcher: "best fit", formatMatcher: "basic"
        )
        @Expect(opts2.locale.getOrThrow(), "zh-CN")
        @Expect(opts2.dateStyle.getOrThrow(), "full")
        @Expect(opts2.timeStyle.getOrThrow(), "medium")
        @Expect(opts2.hourCycle.getOrThrow(), "h12")
        @Expect(opts2.timeZone.getOrThrow(), "Asia/Shanghai")
        @Expect(opts2.numberingSystem.getOrThrow(), "latn")
        @Expect(opts2.hour12.getOrThrow(), true)
        @Expect(opts2.weekday.getOrThrow(), "long")
        @Expect(opts2.era.getOrThrow(), "short")
        @Expect(opts2.year.getOrThrow(), "numeric")
        @Expect(opts2.month.getOrThrow(), "long")
        @Expect(opts2.day.getOrThrow(), "numeric")
        @Expect(opts2.hour.getOrThrow(), "2-digit")
        @Expect(opts2.minute.getOrThrow(), "2-digit")
        @Expect(opts2.second.getOrThrow(), "2-digit")
        @Expect(opts2.timeZoneName.getOrThrow(), "long")
        @Expect(opts2.dayPeriod.getOrThrow(), "short")
        @Expect(opts2.localeMatcher.getOrThrow(), "best fit")
        @Expect(opts2.formatMatcher.getOrThrow(), "basic")

        opts2.locale = "en-US"
        @Expect(opts2.locale.getOrThrow(), "en-US")
        opts2.hour12 = false
        @Expect(opts2.hour12.getOrThrow(), false)
        opts2.year = Option<String>.None
        @Expect(opts2.year.isNone(), true)
        opts2.month = Option<String>.None
        @Expect(opts2.month.isNone(), true)
        opts2.hour12 = Option<Bool>.None
        @Expect(opts2.hour12.isNone(), true)
        opts2.timeZone = "UTC"
        @Expect(opts2.timeZone.getOrThrow(), "UTC")
        opts2.weekday = "narrow"
        @Expect(opts2.weekday.getOrThrow(), "narrow")
    }

    /*
     * @tc.number    : TestTextClockInterfaces_test_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test TextClockInterfaces_test case TestCase_2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let tc = TextClockController()
        var step = 0
        tc.start()
        step = step + 1
        tc.stop()
        step = step + 1
        @Expect(step, 2)
        tc.start()
        step = step + 1
        tc.stop()
        step = step + 1
        tc.start()
        tc.stop()
        step = step + 1
        @Expect(step, 5)
        tc.start()
        tc.start()
        tc.stop()
        tc.stop()
        step = step + 1
        @Expect(step, 6)
    }
}
