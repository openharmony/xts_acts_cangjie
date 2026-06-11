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

internal import kit.PerformanceAnalysisKit.*
internal import ohos.base.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*

@Test
class Test_hilog {
    override func afterAll(): Unit {
        GC()
        sleep(Duration.second)
    }

    /*
    * @tc.number    : Sub_Cangjie_PerformanceAnalysisKit_Test_hilog_0100
    * @tc.name      : Test_Hilog
    * @tc.desc      : test PerformanceAnalysisKit Hilog
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Hilog() {
        @Expect(Hilog.isLoggable(0, "testTag", LogLevel.Info), true)
        Hilog.debug(0x0001, "testTag", "Hello World!")
        Hilog.info(0x0001, "testTag", "Hello World!")
        Hilog.warn(0x0001, "testTag", "Hello World!")
        Hilog.error(0x0001, "testTag", "Hello World!")
        Hilog.fatal(0x0001, "testTag", "Hello World!")
    }


}
