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
import ohos.telephony.call.*
import kit.PerformanceAnalysisKit.Hilog
internal import ohos.business_exception.*

@Test
class TestFormatPhoneNumberToE164Parameters {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4000
     * @tc.name      : test_case_44
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_44(): Unit {
        try {
            Call.formatPhoneNumberToE164("", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4700
     * @tc.name      : test_case_51
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_51(): Unit {
        let cases_1314 = [
            ("123456789", "CN", "123456789"),
            ("123456789", "cn", "123456789"),
            ("123456789", "error", ""),
            ("123456789", "US", "123456789"),
            ("123456789", "us", "123456789"),
            ("010-222222", "CN", "010-222222"),
            ("010-222222", "cn", "010-222222"),
            ("010-222222", "error", ""),
            ("010-222222", "US", "010-222222"),
            ("010-222222", "us", "010-222222"),
            ("11111111111", "CN", "11111111111"),
            ("11111111111", "cn", "11111111111"),
            ("11111111111", "error", ""),
            ("11111111111", "US", "11111111111"),
            ("11111111111", "us", "11111111111"),
            ("#1$2%3@4", "CN", "#1$2%3@4"),
            ("#1$2%3@4", "cn", "#1$2%3@4"),
            ("#1$2%3@4", "error", "#1$2%3@4"),
            ("#1$2%3@4", "US", "#1$2%3@4"),
            ("#1$2%3@4", "us", "#1$2%3@4"),
            ("aaaa", "CN", ""),
            ("aaaa", "cn", ""),
            ("aaaa", "error", ""),
            ("aaaa", "US", ""),
            ("aaaa", "us", "")
        ]
        for ((parameter_0, parameter_1, parameter_2) in cases_1314) {
            @Expect(Call.formatPhoneNumberToE164(parameter_0, parameter_1), parameter_2)
        }
    }
}
