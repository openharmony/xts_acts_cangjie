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
import ohos.i18n.*

@Test
class testI18n_CalendarType_1 {
    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Buddhist_001
     * @tc.name      : test_CalendarType_Buddhist_001
     * @tc.desc      : Test CalendarType.Buddhist enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Buddhist_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Buddhist_001 begins.")
        let calendar = getCalendar("th-TH", calendarType: CalendarType.Buddhist)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Buddhist_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Chinese_001
     * @tc.name      : test_CalendarType_Chinese_001
     * @tc.desc      : Test CalendarType.Chinese enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Chinese_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Chinese_001 begins.")
        let calendar = getCalendar("zh-CN", calendarType: CalendarType.Chinese)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 45)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Chinese_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Coptic_001
     * @tc.name      : test_CalendarType_Coptic_001
     * @tc.desc      : Test CalendarType.Coptic enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Coptic_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Coptic_001 begins.")
        let calendar = getCalendar("en-US", calendarType: CalendarType.Coptic)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Coptic_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Ethiopic_001
     * @tc.name      : test_CalendarType_Ethiopic_001
     * @tc.desc      : Test CalendarType.Ethiopic enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Ethiopic_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Ethiopic_001 begins.")
        let calendar = getCalendar("am-ET", calendarType: CalendarType.Ethiopic)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Ethiopic_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Hebrew_001
     * @tc.name      : test_CalendarType_Hebrew_001
     * @tc.desc      : Test CalendarType.Hebrew enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Hebrew_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Hebrew_001 begins.")
        let calendar = getCalendar("he-IL", calendarType: CalendarType.Hebrew)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Hebrew_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Gregory_001
     * @tc.name      : test_CalendarType_Gregory_001
     * @tc.desc      : Test CalendarType.Gregory enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Gregory_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Gregory_001 begins.")
        let calendar = getCalendar("en-US", calendarType: CalendarType.Gregory)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Gregory_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Indian_001
     * @tc.name      : test_CalendarType_Indian_001
     * @tc.desc      : Test CalendarType.Indian enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Indian_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Indian_001 begins.")
        let calendar = getCalendar("en-US", calendarType: CalendarType.Indian)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Indian_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_IslamicCivil_001
     * @tc.name      : test_CalendarType_IslamicCivil_001
     * @tc.desc      : Test CalendarType.IslamicCivil enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_IslamicCivil_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_IslamicCivil_001 begins.")
        let calendar = getCalendar("ar-SA", calendarType: CalendarType.IslamicCivil)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_IslamicCivil_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_IslamicTbla_001
     * @tc.name      : test_CalendarType_IslamicTbla_001
     * @tc.desc      : Test CalendarType.IslamicTbla enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_IslamicTbla_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_IslamicTbla_001 begins.")
        let calendar = getCalendar("ar-SA", calendarType: CalendarType.IslamicTbla)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_IslamicTbla_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_IslamicUmalqura_001
     * @tc.name      : test_CalendarType_IslamicUmalqura_001
     * @tc.desc      : Test CalendarType.IslamicUmalqura enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_IslamicUmalqura_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_IslamicUmalqura_001 begins.")
        let calendar = getCalendar("ar-SA", calendarType: CalendarType.IslamicUmalqura)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_IslamicUmalqura_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Japanese_001
     * @tc.name      : test_CalendarType_Japanese_001
     * @tc.desc      : Test CalendarType.Japanese enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Japanese_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Japanese_001 begins.")
        let calendar = getCalendar("ja-JP", calendarType: CalendarType.Japanese)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Japanese_001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_I18n_CalendarType_Persian_001
     * @tc.name      : test_CalendarType_Persian_001
     * @tc.desc      : Test CalendarType.Persian enum value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CalendarType_Persian_001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Persian_001 begins.")
        let calendar = getCalendar("fa-IR", calendarType: CalendarType.Persian)
        calendar.set(2021, 11, 11)
        calendar.add("year", 4)
        let res = calendar.get("year")
        @Expect(res, 2025)
        Hilog.info(0u32, "cangjietest", "testcase test_CalendarType_Persian_001 ends.")
    }
}