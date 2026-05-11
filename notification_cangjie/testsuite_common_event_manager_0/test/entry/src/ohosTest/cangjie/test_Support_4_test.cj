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
class test_Support_4 {
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
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_91 begins.")
        @Expect(Support.COMMON_EVENT_NFC_ACTION_ADAPTER_STATE_CHANGED, "usual.event.nfc.action.ADAPTER_STATE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_92 begins.")
        @Expect(Support.COMMON_EVENT_NFC_ACTION_RF_FIELD_ON_DETECTED, "usual.event.nfc.action.RF_FIELD_ON_DETECTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_93 begins.")
        @Expect(Support.COMMON_EVENT_NFC_ACTION_RF_FIELD_OFF_DETECTED, "usual.event.nfc.action.RF_FIELD_OFF_DETECTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_94 begins.")
        @Expect(Support.COMMON_EVENT_NETWORK_STATE_CHANGED, "usual.event.NETWORK_STATE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_95 begins.")
        @Expect(Support.COMMON_EVENT_OFFICE_MODE, "common.event.OFFICE_MODE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_96 begins.")
        @Expect(Support.COMMON_EVENT_POWER_CONNECTED, "usual.event.POWER_CONNECTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_97 begins.")
        @Expect(Support.COMMON_EVENT_POWER_DISCONNECTED, "usual.event.POWER_DISCONNECTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_98 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_ADDED, "usual.event.PACKAGE_ADDED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_99 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_REPLACED, "usual.event.PACKAGE_REPLACED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_100 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_REMOVED, "usual.event.PACKAGE_REMOVED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_100 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_101 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_FULLY_REMOVED, "usual.event.PACKAGE_FULLY_REMOVED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_102 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_CHANGED, "usual.event.PACKAGE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_103 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_RESTARTED, "usual.event.PACKAGE_RESTARTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_104 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_DATA_CLEARED, "usual.event.PACKAGE_DATA_CLEARED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_105 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_CACHE_CLEARED, "usual.event.PACKAGE_CACHE_CLEARED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_106 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGES_SUSPENDED, "usual.event.PACKAGES_SUSPENDED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_107 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGES_UNSUSPENDED, "usual.event.PACKAGES_UNSUSPENDED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_108 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_FIRST_LAUNCH, "usual.event.PACKAGE_FIRST_LAUNCH")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_109 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_NEEDS_VERIFICATION, "usual.event.PACKAGE_NEEDS_VERIFICATION")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_110 begins.")
        @Expect(Support.COMMON_EVENT_PACKAGE_VERIFIED, "usual.event.PACKAGE_VERIFIED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_111 begins.")
        @Expect(Support.COMMON_EVENT_POWER_SAVE_MODE_CHANGED, "usual.event.POWER_SAVE_MODE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_112 begins.")
        @Expect(Support.COMMON_EVENT_QUICK_FIX_APPLY_RESULT, "usual.event.QUICK_FIX_APPLY_RESULT")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_113 begins.")
        @Expect(Support.COMMON_EVENT_QUICK_FIX_REVOKE_RESULT, "usual.event.QUICK_FIX_REVOKE_RESULT")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_114 begins.")
        @Expect(Support.COMMON_EVENT_SHUTDOWN, "usual.event.SHUTDOWN")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_115 begins.")
        @Expect(Support.COMMON_EVENT_SCREEN_OFF, "usual.event.SCREEN_OFF")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_116 begins.")
        @Expect(Support.COMMON_EVENT_SCREEN_ON, "usual.event.SCREEN_ON")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_117 begins.")
        @Expect(Support.COMMON_EVENT_SPLIT_SCREEN, "common.event.SPLIT_SCREEN")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_118 begins.")
        @Expect(Support.COMMON_EVENT_SLOT_CHANGE, "usual.event.SLOT_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_119 begins.")
        @Expect(Support.COMMON_EVENT_SPN_INFO_CHANGED, "usual.event.SPN_INFO_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_120 begins.")
        @Expect(Support.COMMON_EVENT_SIGNAL_INFO_CHANGED, "usual.event.SIGNAL_INFO_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_120 ends.")
    }
}
