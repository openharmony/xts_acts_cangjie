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
class testFormatPhoneNumber_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2200
     * @tc.name      : TestCase_26
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "")
            @Expect(Call.formatPhoneNumber("", options: numberFormat), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2300
     * @tc.name      : TestCase_27
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "CN")
            @Expect(Call.formatPhoneNumber("", options: numberFormat), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2400
     * @tc.name      : TestCase_28
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "cn")
            @Expect(Call.formatPhoneNumber("", options: numberFormat), "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2500
     * @tc.name      : TestCase_29
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 12345678910, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "")
            @Expect(Call.formatPhoneNumber("12345678910", options: numberFormat), "12345678910")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2600
     * @tc.name      : TestCase_30
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 12345678910, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "CN")
        @Expect(Call.formatPhoneNumber("12345678910", options: numberFormat), "12345678910")
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2700
     * @tc.name      : TestCase_31
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 12345678910, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "cn")
        @Expect(Call.formatPhoneNumber("12345678910", options: numberFormat), "12345678910")
        Hilog.info(0, "cangjietest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2800
     * @tc.name      : TestCase_32
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "")
            @Expect(Call.formatPhoneNumber("010-222222", options: numberFormat), "010-222222")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_2900
     * @tc.name      : TestCase_33
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "CN")
        @Expect(Call.formatPhoneNumber("010-222222", options: numberFormat), "010-222222")
        Hilog.info(0, "cangjietest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3000
     * @tc.name      : TestCase_34
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "cn")
        @Expect(Call.formatPhoneNumber("010-222222", options: numberFormat), "010-222222")
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3100
     * @tc.name      : TestCase_35
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11122223333, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "")
            @Expect(Call.formatPhoneNumber("11122223333", options: numberFormat), "11122223333")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3200
     * @tc.name      : TestCase_36
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11122223333, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "CN")
        @Expect(Call.formatPhoneNumber("11122223333", options: numberFormat), "11122223333")
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3300
     * @tc.name      : TestCase_37
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11122223333, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "cn")
        @Expect(Call.formatPhoneNumber("11122223333", options: numberFormat), "11122223333")
        Hilog.info(0, "cangjietest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3400
     * @tc.name      : TestCase_38
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "")
            @Expect(Call.formatPhoneNumber("#1$2%3@4", options: numberFormat), "#1$2%3@4")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3500
     * @tc.name      : TestCase_39
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "CN")
        @Expect(Call.formatPhoneNumber("#1$2%3@4", options: numberFormat), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3600
     * @tc.name      : TestCase_40
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "cn")
        @Expect(Call.formatPhoneNumber("#1$2%3@4", options: numberFormat), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3700
     * @tc.name      : TestCase_41
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            let numberFormat = NumberFormatOptions(countryCode: "")
            @Expect(Call.formatPhoneNumber("aaaa", options: numberFormat), "aaaa")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3800
     * @tc.name      : TestCase_42
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "CN")
        @Expect(Call.formatPhoneNumber("aaaa", options: numberFormat), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_3900
     * @tc.name      : TestCase_43
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest", "define local variable numberFormat")
        let numberFormat = NumberFormatOptions(countryCode: "cn")
        @Expect(Call.formatPhoneNumber("aaaa", options: numberFormat), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_43 ends.")
    }
}
