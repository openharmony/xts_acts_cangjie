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

@Test
class Test_bt_errors_device {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_dev_2701
     * @tc.name      : Test_Err_Dev_Profile_ServiceAbnormal
     * @tc.desc      : Cover a2dp/base/hfp profile query APIs error path (201
     *                 server-side gate / 2900099; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_Profile_ServiceAbnormal(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_Profile_ServiceAbnormal begins.")
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
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_Profile_ServiceAbnormal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_dev_2702
     * @tc.name      : Test_Err_Dev_Advertising_ServiceAbnormal
     * @tc.desc      : Cover ble advertising/scanning APIs error path (201 server-side
     *                 gate / 2900099; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_Advertising_ServiceAbnormal(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_Advertising_ServiceAbnormal begins.")
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
        try {
            stopAdvertising(0xFFFFFFFFu32)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "stopAdvertising code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_Advertising_ServiceAbnormal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_dev_2703
     * @tc.name      : Test_Err_Dev_GattClient_ServiceAbnormal
     * @tc.desc      : Cover GattClientDevice connect/disconnect/getDeviceName/
     *                 getRssiValue/setBleMtuSize error path (2900001)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_GattClient_ServiceAbnormal(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_GattClient_ServiceAbnormal begins.")
        let client: GattClientDevice = createGattClientDevice("00:11:22:33:44:55")
        try {
            client.connect()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "client.connect code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            client.disconnect()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "client.disconnect code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            client.getDeviceName()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "client.getDeviceName code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            client.getRssiValue({err: ?BusinessException, rssi: ?Int32 => ()})
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "client.getRssiValue code=${e.code}")
            @Expect(e.code, 2901003i32)
        }
        try {
            client.setBleMtuSize(517)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "client.setBleMtuSize code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try { client.close() } catch (e: BusinessException) { Hilog.error(0u32, "cangjietest", "client.close() cleanup code=${e.code}") }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_GattClient_ServiceAbnormal ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_err_dev_2704
     * @tc.name      : Test_Err_Dev_GattServer_ServiceAbnormal
     * @tc.desc      : Cover GattServer close error path (201 server-side gate;
     *                 real-device measured)
     *                 error path (2900001)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_GattServer_ServiceAbnormal(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_GattServer_ServiceAbnormal begins.")
        let server: GattServer = createGattServer()
        try {
            server.close()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "server.close code=${e.code}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_GattServer_ServiceAbnormal ends.")
    }
}
