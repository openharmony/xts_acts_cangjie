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

@Test
class TestIsEmergencyPhoneNumberWithOptionParameters {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0600
     * @tc.name      : test_case_10
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_10(): Unit {
        try {
            Call.isEmergencyPhoneNumber("", options: EmergencyNumberOptions(slotId: 1))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0800
     * @tc.name      : test_case_12
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 123456789.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_12(): Unit {
        let cases_1318 = [
            "123456789",
            "010-222222",
            "11111111111",
            "-1111",
            "00000",
            "9223372036854775807"
        ]
        for (parameter_0 in cases_1318) {
            try {
                @Expect(Call.isEmergencyPhoneNumber(parameter_0, options:EmergencyNumberOptions(slotId:1)), false)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
    }
}
