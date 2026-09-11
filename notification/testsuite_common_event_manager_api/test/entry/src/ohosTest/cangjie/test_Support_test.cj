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

struct SupportCase {
    let actual: String
    let expected: String

    public init(actual: String, expected: String) {
        this.actual = actual
        this.expected = expected
    }
}

let supportCases_1: Array<SupportCase> = [
    SupportCase(Support.COMMON_EVENT_ABILITY_ADDED, "common.event.ABILITY_ADDED"),
    SupportCase(Support.COMMON_EVENT_ABILITY_REMOVED, "common.event.ABILITY_REMOVED"),
    SupportCase(Support.COMMON_EVENT_ABILITY_UPDATED, "common.event.ABILITY_UPDATED"),
    SupportCase(Support.COMMON_EVENT_ACCOUNT_DELETED, "usual.event.data.ACCOUNT_DELETED"),
    SupportCase(Support.COMMON_EVENT_AIRPLANE_MODE_CHANGED, "usual.event.AIRPLANE_MODE"),
    SupportCase(Support.COMMON_EVENT_BATTERY_CHANGED, "usual.event.BATTERY_CHANGED"),
    SupportCase(Support.COMMON_EVENT_BATTERY_LOW, "usual.event.BATTERY_LOW"),
    SupportCase(Support.COMMON_EVENT_BATTERY_OKAY, "usual.event.BATTERY_OKAY"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_CONNECT_STATE_UPDATE, "usual.event.bluetooth.handsfree.ag.CONNECT_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_CURRENT_DEVICE_UPDATE, "usual.event.bluetooth.handsfree.ag.CURRENT_DEVICE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_AUDIO_STATE_UPDATE, "usual.event.bluetooth.handsfree.ag.AUDIO_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CONNECT_STATE_UPDATE, "usual.event.bluetooth.a2dpsource.CONNECT_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CURRENT_DEVICE_UPDATE, "usual.event.bluetooth.a2dpsource.CURRENT_DEVICE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_PLAYING_STATE_UPDATE, "usual.event.bluetooth.a2dpsource.PLAYING_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_AVRCP_CONNECT_STATE_UPDATE, "usual.event.bluetooth.a2dpsource.AVRCP_CONNECT_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CODEC_VALUE_UPDATE, "usual.event.bluetooth.a2dpsource.CODEC_VALUE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_DISCOVERED, "usual.event.bluetooth.remotedevice.DISCOVERED"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CLASS_VALUE_UPDATE, "usual.event.bluetooth.remotedevice.CLASS_VALUE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_ACL_CONNECTED, "usual.event.bluetooth.remotedevice.ACL_CONNECTED"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_ACL_DISCONNECTED, "usual.event.bluetooth.remotedevice.ACL_DISCONNECTED"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_NAME_UPDATE, "usual.event.bluetooth.remotedevice.NAME_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIR_STATE, "usual.event.bluetooth.remotedevice.PAIR_STATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_BATTERY_VALUE_UPDATE, "usual.event.bluetooth.remotedevice.BATTERY_VALUE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_SDP_RESULT, "usual.event.bluetooth.remotedevice.SDP_RESULT"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_UUID_VALUE, "usual.event.bluetooth.remotedevice.UUID_VALUE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIRING_REQ, "usual.event.bluetooth.remotedevice.PAIRING_REQ"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIRING_CANCEL, "usual.event.bluetooth.remotedevice.PAIRING_CANCEL"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_REQ, "usual.event.bluetooth.remotedevice.CONNECT_REQ"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_REPLY, "usual.event.bluetooth.remotedevice.CONNECT_REPLY"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_CANCEL, "usual.event.bluetooth.remotedevice.CONNECT_CANCEL")
]

let supportCases_2: Array<SupportCase> = [
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_CONNECT_STATE_UPDATE, "usual.event.bluetooth.handsfreeunit.CONNECT_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AUDIO_STATE_UPDATE, "usual.event.bluetooth.handsfreeunit.AUDIO_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_COMMON_EVENT, "usual.event.bluetooth.handsfreeunit.AG_COMMON_EVENT"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_CALL_STATE_UPDATE, "usual.event.bluetooth.handsfreeunit.AG_CALL_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_STATE_UPDATE, "usual.event.bluetooth.host.STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_DISCOVERABLE, "usual.event.bluetooth.host.REQ_DISCOVERABLE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_ENABLE, "usual.event.bluetooth.host.REQ_ENABLE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_DISABLE, "usual.event.bluetooth.host.REQ_DISABLE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_SCAN_MODE_UPDATE, "usual.event.bluetooth.host.SCAN_MODE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_STARTED, "usual.event.bluetooth.host.DISCOVERY_STARTED"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_FINISHED, "usual.event.bluetooth.host.DISCOVERY_FINISHED"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_HOST_NAME_UPDATE, "usual.event.bluetooth.host.NAME_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_CONNECT_STATE_UPDATE, "usual.event.bluetooth.a2dpsink.CONNECT_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_PLAYING_STATE_UPDATE, "usual.event.bluetooth.a2dpsink.PLAYING_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_AUDIO_STATE_UPDATE, "usual.event.bluetooth.a2dpsink.AUDIO_STATE_UPDATE"),
    SupportCase(Support.COMMON_EVENT_BUNDLE_REMOVED, "usual.event.BUNDLE_REMOVED"),
    SupportCase(Support.COMMON_EVENT_BOOT_COMPLETED, "usual.event.BOOT_COMPLETED"),
    SupportCase(Support.COMMON_EVENT_CONNECTIVITY_CHANGE, "usual.event.CONNECTIVITY_CHANGE"),
    SupportCase(Support.COMMON_EVENT_CALL_STATE_CHANGED, "usual.event.CALL_STATE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_CHARGE_IDLE_MODE_CHANGED, "usual.event.CHARGE_IDLE_MODE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_CHARGING, "usual.event.CHARGING"),
    SupportCase(Support.COMMON_EVENT_CONFIGURATION_CHANGED, "usual.event.CONFIGURATION_CHANGED"),
    SupportCase(Support.COMMON_EVENT_CLOSE_SYSTEM_DIALOGS, "usual.event.CLOSE_SYSTEM_DIALOGS"),
    SupportCase(Support.COMMON_EVENT_DISK_EJECT, "usual.event.data.DISK_EJECT"),
    SupportCase(Support.COMMON_EVENT_DISK_UNMOUNTABLE, "usual.event.data.DISK_UNMOUNTABLE"),
    SupportCase(Support.COMMON_EVENT_DISK_BAD_REMOVAL, "usual.event.data.DISK_BAD_REMOVAL"),
    SupportCase(Support.COMMON_EVENT_DISK_MOUNTED, "usual.event.data.DISK_MOUNTED"),
    SupportCase(Support.COMMON_EVENT_DISK_UNMOUNTED, "usual.event.data.DISK_UNMOUNTED"),
    SupportCase(Support.COMMON_EVENT_DISK_REMOVED, "usual.event.data.DISK_REMOVED"),
    SupportCase(Support.COMMON_EVENT_DEVICE_IDLE_MODE_CHANGED, "usual.event.DEVICE_IDLE_MODE_CHANGED")
]

let supportCases_3: Array<SupportCase> = [
    SupportCase(Support.COMMON_EVENT_DISCHARGING, "usual.event.DISCHARGING"),
    SupportCase(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOFF, "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"),
    SupportCase(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_TOKEN_INVALID, "common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID"),
    SupportCase(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOUT, "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"),
    SupportCase(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGIN, "common.event.DISTRIBUTED_ACCOUNT_LOGIN"),
    SupportCase(Support.COMMON_EVENT_DRIVE_MODE, "common.event.DRIVE_MODE"),
    SupportCase(Support.COMMON_EVENT_DATE_CHANGED, "usual.event.DATE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_EXTERNAL_APPLICATIONS_UNAVAILABLE, "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"),
    SupportCase(Support.COMMON_EVENT_EXTERNAL_APPLICATIONS_AVAILABLE, "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"),
    SupportCase(Support.COMMON_EVENT_FOUNDATION_READY, "common.event.FOUNDATION_READY"),
    SupportCase(Support.COMMON_EVENT_HOME_MODE, "common.event.HOME_MODE"),
    SupportCase(Support.COMMON_EVENT_HTTP_PROXY_CHANGE, "usual.event.HTTP_PROXY_CHANGE"),
    SupportCase(Support.COMMON_EVENT_IVI_SLEEP, "common.event.IVI_SLEEP"),
    SupportCase(Support.COMMON_EVENT_IVI_PAUSE, "common.event.IVI_PAUSE"),
    SupportCase(Support.COMMON_EVENT_IVI_STANDBY, "common.event.IVI_STANDBY"),
    SupportCase(Support.COMMON_EVENT_IVI_LAST_MODE_SAVE, "common.event.IVI_LASTMODE_SAVE"),
    SupportCase(Support.COMMON_EVENT_IVI_VOLTAGE_ABNORMAL, "common.event.IVI_VOLTAGE_ABNORMAL"),
    SupportCase(Support.COMMON_EVENT_IVI_HIGH_TEMPERATURE, "common.event.IVI_HIGH_TEMPERATURE"),
    SupportCase(Support.COMMON_EVENT_IVI_EXTREME_TEMPERATURE, "common.event.IVI_EXTREME_TEMPERATURE"),
    SupportCase(Support.COMMON_EVENT_IVI_TEMPERATURE_ABNORMAL, "common.event.IVI_TEMPERATURE_ABNORMAL"),
    SupportCase(Support.COMMON_EVENT_IVI_VOLTAGE_RECOVERY, "common.event.IVI_VOLTAGE_RECOVERY"),
    SupportCase(Support.COMMON_EVENT_IVI_TEMPERATURE_RECOVERY, "common.event.IVI_TEMPERATURE_RECOVERY"),
    SupportCase(Support.COMMON_EVENT_IVI_ACTIVE, "common.event.IVI_ACTIVE"),
    SupportCase(Support.COMMON_EVENT_LOCKED_BOOT_COMPLETED, "usual.event.LOCKED_BOOT_COMPLETED"),
    SupportCase(Support.COMMON_EVENT_LOCALE_CHANGED, "usual.event.LOCALE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_LOCATION_MODE_STATE_CHANGED, "usual.event.location.MODE_STATE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_MY_PACKAGE_REPLACED, "usual.event.MY_PACKAGE_REPLACED"),
    SupportCase(Support.COMMON_EVENT_MY_PACKAGE_SUSPENDED, "usual.event.MY_PACKAGE_SUSPENDED"),
    SupportCase(Support.COMMON_EVENT_MY_PACKAGE_UNSUSPENDED, "usual.event.MY_PACKAGE_UNSUSPENDED"),
    SupportCase(Support.COMMON_EVENT_MANAGE_PACKAGE_STORAGE, "usual.event.MANAGE_PACKAGE_STORAGE")
]

let supportCases_4: Array<SupportCase> = [
    SupportCase(Support.COMMON_EVENT_NFC_ACTION_ADAPTER_STATE_CHANGED, "usual.event.nfc.action.ADAPTER_STATE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_NFC_ACTION_RF_FIELD_ON_DETECTED, "usual.event.nfc.action.RF_FIELD_ON_DETECTED"),
    SupportCase(Support.COMMON_EVENT_NFC_ACTION_RF_FIELD_OFF_DETECTED, "usual.event.nfc.action.RF_FIELD_OFF_DETECTED"),
    SupportCase(Support.COMMON_EVENT_NETWORK_STATE_CHANGED, "usual.event.NETWORK_STATE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_OFFICE_MODE, "common.event.OFFICE_MODE"),
    SupportCase(Support.COMMON_EVENT_POWER_CONNECTED, "usual.event.POWER_CONNECTED"),
    SupportCase(Support.COMMON_EVENT_POWER_DISCONNECTED, "usual.event.POWER_DISCONNECTED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_ADDED, "usual.event.PACKAGE_ADDED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_REPLACED, "usual.event.PACKAGE_REPLACED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_REMOVED, "usual.event.PACKAGE_REMOVED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_FULLY_REMOVED, "usual.event.PACKAGE_FULLY_REMOVED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_CHANGED, "usual.event.PACKAGE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_RESTARTED, "usual.event.PACKAGE_RESTARTED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_DATA_CLEARED, "usual.event.PACKAGE_DATA_CLEARED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_CACHE_CLEARED, "usual.event.PACKAGE_CACHE_CLEARED"),
    SupportCase(Support.COMMON_EVENT_PACKAGES_SUSPENDED, "usual.event.PACKAGES_SUSPENDED"),
    SupportCase(Support.COMMON_EVENT_PACKAGES_UNSUSPENDED, "usual.event.PACKAGES_UNSUSPENDED"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_FIRST_LAUNCH, "usual.event.PACKAGE_FIRST_LAUNCH"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_NEEDS_VERIFICATION, "usual.event.PACKAGE_NEEDS_VERIFICATION"),
    SupportCase(Support.COMMON_EVENT_PACKAGE_VERIFIED, "usual.event.PACKAGE_VERIFIED"),
    SupportCase(Support.COMMON_EVENT_POWER_SAVE_MODE_CHANGED, "usual.event.POWER_SAVE_MODE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_QUICK_FIX_APPLY_RESULT, "usual.event.QUICK_FIX_APPLY_RESULT"),
    SupportCase(Support.COMMON_EVENT_QUICK_FIX_REVOKE_RESULT, "usual.event.QUICK_FIX_REVOKE_RESULT"),
    SupportCase(Support.COMMON_EVENT_SHUTDOWN, "usual.event.SHUTDOWN"),
    SupportCase(Support.COMMON_EVENT_SCREEN_OFF, "usual.event.SCREEN_OFF"),
    SupportCase(Support.COMMON_EVENT_SCREEN_ON, "usual.event.SCREEN_ON"),
    SupportCase(Support.COMMON_EVENT_SPLIT_SCREEN, "common.event.SPLIT_SCREEN"),
    SupportCase(Support.COMMON_EVENT_SLOT_CHANGE, "usual.event.SLOT_CHANGE"),
    SupportCase(Support.COMMON_EVENT_SPN_INFO_CHANGED, "usual.event.SPN_INFO_CHANGED"),
    SupportCase(Support.COMMON_EVENT_SIGNAL_INFO_CHANGED, "usual.event.SIGNAL_INFO_CHANGED")
]

let supportCases_5: Array<SupportCase> = [
    SupportCase(Support.COMMON_EVENT_SIM_STATE_CHANGED, "usual.event.SIM_STATE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_SCREEN_LOCKED, "usual.event.SCREEN_LOCKED"),
    SupportCase(Support.COMMON_EVENT_SCREEN_UNLOCKED, "usual.event.SCREEN_UNLOCKED"),
    SupportCase(Support.COMMON_EVENT_THERMAL_LEVEL_CHANGED, "usual.event.THERMAL_LEVEL_CHANGED"),
    SupportCase(Support.COMMON_EVENT_TIME_TICK, "usual.event.TIME_TICK"),
    SupportCase(Support.COMMON_EVENT_TIME_CHANGED, "usual.event.TIME_CHANGED"),
    SupportCase(Support.COMMON_EVENT_TIMEZONE_CHANGED, "usual.event.TIMEZONE_CHANGED"),
    SupportCase(Support.COMMON_EVENT_UID_REMOVED, "usual.event.UID_REMOVED"),
    SupportCase(Support.COMMON_EVENT_USER_STARTED, "usual.event.USER_STARTED"),
    SupportCase(Support.COMMON_EVENT_USER_BACKGROUND, "usual.event.USER_BACKGROUND"),
    SupportCase(Support.COMMON_EVENT_USER_FOREGROUND, "usual.event.USER_FOREGROUND"),
    SupportCase(Support.COMMON_EVENT_USER_SWITCHED, "usual.event.USER_SWITCHED"),
    SupportCase(Support.COMMON_EVENT_USER_STARTING, "usual.event.USER_STARTING"),
    SupportCase(Support.COMMON_EVENT_USER_UNLOCKED, "usual.event.USER_UNLOCKED"),
    SupportCase(Support.COMMON_EVENT_USER_STOPPING, "usual.event.USER_STOPPING"),
    SupportCase(Support.COMMON_EVENT_USER_STOPPED, "usual.event.USER_STOPPED"),
    SupportCase(Support.COMMON_EVENT_USER_ADDED, "usual.event.USER_ADDED"),
    SupportCase(Support.COMMON_EVENT_USER_REMOVED, "usual.event.USER_REMOVED"),
    SupportCase(Support.COMMON_EVENT_USB_STATE, "usual.event.hardware.usb.action.USB_STATE"),
    SupportCase(Support.COMMON_EVENT_USB_PORT_CHANGED, "usual.event.hardware.usb.action.USB_PORT_CHANGED"),
    SupportCase(Support.COMMON_EVENT_USB_DEVICE_ATTACHED, "usual.event.hardware.usb.action.USB_DEVICE_ATTACHED"),
    SupportCase(Support.COMMON_EVENT_USB_DEVICE_DETACHED, "usual.event.hardware.usb.action.USB_DEVICE_DETACHED"),
    SupportCase(Support.COMMON_EVENT_USB_ACCESSORY_ATTACHED, "usual.event.hardware.usb.action.USB_ACCESSORY_ATTACHED"),
    SupportCase(Support.COMMON_EVENT_USB_ACCESSORY_DETACHED, "usual.event.hardware.usb.action.USB_ACCESSORY_DETACHED"),
    SupportCase(Support.COMMON_EVENT_USER_INFO_UPDATED, "usual.event.USER_INFO_UPDATED"),
    SupportCase(Support.COMMON_EVENT_VOLUME_REMOVED, "usual.event.data.VOLUME_REMOVED"),
    SupportCase(Support.COMMON_EVENT_VOLUME_UNMOUNTED, "usual.event.data.VOLUME_UNMOUNTED"),
    SupportCase(Support.COMMON_EVENT_VOLUME_MOUNTED, "usual.event.data.VOLUME_MOUNTED"),
    SupportCase(Support.COMMON_EVENT_VOLUME_BAD_REMOVAL, "usual.event.data.VOLUME_BAD_REMOVAL"),
    SupportCase(Support.COMMON_EVENT_VOLUME_EJECT, "usual.event.data.VOLUME_EJECT")
]

let supportCases_6: Array<SupportCase> = [
    SupportCase(Support.COMMON_EVENT_VISIBLE_ACCOUNTS_UPDATED, "usual.event.data.VISIBLE_ACCOUNTS_UPDATED"),
    SupportCase(Support.COMMON_EVENT_WIFI_POWER_STATE, "usual.event.wifi.POWER_STATE"),
    SupportCase(Support.COMMON_EVENT_WIFI_SCAN_FINISHED, "usual.event.wifi.SCAN_FINISHED"),
    SupportCase(Support.COMMON_EVENT_WIFI_RSSI_VALUE, "usual.event.wifi.RSSI_VALUE"),
    SupportCase(Support.COMMON_EVENT_WIFI_CONN_STATE, "usual.event.wifi.CONN_STATE"),
    SupportCase(Support.COMMON_EVENT_WIFI_HOTSPOT_STATE, "usual.event.wifi.HOTSPOT_STATE"),
    SupportCase(Support.COMMON_EVENT_WIFI_AP_STA_JOIN, "usual.event.wifi.WIFI_HS_STA_JOIN"),
    SupportCase(Support.COMMON_EVENT_WIFI_AP_STA_LEAVE, "usual.event.wifi.WIFI_HS_STA_LEAVE"),
    SupportCase(Support.COMMON_EVENT_WIFI_MPLINK_STATE_CHANGE, "usual.event.wifi.mplink.STATE_CHANGE"),
    SupportCase(Support.COMMON_EVENT_WIFI_P2P_CONN_STATE, "usual.event.wifi.p2p.CONN_STATE_CHANGE"),
    SupportCase(Support.COMMON_EVENT_WIFI_P2P_STATE_CHANGED, "usual.event.wifi.p2p.STATE_CHANGE"),
    SupportCase(Support.COMMON_EVENT_WIFI_P2P_PEERS_STATE_CHANGED, "usual.event.wifi.p2p.DEVICES_CHANGE"),
    SupportCase(Support.COMMON_EVENT_WIFI_P2P_PEERS_DISCOVERY_STATE_CHANGED, "usual.event.wifi.p2p.PEER_DISCOVERY_STATE_CHANGE"),
    SupportCase(Support.COMMON_EVENT_WIFI_P2P_CURRENT_DEVICE_STATE_CHANGED, "usual.event.wifi.p2p.CURRENT_DEVICE_CHANGE"),
    SupportCase(Support.COMMON_EVENT_WIFI_P2P_GROUP_STATE_CHANGED, "usual.event.wifi.p2p.GROUP_STATE_CHANGED")
]

@Test
class test_Support {
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
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : This structure provides the management capabilities for system public events. Verify Support constants match their expected system event name strings.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        for (param in supportCases_1) {
            @Expect(param.actual, param.expected)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : This structure provides the management capabilities for system public events. Verify Support constants match their expected system event name strings.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 begins.")
        for (param in supportCases_2) {
            @Expect(param.actual, param.expected)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : This structure provides the management capabilities for system public events. Verify Support constants match their expected system event name strings.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_61 begins.")
        for (param in supportCases_3) {
            @Expect(param.actual, param.expected)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : This structure provides the management capabilities for system public events. Verify Support constants match their expected system event name strings.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_91 begins.")
        for (param in supportCases_4) {
            @Expect(param.actual, param.expected)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : This structure provides the management capabilities for system public events. Verify Support constants match their expected system event name strings.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_121 begins.")
        for (param in supportCases_5) {
            @Expect(param.actual, param.expected)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : This structure provides the management capabilities for system public events. Verify Support constants match their expected system event name strings.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_151 begins.")
        for (param in supportCases_6) {
            @Expect(param.actual, param.expected)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_151 ends.")
    }
}