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
import std.unittest.testmacro.*
import ohos.base.*
import std.regex.Regex
import kit.TestKit.*
import kit.PerformanceAnalysisKit.*


@Test
class Test_settings {
    /*
     * @tc.number    : Sub_Cangjie_Test_setAndGetBrightness
     * @tc.name      : TestCase_1
     * @tc.desc      : set and get brightness settings
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        const defaultValue = "-1"
        let brightnessValueRegex = Regex("^(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)$")
        @Expect(brightnessValueRegex.matches(getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue)))
        @Expect(brightnessValueRegex.matches(getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, DomainName.DeviceShared)))
        @Expect(getValue(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, DomainName.UserProperty), defaultValue)
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_domainName
     * @tc.name      : TestCase_2
     * @tc.desc      : test domain name enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        @Expect(DomainName.DeviceShared.toString(),"global")
        @Expect(DomainName.UserProperty.toString(),"system")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_date
     * @tc.name      : TestCase_3
     * @tc.desc      : test date enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        @Expect(Date.DateFormat.toString(),"settings.date.date_format")
        @Expect(Date.TimeFormat.toString(),"settings.date.time_format")
        @Expect(Date.AutoGainTime.toString(),"settings.date.auto_gain_time")
        @Expect(Date.AutoGainTimeZone.toString(),"settings.date.auto_gain_time_zone")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_disPlay
     * @tc.name      : TestCase_4
     * @tc.desc      : test display settings
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        @Expect(Display.FontScale.toString(),"settings.display.font_scale")
        @Expect(Display.ScreenBrightnessStatus.toString(),"settings.display.screen_brightness_status")
        @Expect(Display.AutoScreenBrightness.toString(),"settings.display.auto_screen_brightness")
    }

    /*
     * @tc.number    : Sub_Cangjie_Test_disPlay
     * @tc.name      : TestCase_5
     * @tc.desc      : test display settings
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        @Expect(Display.ScreenOffTimeout.toString(),"settings.display.screen_off_timeout")
    }
}