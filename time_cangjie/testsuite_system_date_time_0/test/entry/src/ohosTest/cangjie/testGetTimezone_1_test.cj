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
import ohos.system_date_time.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testGetTimezone_1 {
    /*
     * @tc.number    : Sub_Cangjie_testGetTimezone_getTimezone_0100
     * @tc.name      : TestCase_18
     * @tc.desc      : get system timezone.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        @Expect(["Antarctica/McMurdo", "America/Argentina/Buenos_Aires", "Australia/Sydney", "America/Noronha", "America/St_Johns", "Africa/Kinshasa", "America/Santiago", "Asia/Shanghai", "Asia/Nicosia", "Europe/Berlin", "America/Guayaquil", "Europe/Madrid", "Pacific/Pohnpei", "America/Godthab", "Asia/Jakarta", "Pacific/Tarawa", "Asia/Almaty", "Pacific/Majuro", "Asia/Ulaanbaatar", "America/Mexico_City", "Asia/Kuala_Lumpur", "Pacific/Auckland", "Pacific/Tahiti", "Pacific/Port_Moresby", "Asia/Gaza", "Europe/Lisbon", "Europe/Moscow", "Europe/Kiev", "Pacific/Wake", "America/New_York", "Asia/Tashkent"] |> contains(SystemDateTime.getTimezone()), true)
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }
}
