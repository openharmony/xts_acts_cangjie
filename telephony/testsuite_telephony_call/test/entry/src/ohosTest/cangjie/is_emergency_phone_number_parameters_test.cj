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
class TestIsEmergencyPhoneNumberParameters {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0100
     * @tc.name      : test_case_5
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_5 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            Call.isEmergencyPhoneNumber("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_case_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0200
     * @tc.name      : test_case_6
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 123456789.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_6(): Unit {
        let cases_1319 = [
            "123456789",
            "010-222222",
            "9223372036854775807"
        ]
        for (parameter_0 in cases_1319) {
            @Expect(Call.isEmergencyPhoneNumber(parameter_0), false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0300
     * @tc.name      : test_case_7
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: abcdrf.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_case_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_case_7 begins.")
        try {
            Call.isEmergencyPhoneNumber("abcdrf")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_case_7 ends.")
    }
}
