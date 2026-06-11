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
class test_Support_6 {
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
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_151 begins.")
        @Expect(Support.COMMON_EVENT_VISIBLE_ACCOUNTS_UPDATED, "usual.event.data.VISIBLE_ACCOUNTS_UPDATED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_152 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_POWER_STATE, "usual.event.wifi.POWER_STATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_153 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_SCAN_FINISHED, "usual.event.wifi.SCAN_FINISHED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_154 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_RSSI_VALUE, "usual.event.wifi.RSSI_VALUE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_155 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_CONN_STATE, "usual.event.wifi.CONN_STATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_156 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_HOTSPOT_STATE, "usual.event.wifi.HOTSPOT_STATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_157 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_AP_STA_JOIN, "usual.event.wifi.WIFI_HS_STA_JOIN")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_158 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_AP_STA_LEAVE, "usual.event.wifi.WIFI_HS_STA_LEAVE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_159 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_MPLINK_STATE_CHANGE, "usual.event.wifi.mplink.STATE_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_160 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_CONN_STATE, "usual.event.wifi.p2p.CONN_STATE_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_161 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_STATE_CHANGED, "usual.event.wifi.p2p.STATE_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_162 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_PEERS_STATE_CHANGED, "usual.event.wifi.p2p.DEVICES_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_163 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_PEERS_DISCOVERY_STATE_CHANGED, "usual.event.wifi.p2p.PEER_DISCOVERY_STATE_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_164 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_CURRENT_DEVICE_STATE_CHANGED, "usual.event.wifi.p2p.CURRENT_DEVICE_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_165 begins.")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_GROUP_STATE_CHANGED, "usual.event.wifi.p2p.GROUP_STATE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_165 ends.")
    }
}
