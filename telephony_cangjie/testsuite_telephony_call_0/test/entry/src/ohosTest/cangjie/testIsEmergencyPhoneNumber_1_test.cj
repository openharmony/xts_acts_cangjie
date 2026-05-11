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
class testIsEmergencyPhoneNumber_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0100
     * @tc.name      : TestCase_5
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.isEmergencyPhoneNumber(""), false)
            @Expect("assertion#5: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0200
     * @tc.name      : TestCase_6
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 123456789.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        @Assert(Call.isEmergencyPhoneNumber("123456789"), false)
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0300
     * @tc.name      : TestCase_7
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: abcdrf.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        try {
            @Assert(Call.isEmergencyPhoneNumber("abcdrf"), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0400
     * @tc.name      : TestCase_8
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 010-222222.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        @Assert(Call.isEmergencyPhoneNumber("010-222222"), false)
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0500
     * @tc.name      : TestCase_9
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 9223372036854775807.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        @Assert(Call.isEmergencyPhoneNumber("9223372036854775807"), false)
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }
}
