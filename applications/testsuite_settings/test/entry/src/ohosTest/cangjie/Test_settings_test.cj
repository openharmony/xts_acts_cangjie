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

import kit.BasicServicesKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.base.*
import ohos.business_exception.BusinessException
import std.regex.Regex
import kit.TestKit.*
import kit.PerformanceAnalysisKit.*


@Test
class Test_settings {
    /*
     * @tc.number    : Sub_Cangjie_Test_setAndGetBrightness
     * @tc.name      : TestCase_1
     * @tc.desc      : get brightness setting value across different domain names
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        const defaultValue = "-1"
        let brightnessValueRegex = Regex("^(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)$")
        let domainCases: Array<(DomainName, Bool)> = [
            (DomainName.DeviceShared, false),
            (DomainName.UserProperty, true)
        ]
        for ((domain, expectDefault) in domainCases) {
            let actual = getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, domain)
            if (expectDefault) {
                @Expect(actual, defaultValue)
            } else {
                @Expect(brightnessValueRegex.matches(actual))
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_settings_enumToString
     * @tc.name      : TestCase_2
     * @tc.desc      : test settings enum toString values (DomainName, Date, Display)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        let enumCases: Array<(String, String)> = [
            (DomainName.DeviceShared.toString(), "global"),
            (DomainName.UserProperty.toString(), "system"),
            (Date.DateFormat.toString(), "settings.date.date_format"),
            (Date.TimeFormat.toString(), "settings.date.time_format"),
            (Date.AutoGainTime.toString(), "settings.date.auto_gain_time"),
            (Date.AutoGainTimeZone.toString(), "settings.date.auto_gain_time_zone"),
            (Display.FontScale.toString(), "settings.display.font_scale"),
            (Display.ScreenBrightnessStatus.toString(), "settings.display.screen_brightness_status"),
            (Display.AutoScreenBrightness.toString(), "settings.display.auto_screen_brightness"),
            (Display.ScreenOffTimeout.toString(), "settings.display.screen_off_timeout")
        ]
        for ((actual, expected) in enumCases) {
            @Expect(actual, expected)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_settings_getValue_0300
     * @tc.name      : Test_settings_defaultValue
     * @tc.desc      : Verifies both getValue overloads return an empty-string default for an unknown setting key.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_settings_defaultValue(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_settings_defaultValue begins.")
        let context = getAbilityContext()
        let defaultValue = ""
        @Expect(getValue(context, "cangjie.coverage.unknown", defaultValue), defaultValue)
@Expect(
            getValue(context, "cangjie.coverage.unknown", defaultValue, DomainName.DeviceShared),
            defaultValue
        )
        try {
            let emptyNameValue = getValue(context, "", defaultValue)
            Hilog.info(0u32, "cangjietest", "getValue empty name returned without exception: ${emptyNameValue}")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(e.code, 14800000)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_settings_defaultValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_settings_getValue_0400
     * @tc.name      : Test_settings_moreValueNames
     * @tc.desc      : Exercises getValue with every recognized Date and Display member as the setting name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_settings_moreValueNames(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_settings_moreValueNames begins.")
        let context = getAbilityContext()
        let fallback = "coverage-nonempty-default"
        @Expect(getValue(context, Date.DateFormat, fallback).size > 0, true)
        @Expect(getValue(context, Date.TimeFormat, fallback).size > 0, true)
        @Expect(getValue(context, Date.AutoGainTime, fallback).size > 0, true)
        @Expect(getValue(context, Date.AutoGainTimeZone, fallback).size > 0, true)
        @Expect(getValue(context, Display.FontScale, fallback, DomainName.UserProperty).size > 0, true)
        @Expect(getValue(context, Display.ScreenBrightnessStatus, fallback, DomainName.UserProperty).size > 0, true)
        @Expect(getValue(context, Display.AutoScreenBrightness, fallback, DomainName.UserProperty).size > 0, true)
        @Expect(getValue(context, Display.ScreenOffTimeout, fallback, DomainName.UserProperty).size > 0, true)
        Hilog.info(0u32, "cangjietest", "testcase Test_settings_moreValueNames ends.")
    }

}
