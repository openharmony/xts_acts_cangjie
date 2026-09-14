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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.i18n.*

@Test
class testI18n_getCalendar_1 {
    /*
     * @tc.number    : Sub_Cangjie_I18n_getCalendar_001
     * @tc.name      : test_getCalendar_001
     * @tc.desc      : Test getCalendar with valid locale
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCalendar_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_001 begins.")
        let calendar = getCalendar("zh-Hans-CN")
        calendar.setTimeZone("Asia/Shanghai")
        let timeZone = calendar.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_getCalendar_002
     * @tc.name      : test_getCalendar_002
     * @tc.desc      : Test getCalendar with locale and calendarType
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCalendar_002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_002 begins.")
        let calendar = getCalendar("en-US", calendarType: CalendarType.Gregory)
        calendar.setTimeZone("Asia/Shanghai")
        let timeZone = calendar.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_getCalendar_003
     * @tc.name      : test_getCalendar_003
     * @tc.desc      : Test getCalendar with Buddhist calendar type
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCalendar_003(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_003 begins.")
        let calendar = getCalendar("th-TH", calendarType: CalendarType.Buddhist)
        calendar.setTimeZone("Asia/Shanghai")
        let timeZone = calendar.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_getCalendar_004
     * @tc.name      : test_getCalendar_004
     * @tc.desc      : Test getCalendar with Japanese calendar type
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCalendar_004(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_004 begins.")
        let calendar = getCalendar("ja-JP", calendarType: CalendarType.Japanese)
        calendar.setTimeZone("Asia/Shanghai")
        let timeZone = calendar.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_getCalendar_005
     * @tc.name      : test_getCalendar_005
     * @tc.desc      : Test getCalendar with Chinese calendar type
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCalendar_005(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_005 begins.")
        let calendar = getCalendar("zh-CN", calendarType: CalendarType.Chinese)
        calendar.setTimeZone("Asia/Shanghai")
        let timeZone = calendar.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
        Hilog.info(0u32, "cangjietest", "testcase test_getCalendar_005 ends.")
}

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_setTime_001
     * @tc.name      : test_Calendar_setTime_001
     * @tc.desc      : Test Calendar.setTime method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_setTime_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setTime_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.setTime(1609459200000.0f64)
        let time = calendar.getTimeInMillis()
        @Expect(time == 1609459200000.0f64)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setTime_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_set_001
     * @tc.name      : test_Calendar_set_001
     * @tc.desc      : Test Calendar.set method with year month date
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_set_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_set_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.set(2024i32, 0i32, 1i32)
        let year = calendar.get("year")
        @Expect(year, 2024i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_set_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_set_002
     * @tc.name      : test_Calendar_set_002
     * @tc.desc      : Test Calendar.set method with full parameters
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_set_002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_set_002 begins.")
        let calendar = getCalendar("en-US")
        calendar.set(2024i32, 5i32, 15i32, hour: 10i32, minute: 30i32, second: 45i32)
        let month = calendar.get("month")
        @Expect(month, 5i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_set_002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_setTimeZone_001
     * @tc.name      : test_Calendar_setTimeZone_001
     * @tc.desc      : Test Calendar.setTimeZone method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_setTimeZone_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setTimeZone_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.setTimeZone("Asia/Shanghai")
        let timeZone = calendar.getTimeZone()
        @Expect(timeZone, "Asia/Shanghai")
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setTimeZone_001 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_getFirstDayOfWeek_001
     * @tc.name      : test_Calendar_getFirstDayOfWeek_001
     * @tc.desc      : Test Calendar.getFirstDayOfWeek method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_getFirstDayOfWeek_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getFirstDayOfWeek_001 begins.")
        let calendar = getCalendar("en-US")
        let firstDay = calendar.getFirstDayOfWeek()
        @Expect(firstDay >= 1i32 && firstDay <= 7i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getFirstDayOfWeek_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_setFirstDayOfWeek_001
     * @tc.name      : test_Calendar_setFirstDayOfWeek_001
     * @tc.desc      : Test Calendar.setFirstDayOfWeek method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_setFirstDayOfWeek_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setFirstDayOfWeek_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.setFirstDayOfWeek(1i32)
        let firstDay = calendar.getFirstDayOfWeek()
        @Expect(firstDay, 1i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setFirstDayOfWeek_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_getMinimalDaysInFirstWeek_001
     * @tc.name      : test_Calendar_getMinimalDaysInFirstWeek_001
     * @tc.desc      : Test Calendar.getMinimalDaysInFirstWeek method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_getMinimalDaysInFirstWeek_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getMinimalDaysInFirstWeek_001 begins.")
        let calendar = getCalendar("en-US")
        let days = calendar.getMinimalDaysInFirstWeek()
        @Expect(days >= 1i32 && days <= 7i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getMinimalDaysInFirstWeek_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_setMinimalDaysInFirstWeek_001
     * @tc.name      : test_Calendar_setMinimalDaysInFirstWeek_001
     * @tc.desc      : Test Calendar.setMinimalDaysInFirstWeek method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_setMinimalDaysInFirstWeek_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setMinimalDaysInFirstWeek_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.setMinimalDaysInFirstWeek(4i32)
        let days = calendar.getMinimalDaysInFirstWeek()
        @Expect(days, 4i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_setMinimalDaysInFirstWeek_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_get_001
     * @tc.name      : test_Calendar_get_001
     * @tc.desc      : Test Calendar.get method for year
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_get_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_get_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.set(2024i32, 0i32, 1i32)
        let year = calendar.get("year")
        @Expect(year, 2024i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_get_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_getDisplayName_001
     * @tc.name      : test_Calendar_getDisplayName_001
     * @tc.desc      : Test Calendar.getDisplayName method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_getDisplayName_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getDisplayName_001 begins.")
        let calendar = getCalendar("en-US", calendarType: CalendarType.Buddhist)
        let name = calendar.getDisplayName("en-US")
        @Expect(name is String)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getDisplayName_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_add_001
     * @tc.name      : test_Calendar_add_001
     * @tc.desc      : Test Calendar.add method for year
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_add_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_add_001 begins.")
        let calendar = getCalendar("en-US")
        calendar.set(2024i32, 0i32, 1i32)
        calendar.add("year", 1i32)
        let year = calendar.get("year")
        @Expect(year, 2025i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_add_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_add_002
     * @tc.name      : test_Calendar_add_002
     * @tc.desc      : Test Calendar.add method for month
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_add_002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_add_002 begins.")
        let calendar = getCalendar("en-US")
        calendar.set(2024i32, 0i32, 1i32)
        calendar.add("month", 2i32)
        let month = calendar.get("month")
        @Expect(month, 2i32)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_add_002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_Calendar_getTimeInMillis_001
     * @tc.name      : test_Calendar_getTimeInMillis_001
     * @tc.desc      : Test Calendar.getTimeInMillis method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Calendar_getTimeInMillis_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getTimeInMillis_001 begins.")
        let calendar = getCalendar("en-US")
        let time = calendar.getTimeInMillis()
        @Expect(time is Float64)
        Hilog.info(0u32, "cangjietest", "testcase test_Calendar_getTimeInMillis_001 ends.")
    }
}