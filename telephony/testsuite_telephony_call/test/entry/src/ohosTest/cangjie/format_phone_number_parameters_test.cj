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
import ohos.business_exception.*

@Test
class TestFormatPhoneNumberParameters {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2200
     * @tc.name      : test_case_26
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_26(): Unit {
        let cases_1315 = [
            "",
            "CN",
            "cn",
            "",
            "",
            "",
            "",
            ""
        ]
        for (parameter_0 in cases_1315) {
            try {
                let numberFormat = NumberFormatOptions(countryCode: parameter_0)
                @Expect(false)
            } catch (e: BusinessException) {
                @Expect(e.code, 8300001i32)
            }

        }
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2600
     * @tc.name      : test_case_30
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 12345678910, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_30(): Unit {
        let cases_1316 = [
            ("CN", "12345678910", "12345678910"),
            ("cn", "12345678910", "12345678910"),
            ("CN", "010-222222", "010-222222"),
            ("cn", "010-222222", "010-222222"),
            ("CN", "11122223333", "11122223333"),
            ("cn", "11122223333", "11122223333"),
            ("CN", "#1$2%3@4", "#1$2%3@4"),
            ("cn", "#1$2%3@4", "#1$2%3@4"),
            ("CN", "aaaa", ""),
            ("cn", "aaaa", "")
        ]
        for ((parameter_0, parameter_1, parameter_2) in cases_1316) {
            let numberFormat = NumberFormatOptions(countryCode: parameter_0)
            @Expect(Call.formatPhoneNumber(parameter_1, options: numberFormat), parameter_2)

        }
    }
}
