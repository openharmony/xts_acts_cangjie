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
class testIsEmergencyPhoneNumberWithOption_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0600
     * @tc.name      : TestCase_10
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Expect(Call.isEmergencyPhoneNumber("", options:EmergencyNumberOptions(slotId:1)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0700
     * @tc.name      : TestCase_11
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Expect(Call.isEmergencyPhoneNumber("", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0800
     * @tc.name      : TestCase_12
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 123456789.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("123456789", options:EmergencyNumberOptions(slotId:1)), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_0900
     * @tc.name      : TestCase_13
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 123456789.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("123456789", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1000
     * @tc.name      : TestCase_14
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: abcdrf.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("abcdrf", options:EmergencyNumberOptions(slotId:1)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1100
     * @tc.name      : TestCase_15
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: abcdrf.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("abcdrf", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1200
     * @tc.name      : TestCase_16
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 010-222222.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("010-222222", options:EmergencyNumberOptions(slotId:1)), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1300
     * @tc.name      : TestCase_17
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 010-222222.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("010-222222", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1400
     * @tc.name      : TestCase_18
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 11111111111.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("11111111111", options:EmergencyNumberOptions(slotId:1)), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1500
     * @tc.name      : TestCase_19
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 11111111111.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("11111111111", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1600
     * @tc.name      : TestCase_20
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: -1111.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("-1111", options:EmergencyNumberOptions(slotId:1)), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1700
     * @tc.name      : TestCase_21
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: -1111.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("-1111", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1800
     * @tc.name      : TestCase_22
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 00000.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("00000", options:EmergencyNumberOptions(slotId:1)), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_1900
     * @tc.name      : TestCase_23
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 00000.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("00000", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2000
     * @tc.name      : TestCase_24
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 9223372036854775807.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("9223372036854775807", options:EmergencyNumberOptions(slotId:1)), false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2100
     * @tc.name      : TestCase_25
     * @tc.desc      : test testIsEmergencyPhoneNumber with phoneNumber: 9223372036854775807.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        try {
            @Expect(Call.isEmergencyPhoneNumber("9223372036854775807", options:EmergencyNumberOptions(slotId:2)), false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }
}
