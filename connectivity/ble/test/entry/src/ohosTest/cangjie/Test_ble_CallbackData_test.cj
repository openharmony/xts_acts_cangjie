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

class AdvStateCb <: Callback1Argument<AdvertisingStateChangeInfo> {
    var lastArg: ?AdvertisingStateChangeInfo = None
    public open func invoke(err: ?BusinessException, arg: AdvertisingStateChangeInfo): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "advId: ${arg.advertisingId}, state: ${arg.state}")
    }
}

class ScanResultCb <: Callback1Argument<Array<ScanResult>> {
    var lastArg: ?ScanResult = None
    public open func invoke(err: ?BusinessException, arg: Array<ScanResult>): Unit {
        if (arg.size > 0) {
            lastArg = arg[0]
            let r = arg[0]
            Hilog.info(0u32, "cangjietest", "", "rssi: ${r.rssi}, deviceName: ${r.deviceName}, data size: ${r.data.size}")
        }
    }
}

class CharReadFieldCb <: Callback1Argument<CharacteristicReadRequest> {
    var lastArg: ?CharacteristicReadRequest = None
    public open func invoke(err: ?BusinessException, arg: CharacteristicReadRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "transId: ${arg.transId}, offset: ${arg.offset}, charUUID: ${arg.characteristicUUID}")
    }
}

class CharWriteFieldCb <: Callback1Argument<CharacteristicWriteRequest> {
    var lastArg: ?CharacteristicWriteRequest = None
    public open func invoke(err: ?BusinessException, arg: CharacteristicWriteRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "transId: ${arg.transId}, offset: ${arg.offset}, isPrepared: ${arg.isPrepared}, needRsp: ${arg.needRsp}, value size: ${arg.value.size}, charUUID: ${arg.characteristicUUID}")
    }
}

class DescReadFieldCb <: Callback1Argument<DescriptorReadRequest> {
    var lastArg: ?DescriptorReadRequest = None
    public open func invoke(err: ?BusinessException, arg: DescriptorReadRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "transId: ${arg.transId}, offset: ${arg.offset}, descUUID: ${arg.descriptorUUID}, charUUID: ${arg.characteristicUUID}")
    }
}

class DescWriteFieldCb <: Callback1Argument<DescriptorWriteRequest> {
    var lastArg: ?DescriptorWriteRequest = None
    public open func invoke(err: ?BusinessException, arg: DescriptorWriteRequest): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "transId: ${arg.transId}, offset: ${arg.offset}, isPrepared: ${arg.isPrepared}, needRsp: ${arg.needRsp}, value size: ${arg.value.size}, descUUID: ${arg.descriptorUUID}, charUUID: ${arg.characteristicUUID}")
    }
}

class ConnStateFieldCb <: Callback1Argument<BleConnectionChangeState> {
    var lastArg: ?BleConnectionChangeState = None
    public open func invoke(err: ?BusinessException, arg: BleConnectionChangeState): Unit {
        lastArg = arg
        Hilog.info(0u32, "cangjietest", "", "deviceId: ${arg.deviceId}, state: ${arg.state}")
    }
}

@Test
class Test_ble_CallbackData {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_on_advStateChange_060
     * @tc.name      : test_ble_on_advStateChange
     * @tc.desc      : test top-level on for AdvertisingStateChange callback subscription
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_on_advStateChange(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_on_advStateChange begins.")
        let cb = AdvStateCb()
        try {
            on(BluetoothBleCallbackType.AdvertisingStateChange, cb)
            if (cb.lastArg.isSome()) {
                let arg = cb.lastArg.getOrThrow()
                @Expect(arg.advertisingId >= 0)
                match (arg.state) {
                    case AdvertisingState.Started => ()
                    case AdvertisingState.Enabled => ()
                    case AdvertisingState.Disabled => ()
                    case AdvertisingState.Stopped => ()
                    case _ => @Expect(false)
                }
            } else {
                @Expect(cb.lastArg.isNone())
            }
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_on_advStateChange ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_on_bleDeviceFind_061
     * @tc.name      : test_ble_on_bleDeviceFind
     * @tc.desc      : test top-level on for BleDeviceFind (scan result) callback subscription
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_on_bleDeviceFind(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_on_bleDeviceFind begins.")
        let cb = ScanResultCb()
        try {
            on(BluetoothBleCallbackType.BleDeviceFind, cb)
            if (cb.lastArg.isSome()) {
                let arg = cb.lastArg.getOrThrow()
                @Expect(arg.rssi >= -127)
                @Expect(arg.deviceId.size > 0)
            } else {
                @Expect(cb.lastArg.isNone())
            }
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_on_bleDeviceFind ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_off_062
     * @tc.name      : test_ble_off
     * @tc.desc      : test top-level off unsubscribe callback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_off(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_off begins.")
        try {
            off(BluetoothBleCallbackType.AdvertisingStateChange)
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_off ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_CallbackData_classes_063
     * @tc.name      : test_ble_CallbackData_classes
     * @tc.desc      : test callback data class type references via callback member variables
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_CallbackData_classes(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_CallbackData_classes begins.")
        let charReadCb = CharReadFieldCb()
        let charWriteCb = CharWriteFieldCb()
        let descReadCb = DescReadFieldCb()
        let descWriteCb = DescWriteFieldCb()
        let connStateCb = ConnStateFieldCb()
        let advStateCb = AdvStateCb()
        let scanResultCb = ScanResultCb()
        @Expect(charReadCb.lastArg.isNone())
        @Expect(charWriteCb.lastArg.isNone())
        @Expect(descReadCb.lastArg.isNone())
        @Expect(descWriteCb.lastArg.isNone())
        @Expect(connStateCb.lastArg.isNone())
        @Expect(advStateCb.lastArg.isNone())
        @Expect(scanResultCb.lastArg.isNone())
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_CallbackData_classes ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattServer_callbackFields_064
     * @tc.name      : test_ble_GattServer_callbackFields
     * @tc.desc      : test GattServer callback field access via CharReadFieldCb etc (needs BT hardware to invoke)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattServer_callbackFields(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_callbackFields begins.")
        let server = createGattServer()
        let charReadCb = CharReadFieldCb()
        let charWriteCb = CharWriteFieldCb()
        let descReadCb = DescReadFieldCb()
        let descWriteCb = DescWriteFieldCb()
        let connStateCb = ConnStateFieldCb()
        try {
            server.on(BluetoothBleGattServerCallbackType.CharacteristicRead, charReadCb)
            server.on(BluetoothBleGattServerCallbackType.CharacteristicWrite, charWriteCb)
            server.on(BluetoothBleGattServerCallbackType.DescriptorRead, descReadCb)
            server.on(BluetoothBleGattServerCallbackType.DescriptorWrite, descWriteCb)
            server.on(BluetoothBleGattServerCallbackType.ConnectionStateChange, connStateCb)
            if (charReadCb.lastArg.isSome()) {
                let crArg = charReadCb.lastArg.getOrThrow()
                @Expect(crArg.transId >= 0)
                @Expect(crArg.offset >= 0)
                @Expect(crArg.characteristicUUID.size > 0)
            } else {
                @Expect(charReadCb.lastArg.isNone())
            }
            if (charWriteCb.lastArg.isSome()) {
                let cwArg = charWriteCb.lastArg.getOrThrow()
                @Expect(cwArg.transId >= 0)
                @Expect(cwArg.offset >= 0)
                @Expect(cwArg.characteristicUUID.size > 0)
            } else {
                @Expect(charWriteCb.lastArg.isNone())
            }
            if (descReadCb.lastArg.isSome()) {
                let drArg = descReadCb.lastArg.getOrThrow()
                @Expect(drArg.transId >= 0)
                @Expect(drArg.offset >= 0)
                @Expect(drArg.descriptorUUID.size > 0)
                @Expect(drArg.characteristicUUID.size > 0)
            } else {
                @Expect(descReadCb.lastArg.isNone())
            }
            if (descWriteCb.lastArg.isSome()) {
                let dwArg = descWriteCb.lastArg.getOrThrow()
                @Expect(dwArg.transId >= 0)
                @Expect(dwArg.offset >= 0)
                @Expect(dwArg.descriptorUUID.size > 0)
                @Expect(dwArg.characteristicUUID.size > 0)
            } else {
                @Expect(descWriteCb.lastArg.isNone())
            }
            if (connStateCb.lastArg.isSome()) {
                let csArg = connStateCb.lastArg.getOrThrow()
                @Expect(csArg.deviceId.size > 0)
                match (csArg.state) {
                    case ProfileConnectionState.StateDisconnected => ()
                    case ProfileConnectionState.StateConnecting => ()
                    case ProfileConnectionState.StateConnected => ()
                    case ProfileConnectionState.StateDisconnecting => ()
                    case _ => @Expect(false)
                }
            } else {
                @Expect(connStateCb.lastArg.isNone())
            }
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattServer_callbackFields ends.")
    }
}
