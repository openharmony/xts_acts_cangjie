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
import ohos.hilog.*

@Test
class TestIsLoggable {
    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_valid_parameters_0100
     * @tc.name      : test_is_loggable_valid_domain_and_levels
     * @tc.desc      : Verify all log levels are loggable for representative valid domains and tags.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_is_loggable_valid_domain_and_levels(): Unit {
        let domains = [0u32, 1u32]
        let tags = ["", "testTag"]
        let levels = [LogLevel.Debug, LogLevel.Info, LogLevel.Warning, LogLevel.Error, LogLevel.Fatal]
        for (domain in domains) {
            for (tag in tags) {
                for (level in levels) {
                    @Expect(Hilog.isLoggable(domain, tag, level), true)
                }
            }
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_invalid_parameters_0200
     * @tc.name      : test_is_loggable_invalid_domain_and_levels
     * @tc.desc      : Verify all log levels are not loggable for representative invalid domains.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_is_loggable_invalid_domain_and_levels(): Unit {
        let domains = [114514u32, 4294967295u32]
        let levels = [LogLevel.Debug, LogLevel.Info, LogLevel.Warning, LogLevel.Error, LogLevel.Fatal]
        for (domain in domains) {
            for (level in levels) {
                @Expect(Hilog.isLoggable(domain, "testTag", level), false)
            }
        }
    }
}
