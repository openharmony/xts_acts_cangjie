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
import kit.PerformanceAnalysisKit.Hilog
import std.collection.*
import std.regex.*

@Test
class Test_system_date_time {

    /*
    * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_system_date_time_0500
    * @tc.name      : test_getTime
    * @tc.desc      : test BasicServicesKit getTime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
     func test_getTime() {
        Hilog.info(0, "SystemDateTime Test", "SystemDateTime::getTime")
        let time = SystemDateTime.getTime(isNanoseconds: true)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }
    /*
     * @tc.number    : SUB_systemDateTime_getTime_sync_0020
     * @tc.name      : test_systemTimeDate_getCurrentTime1
     * @tc.desc      : Obtains the number of milliseconds that have elapsed since the Unix epoch.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime1(): Unit {
        let time = SystemDateTime.getTime(isNanoseconds: false)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getTime_sync_0030
     * @tc.name      : test_systemTimeDate_getCurrentTime2
     * @tc.desc      : Obtains the number of milliseconds that have elapsed since the Unix epoch.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime2(): Unit {
        let time = SystemDateTime.getTime()
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getUptime_sync_0050
     * @tc.name      : test_systemTimeDate_getCurrentTime3
     * @tc.desc      : Obtains the number of milliseconds elapsed since the system was booted, not including deep sleep time.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime3(): Unit {
        let time = SystemDateTime.getUptime(TimeType.Active, isNanoseconds: true)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getUptime_sync_0060
     * @tc.name      : test_systemTimeDate_getCurrentTime4
     * @tc.desc      : Obtains the number of milliseconds elapsed since the system was booted, not including deep sleep time.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime4(): Unit {
        let time = SystemDateTime.getUptime(TimeType.Active, isNanoseconds: false)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getUptime_sync_0070
     * @tc.name      : test_systemTimeDate_getCurrentTime5
     * @tc.desc      : Obtains the number of milliseconds elapsed since the system was booted, not including deep sleep time.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime5(): Unit {
        let time = SystemDateTime.getUptime(TimeType.Active)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getUptime_sync_0090
     * @tc.name      : test_systemTimeDate_getCurrentTime6
     * @tc.desc      : Obtains the number of milliseconds elapsed since the system was booted, including deep sleep time.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime6(): Unit {
        let time = SystemDateTime.getUptime(TimeType.Startup, isNanoseconds: true)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getUptime_sync_0100
     * @tc.name      : test_systemTimeDate_getCurrentTime7
     * @tc.desc      : Obtains the number of milliseconds elapsed since the system was booted, not including deep sleep time.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime7(): Unit {
        let time = SystemDateTime.getUptime(TimeType.Startup, isNanoseconds: false)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
     * @tc.number    : SUB_systemDateTime_getUptime_sync_0110
     * @tc.name      : test_systemTimeDate_getCurrentTime8
     * @tc.desc      : Obtains the number of milliseconds elapsed since the system was booted, not including deep sleep time.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_systemTimeDate_getCurrentTime8(): Unit {
        let time = SystemDateTime.getUptime(TimeType.Startup)
        let timeString = time.toString()
        let r = Regex("\\d+")
        @Expect(r.matches(timeString), true)
    }

    /*
    * @tc.number    : Sub_Cangjie_SystemDateTime_Test_SystemDateTime_0100
    * @tc.name      : test_getCurrentTime0
    * @tc.desc      : test SystemDateTime test_getCurrentTime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCurrentTime0() {
        let time = SystemDateTime.getTime()
        let uptime = SystemDateTime.getUptime(TimeType.Startup)
        let timezone = SystemDateTime.getTimezone()
        @Expect(timezone,"Asia/Shanghai")
    }

    /*
     * @tc.number    : Sub_Cangjie_testGetTimezone_getTimezone_0100
     * @tc.name      : TestCase_timezone
     * @tc.desc      : get system timezone.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_timezone(): Unit {
        @Expect(["Antarctica/McMurdo", "America/Argentina/Buenos_Aires", "Australia/Sydney", "America/Noronha", "America/St_Johns", "Africa/Kinshasa", "America/Santiago", "Asia/Shanghai", "Asia/Nicosia", "Europe/Berlin", "America/Guayaquil", "Europe/Madrid", "Pacific/Pohnpei", "America/Godthab", "Asia/Jakarta", "Pacific/Tarawa", "Asia/Almaty", "Pacific/Majuro", "Asia/Ulaanbaatar", "America/Mexico_City", "Asia/Kuala_Lumpur", "Pacific/Auckland", "Pacific/Tahiti", "Pacific/Port_Moresby", "Asia/Gaza", "Europe/Lisbon", "Europe/Moscow", "Europe/Kiev", "Pacific/Wake", "America/New_York", "Asia/Tashkent"] |> contains(SystemDateTime.getTimezone()), true)
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }    

}