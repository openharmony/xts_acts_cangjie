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

class BleCharCb <: Callback1Argument<BleCharacteristic> {
    var lastArg: ?BleCharacteristic = None
    public open func invoke(err: ?BusinessException, arg: BleCharacteristic): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "BleCharCb invoked")
    }
}

class BleConnStateCb <: Callback1Argument<BleConnectionChangeState> {
    var lastArg: ?BleConnectionChangeState = None
    public open func invoke(err: ?BusinessException, arg: BleConnectionChangeState): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "BleConnStateCb invoked")
    }
}

class ClientMtuCb <: Callback1Argument<Int32> {
    var lastArg: ?Int32 = None
    public open func invoke(err: ?BusinessException, arg: Int32): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "ClientMtuCb invoked")
    }
}

@Test
class Test_ble_GattClientDevice {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_connect_040
     * @tc.name      : test_ble_GattClientDevice_connect
     * @tc.desc      : test GattClientDevice.connect, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_connect(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_connect begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.connect()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_connect ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_disconnect_041
     * @tc.name      : test_ble_GattClientDevice_disconnect
     * @tc.desc      : test GattClientDevice.disconnect, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_disconnect(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_disconnect begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.disconnect()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_disconnect ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_close_042
     * @tc.name      : test_ble_GattClientDevice_close
     * @tc.desc      : test GattClientDevice.close, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_close(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_close begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.close()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_close ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_getDeviceName_043
     * @tc.name      : test_ble_GattClientDevice_getDeviceName
     * @tc.desc      : test GattClientDevice.getDeviceName, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_getDeviceName(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_getDeviceName begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            let name = device.getDeviceName()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_getDeviceName ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_getServices_044
     * @tc.name      : test_ble_GattClientDevice_getServices
     * @tc.desc      : test GattClientDevice.getServices with AsyncCallback, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_getServices(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_getServices begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.getServices({ err, data => })
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_getServices ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_readCharacteristicValue_045
     * @tc.name      : test_ble_GattClientDevice_readCharacteristicValue
     * @tc.desc      : test GattClientDevice.readCharacteristicValue, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_readCharacteristicValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_readCharacteristicValue begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.readCharacteristicValue(char, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_readCharacteristicValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_readDescriptorValue_046
     * @tc.name      : test_ble_GattClientDevice_readDescriptorValue
     * @tc.desc      : test GattClientDevice.readDescriptorValue, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_readDescriptorValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_readDescriptorValue begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.readDescriptorValue(desc, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_readDescriptorValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_writeCharacteristicValue_047
     * @tc.name      : test_ble_GattClientDevice_writeCharacteristicValue
     * @tc.desc      : test GattClientDevice.writeCharacteristicValue, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_writeCharacteristicValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_writeCharacteristicValue begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.writeCharacteristicValue(char, GattWriteType.Write, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_writeCharacteristicValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_writeDescriptorValue_048
     * @tc.name      : test_ble_GattClientDevice_writeDescriptorValue
     * @tc.desc      : test GattClientDevice.writeDescriptorValue, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_writeDescriptorValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_writeDescriptorValue begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.writeDescriptorValue(desc, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_writeDescriptorValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_getRssiValue_049
     * @tc.name      : test_ble_GattClientDevice_getRssiValue
     * @tc.desc      : test GattClientDevice.getRssiValue, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_getRssiValue(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_getRssiValue begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.getRssiValue({ err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2901003i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_getRssiValue ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_setBleMtuSize_050
     * @tc.name      : test_ble_GattClientDevice_setBleMtuSize
     * @tc.desc      : test GattClientDevice.setBleMtuSize, createGattClientDevice throws 2900099 in test env
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_setBleMtuSize(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_setBleMtuSize begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.setBleMtuSize(512i32)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_setBleMtuSize ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_setNotification_051
     * @tc.name      : test_ble_GattClientDevice_setNotification
     * @tc.desc      : test GattClientDevice.setCharacteristicChangeNotification, createGattClientDevice throws 2900099
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_setNotification(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_setNotification begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.setCharacteristicChangeNotification(char, true, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.setCharacteristicChangeNotification(char, false, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "setNotification(false) errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_setNotification ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_setIndication_052
     * @tc.name      : test_ble_GattClientDevice_setIndication
     * @tc.desc      : test GattClientDevice.setCharacteristicChangeIndication, createGattClientDevice throws 2900099
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_setIndication(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_setIndication begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.setCharacteristicChangeIndication(char, true, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.setCharacteristicChangeIndication(char, false, { err, data => })
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "setIndication(false) errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_setIndication ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_onCharChange_053
     * @tc.name      : test_ble_GattClientDevice_onCharChange
     * @tc.desc      : test GattClientDevice.on for BleCharacteristicChange, createGattClientDevice throws 2900099
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_onCharChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_onCharChange begins.")
        let cb = BleCharCb()
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.on(BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_onCharChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_onConnStateChange_054
     * @tc.name      : test_ble_GattClientDevice_onConnStateChange
     * @tc.desc      : test GattClientDevice.on for BleConnectionStateChange, createGattClientDevice throws 2900099
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_onConnStateChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_onConnStateChange begins.")
        let cb = BleConnStateCb()
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.on(BluetoothBleGattClientDeviceCallbackType.BleConnectionStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_onConnStateChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_onMtuChange_055
     * @tc.name      : test_ble_GattClientDevice_onMtuChange
     * @tc.desc      : test GattClientDevice.on for ClientBleMtuChange, createGattClientDevice throws 2900099
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_onMtuChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_onMtuChange begins.")
        let cb = ClientMtuCb()
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.on(BluetoothBleGattClientDeviceCallbackType.ClientBleMtuChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_onMtuChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattClientDevice_off_056
     * @tc.name      : test_ble_GattClientDevice_off
     * @tc.desc      : test GattClientDevice.off unsubscribe, createGattClientDevice throws 2900099
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattClientDevice_off(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_off begins.")
        try {
            let device = createGattClientDevice("00:11:22:33:44:55")
            device.off(BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange)
            device.off(BluetoothBleGattClientDeviceCallbackType.BleCharacteristicChange, callback: BleCharCb())
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattClientDevice_off ends.")
    }
}
