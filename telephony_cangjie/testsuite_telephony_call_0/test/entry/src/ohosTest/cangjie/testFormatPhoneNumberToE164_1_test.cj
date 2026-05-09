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
class testFormatPhoneNumberToE164_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4000
     * @tc.name      : TestCase_44
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("", ""), "")
            @Expect("assertion#44: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4100
     * @tc.name      : TestCase_45
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("", "CN"), "")
            @Expect("assertion#45: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4200
     * @tc.name      : TestCase_46
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("", "cn"), "")
            @Expect("assertion#46: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4300
     * @tc.name      : TestCase_47
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: error.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("", "error"), "")
            @Expect("assertion#47: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4400
     * @tc.name      : TestCase_48
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: US.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("", "US"), "")
            @Expect("assertion#48: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4500
     * @tc.name      : TestCase_49
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: , countryCode: us.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("", "us"), "")
            @Expect("assertion#49: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4600
     * @tc.name      : TestCase_50
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("123456789", ""), "123456789")
            @Expect("assertion#50: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4700
     * @tc.name      : TestCase_51
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_51 begins.")
        @Assert(Call.formatPhoneNumberToE164("123456789", "CN"), "123456789")
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4800
     * @tc.name      : TestCase_52
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_52 begins.")
        @Assert(Call.formatPhoneNumberToE164("123456789", "cn"), "123456789")
        Hilog.info(0, "cangjietest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_4900
     * @tc.name      : TestCase_53
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: error.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_53 begins.")
        @Assert(Call.formatPhoneNumberToE164("123456789", "error"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5000
     * @tc.name      : TestCase_54
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: US.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_54 begins.")
        @Assert(Call.formatPhoneNumberToE164("123456789", "US"), "123456789")
        Hilog.info(0, "cangjietest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5100
     * @tc.name      : TestCase_55
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 123456789, countryCode: us.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_55 begins.")
        @Assert(Call.formatPhoneNumberToE164("123456789", "us"), "123456789")
        Hilog.info(0, "cangjietest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5200
     * @tc.name      : TestCase_56
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_56 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("010-222222", ""), "010-222222")
            @Expect("assertion#56: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5300
     * @tc.name      : TestCase_57
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_57 begins.")
        @Assert(Call.formatPhoneNumberToE164("010-222222", "CN"), "010-222222")
        Hilog.info(0, "cangjietest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5400
     * @tc.name      : TestCase_58
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_58 begins.")
        @Assert(Call.formatPhoneNumberToE164("010-222222", "cn"), "010-222222")
        Hilog.info(0, "cangjietest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5500
     * @tc.name      : TestCase_59
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: error.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_59 begins.")
        @Assert(Call.formatPhoneNumberToE164("010-222222", "error"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5600
     * @tc.name      : TestCase_60
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: US.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_60 begins.")
        @Assert(Call.formatPhoneNumberToE164("010-222222", "US"), "010-222222")
        Hilog.info(0, "cangjietest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5700
     * @tc.name      : TestCase_61
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 010-222222, countryCode: us.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_61 begins.")
        @Assert(Call.formatPhoneNumberToE164("010-222222", "us"), "010-222222")
        Hilog.info(0, "cangjietest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5800
     * @tc.name      : TestCase_62
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11111111111, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_62 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("11111111111", ""), "11111111111")
            @Expect("assertion#62: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_5900
     * @tc.name      : TestCase_63
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11111111111, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_63 begins.")
        @Assert(Call.formatPhoneNumberToE164("11111111111", "CN"), "11111111111")
        Hilog.info(0, "cangjietest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6000
     * @tc.name      : TestCase_64
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11111111111, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_64 begins.")
        @Assert(Call.formatPhoneNumberToE164("11111111111", "cn"), "11111111111")
        Hilog.info(0, "cangjietest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6100
     * @tc.name      : TestCase_65
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11111111111, countryCode: error.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_65 begins.")
        @Assert(Call.formatPhoneNumberToE164("11111111111", "error"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6200
     * @tc.name      : TestCase_66
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11111111111, countryCode: US.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_66 begins.")
        @Assert(Call.formatPhoneNumberToE164("11111111111", "US"), "11111111111")
        Hilog.info(0, "cangjietest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6300
     * @tc.name      : TestCase_67
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: 11111111111, countryCode: us.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_67 begins.")
        @Assert(Call.formatPhoneNumberToE164("11111111111", "us"), "11111111111")
        Hilog.info(0, "cangjietest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6400
     * @tc.name      : TestCase_68
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_68 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("#1$2%3@4", ""), "#1$2%3@4")
            @Expect("assertion#68: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6500
     * @tc.name      : TestCase_69
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_69 begins.")
        @Assert(Call.formatPhoneNumberToE164("#1$2%3@4", "CN"), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6600
     * @tc.name      : TestCase_70
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_70 begins.")
        @Assert(Call.formatPhoneNumberToE164("#1$2%3@4", "cn"), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6700
     * @tc.name      : TestCase_71
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: error.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_71 begins.")
        @Assert(Call.formatPhoneNumberToE164("#1$2%3@4", "error"), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6800
     * @tc.name      : TestCase_72
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: US.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_72 begins.")
        @Assert(Call.formatPhoneNumberToE164("#1$2%3@4", "US"), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_6900
     * @tc.name      : TestCase_73
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: #1$2%3@4, countryCode: us.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_73 begins.")
        @Assert(Call.formatPhoneNumberToE164("#1$2%3@4", "us"), "#1$2%3@4")
        Hilog.info(0, "cangjietest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_7000
     * @tc.name      : TestCase_74
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_74 begins.")
        Hilog.info(0, "cangjietest", "would throw exception")
        try {
            @Assert(Call.formatPhoneNumberToE164("aaaa", ""), "aaaa")
            @Expect("assertion#74: not throw", "would throw exception")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid parameter value.")
            @Expect(e.code, 8300001i32)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_7100
     * @tc.name      : TestCase_75
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: CN.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_75 begins.")
        @Assert(Call.formatPhoneNumberToE164("aaaa", "CN"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_7200
     * @tc.name      : TestCase_76
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: cn.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_76 begins.")
        @Assert(Call.formatPhoneNumberToE164("aaaa", "cn"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_7300
     * @tc.name      : TestCase_77
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: error.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_77 begins.")
        @Assert(Call.formatPhoneNumberToE164("aaaa", "error"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_7400
     * @tc.name      : TestCase_78
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: US.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_78 begins.")
        @Assert(Call.formatPhoneNumberToE164("aaaa", "US"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testTelephonyCall_7500
     * @tc.name      : TestCase_79
     * @tc.desc      : test testFormatPhoneNumber with phoneNumber: aaaa, countryCode: us.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_79 begins.")
        @Assert(Call.formatPhoneNumberToE164("aaaa", "us"), "")
        Hilog.info(0, "cangjietest", "testcase TestCase_79 ends.")
    }
}
