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
import std.regex.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testGetUptime_1 {
    /*
     * @tc.number    : Sub_Cangjie_testGetUptime_getUptime_0100
     * @tc.name      : TestCase_12
     * @tc.desc      : get system up time
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "define local variable time")
        let time = SystemDateTime.getUptime(TimeType.Startup, isNanoseconds: true)
        Hilog.info(0, "cangjietest", "define local variable timeString")
        let timeString = time.toString()
        Hilog.info(0, "cangjietest", "define local variable r")
        let r = Regex("\\d+")
        Hilog.info(0, "cangjietest", "define local variable res")
        let res = r.matches(timeString)
        @Expect(res, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testGetUptime_getUptime_0200
     * @tc.name      : TestCase_13
     * @tc.desc      : get system up time
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "define local variable time")
        let time = SystemDateTime.getUptime(TimeType.Startup, isNanoseconds: false)
        Hilog.info(0, "cangjietest", "define local variable timeString")
        let timeString = time.toString()
        Hilog.info(0, "cangjietest", "define local variable r")
        let r = Regex("\\d+")
        Hilog.info(0, "cangjietest", "define local variable res")
        let res = r.matches(timeString)
        @Expect(res, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testGetUptime_getUptime_0300
     * @tc.name      : TestCase_14
     * @tc.desc      : get system up time
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "define local variable time")
        let time = SystemDateTime.getUptime(TimeType.Startup)
        Hilog.info(0, "cangjietest", "define local variable timeString")
        let timeString = time.toString()
        Hilog.info(0, "cangjietest", "define local variable r")
        let r = Regex("\\d+")
        Hilog.info(0, "cangjietest", "define local variable res")
        let res = r.matches(timeString)
        @Expect(res, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testGetUptime_getUptime_0400
     * @tc.name      : TestCase_15
     * @tc.desc      : get system up time
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "define local variable time")
        let time = SystemDateTime.getUptime(TimeType.Active, isNanoseconds: true)
        Hilog.info(0, "cangjietest", "define local variable timeString")
        let timeString = time.toString()
        Hilog.info(0, "cangjietest", "define local variable r")
        let r = Regex("\\d+")
        Hilog.info(0, "cangjietest", "define local variable res")
        let res = r.matches(timeString)
        @Expect(res, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testGetUptime_getUptime_0500
     * @tc.name      : TestCase_16
     * @tc.desc      : get system up time
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "define local variable time")
        let time = SystemDateTime.getUptime(TimeType.Active, isNanoseconds: false)
        Hilog.info(0, "cangjietest", "define local variable timeString")
        let timeString = time.toString()
        Hilog.info(0, "cangjietest", "define local variable r")
        let r = Regex("\\d+")
        Hilog.info(0, "cangjietest", "define local variable res")
        let res = r.matches(timeString)
        @Expect(res, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testGetUptime_getUptime_0600
     * @tc.name      : TestCase_17
     * @tc.desc      : get system up time
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "define local variable time")
        let time = SystemDateTime.getUptime(TimeType.Active)
        Hilog.info(0, "cangjietest", "define local variable timeString")
        let timeString = time.toString()
        Hilog.info(0, "cangjietest", "define local variable r")
        let r = Regex("\\d+")
        Hilog.info(0, "cangjietest", "define local variable res")
        let res = r.matches(timeString)
        @Expect(res, true)
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }
}
