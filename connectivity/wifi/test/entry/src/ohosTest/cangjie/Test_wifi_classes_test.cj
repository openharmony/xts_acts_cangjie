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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException
import ohos.callback_invoke.Callback1Argument
import ohos.wifi_manager.WifiP2pConfig
import ohos.wifi_manager.WifiInfoElement
import ohos.wifi_manager.WifiScanInfo
import ohos.wifi_manager.GroupOwnerBand
import ohos.wifi_manager.DeviceAddressType
import ohos.wifi_manager.WifiSecurityType
import ohos.wifi_manager.WifiCategory
import ohos.wifi_manager.getScanInfoList

class WifiInfoElementCb <: Callback1Argument<WifiInfoElement> {
    var lastArg: ?WifiInfoElement = None
    public open func invoke(err: ?BusinessException, arg: WifiInfoElement): Unit {
        lastArg = arg
        let eidVal: UInt32 = arg.eid
        let contentVal: Array<UInt8> = arg.content
        Hilog.info(0, "cangjietest", "element eid ${eidVal} content size ${contentVal.size}")
    }
}

class WifiScanInfoCb <: Callback1Argument<WifiScanInfo> {
    var lastArg: ?WifiScanInfo = None
    public open func invoke(err: ?BusinessException, arg: WifiScanInfo): Unit {
        lastArg = arg
        let ssidVal: String = arg.ssid
        let bssidVal: String = arg.bssid
        let bssidTypeVal: DeviceAddressType = arg.bssidType
        let capabilitiesVal: String = arg.capabilities
        let securityTypeVal: WifiSecurityType = arg.securityType
        let bandVal: Int32 = arg.band
        let frequencyVal: Int32 = arg.frequency
        let channelWidthVal: Int32 = arg.channelWidth
        let centerFrequency0Val: Int32 = arg.centerFrequency0
        let centerFrequency1Val: Int32 = arg.centerFrequency1
        let timestampVal: Int64 = arg.timestamp
        let supportedWifiCategoryVal: WifiCategory = arg.supportedWifiCategory
        let isHiLinkNetworkVal: Bool = arg.isHiLinkNetwork
        let infoElemsVal: Array<WifiInfoElement> = arg.infoElems
        Hilog.info(0, "cangjietest", "scan ssid ${ssidVal} bssid ${bssidVal} band ${bandVal} freq ${frequencyVal} ts ${timestampVal}")
    }
}

@Test
class Test_wifi_classes {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiP2pConfig_construct_251001
     * @tc.name      : test_wifi_WifiP2pConfig_construct
     * @tc.desc      : Test WifiP2pConfig constructor with all parameters and field access
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiP2pConfig_construct(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiP2pConfig_construct begins.")
        let config = WifiP2pConfig(
            "00:11:22:33:44:55",
            -1i32,
            "passphrase123",
            "testGroup",
            GroupOwnerBand.GoBandAuto,
            deviceAddressType: DeviceAddressType.RealDeviceAddress
        )
        @Expect(config.deviceAddress, "00:11:22:33:44:55")
        @Expect(config.netId, -1i32)
        @Expect(config.passphrase, "passphrase123")
        @Expect(config.groupName, "testGroup")
        @Expect(config.goBand == GroupOwnerBand.GoBandAuto, true)
        @Expect(config.deviceAddressType == DeviceAddressType.RealDeviceAddress, true)
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiP2pConfig_construct ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiP2pConfig_default_deviceAddressType_251002
     * @tc.name      : test_wifi_WifiP2pConfig_default_deviceAddressType
     * @tc.desc      : Test WifiP2pConfig constructor default deviceAddressType is RandomDeviceAddress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiP2pConfig_default_deviceAddressType(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiP2pConfig_default_deviceAddressType begins.")
        let config = WifiP2pConfig(
            "AA:BB:CC:DD:EE:FF",
            -2i32,
            "mypsk",
            "persistentGroup",
            GroupOwnerBand.GoBand5GHz
        )
        @Expect(config.deviceAddress, "AA:BB:CC:DD:EE:FF")
        @Expect(config.netId, -2i32)
        @Expect(config.passphrase, "mypsk")
        @Expect(config.groupName, "persistentGroup")
        @Expect(config.goBand == GroupOwnerBand.GoBand5GHz, true)
        @Expect(config.deviceAddressType == DeviceAddressType.RandomDeviceAddress, true)
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiP2pConfig_default_deviceAddressType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiP2pConfig_field_mutation_251003
     * @tc.name      : test_wifi_WifiP2pConfig_field_mutation
     * @tc.desc      : Test WifiP2pConfig public var fields are mutable
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiP2pConfig_field_mutation(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiP2pConfig_field_mutation begins.")
        let config = WifiP2pConfig(
            "00:00:00:00:00:00",
            0i32,
            "",
            "",
            GroupOwnerBand.GoBand2GHz
        )
        config.deviceAddress = "11:22:33:44:55:66"
        config.netId = 100i32
        config.passphrase = "newpass"
        config.groupName = "newGroup"
        config.goBand = GroupOwnerBand.GoBand5GHz
        config.deviceAddressType = DeviceAddressType.RealDeviceAddress
        @Expect(config.deviceAddress, "11:22:33:44:55:66")
        @Expect(config.netId, 100i32)
        @Expect(config.passphrase, "newpass")
        @Expect(config.groupName, "newGroup")
        @Expect(config.goBand == GroupOwnerBand.GoBand5GHz, true)
        @Expect(config.deviceAddressType == DeviceAddressType.RealDeviceAddress, true)
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiP2pConfig_field_mutation ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiInfoElement_reference_251004
     * @tc.name      : test_wifi_WifiInfoElement_reference
     * @tc.desc      : Test WifiInfoElement class type reference and field types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiInfoElement_reference(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiInfoElement_reference begins.")
        let cb = WifiInfoElementCb()
        try {
            let list: Array<WifiScanInfo> = getScanInfoList()
            @Expect(list.size >= 0)
            for (s in list) {
                let elems: Array<WifiInfoElement> = s.infoElems
                for (e in elems) {
                    cb.invoke(None, e)
                    @Expect(cb.lastArg.isSome())
                    let arg = cb.lastArg.getOrThrow()
                    let eidVal: UInt32 = arg.eid
                    let contentVal: Array<UInt8> = arg.content
                    @Expect(eidVal <= 255u32, true)
                    Hilog.info(0, "cangjietest", "element eid ${eidVal} content size ${contentVal.size}")
                }
            }
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiInfoElement_reference ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiScanInfo_reference_251005
     * @tc.name      : test_wifi_WifiScanInfo_reference
     * @tc.desc      : Test WifiScanInfo class type reference and field types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiScanInfo_reference(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiScanInfo_reference begins.")
        let cb = WifiScanInfoCb()
        try {
            let list: Array<WifiScanInfo> = getScanInfoList()
            @Expect(list.size >= 0)
            for (s in list) {
                cb.invoke(None, s)
                @Expect(cb.lastArg.isSome())
                let arg = cb.lastArg.getOrThrow()
                let ssidVal: String = arg.ssid
                let bssidVal: String = arg.bssid
                let bandVal: Int32 = arg.band
                let frequencyVal: Int32 = arg.frequency
                let channelWidthVal: Int32 = arg.channelWidth
                let centerFrequency0Val: Int32 = arg.centerFrequency0
                let centerFrequency1Val: Int32 = arg.centerFrequency1
                let timestampVal: Int64 = arg.timestamp
                @Expect(bandVal > 0, true)
                @Expect(frequencyVal > 0, true)
                @Expect(channelWidthVal >= 0, true)
                @Expect(centerFrequency0Val >= 0, true)
                @Expect(centerFrequency1Val >= 0, true)
                @Expect(timestampVal >= 0, true)
                Hilog.info(0, "cangjietest", "scan ssid ${ssidVal} bssid ${bssidVal} band ${bandVal} freq ${frequencyVal} ts ${timestampVal}")
            }
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiScanInfo_reference ends.")
    }
}
