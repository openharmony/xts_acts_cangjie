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
import ohos.wifi_manager.DeviceAddressType
import ohos.wifi_manager.WifiSecurityType
import ohos.wifi_manager.WifiCategory
import ohos.wifi_manager.GroupOwnerBand
import ohos.wifi_manager.WifiCallbackType

@Test
class Test_wifi_enums {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_DeviceAddressType_values_250001
     * @tc.name      : test_wifi_DeviceAddressType_values
     * @tc.desc      : Test DeviceAddressType enum values RandomDeviceAddress and RealDeviceAddress
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_DeviceAddressType_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_DeviceAddressType_values begins.")
        let random = DeviceAddressType.RandomDeviceAddress
        let real = DeviceAddressType.RealDeviceAddress
        @Expect(random != real, true)
        @Expect(random.toString(), "DeviceAddressType.RandomDeviceAddress")
        @Expect(real.toString(), "DeviceAddressType.RealDeviceAddress")
        Hilog.info(0, "cangjietest", "testcase test_wifi_DeviceAddressType_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiSecurityType_values_250002
     * @tc.name      : test_wifi_WifiSecurityType_values
     * @tc.desc      : Test all 10 WifiSecurityType enum values and equality operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiSecurityType_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiSecurityType_values begins.")
        let invalid = WifiSecurityType.WifiSecTypeInvalid
        let open = WifiSecurityType.WifiSecTypeOpen
        let wep = WifiSecurityType.WifiSecTypeWep
        let psk = WifiSecurityType.WifiSecTypePsk
        let sae = WifiSecurityType.WifiSecTypeSae
        let eap = WifiSecurityType.WifiSecTypeEap
        let eapSuiteB = WifiSecurityType.WifiSecTypeEapSuiteB
        let owe = WifiSecurityType.WifiSecTypeOwe
        let wapiCert = WifiSecurityType.WifiSecTypeWapiCert
        let wapiPsk = WifiSecurityType.WifiSecTypeWapiPsk
        @Expect(invalid != open, true)
        @Expect(open != wep, true)
        @Expect(wep != psk, true)
        @Expect(psk != sae, true)
        @Expect(sae != eap, true)
        @Expect(eap != eapSuiteB, true)
        @Expect(eapSuiteB != owe, true)
        @Expect(owe != wapiCert, true)
        @Expect(wapiCert != wapiPsk, true)
        @Expect(invalid.toString(), "WifiSecurityType.WifiSecTypeInvalid")
        @Expect(open.toString(), "WifiSecurityType.WifiSecTypeOpen")
        @Expect(wep.toString(), "WifiSecurityType.WifiSecTypeWep")
        @Expect(psk.toString(), "WifiSecurityType.WifiSecTypePsk")
        @Expect(sae.toString(), "WifiSecurityType.WifiSecTypeSae")
        @Expect(eap.toString(), "WifiSecurityType.WifiSecTypeEap")
        @Expect(eapSuiteB.toString(), "WifiSecurityType.WifiSecTypeEapSuiteB")
        @Expect(owe.toString(), "WifiSecurityType.WifiSecTypeOwe")
        @Expect(wapiCert.toString(), "WifiSecurityType.WifiSecTypeWapiCert")
        @Expect(wapiPsk.toString(), "WifiSecurityType.WifiSecTypeWapiPsk")
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiSecurityType_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiCategory_values_250003
     * @tc.name      : test_wifi_WifiCategory_values
     * @tc.desc      : Test WifiCategory enum values Default, Wifi6, Wifi6Plus
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiCategory_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiCategory_values begins.")
        let defaultCat = WifiCategory.Default
        let wifi6 = WifiCategory.Wifi6
        let wifi6Plus = WifiCategory.Wifi6Plus
        @Expect(defaultCat != wifi6, true)
        @Expect(defaultCat != wifi6Plus, true)
        @Expect(wifi6 != wifi6Plus, true)
        @Expect(defaultCat.toString(), "WifiCategory.Default")
        @Expect(wifi6.toString(), "WifiCategory.Wifi6")
        @Expect(wifi6Plus.toString(), "WifiCategory.Wifi6Plus")
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiCategory_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_GroupOwnerBand_values_250004
     * @tc.name      : test_wifi_GroupOwnerBand_values
     * @tc.desc      : Test GroupOwnerBand enum values GoBandAuto, GoBand2GHz, GoBand5GHz
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_GroupOwnerBand_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_GroupOwnerBand_values begins.")
        let auto = GroupOwnerBand.GoBandAuto
        let ghz2 = GroupOwnerBand.GoBand2GHz
        let ghz5 = GroupOwnerBand.GoBand5GHz
        @Expect(auto != ghz2, true)
        @Expect(auto != ghz5, true)
        @Expect(ghz2 != ghz5, true)
        @Expect(auto.toString(), "GroupOwnerBand.GoBandAuto")
        @Expect(ghz2.toString(), "GroupOwnerBand.GoBand2GHz")
        @Expect(ghz5.toString(), "GroupOwnerBand.GoBand5GHz")
        Hilog.info(0, "cangjietest", "testcase test_wifi_GroupOwnerBand_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_WifiCallbackType_value_250005
     * @tc.name      : test_wifi_WifiCallbackType_value
     * @tc.desc      : Test WifiCallbackType enum value WifiScanStateChange and hashCode
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_WifiCallbackType_value(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiCallbackType_value begins.")
        let scanStateChange = WifiCallbackType.WifiScanStateChange
        let hash = scanStateChange.hashCode()
        Hilog.info(0, "cangjietest", "WifiCallbackType hashCode: ${hash.toString()}")
        @Expect(scanStateChange.toString(), "WifiCallbackType.WifiScanStateChange")
        Hilog.info(0, "cangjietest", "testcase test_wifi_WifiCallbackType_value ends.")
    }
}
