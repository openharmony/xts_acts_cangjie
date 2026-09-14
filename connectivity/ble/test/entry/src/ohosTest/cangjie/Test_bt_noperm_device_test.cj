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
import kit.ConnectivityKit.*
import ohos.business_exception.BusinessException
import ohos.bluetooth.a2dp.createA2dpSrcProfile
import ohos.bluetooth.a2dp.A2dpSourceProfile
import ohos.bluetooth.hfp.createHfpAgProfile
import ohos.bluetooth.hfp.HandsFreeAudioGatewayProfile
import ohos.bluetooth.base_profile.BaseProfile
import ohos.bluetooth.ble.createGattClientDevice
import ohos.bluetooth.ble.createGattServer
import ohos.bluetooth.ble.GattClientDevice
import ohos.bluetooth.ble.GattServer
import ohos.bluetooth.ble.NotifyCharacteristic

@Test
class Test_bt_noperm_device {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_noperm_dev_3101
     * @tc.name      : Test_Err_Dev_NoPerm_GattClient
     * @tc.desc      : Cover GattClientDevice disconnect/getDeviceName/getRssiValue
     *                 failure path (2900099 local / 2901003 GATT; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_NoPerm_GattClient(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_NoPerm_GattClient begins.")
        let client: GattClientDevice = createGattClientDevice("00:11:22:33:44:55")
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
            client.close()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "client.close code=${e.code}")
        }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_NoPerm_GattClient ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_noperm_dev_3102
     * @tc.name      : Test_Err_Dev_NoPerm_GattServer
     * @tc.desc      : Cover GattServer removeService/notifyCharacteristicChanged/sendResponse
     *                 failure path (2900099 local; real-device measured)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_NoPerm_GattServer(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_NoPerm_GattServer begins.")
        let server: GattServer = createGattServer()
        let notifyChar = NotifyCharacteristic(
            "00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            true
        )
        try {
            server.removeService("00001800-0000-1000-8000-00805f9b34fb")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.removeService code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            server.notifyCharacteristicChanged("00:11:22:33:44:55", notifyChar)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.notifyCharacteristicChanged code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            server.sendResponse(ServerResponse("00:11:22:33:44:55", 1i32, 0i32, 0i32, [1, 2, 3]))
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.sendResponse code=${e.code}")
            @Expect(e.code, 2900099i32)
        }
        try {
            server.close()
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "gatts.close code=${e.code}")
        }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_NoPerm_GattServer ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_noperm_dev_3103
     * @tc.name      : Test_Err_Dev_NoPerm_Profiles
     * @tc.desc      : Requires ACCESS_BLUETOOTH not granted on real device. Cover
     *                 a2dp/hfp/base profile state query permission denied path (201)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_Dev_NoPerm_Profiles(): Unit {
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_NoPerm_Profiles begins.")
        let a2dp: A2dpSourceProfile = createA2dpSrcProfile()
        let hfp: HandsFreeAudioGatewayProfile = createHfpAgProfile()
        let base: BaseProfile = a2dp
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
        try {
            let _: ProfileConnectionState = hfp.getConnectionState("00:11:22:33:44:55")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "hfp.getConnectionState code=${e.code}")
            @Expect(e.code, 201i32)
        }
        try {
            let _: ProfileConnectionState = base.getConnectionState("00:11:22:33:44:55")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "base.getConnectionState code=${e.code}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "device case Test_Err_Dev_NoPerm_Profiles ends.")
    }
}
