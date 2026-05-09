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

internal import ohos.ark_interop.*
internal import kit.PerformanceAnalysisKit.Hilog
internal import kit.BasicServicesKit.*
internal import kit.BasicServicesKit.CommonEventValueType as CEMValueType
internal import ohos.base.*
internal import std.runtime.*
internal import std.sync.*
internal import std.time.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.collection.HashMap
import ohos.business_exception.{BusinessException}

@Test
class Test_common_event_manager {
    override func afterAll(): Unit {
        gc()
        sleepFor(1.second)
    }

    let support1 = Support.COMMON_EVENT_SCREEN_ON
    let support2 = Support.COMMON_EVENT_BOOT_COMPLETED

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0100
     * @tc.name      : testSupport
     * @tc.desc      : test BasicServicesKit Support
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSupport(): Unit {
        @Expect(Support.COMMON_EVENT_ABILITY_ADDED, "common.event.ABILITY_ADDED")
        @Expect(Support.COMMON_EVENT_PACKAGE_REMOVED, "usual.event.PACKAGE_REMOVED")
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0200
     * @tc.name      : testCreateSubscribeInfo
     * @tc.desc      : test BasicServicesKit createSubscriber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCreateSubscribeInfo(): Unit {
        try {
            let info = CommonEventSubscribeInfo(support1.toString(), priority: 100000)
            CommonEventManager.createSubscriber(info)
        } catch (e: BusinessException) {
            @Expect(e.code, 1500008i32)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0300
     * @tc.name      : testCreateSubscribe
     * @tc.desc      : test BasicServicesKit createSubscriber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testCreateSubscribe(): Unit {
        let info = CommonEventSubscribeInfo(support1.toString())
        let sub = CommonEventManager.createSubscriber(info)
        CommonEventManager.publish(support1.toString())
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0400
     * @tc.name      : testSubscribeAndPublish
     * @tc.desc      : test BasicServicesKit CommonEventPublishData
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSubscribeAndPublish(): Unit {
        let info = CommonEventSubscribeInfo(support1.toString())
        let sub = CommonEventManager.createSubscriber(info)
        let strV = CEMValueType.StringValue("Hello")
        let intV = CEMValueType.Int32Value(11)
        let parameters = HashMap<String, CEMValueType>()
        parameters.add("123", strV)
        parameters.add("321", intV)
        let callBack = {
            e: Option<BusinessException>, c: Option<CommonEventData> => Hilog.info(0, "CangjieTest", "",
                "subscribe success")
        }
        let pData = CommonEventPublishData(bundleName: "com.example.myapplication", data: "newbee", code: 123321,
            subscriberPermissions: ["123321"], isOrdered: true, isSticky: true, parameters: parameters)

        CommonEventManager.subscribe(sub, callBack)
        CommonEventManager.publish(support1.toString(), options: pData)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0500
     * @tc.name      : testUnsubscribe
     * @tc.desc      : test BasicServicesKit unsubscribe
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testUnsubscribe(): Unit {
        let info = CommonEventSubscribeInfo(support1.toString())
        let sub = CommonEventManager.createSubscriber(info)
        let callback = {
            e: Option<BusinessException>, c: Option<CommonEventData> => Hilog.info(0, "CangjieTest", "",
                "Should not reach here!")
        }

        let pData = CommonEventPublishData(bundleName: "com.example.myapplication", data: "newbee", code: 123321,
            subscriberPermissions: ["123321"], isOrdered: true, isSticky: true, parameters: HashMap<String, CommonEventValueType>()
        )
        CommonEventManager.subscribe(sub, callback)
        CommonEventManager.unsubscribe(sub)
        CommonEventManager.publish(support1.toString(), options: pData)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0600
     * @tc.name      : testSelfDefinedEvent
     * @tc.desc      : test BasicServicesKit createSubscriber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testSelfDefinedEvent(): Unit {
        let events = ["Support.CommonEventScreenOn"]
        let info00 = CommonEventSubscribeInfo(support1.toString())
        let sub00 = CommonEventManager.createSubscriber(info00)
        let parameter = HashMap<String, CEMValueType>()
        parameter.add("1", CEMValueType.BoolValue(true))
        parameter.add("2", CEMValueType.Int32Value(1))
        parameter.add("3", CEMValueType.Float64Value(1.1))
        parameter.add("4", CEMValueType.FD(4))
        parameter.add("5", CEMValueType.StringValue("5"))
        parameter.add("6", CEMValueType.ArrayBool([false, true]))
        parameter.add("7", CEMValueType.ArrayInt32([3, 4]))
        parameter.add("8", CEMValueType.ArrayInt64([4, 4]))
        parameter.add("9", CEMValueType.ArrayFloat64([4.5, 4.5]))
        parameter.add("10", CEMValueType.ArrayString(["5+5", "=10"]))
        parameter.add("11", CEMValueType.ArrayFD([5, 6, 7]))
        let commonEventPublishData00 = CommonEventPublishData(bundleName: "com.example.myapplication", data: "newbee",
            code: 123321, subscriberPermissions: ["123321"], isOrdered: true, isSticky: true, parameters: parameter)
        func delayMs(d: Int64): Unit {
            let start = MonoTime.now()
            while (MonoTime.now() < start + Duration.millisecond * d) {}
        }
        let isCallBackCalled = AtomicBool(false)
        let callBack = {
            e: Option<BusinessException>, c: Option<CommonEventData> =>
            Hilog.info(0, "CangjieTest", "", "subscribe success")
            isCallBackCalled.store(true)
        }
        CommonEventManager.subscribe(sub00, callBack)
        @Expect(!isCallBackCalled.load())
        CommonEventManager.publish("Support.CommonEventScreenOn", options: commonEventPublishData00)
        delayMs(1000)
        @Expect(isCallBackCalled.load(),false)
        delayMs(1000)
        CommonEventManager.unsubscribe(sub00)
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0700
     * @tc.name      : testPriority
     * @tc.desc      : test BasicServicesKit subscribe
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPriority(): Unit {
        let events = [support1]
        let info1 = CommonEventSubscribeInfo(support1.toString())
        let info2 = CommonEventSubscribeInfo(support1.toString(), priority: 5)
        Hilog.info(0, "TestCEM", "", "info1 priority = ${info1.priority}")
        Hilog.info(0, "TestCEM", "", "info2 priority = ${info2.priority}")
        let sub1 = CommonEventManager.createSubscriber(info1)
        let sub2 = CommonEventManager.createSubscriber(info2)
        let callBack1 = {
            e: Option<BusinessException>, c: Option<CommonEventData> => Hilog.info(0, "TestCEM", "",
                "1111111111111111111111111111111111")
        }

        let callBack2 = {
            e: Option<BusinessException>, c: Option<CommonEventData> => Hilog.info(0, "TestCEM", "",
                "222222222222222222222222222222222")
        }
        let pData = CommonEventPublishData(bundleName: "com.example.myapplication", data: "newbee", code: 123321,
            subscriberPermissions: ["123321"], isOrdered: false, isSticky: false,
            parameters: HashMap<String, CommonEventValueType>())

        CommonEventManager.subscribe(sub1, callBack1)
        CommonEventManager.subscribe(sub2, callBack2)
        CommonEventManager.publish(support1.toString(), options: pData)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0800
     * @tc.name      : testPermissions
     * @tc.desc      : test BasicServicesKit CommonEventPublishData
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testPermissions(): Unit {
        let callback = {
            e: Option<BusinessException>, c: Option<CommonEventData> => Hilog.info(0, "TestCEM", "", "callback suceess!"
            )
        }

        let info = CommonEventSubscribeInfo(support1.toString())
        let sub = CommonEventManager.createSubscriber(info)
        let parameters = HashMap<String, CEMValueType>()

        parameters.add("1", CEMValueType.BoolValue(true))
        parameters.add("2", CEMValueType.Int32Value(1))
        parameters.add("3", CEMValueType.Float64Value(1.1))
        parameters.add("4", CEMValueType.FD(4))
        parameters.add("5", CEMValueType.StringValue("111"))
        parameters.add("6", CEMValueType.ArrayBool([false, true]))
        parameters.add("7", CEMValueType.ArrayInt32([1, 2]))
        parameters.add("8", CEMValueType.ArrayInt64([1, 2]))
        parameters.add("9", CEMValueType.ArrayFloat64([1.1, 2.1]))
        parameters.add("10", CEMValueType.ArrayString(["123"]))
        parameters.add("11", CEMValueType.ArrayFD([1, 2]))

        let pData = CommonEventPublishData(bundleName: "com.example.myapplication", data: "newbee", code: 123321,
            subscriberPermissions: ["123321"], isOrdered: true, isSticky: true, parameters: parameters)
        CommonEventManager.subscribe(sub, callback)
        CommonEventManager.publish(support1.toString(), options: pData)
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_0900
     * @tc.name      : test_support_value1
     * @tc.desc      : test BasicServicesKit Support
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_support_value1(): Unit {
        @Expect(Support.COMMON_EVENT_ABILITY_ADDED,"common.event.ABILITY_ADDED")
        @Expect(Support.COMMON_EVENT_ABILITY_REMOVED,"common.event.ABILITY_REMOVED")
        @Expect(Support.COMMON_EVENT_ABILITY_UPDATED,"common.event.ABILITY_UPDATED")
        @Expect(Support.COMMON_EVENT_ACCOUNT_DELETED ,"usual.event.data.ACCOUNT_DELETED")
        @Expect(Support.COMMON_EVENT_AIRPLANE_MODE_CHANGED ,"usual.event.AIRPLANE_MODE")
        @Expect(Support.COMMON_EVENT_BATTERY_CHANGED ,"usual.event.BATTERY_CHANGED")
        @Expect(Support.COMMON_EVENT_BATTERY_LOW,"usual.event.BATTERY_LOW")
        @Expect(Support.COMMON_EVENT_BATTERY_OKAY ,"usual.event.BATTERY_OKAY")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_CONNECT_STATE_UPDATE ,"usual.event.bluetooth.handsfree.ag.CONNECT_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_CURRENT_DEVICE_UPDATE ,"usual.event.bluetooth.handsfree.ag.CURRENT_DEVICE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREE_AG_AUDIO_STATE_UPDATE ,"usual.event.bluetooth.handsfree.ag.AUDIO_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CONNECT_STATE_UPDATE ,"usual.event.bluetooth.a2dpsource.CONNECT_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CURRENT_DEVICE_UPDATE ,"usual.event.bluetooth.a2dpsource.CURRENT_DEVICE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_PLAYING_STATE_UPDATE ,"usual.event.bluetooth.a2dpsource.PLAYING_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_AVRCP_CONNECT_STATE_UPDATE ,"usual.event.bluetooth.a2dpsource.AVRCP_CONNECT_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSOURCE_CODEC_VALUE_UPDATE ,"usual.event.bluetooth.a2dpsource.CODEC_VALUE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_DISCOVERED,"usual.event.bluetooth.remotedevice.DISCOVERED")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CLASS_VALUE_UPDATE ,"usual.event.bluetooth.remotedevice.CLASS_VALUE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_ACL_CONNECTED,"usual.event.bluetooth.remotedevice.ACL_CONNECTED")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_ACL_DISCONNECTED ,"usual.event.bluetooth.remotedevice.ACL_DISCONNECTED")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_NAME_UPDATE,"usual.event.bluetooth.remotedevice.NAME_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIR_STATE,"usual.event.bluetooth.remotedevice.PAIR_STATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_BATTERY_VALUE_UPDATE ,"usual.event.bluetooth.remotedevice.BATTERY_VALUE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_SDP_RESULT,"usual.event.bluetooth.remotedevice.SDP_RESULT")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_UUID_VALUE,"usual.event.bluetooth.remotedevice.UUID_VALUE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIRING_REQ,"usual.event.bluetooth.remotedevice.PAIRING_REQ")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_PAIRING_CANCEL,"usual.event.bluetooth.remotedevice.PAIRING_CANCEL")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_REQ,"usual.event.bluetooth.remotedevice.CONNECT_REQ")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_REPLY,"usual.event.bluetooth.remotedevice.CONNECT_REPLY")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_REMOTEDEVICE_CONNECT_CANCEL,"usual.event.bluetooth.remotedevice.CONNECT_CANCEL")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_CONNECT_STATE_UPDATE ,"usual.event.bluetooth.handsfreeunit.CONNECT_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AUDIO_STATE_UPDATE ,"usual.event.bluetooth.handsfreeunit.AUDIO_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_COMMON_EVENT ,"usual.event.bluetooth.handsfreeunit.AG_COMMON_EVENT")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_CALL_STATE_UPDATE ,"usual.event.bluetooth.handsfreeunit.AG_CALL_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_STATE_UPDATE ,"usual.event.bluetooth.host.STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_DISCOVERABLE,"usual.event.bluetooth.host.REQ_DISCOVERABLE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_ENABLE ,"usual.event.bluetooth.host.REQ_ENABLE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_DISABLE ,"usual.event.bluetooth.host.REQ_DISABLE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_SCAN_MODE_UPDATE,"usual.event.bluetooth.host.SCAN_MODE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_STARTED,"usual.event.bluetooth.host.DISCOVERY_STARTED")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_FINISHED,"usual.event.bluetooth.host.DISCOVERY_FINISHED")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_NAME_UPDATE ,"usual.event.bluetooth.host.NAME_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_CONNECT_STATE_UPDATE ,"usual.event.bluetooth.a2dpsink.CONNECT_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_PLAYING_STATE_UPDATE ,"usual.event.bluetooth.a2dpsink.PLAYING_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_AUDIO_STATE_UPDATE,"usual.event.bluetooth.a2dpsink.AUDIO_STATE_UPDATE")
        @Expect(Support.COMMON_EVENT_BUNDLE_REMOVED ,"usual.event.BUNDLE_REMOVED")
        @Expect(Support.COMMON_EVENT_BOOT_COMPLETED ,"usual.event.BOOT_COMPLETED")
        @Expect(Support.COMMON_EVENT_CONNECTIVITY_CHANGE ,"usual.event.CONNECTIVITY_CHANGE")
        @Expect(Support.COMMON_EVENT_CALL_STATE_CHANGED ,"usual.event.CALL_STATE_CHANGED")
        @Expect(Support.COMMON_EVENT_CHARGE_IDLE_MODE_CHANGED ,"usual.event.CHARGE_IDLE_MODE_CHANGED")
        @Expect(Support.COMMON_EVENT_CHARGING,"usual.event.CHARGING")
        @Expect(Support.COMMON_EVENT_CONFIGURATION_CHANGED ,"usual.event.CONFIGURATION_CHANGED")
        @Expect(Support.COMMON_EVENT_CLOSE_SYSTEM_DIALOGS ,"usual.event.CLOSE_SYSTEM_DIALOGS")
        @Expect(Support.COMMON_EVENT_DISK_EJECT ,"usual.event.data.DISK_EJECT")
        @Expect(Support.COMMON_EVENT_DISK_UNMOUNTABLE ,"usual.event.data.DISK_UNMOUNTABLE")
        @Expect(Support.COMMON_EVENT_DISK_BAD_REMOVAL ,"usual.event.data.DISK_BAD_REMOVAL")
        @Expect(Support.COMMON_EVENT_DISK_MOUNTED ,"usual.event.data.DISK_MOUNTED")
        @Expect(Support.COMMON_EVENT_DISK_UNMOUNTED ,"usual.event.data.DISK_UNMOUNTED")
        @Expect(Support.COMMON_EVENT_DISK_REMOVED ,"usual.event.data.DISK_REMOVED")
        @Expect(Support.COMMON_EVENT_DEVICE_IDLE_MODE_CHANGED ,"usual.event.DEVICE_IDLE_MODE_CHANGED")
        @Expect(Support.COMMON_EVENT_DISCHARGING ,"usual.event.DISCHARGING")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOFF,"common.event.DISTRIBUTED_ACCOUNT_LOGOFF")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_TOKEN_INVALID,"common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGOUT,"common.event.DISTRIBUTED_ACCOUNT_LOGOUT")
        @Expect(Support.COMMON_EVENT_DISTRIBUTED_ACCOUNT_LOGIN,"common.event.DISTRIBUTED_ACCOUNT_LOGIN")
        @Expect(Support.COMMON_EVENT_DRIVE_MODE,"common.event.DRIVE_MODE")
        @Expect(Support.COMMON_EVENT_DATE_CHANGED ,"usual.event.DATE_CHANGED")
        @Expect(Support.COMMON_EVENT_EXTERNAL_APPLICATIONS_UNAVAILABLE,"usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE")
        @Expect(Support.COMMON_EVENT_EXTERNAL_APPLICATIONS_AVAILABLE,"usual.event.EXTERNAL_APPLICATIONS_AVAILABLE")
        @Expect(Support.COMMON_EVENT_FOUNDATION_READY,"common.event.FOUNDATION_READY")
        @Expect(Support.COMMON_EVENT_HOME_MODE,"common.event.HOME_MODE")
        @Expect(Support.COMMON_EVENT_HTTP_PROXY_CHANGE ,"usual.event.HTTP_PROXY_CHANGE")
        @Expect(Support.COMMON_EVENT_IVI_SLEEP,"common.event.IVI_SLEEP")
        @Expect(Support.COMMON_EVENT_IVI_PAUSE,"common.event.IVI_PAUSE")
        @Expect(Support.COMMON_EVENT_IVI_STANDBY,"common.event.IVI_STANDBY")
        @Expect(Support.COMMON_EVENT_IVI_LAST_MODE_SAVE,"common.event.IVI_LASTMODE_SAVE")
        @Expect(Support.COMMON_EVENT_IVI_VOLTAGE_ABNORMAL,"common.event.IVI_VOLTAGE_ABNORMAL")
        @Expect(Support.COMMON_EVENT_IVI_HIGH_TEMPERATURE,"common.event.IVI_HIGH_TEMPERATURE")
        @Expect(Support.COMMON_EVENT_IVI_EXTREME_TEMPERATURE,"common.event.IVI_EXTREME_TEMPERATURE")
        @Expect(Support.COMMON_EVENT_IVI_TEMPERATURE_ABNORMAL,"common.event.IVI_TEMPERATURE_ABNORMAL")
        @Expect(Support.COMMON_EVENT_IVI_VOLTAGE_RECOVERY,"common.event.IVI_VOLTAGE_RECOVERY")
        @Expect(Support.COMMON_EVENT_IVI_TEMPERATURE_RECOVERY,"common.event.IVI_TEMPERATURE_RECOVERY")
        @Expect(Support.COMMON_EVENT_IVI_ACTIVE,"common.event.IVI_ACTIVE")
        @Expect(Support.COMMON_EVENT_LOCKED_BOOT_COMPLETED ,"usual.event.LOCKED_BOOT_COMPLETED")
        @Expect(Support.COMMON_EVENT_LOCALE_CHANGED ,"usual.event.LOCALE_CHANGED")
        @Expect(Support.COMMON_EVENT_LOCATION_MODE_STATE_CHANGED ,"usual.event.location.MODE_STATE_CHANGED")
        @Expect(Support.COMMON_EVENT_MY_PACKAGE_REPLACED ,"usual.event.MY_PACKAGE_REPLACED")
        @Expect(Support.COMMON_EVENT_MY_PACKAGE_SUSPENDED ,"usual.event.MY_PACKAGE_SUSPENDED")
        @Expect(Support.COMMON_EVENT_MY_PACKAGE_UNSUSPENDED ,"usual.event.MY_PACKAGE_UNSUSPENDED")
        @Expect(Support.COMMON_EVENT_MANAGE_PACKAGE_STORAGE ,"usual.event.MANAGE_PACKAGE_STORAGE")
        @Expect(Support.COMMON_EVENT_NFC_ACTION_ADAPTER_STATE_CHANGED,"usual.event.nfc.action.ADAPTER_STATE_CHANGED")
        @Expect(Support.COMMON_EVENT_NFC_ACTION_RF_FIELD_ON_DETECTED,"usual.event.nfc.action.RF_FIELD_ON_DETECTED")
        @Expect(Support.COMMON_EVENT_NFC_ACTION_RF_FIELD_OFF_DETECTED,"usual.event.nfc.action.RF_FIELD_OFF_DETECTED")
        @Expect(Support.COMMON_EVENT_NETWORK_STATE_CHANGED ,"usual.event.NETWORK_STATE_CHANGED")
        @Expect(Support.COMMON_EVENT_OFFICE_MODE,"common.event.OFFICE_MODE")
        @Expect(Support.COMMON_EVENT_POWER_CONNECTED ,"usual.event.POWER_CONNECTED")
        @Expect(Support.COMMON_EVENT_POWER_DISCONNECTED ,"usual.event.POWER_DISCONNECTED")
        @Expect(Support.COMMON_EVENT_PACKAGE_ADDED ,"usual.event.PACKAGE_ADDED")
        @Expect(Support.COMMON_EVENT_PACKAGE_REPLACED ,"usual.event.PACKAGE_REPLACED")
        @Expect(Support.COMMON_EVENT_PACKAGE_REMOVED ,"usual.event.PACKAGE_REMOVED")
        @Expect(Support.COMMON_EVENT_PACKAGE_FULLY_REMOVED ,"usual.event.PACKAGE_FULLY_REMOVED")
        @Expect(Support.COMMON_EVENT_PACKAGE_CHANGED ,"usual.event.PACKAGE_CHANGED")
        @Expect(Support.COMMON_EVENT_PACKAGE_RESTARTED ,"usual.event.PACKAGE_RESTARTED")
        @Expect(Support.COMMON_EVENT_PACKAGE_DATA_CLEARED ,"usual.event.PACKAGE_DATA_CLEARED")
        @Expect(Support.COMMON_EVENT_PACKAGE_CACHE_CLEARED ,"usual.event.PACKAGE_CACHE_CLEARED")
        @Expect(Support.COMMON_EVENT_PACKAGES_SUSPENDED ,"usual.event.PACKAGES_SUSPENDED")
        @Expect(Support.COMMON_EVENT_PACKAGES_UNSUSPENDED ,"usual.event.PACKAGES_UNSUSPENDED")
        @Expect(Support.COMMON_EVENT_PACKAGE_FIRST_LAUNCH ,"usual.event.PACKAGE_FIRST_LAUNCH")
        @Expect(Support.COMMON_EVENT_PACKAGE_NEEDS_VERIFICATION ,"usual.event.PACKAGE_NEEDS_VERIFICATION")
        @Expect(Support.COMMON_EVENT_PACKAGE_VERIFIED ,"usual.event.PACKAGE_VERIFIED")
        @Expect(Support.COMMON_EVENT_POWER_SAVE_MODE_CHANGED ,"usual.event.POWER_SAVE_MODE_CHANGED")
        @Expect(Support.COMMON_EVENT_QUICK_FIX_APPLY_RESULT ,"usual.event.QUICK_FIX_APPLY_RESULT")
        @Expect(Support.COMMON_EVENT_QUICK_FIX_REVOKE_RESULT ,"usual.event.QUICK_FIX_REVOKE_RESULT")
        @Expect(Support.COMMON_EVENT_SHUTDOWN,"usual.event.SHUTDOWN")
        @Expect(Support.COMMON_EVENT_SCREEN_OFF,"usual.event.SCREEN_OFF")
        @Expect(Support.COMMON_EVENT_SCREEN_ON,"usual.event.SCREEN_ON")
        @Expect(Support.COMMON_EVENT_SPLIT_SCREEN ,"common.event.SPLIT_SCREEN")
        @Expect(Support.COMMON_EVENT_SLOT_CHANGE,"usual.event.SLOT_CHANGE")
        @Expect(Support.COMMON_EVENT_SPN_INFO_CHANGED ,"usual.event.SPN_INFO_CHANGED")
        @Expect(Support.COMMON_EVENT_SIGNAL_INFO_CHANGED ,"usual.event.SIGNAL_INFO_CHANGED")
        @Expect(Support.COMMON_EVENT_SIM_STATE_CHANGED ,"usual.event.SIM_STATE_CHANGED")
        @Expect(Support.COMMON_EVENT_SCREEN_LOCKED ,"usual.event.SCREEN_LOCKED")
        @Expect(Support.COMMON_EVENT_SCREEN_UNLOCKED ,"usual.event.SCREEN_UNLOCKED")
        @Expect(Support.COMMON_EVENT_THERMAL_LEVEL_CHANGED ,"usual.event.THERMAL_LEVEL_CHANGED")
        @Expect(Support.COMMON_EVENT_TIME_TICK,"usual.event.TIME_TICK")
        @Expect(Support.COMMON_EVENT_TIME_CHANGED ,"usual.event.TIME_CHANGED")
        @Expect(Support.COMMON_EVENT_TIMEZONE_CHANGED ,"usual.event.TIMEZONE_CHANGED")
        @Expect(Support.COMMON_EVENT_UID_REMOVED,"usual.event.UID_REMOVED")
        @Expect(Support.COMMON_EVENT_USER_STARTED ,"usual.event.USER_STARTED")
        @Expect(Support.COMMON_EVENT_USER_BACKGROUND ,"usual.event.USER_BACKGROUND")
        @Expect(Support.COMMON_EVENT_USER_FOREGROUND ,"usual.event.USER_FOREGROUND")
        @Expect(Support.COMMON_EVENT_USER_SWITCHED ,"usual.event.USER_SWITCHED")
        @Expect(Support.COMMON_EVENT_USER_STARTING ,"usual.event.USER_STARTING")
        @Expect(Support.COMMON_EVENT_USER_UNLOCKED ,"usual.event.USER_UNLOCKED")
        @Expect(Support.COMMON_EVENT_USER_STOPPING ,"usual.event.USER_STOPPING")
        @Expect(Support.COMMON_EVENT_USER_STOPPED ,"usual.event.USER_STOPPED")
        @Expect(Support.COMMON_EVENT_USER_ADDED,"usual.event.USER_ADDED")
        @Expect(Support.COMMON_EVENT_USER_REMOVED ,"usual.event.USER_REMOVED")
        @Expect(Support.COMMON_EVENT_USB_STATE ,"usual.event.hardware.usb.action.USB_STATE")
        @Expect(Support.COMMON_EVENT_USB_PORT_CHANGED ,"usual.event.hardware.usb.action.USB_PORT_CHANGED")
        @Expect(Support.COMMON_EVENT_USB_DEVICE_ATTACHED ,"usual.event.hardware.usb.action.USB_DEVICE_ATTACHED")
        @Expect(Support.COMMON_EVENT_USB_DEVICE_DETACHED ,"usual.event.hardware.usb.action.USB_DEVICE_DETACHED")
        @Expect(Support.COMMON_EVENT_USB_ACCESSORY_ATTACHED ,"usual.event.hardware.usb.action.USB_ACCESSORY_ATTACHED")
        @Expect(Support.COMMON_EVENT_USB_ACCESSORY_DETACHED ,"usual.event.hardware.usb.action.USB_ACCESSORY_DETACHED")
        @Expect(Support.COMMON_EVENT_USER_INFO_UPDATED ,"usual.event.USER_INFO_UPDATED")
        @Expect(Support.COMMON_EVENT_VOLUME_REMOVED ,"usual.event.data.VOLUME_REMOVED")
        @Expect(Support.COMMON_EVENT_VOLUME_UNMOUNTED ,"usual.event.data.VOLUME_UNMOUNTED")
        @Expect(Support.COMMON_EVENT_VOLUME_MOUNTED ,"usual.event.data.VOLUME_MOUNTED")
        @Expect(Support.COMMON_EVENT_VOLUME_BAD_REMOVAL ,"usual.event.data.VOLUME_BAD_REMOVAL")
        @Expect(Support.COMMON_EVENT_VOLUME_EJECT ,"usual.event.data.VOLUME_EJECT")
        @Expect(Support.COMMON_EVENT_VISIBLE_ACCOUNTS_UPDATED ,"usual.event.data.VISIBLE_ACCOUNTS_UPDATED")
        @Expect(Support.COMMON_EVENT_WIFI_POWER_STATE ,"usual.event.wifi.POWER_STATE")
        @Expect(Support.COMMON_EVENT_WIFI_SCAN_FINISHED ,"usual.event.wifi.SCAN_FINISHED")
        @Expect(Support.COMMON_EVENT_WIFI_RSSI_VALUE ,"usual.event.wifi.RSSI_VALUE")
        @Expect(Support.COMMON_EVENT_WIFI_CONN_STATE ,"usual.event.wifi.CONN_STATE")
        @Expect(Support.COMMON_EVENT_WIFI_HOTSPOT_STATE ,"usual.event.wifi.HOTSPOT_STATE")
        @Expect(Support.COMMON_EVENT_WIFI_AP_STA_JOIN ,"usual.event.wifi.WIFI_HS_STA_JOIN")
        @Expect(Support.COMMON_EVENT_WIFI_AP_STA_LEAVE ,"usual.event.wifi.WIFI_HS_STA_LEAVE")
        @Expect(Support.COMMON_EVENT_WIFI_MPLINK_STATE_CHANGE ,"usual.event.wifi.mplink.STATE_CHANGE")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_CONN_STATE ,"usual.event.wifi.p2p.CONN_STATE_CHANGE")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_STATE_CHANGED ,"usual.event.wifi.p2p.STATE_CHANGE")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_PEERS_STATE_CHANGED ,"usual.event.wifi.p2p.DEVICES_CHANGE")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_PEERS_DISCOVERY_STATE_CHANGED,"usual.event.wifi.p2p.PEER_DISCOVERY_STATE_CHANGE")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_CURRENT_DEVICE_STATE_CHANGED,"usual.event.wifi.p2p.CURRENT_DEVICE_CHANGE")
        @Expect(Support.COMMON_EVENT_WIFI_P2P_GROUP_STATE_CHANGED ,"usual.event.wifi.p2p.GROUP_STATE_CHANGED")
    }

    /*
     * @tc.number    : Sub_Cangjie_BasicServicesKit_Test_common_event_manager_1300
     * @tc.name      : test_common_event_subscribeInfo
     * @tc.desc      : test BasicServicesKit CommonEventSubscribeInfo
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_common_event_subscribeInfo(): Unit {
        let event = [support1]
        let info = CommonEventSubscribeInfo(
            support1.toString(),
            publisherPermission: "test_permission",
            publisherDeviceId: "test_id",
            userId: 123,
            priority: -1000,
            publisherBundleName: "test_bundleName"
        )
        @Expect(info.publisherPermission, "test_permission")
        @Expect(info.publisherDeviceId, "test_id")
        @Expect(info.userId, 123)
        @Expect(info.priority, -100)
        @Expect(info.publisherBundleName, "test_bundleName")
    }
}
