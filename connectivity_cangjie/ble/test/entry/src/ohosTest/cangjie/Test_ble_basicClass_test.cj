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
 * Created on 2025/8/6
 */
package ohos_app_cangjie_entry_test

import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import kit.ConnectivityKit.*
import ohos.business_exception.BusinessException
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_ble_basicClass {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ScanFilter
     * @tc.name      : test_ble_ScanFilter
     * @tc.desc      : Test Scan Filter paramter
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ScanFilter(): Unit {
        try {
            var scanFilter = ScanFilter()
            scanFilter.deviceId = "00:11:22:33:44:55"
            scanFilter.name = "testStartScan"
            scanFilter.serviceUUID = "00001888-0000-1000-8000-00805f9b34fb"
            scanFilter.serviceUUIDMask = "FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"
            scanFilter.serviceSolicitationUUID = "00001888-0000-1000-8000-00805F9B34FB"
            scanFilter.serviceSolicitationUUIDMask = "FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF"
            scanFilter.serviceData = [5, 6, 7, 8]
            scanFilter.serviceDataMask = [5, 6, 7, 8]
            scanFilter.manufactureId = 4567
            scanFilter.manufactureData = [1, 2, 3, 4]
            scanFilter.manufactureDataMask = [1, 2, 3, 4]
            @Expect(scanFilter.deviceId, "00:11:22:33:44:55")
            @Expect(scanFilter.name, "testStartScan")
            @Expect(scanFilter.serviceUUID, "00001888-0000-1000-8000-00805f9b34fb")
            @Expect(scanFilter.serviceUUIDMask,"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF")
            @Expect(scanFilter.serviceSolicitationUUID,"00001888-0000-1000-8000-00805F9B34FB")
            @Expect(scanFilter.serviceSolicitationUUIDMask, "FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF")
            Hilog.info(0, "cangjietest", "scanFilter.serviceData.toString() is ${scanFilter.serviceData.toString()}")
            @Expect(scanFilter.manufactureId, 4567)

            let scanOptions = ScanOptions(interval: 0, dutyMode: ScanModeLowPower, matchMode: MatchModeAggressive,
                phyType: PhyLe1M, reportMode: ScanReportMode.Normal)
            startBleScanning([scanFilter], options: scanOptions)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ScanOptions
     * @tc.name      : test_ble_ScanOptions
     * @tc.desc      : Test Scan Option paramter
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ScanOptions(): Unit {
        try {
            let scanOptions = ScanOptions(
                interval: 0,
                dutyMode: ScanModeLowPower,
                matchMode: MatchModeAggressive,
                phyType: PhyLe1M,
                reportMode: ScanReportMode.Normal
            )
            var scanFilter = ScanFilter()
            @Expect(scanOptions.dutyMode, ScanModeLowPower)
            @Expect(scanOptions.matchMode, MatchModeAggressive)
            @Expect(scanOptions.phyType, PhyLe1M)
            @Expect(scanOptions.interval, 0)
            startBleScanning([scanFilter], options: scanOptions)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "cangjieTest", "errCode: ${e.toString()}, errMessage: ${e.message}")
            Hilog.info(0, "Bluetooth1111", "cangjieTest", "errCode: ${e.toString()}, errMessage: ${e.toString()}")
            @Expect(e.message, "Operation failed.")
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_AdvertiseSetting
     * @tc.name      : test_ble_AdvertiseSetting
     * @tc.desc      : Test advertise set
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_AdvertiseSetting(): Unit {
        try {
            var advertiseSetting = AdvertiseSetting(interval: 1600, txPower: -7, connectable: true)
            @Expect(advertiseSetting.interval, 1600)
            @Expect(advertiseSetting.connectable, true)
            @Expect(advertiseSetting.txPower, -7)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 401)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_AdvertiseData
     * @tc.name      : test_ble_AdvertiseData
     * @tc.desc      : Test advertise data
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_AdvertiseData(): Unit {
        try {
            let manufactureDataUnit = ManufactureData(
                4567u16,
                [1, 2, 3, 4]
            )
            let serviceDataUnit = ServiceData(
                "00001888-0000-1000-8000-00805f9b34fb",
                [5, 6, 7, 8]
            )
            let advertiseData = AdvertiseData(
                ["00001888-0000-1000-8000-00805f9b34fb"],
                [manufactureDataUnit],
                [serviceDataUnit],
                includeDeviceName: true
            )
            @Expect(advertiseData.serviceUUIDs, ["00001888-0000-1000-8000-00805f9b34fb"])
            @Expect(advertiseData.manufactureData[0].manufactureId, 4567u16)
            @Expect(advertiseData.manufactureData[0].manufactureValue.toString(), "[1, 2, 3, 4]")
            @Expect(advertiseData.serviceData[0].serviceUUID, "00001888-0000-1000-8000-00805f9b34fb")
            @Expect(advertiseData.serviceData[0].serviceValue.toString(), "[5, 6, 7, 8]")
            @Expect(advertiseData.includeDeviceName, true)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 401)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ManufactureData
     * @tc.name      : test_ble_ManufactureData
     * @tc.desc      : Test ManufactureData
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ManufactureData(): Unit {
        try {
            let manufactrueData = ManufactureData(
                4567u16,
                [1, 2, 3, 4]
            )
            @Expect(manufactrueData.manufactureId, 4567u16)
            @Expect(manufactrueData.manufactureValue.toString(), "[1, 2, 3, 4]")
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 401)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_AdvertisingParams
     * @tc.name      : test_ble_AdvertisingParams
     * @tc.desc      : Test AdvertisingParams
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_AdvertisingParams(): Unit {
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
            let advertisingParams = AdvertisingParams(
                advertisingSettings,
                advertisingData,
                advertisingResponse: advertisingResponse,
                duration: 300
            )
            @Expect(advertisingParams.duration, 300)
            @Expect(advertisingParams.advertisingSettings.txPower, 0)
            @Expect(advertisingParams.advertisingSettings.interval, 32)
            @Expect(advertisingParams.advertisingSettings.connectable, true)
            @Expect(advertisingParams.advertisingData.serviceUUIDs, ["00001888-0000-1000-8000-00805f9b34fb"])
            @Expect(advertisingParams.advertisingData.manufactureData[0].manufactureId, 4567u16)
            @Expect(advertisingParams.advertisingData.manufactureData[0].manufactureValue.toString(), "[1, 2, 3, 4]" )
            @Expect(advertisingParams.advertisingResponse.serviceUUIDs, ["00001888-0000-1000-8000-00805f9b34fb"])
            @Expect(advertisingParams.advertisingResponse.manufactureData[0].manufactureId, 4567u16)
            @Expect(advertisingParams.advertisingResponse.manufactureData[0].manufactureValue.toString(), "[1, 2, 3, 4]")
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 401)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_AdvertisingEnableParams
     * @tc.name      : test_ble_AdvertisingEnableParams
     * @tc.desc      : Test AdvertisingEnableParams
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_AdvertisingEnableParams(): Unit {
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
            let advertisingEnableParam = AdvertisingParams(advertisingSettings, advertisingData,
                advertisingResponse: advertisingResponse, duration: 300)
            @Expect(advertisingEnableParam.advertisingSettings.txPower, 0)
            @Expect(advertisingEnableParam.advertisingSettings.interval, 32)
            @Expect(advertisingEnableParam.advertisingSettings.connectable, true)
            @Expect(advertisingEnableParam.advertisingData.serviceUUIDs, ["00001888-0000-1000-8000-00805f9b34fb"])
            @Expect(advertisingEnableParam.advertisingData.manufactureData[0].manufactureId, 4567u16)
            @Expect(advertisingEnableParam.advertisingData.manufactureData[0].manufactureValue.toString(), "[1, 2, 3, 4]" )
            @Expect(advertisingEnableParam.advertisingResponse.serviceUUIDs, ["00001888-0000-1000-8000-00805f9b34fb"])
            @Expect(advertisingEnableParam.advertisingResponse.manufactureData[0].manufactureId, 4567u16)
            @Expect(advertisingEnableParam.advertisingResponse.manufactureData[0].manufactureValue.toString(), "[1, 2, 3, 4]")
            @Expect(advertisingEnableParam.duration, 300)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 401)
        }
    }
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_AdvertisingDisableParams
     * @tc.name      : test_ble_AdvertisingDisableParams
     * @tc.desc      : Test AdvertisingDisableParams
     * @tc.size      : MEDIUMTest
     * @tc.type      : Functoin
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_AdvertisingDisableParams(): Unit {
        try {
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
            advHandle = startAdvertising(advertisingParams)
            //            let advertisingDisableParams = AdvertisingDisableParams(advHandle)
            @Expect(advHandle, 0xFF)
        } catch (e: BusinessException) {
            Hilog.info(0, "Bluetooth", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201)
        }
    }
}
