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
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class test_Support_3 {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "cangjietest", "", "get user granted permission ohos.permission.LISTEN_BUNDLE_CHANGE")
        try {
            getRequiredPermissions(["ohos.permission.LISTEN_BUNDLE_CHANGE"])
            sleep(Duration.second * 1i64)
            click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0u32, "cangjietest", "", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_61 begins.")
        @Expect(Support.COMMON_EVENT_DISCHARGING, "usual.event.DISCHARGING")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_62 begins.")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOFF, "common.event.DISTRIBUTED_ACCOUNT_LOGOFF")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_63 begins.")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_TOKEN_INVALID, "common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 begins.")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOUT, "common.event.DISTRIBUTED_ACCOUNT_LOGOUT")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 begins.")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGIN, "common.event.DISTRIBUTED_ACCOUNT_LOGIN")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 begins.")
        @Expect(Support.COMMON_EVENT_DRIVE_MODE, "common.event.DRIVE_MODE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 begins.")
        @Expect(Support.COMMON_EVENT_DATE_CHANGED, "usual.event.DATE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 begins.")
        @Expect(Support.COMMON_EVENT_EXTERNAL_APPLICATIONS_UNAVAILABLE, "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_69 begins.")
        @Expect(Support.COMMON_EVENT_EXTERNAL_APPLICATIONS_AVAILABLE, "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 begins.")
        @Expect(Support.COMMON_EVENT_FOUNDATION_READY, "common.event.FOUNDATION_READY")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_71 begins.")
        @Expect(Support.COMMON_EVENT_HOME_MODE, "common.event.HOME_MODE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_72 begins.")
        @Expect(Support.COMMON_EVENT_HTTP_PROXY_CHANGE, "usual.event.HTTP_PROXY_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_73 begins.")
        @Expect(Support.COMMON_EVENT_IVI_SLEEP, "common.event.IVI_SLEEP")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_74 begins.")
        @Expect(Support.COMMON_EVENT_IVI_PAUSE, "common.event.IVI_PAUSE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_75 begins.")
        @Expect(Support.COMMON_EVENT_IVI_STANDBY, "common.event.IVI_STANDBY")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_76 begins.")
        @Expect(Support.COMMON_EVENT_IVI_LAST_MODE_SAVE, "common.event.IVI_LASTMODE_SAVE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_77 begins.")
        @Expect(Support.COMMON_EVENT_IVI_VOLTAGE_ABNORMAL, "common.event.IVI_VOLTAGE_ABNORMAL")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_78 begins.")
        @Expect(Support.COMMON_EVENT_IVI_HIGH_TEMPERATURE, "common.event.IVI_HIGH_TEMPERATURE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_79 begins.")
        @Expect(Support.COMMON_EVENT_IVI_EXTREME_TEMPERATURE, "common.event.IVI_EXTREME_TEMPERATURE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 begins.")
        @Expect(Support.COMMON_EVENT_IVI_TEMPERATURE_ABNORMAL, "common.event.IVI_TEMPERATURE_ABNORMAL")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_81 begins.")
        @Expect(Support.COMMON_EVENT_IVI_VOLTAGE_RECOVERY, "common.event.IVI_VOLTAGE_RECOVERY")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_82 begins.")
        @Expect(Support.COMMON_EVENT_IVI_TEMPERATURE_RECOVERY, "common.event.IVI_TEMPERATURE_RECOVERY")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 begins.")
        @Expect(Support.COMMON_EVENT_IVI_ACTIVE, "common.event.IVI_ACTIVE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_84 begins.")
        @Expect(Support.COMMON_EVENT_LOCKED_BOOT_COMPLETED, "usual.event.LOCKED_BOOT_COMPLETED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_85 begins.")
        @Expect(Support.COMMON_EVENT_LOCALE_CHANGED, "usual.event.LOCALE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_86 begins.")
        @Expect(Support.COMMON_EVENT_LOCATION_MODE_STATE_CHANGED, "usual.event.location.MODE_STATE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_87 begins.")
        @Expect(Support.COMMON_EVENT_MY_PACKAGE_REPLACED, "usual.event.MY_PACKAGE_REPLACED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_88 begins.")
        @Expect(Support.COMMON_EVENT_MY_PACKAGE_SUSPENDED, "usual.event.MY_PACKAGE_SUSPENDED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_89 begins.")
        @Expect(Support.COMMON_EVENT_MY_PACKAGE_UNSUSPENDED, "usual.event.MY_PACKAGE_UNSUSPENDED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_90 begins.")
        @Expect(Support.COMMON_EVENT_MANAGE_PACKAGE_STORAGE, "usual.event.MANAGE_PACKAGE_STORAGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_90 ends.")
    }
}
