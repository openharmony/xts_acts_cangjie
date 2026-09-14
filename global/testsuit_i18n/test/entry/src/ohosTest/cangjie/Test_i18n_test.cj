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
import ohos.arkui.state_macro_manage.r
import ohos.resource_manager.AppResource
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.resource_manager.ArgsValueType
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType
import std.runtime.gc
import ohos.i18n.*
import ohos.business_exception.{BusinessException}

@Test
class Test_i18n {
    /*
     * @tc.number    : Sub_Cangjie_i18n_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        let appPreferredLanguage = System.getAppPreferredLanguage()
        @Expect(appPreferredLanguage, "zh-Hans-CN")

    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        let calendar1 = getCalendar("zh-Hans")
        calendar1.setTimeZone("Asia/Shanghai")
        let timeZone = calendar1.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        calendar.set(2025, 10, 29, hour: 12, minute: 30, second: 30)
        let year = calendar.get("year")
        let month = calendar.get("month")
        let date = calendar.get("date")
        let hour_of_day = calendar.get("hour_of_day")
        let minute = calendar.get("minute")
        let second = calendar.get("second")
        @Expect(year, 2025)
        @Expect(month, 10)
        @Expect(date, 29)
        @Expect(hour_of_day, 12)
        @Expect(minute, 30)
        @Expect(second, 30)
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        let res = calendar.getDisplayName("zh")
        @Expect(res, "公历")
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        calendar.setFirstDayOfWeek(1)
        let res = calendar.getFirstDayOfWeek()
        @Expect(res, 1)
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        calendar.setMinimalDaysInFirstWeek(1)        
        let res = calendar.getMinimalDaysInFirstWeek()
        @Expect(res, 1)
    }
    /*
     * @tc.number    : Sub_Cangjie_i18n_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        calendar.setTime(5000.0)
        let res = calendar.getTimeInMillis()
        @Expect(res, 5000.0)
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        calendar.setFirstDayOfWeek(3)
        let res = calendar.getFirstDayOfWeek()
        @Expect(res, 3)
    }
    /*
     * @tc.number    : Sub_Cangjie_i18n_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        calendar.setMinimalDaysInFirstWeek(3)
        let res = calendar.getMinimalDaysInFirstWeek()
        @Expect(res, 3)
    }

    /*
     * @tc.number    : Sub_Cangjie_i18n_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : test i18n 
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        let calendar = getCalendar("zh-Hans")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        calendar.set(2021, 11, 11)
        try {
            calendar.add("", 4)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 890001)
        }
    }

}
