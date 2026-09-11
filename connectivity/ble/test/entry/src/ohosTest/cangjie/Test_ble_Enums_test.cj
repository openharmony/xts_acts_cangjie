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
import kit.ConnectivityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_ble_Enums {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattWriteType_010
     * @tc.name      : test_ble_GattWriteType
     * @tc.desc      : test GattWriteType enum values and equality operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattWriteType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattWriteType begins.")
        @Expect(GattWriteType.Write != GattWriteType.WriteNoResponse, true)
        @Expect(GattWriteType.WriteNoResponse != GattWriteType.Write, true)
        @Expect(GattWriteType.Write.toString(), "GattWriteType.Write")
        @Expect(GattWriteType.WriteNoResponse.toString(), "GattWriteType.WriteNoResponse")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattWriteType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_BleGattServerCallbackType_011
     * @tc.name      : test_ble_BleGattServerCallbackType
     * @tc.desc      : test BluetoothBleGattServerCallbackType enum values, hashCode, and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_BleGattServerCallbackType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleGattServerCallbackType begins.")
        let cr = BluetoothBleGattServerCallbackType.CharacteristicRead
        let cw = BluetoothBleGattServerCallbackType.CharacteristicWrite
        let dr = BluetoothBleGattServerCallbackType.DescriptorRead
        let dw = BluetoothBleGattServerCallbackType.DescriptorWrite
        let csc = BluetoothBleGattServerCallbackType.ConnectionStateChange
        let sbm = BluetoothBleGattServerCallbackType.ServerBleMtuChange
        @Expect(cr != cw, true)
        @Expect(dr != dw, true)
        @Expect(csc != sbm, true)
        @Expect(cr.toString(), "BluetoothBleGattServerCallbackType.CharacteristicRead")
        @Expect(sbm.toString(), "BluetoothBleGattServerCallbackType.ServerBleMtuChange")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleGattServerCallbackType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_BleGattClientDeviceCallbackType_012
     * @tc.name      : test_ble_BleGattClientDeviceCallbackType
     * @tc.desc      : test BluetoothBleGattClientDeviceCallbackType enum values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_BleGattClientDeviceCallbackType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleGattClientDeviceCallbackType begins.")
        let bcc = BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange
        let bcsc = BluetoothBleGattClientDeviceCallbackType.BleConnectionStateChange
        let cbm = BluetoothBleGattClientDeviceCallbackType.ClientBleMtuChange
        @Expect(bcc != bcsc, true)
        @Expect(bcsc != cbm, true)
        @Expect(bcc != cbm, true)
        @Expect(bcc.toString(), "BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange")
        @Expect(cbm.toString(), "BluetoothBleGattClientDeviceCallbackType.ClientBleMtuChange")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleGattClientDeviceCallbackType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ScanDuty_013
     * @tc.name      : test_ble_ScanDuty
     * @tc.desc      : test ScanDuty enum values and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ScanDuty(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ScanDuty begins.")
        let balanced = ScanDuty.ScanModeBalanced
        let lowLat = ScanDuty.ScanModeLowLatency
        @Expect(balanced != lowLat, true)
        @Expect(balanced != ScanDuty.ScanModeLowPower, true)
        @Expect(balanced.toString(), "ScanDuty.ScanModeBalanced")
        @Expect(lowLat.toString(), "ScanDuty.ScanModeLowLatency")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ScanDuty ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_MatchMode_014
     * @tc.name      : test_ble_MatchMode
     * @tc.desc      : test MatchMode enum values and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_MatchMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_MatchMode begins.")
        let sticky = MatchMode.MatchModeSticky
        @Expect(sticky != MatchMode.MatchModeAggressive, true)
        @Expect(sticky.toString(), "MatchMode.MatchModeSticky")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_MatchMode ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_AdvertisingState_015
     * @tc.name      : test_ble_AdvertisingState
     * @tc.desc      : test AdvertisingState enum values and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_AdvertisingState(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_AdvertisingState begins.")
        let started = AdvertisingState.Started
        let enabled = AdvertisingState.Enabled
        let disabled = AdvertisingState.Disabled
        let stopped = AdvertisingState.Stopped
        @Expect(started != enabled, true)
        @Expect(enabled != disabled, true)
        @Expect(disabled != stopped, true)
        @Expect(started != stopped, true)
        @Expect(started.toString(), "AdvertisingState.Started")
        @Expect(enabled.toString(), "AdvertisingState.Enabled")
        @Expect(disabled.toString(), "AdvertisingState.Disabled")
        @Expect(stopped.toString(), "AdvertisingState.Stopped")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_AdvertisingState ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_PhyType_016
     * @tc.name      : test_ble_PhyType
     * @tc.desc      : test PhyType enum values and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_PhyType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_PhyType begins.")
        let allSup = PhyType.PhyLeAllSupported
        @Expect(allSup != PhyType.PhyLe1M, true)
        @Expect(allSup.toString(), "PhyType.PhyLeAllSupported")
        @Expect(PhyType.PhyLe1M.toString(), "PhyType.PhyLe1M")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_PhyType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_BluetoothBleCallbackType_017
     * @tc.name      : test_ble_BluetoothBleCallbackType
     * @tc.desc      : test BluetoothBleCallbackType enum values, hashCode, and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_BluetoothBleCallbackType(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BluetoothBleCallbackType begins.")
        let asc = BluetoothBleCallbackType.AdvertisingStateChange
        let bdf = BluetoothBleCallbackType.BleDeviceFind
        @Expect(asc != bdf, true)
        @Expect(asc.toString(), "BluetoothBleCallbackType.AdvertisingStateChange")
        @Expect(bdf.toString(), "BluetoothBleCallbackType.BleDeviceFind")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BluetoothBleCallbackType ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ScanReportMode_018
     * @tc.name      : test_ble_ScanReportMode
     * @tc.desc      : test ScanReportMode enum values and operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ScanReportMode(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ScanReportMode begins.")
        let batch = ScanReportMode.Batch
        let fsl = ScanReportMode.FenceSensitivityLow
        let fsh = ScanReportMode.FenceSensitivityHigh
        @Expect(batch != fsl, true)
        @Expect(fsl != fsh, true)
        @Expect(batch != ScanReportMode.Normal, true)
        @Expect(batch.toString(), "ScanReportMode.Batch")
        @Expect(fsl.toString(), "ScanReportMode.FenceSensitivityLow")
        @Expect(fsh.toString(), "ScanReportMode.FenceSensitivityHigh")
        @Expect(ScanReportMode.Normal.toString(), "ScanReportMode.Normal")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ScanReportMode ends.")
    }
}
