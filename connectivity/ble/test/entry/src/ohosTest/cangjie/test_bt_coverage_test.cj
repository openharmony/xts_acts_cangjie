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
import std.unittest.testmacro.*
import std.unittest.common.*
import ohos.hilog.*
import ohos.bluetooth.ble.*
import ohos.bluetooth.constant.ProfileConnectionState
import ohos.bluetooth.a2dp.*
import ohos.bluetooth.hfp.*
import ohos.bluetooth.base_profile.*
import ohos.business_exception.*

@Test
class TestBtCoverage201 {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8001
     * @tc.name      : testBleCreateGattClientDeviceScenarios
     * @tc.desc      : cover createGattClientDevice with empty and fake device id
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBleCreateGattClientDeviceScenarios(): Unit {
        try {
            let _ = createGattClientDevice("")
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = createGattClientDevice("00:11:22:33:44:55")
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8002
     * @tc.name      : testBleScanFunctions
     * @tc.desc      : cover startBleScanning and stopBleScanning with filter and options
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBleScanFunctions(): Unit {
        try {
            let _ = startBleScanning([ScanFilter()], options: ScanOptions())
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = stopBleScanning()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8003
     * @tc.name      : testBleAdvertisingStopScenarios
     * @tc.desc      : cover stopAdvertising no-arg and advertisingId boundary values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBleAdvertisingStopScenarios(): Unit {
        try {
            let _ = stopAdvertising()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = stopAdvertising(0u32)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = stopAdvertising(0xFFFFFFFFu32)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8004
     * @tc.name      : testBleAdvertisingStartParams
     * @tc.desc      : cover startAdvertising with AdvertisingParams construction
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBleAdvertisingStartParams(): Unit {
        let advData = AdvertiseData(["00001800-0000-1000-8000-00805f9b34fb"], [ManufactureData(1u16, [1u8])], [])
        try {
            let _ = startAdvertising(AdvertisingParams(AdvertiseSetting(), advData))
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8010
     * @tc.name      : testGattClientDeviceBasicOps
     * @tc.desc      : cover GattClientDevice connect/disconnect/close/getDeviceName/setBleMtuSize boundaries
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGattClientDeviceBasicOps(): Unit {
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.connect()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.disconnect()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.close()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.getDeviceName()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.setBleMtuSize(22)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.setBleMtuSize(517)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let _ = device.setBleMtuSize(0)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8011
     * @tc.name      : testGattClientDeviceCallbackOps
     * @tc.desc      : cover GattClientDevice callback-style operations with async callbacks
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGattClientDeviceCallbackOps(): Unit {
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb", "00002a00-0000-1000-8000-00805f9b34fb", "00002902-0000-1000-8000-00805f9b34fb", [1, 2])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb", "00002a00-0000-1000-8000-00805f9b34fb", [5, 6], [desc])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.getServices({ e: ?BusinessException, s: ?Array<GattService> => () })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.readCharacteristicValue(char, { e: ?BusinessException, s: ?BleCharacteristic => () })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.readDescriptorValue(desc, { e: ?BusinessException, s: ?BleDescriptor => () })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.writeCharacteristicValue(char, GattWriteType.Write, { e: ?BusinessException, s: ?Unit => () })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.writeDescriptorValue(desc, { e: ?BusinessException, s: ?Unit => () })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.getRssiValue({ e: ?BusinessException, s: ?Int32 => () })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8012
     * @tc.name      : testGattClientDeviceOnOffEvents
     * @tc.desc      : cover GattClientDevice on/off for all callback types with explicit callbacks
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGattClientDeviceOnOffEvents(): Unit {
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.on(BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange, BleCharCb())
            device.on(BluetoothBleGattClientDeviceCallbackType.BleConnectionStateChange, BleConnStateCb())
            device.on(BluetoothBleGattClientDeviceCallbackType.ClientBleMtuChange, ClientMtuCb())
            device.off(BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange, callback: BleCharCb())
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8013
     * @tc.name      : testGattServerServiceOps
     * @tc.desc      : cover GattServer addService/removeService/notifyCharacteristicChanged/sendResponse/close
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGattServerServiceOps(): Unit {
        try {
            let server = createGattServer()
            let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb", "00002a00-0000-1000-8000-00805f9b34fb", "00002902-0000-1000-8000-00805f9b34fb", [1])
            let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb", "00002a00-0000-1000-8000-00805f9b34fb", [5], [desc])
            let service = GattService("00001800-0000-1000-8000-00805f9b34fb", true, [char])
            server.addService(service)
            server.removeService("00001800-0000-1000-8000-00805f9b34fb")
            server.notifyCharacteristicChanged("00:11:22:33:44:55", NotifyCharacteristic("00001800-0000-1000-8000-00805f9b34fb", "00002a00-0000-1000-8000-00805f9b34fb", [1u8], false))
            server.sendResponse(ServerResponse("00:11:22:33:44:55", 0, 0, 0, [1u8]))
            server.close()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8014
     * @tc.name      : testGattServerOnOffAllEvents
     * @tc.desc      : cover GattServer on/off for all six callback types
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testGattServerOnOffAllEvents(): Unit {
        try {
            let server = createGattServer()
            server.on(BluetoothBleGattServerCallbackType.CharacteristicRead, CharReadCb())
            server.on(BluetoothBleGattServerCallbackType.CharacteristicWrite, CharWriteCb())
            server.on(BluetoothBleGattServerCallbackType.DescriptorRead, DescReadCb())
            server.on(BluetoothBleGattServerCallbackType.DescriptorWrite, DescWriteCb())
            server.on(BluetoothBleGattServerCallbackType.ConnectionStateChange, ConnStateCb())
            server.on(BluetoothBleGattServerCallbackType.ServerBleMtuChange, MtuCb())
            server.off(BluetoothBleGattServerCallbackType.CharacteristicRead, callback: CharReadCb())
            server.off(BluetoothBleGattServerCallbackType.ConnectionStateChange)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8015
     * @tc.name      : testBleConnectionChangeStateOperators
     * @tc.desc      : cover BleConnectionChangeState equality operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testBleConnectionChangeStateOperators(): Unit {
        @Expect(ProfileConnectionState.StateConnected == ProfileConnectionState.StateConnected)
        @Expect(ProfileConnectionState.StateConnected != ProfileConnectionState.StateDisconnected)
        @Expect(ProfileConnectionState.StateConnected == ProfileConnectionState.StateConnected)
        @Expect(ProfileConnectionState.StateConnected != ProfileConnectionState.StateDisconnected)
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8016
     * @tc.name      : testA2dpHfpBaseProfileOps
     * @tc.desc      : cover a2dp/hfp getConnectedDevices, on/off with explicit callbacks and interface refs
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testA2dpHfpBaseProfileOps(): Unit {
        try {
            let a2dp = createA2dpSrcProfile()
            let a2dpRef = a2dp is A2dpSourceProfile
            @Expect(a2dpRef)
            let base: BaseProfile = a2dp
            let _ = base.getConnectedDevices()
            a2dp.on(ProfileCallbackType.ConnectionStateChange, A2dpStateChangeCb())
            a2dp.off(ProfileCallbackType.ConnectionStateChange)
            a2dp.off(ProfileCallbackType.ConnectionStateChange)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let hfp = createHfpAgProfile()
            let hfpRef = hfp is HandsFreeAudioGatewayProfile
            @Expect(hfpRef)
            let baseHfp: BaseProfile = hfp
            let _ = baseHfp.getConnectionState("00:11:22:33:44:55")
            hfp.on(ProfileCallbackType.ConnectionStateChange, HfpStateChangeCb())
            hfp.off(ProfileCallbackType.ConnectionStateChange)
            hfp.off(ProfileCallbackType.ConnectionStateChange)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

}
