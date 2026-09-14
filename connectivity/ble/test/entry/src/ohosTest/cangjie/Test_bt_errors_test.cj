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
import ohos.business_exception.BusinessException
import ohos.callback_invoke.{Callback1Argument, CallbackObject}
import ohos.bluetooth.a2dp.createA2dpSrcProfile
import ohos.bluetooth.a2dp.A2dpSourceProfile
import ohos.bluetooth.hfp.createHfpAgProfile
import ohos.bluetooth.hfp.HandsFreeAudioGatewayProfile
import ohos.bluetooth.base_profile.BaseProfile
import ohos.bluetooth.ble.createGattClientDevice
import ohos.bluetooth.ble.createGattServer
import ohos.bluetooth.ble.startBleScanning
import ohos.bluetooth.ble.stopBleScanning
import ohos.bluetooth.ble.startAdvertising
import ohos.bluetooth.ble.stopAdvertising
import ohos.bluetooth.ble.GattClientDevice
import ohos.bluetooth.ble.GattServer
import ohos.bluetooth.ble.ScanFilter
import ohos.bluetooth.ble.NotifyCharacteristic

@Test
class Test_bt_errors {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_profile_2601
     * @tc.name      : Test_Err_Profile_StateOff
     * @tc.desc      : Cover a2dp/hfp/base profile query APIs error path (201,
     *                 server-side permission gate; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Profile_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_Profile_StateOff begins.")
        let a2dp: A2dpSourceProfile = createA2dpSrcProfile()
        try {
            let _: Array<String> = a2dp.getConnectedDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "a2dp.getConnectedDevices code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            let _: ProfileConnectionState = a2dp.getConnectionState("00:11:22:33:44:55")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "a2dp.getConnectionState code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            let _: PlayingState = a2dp.getPlayingState("00:11:22:33:44:55")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "a2dp.getPlayingState code=${e.code}")
            @Expect(e.code, 201i32)
        }
        let hfp: HandsFreeAudioGatewayProfile = createHfpAgProfile()
        try {
            let _: Array<String> = hfp.getConnectedDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "hfp.getConnectedDevices code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            let _: ProfileConnectionState = hfp.getConnectionState("00:11:22:33:44:55")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "hfp.getConnectionState code=${e.code}")
            @Expect(e.code, 201i32)
        }
        let base: BaseProfile = a2dp
        try {
            let _: Array<String> = base.getConnectedDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "base.getConnectedDevices code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            let _: ProfileConnectionState = base.getConnectionState("00:11:22:33:44:55")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "base.getConnectionState code=${e.code}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_Profile_StateOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_advscan_2602
     * @tc.name      : Test_Err_AdvScan_StateOff
     * @tc.desc      : Cover ble scanning/advertising APIs error path (201 server-side gate;
     *                 2902055 for stopAdvertising without start; 2900099 for invalid
     *                 advertising id; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_AdvScan_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_AdvScan_StateOff begins.")
        try {
            startBleScanning([])
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "startBleScanning code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            stopBleScanning()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "stopBleScanning code=${e.code}")
            @Expect(e.code, 201i32)
        }
        let settings = AdvertiseSetting(interval: 32, txPower: 0, connectable: true)
        let manufactureDataUnit = ManufactureData(4567u16, [1, 2, 3, 4])
        let serviceDataUnit = ServiceData("00001888-0000-1000-8000-00805f9b34fb", [5, 6, 7, 8])
        let advertisingData = AdvertiseData(
            ["00001888-0000-1000-8000-00805f9b34fb"],
            [manufactureDataUnit],
            [serviceDataUnit],
            includeDeviceName: true
        )
        let advertisingResponse = AdvertiseData(
            ["00001888-0000-1000-8000-00805f9b34fb"],
            [manufactureDataUnit],
            [serviceDataUnit]
        )
        try {
            startAdvertising(settings, advertisingData, advResponse: advertisingResponse)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "startAdvertising(3arg) code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            stopAdvertising()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "stopAdvertising(noarg) code=${e.code}")
            @Expect(e.code, 2902055i32)
        }
        let advertisingParams = AdvertisingParams(
            settings,
            advertisingData,
            advertisingResponse: advertisingResponse,
            duration: 300
        )
        try {
            let _ = startAdvertising(advertisingParams)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "startAdvertising(params) code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            stopAdvertising(0xFFFFFFFFu32)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "stopAdvertising(invalidId) code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_AdvScan_StateOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_gattclient_2603
     * @tc.name      : Test_Err_GattClient_StateOff
     * @tc.desc      : Cover GattClientDevice connect/disconnect error path (201 server-side
     *                 gate / 2900099 local failure; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GattClient_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattClient_StateOff begins.")
        let device: GattClientDevice = createGattClientDevice("00:11:22:33:44:55")
        try {
            device.connect()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gattc.connect code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            device.disconnect()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gattc.disconnect code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
try { device.close() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "device.close() cleanup code=${e.code}") }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattClient_StateOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_gattserver_2604
     * @tc.name      : Test_Err_GattServer_StateOff
     * @tc.desc      : Cover GattServer addService/sendResponse/close error path (201 server-side
     *                 gate / 2900099 local failure; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GattServer_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattServer_StateOff begins.")
        let server: GattServer = createGattServer()
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        let service = GattService("00001800-0000-1000-8000-00805f9b34fb", true, [char])
        try {
            server.addService(service)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.addService code=${e.code}")
            @Expect(e.code, 201i32)
        }
        let resp = ServerResponse("00:11:22:33:44:55", 1i32, 0i32, 0i32, [1, 2, 3])
        try {
            server.sendResponse(resp)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.sendResponse code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            server.close()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.close code=${e.code}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattServer_StateOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_advscan_2605
     * @tc.name      : Test_Err_ScanFiltered_StateOff
     * @tc.desc      : Cover startBleScanning with a populated ScanFilter error path
     *                 (2900099, operation failed; probe-measured, filter validation
     *                 precedes the bluetooth-disabled state check)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_ScanFiltered_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ScanFiltered_StateOff begins.")
        let filter = ScanFilter(
            deviceId: "00:11:22:33:44:55",
            name: "bleStartScanTest",
            serviceUUID: "00001888-0000-1000-8000-00805f9b34fb"
        )
        try {
            startBleScanning([filter])
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "startBleScanning(filtered) code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_ScanFiltered_StateOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_gattserver_2606
     * @tc.name      : Test_Err_GattsRemoveService_StateOff
     * @tc.desc      : Cover GattServer.removeService with a service uuid that was
     *                 never added error path (2900099, operation failed;
     *                 probe-measured, service lookup precedes the state check)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GattsRemoveService_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattsRemoveService_StateOff begins.")
        let server: GattServer = createGattServer()
        try {
            server.removeService("00001899-0000-1000-8000-00805f9b34fb")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.removeService(notAdded) code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            server.close()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.close(cleanup) code=${e.code}")
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattsRemoveService_StateOff ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_gattserver_2607
     * @tc.name      : Test_Err_GattsNotify_StateOff
     * @tc.desc      : Cover GattServer.notifyCharacteristicChanged with no connected
     *                 client error path (2900099, operation failed; probe-measured,
     *                 connection check precedes the state check)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_GattsNotify_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattsNotify_StateOff begins.")
        let server: GattServer = createGattServer()
        let notifyChar = NotifyCharacteristic(
            "00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            true
        )
        try {
            server.notifyCharacteristicChanged("00:11:22:33:44:55", notifyChar)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.notifyCharacteristicChanged code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            server.close()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.close(cleanup) code=${e.code}")
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_Err_GattsNotify_StateOff ends.")
    }
}
