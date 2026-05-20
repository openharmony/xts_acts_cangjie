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

/**
 * Created on 2025/8/4
 */
package ohos_app_cangjie_entry_test

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import kit.ConnectivityKit.*
import ohos.callback_invoke.Callback1Argument
import ohos.business_exception.BusinessException
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_ble_bacicFunc {

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_createGattClientDevice
     * @tc.name      : test_ble_createGattClientDevice
     * @tc.desc      : test GattClientDevice Creation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_createGattClientDevice() {
        try {
            let device: GattClientDevice = createGattClientDevice("00:11:00:11")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "Cangjietest", "errCodeggg: ${e.toString()}, errMessage: ${e.message}")
            @Expect(e.message,"Operation failed.")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_createGattServer
     * @tc.name      : test_ble_createGattServer
     * @tc.desc      : test GattServer Creation
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_createGattServer() {
        try {
            let gattServer: GattServer = createGattServer()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code,401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_disableAdvertising
     * @tc.name      : test_ble_disableAdvertising
     * @tc.desc      : test disable BLE
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_disableAdvertising() {
        let advertisingSettings = AdvertiseSetting(interval: 32, txPower: 0, connectable: true)
        let manufactureDataUnit = ManufactureData(
            4567u16,
            [1, 2, 3, 4]
        )
        let serviceDataUnit = ServiceData(
            "00001888-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8]
        )
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
        let advertisingParams = AdvertisingParams(
            advertisingSettings,
            advertisingData,
            advertisingResponse: advertisingResponse,
            duration: 300
        )
        var advHandle: UInt32 = 0xFF
        try {
            startAdvertising(advertisingSettings, advertisingData, advResponse: advertisingResponse)
            stopAdvertising(advHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code,201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_enableAdvertising
     * @tc.name      : test_ble_enableAdvertising
     * @tc.desc      : test enable BLE
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_enableAdvertising() {
        createGattServer()
        let advertisingSettings = AdvertiseSetting(interval: 32, txPower: 0, connectable: true)
        let manufactureDataUnit = ManufactureData(
            4567u16,
            [1, 2, 3, 4]
        )
        let serviceDataUnit = ServiceData(
            "00001888-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8]
        )
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
        let advertisingParams = AdvertisingParams(
            advertisingSettings,
            advertisingData,
            advertisingResponse: advertisingResponse,
            duration: 300
        )
        var advHandle: UInt32 = 0xFF
        try {
            advHandle = startAdvertising(advertisingParams)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code,201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_startAdvertising
     * @tc.name      : test_ble_startAdvertising
     * @tc.desc      : test_ble_startAdvertising
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_startAdvertising() {
        createGattServer()
        let advertisingSettings = AdvertiseSetting(interval: 32, txPower: 0, connectable: true)
        let manufactureDataUnit = ManufactureData(
            4567u16,
            [1, 2, 3, 4]
        )
        let serviceDataUnit = ServiceData(
            "00001888-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8]
        )
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
            startAdvertising(advertisingSettings, advertisingData, advResponse: advertisingResponse)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code,201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_stopAdvertising1
     * @tc.name      : test_ble_stopAdvertising1
     * @tc.desc      : test_ble_stopAdvertising1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_stopAdvertising1() {
        let advertisingSettings = AdvertiseSetting(interval: 32, txPower: 0, connectable: true)
        let manufactureDataUnit = ManufactureData(
            4567u16,
            [1, 2, 3, 4]
        )
        let serviceDataUnit = ServiceData(
            "00001888-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8]
        )
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
        let advertisingParams = AdvertisingParams(
            advertisingSettings,
            advertisingData,
            advertisingResponse: advertisingResponse,
            duration: 300
        )
        var advHandle: UInt32 = 0xFF
        try {
            advHandle = startAdvertising(advertisingParams)
            stopAdvertising(advHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code,201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_stopBLEScan
     * @tc.name      : test_ble_stopBLEScan
     * @tc.desc      : test_ble_stopBLEScan
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_stopBLEScan() {
        try {
            stopBleScanning()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code,201)
        }
    }
}
