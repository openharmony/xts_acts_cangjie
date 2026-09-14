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

class CharReadCb <: Callback1Argument<CharacteristicReadRequest> {
    var lastArg: ?CharacteristicReadRequest = None
    public open func invoke(err: ?BusinessException, arg: CharacteristicReadRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "CharReadCb invoked")
    }
}

class CharWriteCb <: Callback1Argument<CharacteristicWriteRequest> {
    var lastArg: ?CharacteristicWriteRequest = None
    public open func invoke(err: ?BusinessException, arg: CharacteristicWriteRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "CharWriteCb invoked")
    }
}

class DescReadCb <: Callback1Argument<DescriptorReadRequest> {
    var lastArg: ?DescriptorReadRequest = None
    public open func invoke(err: ?BusinessException, arg: DescriptorReadRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "DescReadCb invoked")
    }
}

class DescWriteCb <: Callback1Argument<DescriptorWriteRequest> {
    var lastArg: ?DescriptorWriteRequest = None
    public open func invoke(err: ?BusinessException, arg: DescriptorWriteRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "DescWriteCb invoked")
    }
}

class ConnStateCb <: Callback1Argument<BleConnectionChangeState> {
    var lastArg: ?BleConnectionChangeState = None
    public open func invoke(err: ?BusinessException, arg: BleConnectionChangeState): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "ConnStateCb invoked")
    }
}

class MtuCb <: Callback1Argument<Int32> {
    var lastArg: ?Int32 = None
    public open func invoke(err: ?BusinessException, arg: Int32): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "MtuCb invoked")
    }
}

@Test
class Test_ble_GattServer {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_addService_020
     * @tc.name      : test_ble_GattServer_addService
     * @tc.desc      : test GattServer.addService, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_addService(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_addService begins.")
        let server = createGattServer()
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
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_addService ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_removeService_021
     * @tc.name      : test_ble_GattServer_removeService
     * @tc.desc      : test GattServer.removeService, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_removeService(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_removeService begins.")
        let server = createGattServer()
        try {
            server.removeService("00001800-0000-1000-8000-00805f9b34fb")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_removeService ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_close_022
     * @tc.name      : test_ble_GattServer_close
     * @tc.desc      : test GattServer.close, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_close(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_close begins.")
        let server = createGattServer()
        try {
            server.close()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_close ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_notifyCharacteristicChanged_023
     * @tc.name      : test_ble_GattServer_notifyCharacteristicChanged
     * @tc.desc      : test GattServer.notifyCharacteristicChanged, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_notifyCharacteristicChanged(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_notifyCharacteristicChanged begins.")
        let server = createGattServer()
        let notify = NotifyCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [1, 2, 3],
            true)
        try {
            server.notifyCharacteristicChanged("00:11:22:33:44:55", notify)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_notifyCharacteristicChanged ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_sendResponse_024
     * @tc.name      : test_ble_GattServer_sendResponse
     * @tc.desc      : test GattServer.sendResponse, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_sendResponse(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_sendResponse begins.")
        let server = createGattServer()
        let resp = ServerResponse("00:11:22:33:44:55", 1i32, 0i32, 0i32, [1, 2, 3])
        try {
            server.sendResponse(resp)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_sendResponse ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_onCharRead_025
     * @tc.name      : test_ble_GattServer_onCharRead
     * @tc.desc      : test GattServer.on for CharacteristicRead, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_onCharRead(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onCharRead begins.")
        let server = createGattServer()
        let cb = CharReadCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.CharacteristicRead, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onCharRead ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_onCharWrite_026
     * @tc.name      : test_ble_GattServer_onCharWrite
     * @tc.desc      : test GattServer.on for CharacteristicWrite, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_onCharWrite(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onCharWrite begins.")
        let server = createGattServer()
        let cb = CharWriteCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.CharacteristicWrite, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onCharWrite ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_onDescRead_027
     * @tc.name      : test_ble_GattServer_onDescRead
     * @tc.desc      : test GattServer.on for DescriptorRead, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_onDescRead(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onDescRead begins.")
        let server = createGattServer()
        let cb = DescReadCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.DescriptorRead, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onDescRead ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_onDescWrite_028
     * @tc.name      : test_ble_GattServer_onDescWrite
     * @tc.desc      : test GattServer.on for DescriptorWrite, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_onDescWrite(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onDescWrite begins.")
        let server = createGattServer()
        let cb = DescWriteCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.DescriptorWrite, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onDescWrite ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_onConnStateChange_029
     * @tc.name      : test_ble_GattServer_onConnStateChange
     * @tc.desc      : test GattServer.on for ConnectionStateChange, expect permission error 201
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_onConnStateChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onConnStateChange begins.")
        let server = createGattServer()
        let cb = ConnStateCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.ConnectionStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onConnStateChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_onMtuChange_030
     * @tc.name      : test_ble_GattServer_onMtuChange
     * @tc.desc      : test GattServer.on for ServerBleMtuChange callback subscription
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_onMtuChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onMtuChange begins.")
        let server = createGattServer()
        let cb = MtuCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.ServerBleMtuChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_onMtuChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_off_031
     * @tc.name      : test_ble_GattServer_off
     * @tc.desc      : test GattServer.off unsubscribe callback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_off(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_off begins.")
        let server = createGattServer()
        try {
            server.off(BluetoothBleGattServerCallbackType.CharacteristicRead)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_off ends.")
    }
}
