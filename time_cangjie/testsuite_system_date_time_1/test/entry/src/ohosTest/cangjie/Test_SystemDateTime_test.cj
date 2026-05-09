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

import std.unittest.testmacro.*
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import kit.TestKit.*
import std.math.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import kit.CangjieKit.*

@Test
public class Test_SystemDateTime {
    /*
    * @tc.number    : Sub_Cangjie_SystemDateTime_Test_SystemDateTime_0100
    * @tc.name      : test_getCurrentTime
    * @tc.desc      : test SystemDateTime test_getCurrentTime
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCurrentTime() {
        sleepFor(1.second)
        let time = SystemDateTime.getTime()
        sleepFor(1.second)
        let uptime = SystemDateTime.getUptime(TimeType.Startup)
        let timezone = SystemDateTime.getTimezone()
        Hilog.info(0, "cangjietest", "timezone: ${timezone}")
        @Expect(timezone,"Asia/Shanghai")
    }

   
}
