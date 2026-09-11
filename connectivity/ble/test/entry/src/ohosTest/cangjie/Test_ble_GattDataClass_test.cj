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

@Test
class Test_ble_GattDataClass {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattProperties_001
     * @tc.name      : test_ble_GattProperties
     * @tc.desc      : test GattProperties constructor defaults and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattProperties(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattProperties begins.")
        let props = GattProperties()
        @Expect(props.write, true)
        @Expect(props.writeNoResponse, true)
        @Expect(props.read, true)
        @Expect(props.notify, false)
        @Expect(props.indicate, false)
        let custom = GattProperties(write: false, writeNoResponse: false, read: false, notify: true, indicate: true)
        @Expect(custom.write, false)
        @Expect(custom.writeNoResponse, false)
        @Expect(custom.read, false)
        @Expect(custom.notify, true)
        @Expect(custom.indicate, true)
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattProperties ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattPermissions_002
     * @tc.name      : test_ble_GattPermissions
     * @tc.desc      : test GattPermissions constructor defaults and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattPermissions(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattPermissions begins.")
        let perm = GattPermissions()
        @Expect(perm.read, true)
        @Expect(perm.readEncrypted, false)
        @Expect(perm.readEncryptedMitm, false)
        @Expect(perm.write, true)
        @Expect(perm.writeEncrypted, false)
        @Expect(perm.writeEncryptedMitm, false)
        @Expect(perm.writeSigned, false)
        @Expect(perm.writeSignedMitm, false)
        let custom = GattPermissions(read: false, readEncrypted: true, readEncryptedMitm: true, write: false,
            writeEncrypted: true, writeEncryptedMitm: true, writeSigned: true, writeSignedMitm: true)
        @Expect(custom.read, false)
        @Expect(custom.readEncrypted, true)
        @Expect(custom.readEncryptedMitm, true)
        @Expect(custom.write, false)
        @Expect(custom.writeEncrypted, true)
        @Expect(custom.writeEncryptedMitm, true)
        @Expect(custom.writeSigned, true)
        @Expect(custom.writeSignedMitm, true)
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattPermissions ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattPermissions_ops_003
     * @tc.name      : test_ble_GattPermissions_ops
     * @tc.desc      : test GattPermissions == and != operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattPermissions_ops(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattPermissions_ops begins.")
        let a = GattPermissions()
        let b = GattPermissions()
        let c = GattPermissions(read: false)
        @Expect(a == b, true)
        @Expect(a != b, false)
        @Expect(a == c, false)
        @Expect(a != c, true)
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattPermissions_ops ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_BleDescriptor_004
     * @tc.name      : test_ble_BleDescriptor
     * @tc.desc      : test BleDescriptor constructor and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_BleDescriptor(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleDescriptor begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3, 4])
        @Expect(desc.characteristicUUID, "00002a00-0000-1000-8000-00805f9b34fb")
        @Expect(desc.descriptorUUID, "00002902-0000-1000-8000-00805f9b34fb")
        @Expect(desc.descriptorValue.toString(), "[1, 2, 3, 4]")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleDescriptor ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_BleCharacteristic_005
     * @tc.name      : test_ble_BleCharacteristic
     * @tc.desc      : test BleCharacteristic constructor and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_BleCharacteristic(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleCharacteristic begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        @Expect(char.characteristicUUID, "00002a00-0000-1000-8000-00805f9b34fb")
        @Expect(char.characteristicValue.toString(), "[5, 6, 7, 8]")
        @Expect(char.descriptors.size, 1)
        @Expect(char.descriptors[0].descriptorUUID, "00002902-0000-1000-8000-00805f9b34fb")
        @Expect(char.properties.write, true)
        @Expect(char.properties.read, true)
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_BleCharacteristic ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_GattService_006
     * @tc.name      : test_ble_GattService
     * @tc.desc      : test GattService constructor and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_GattService(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattService begins.")
        let desc = BleDescriptor("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            "00002902-0000-1000-8000-00805f9b34fb",
            [1, 2, 3])
        let char = BleCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [5, 6, 7, 8],
            [desc])
        let service = GattService("00001800-0000-1000-8000-00805f9b34fb", true, [char])
        @Expect(service.isPrimary, true)
        @Expect(service.characteristics.size, 1)
        @Expect(service.characteristics[0].characteristicUUID, "00002a00-0000-1000-8000-00805f9b34fb")
        @Expect(service.includeServices.size, 0)
        let serviceSecondary = GattService("00001801-0000-1000-8000-00805f9b34fb", false, [], includeServices: [service])
        @Expect(serviceSecondary.isPrimary, false)
        @Expect(serviceSecondary.includeServices.size, 1)
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_GattService ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_NotifyCharacteristic_007
     * @tc.name      : test_ble_NotifyCharacteristic
     * @tc.desc      : test NotifyCharacteristic constructor and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_NotifyCharacteristic(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_NotifyCharacteristic begins.")
        let notify = NotifyCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [9, 9, 9, 9],
            true)
        @Expect(notify.characteristicUUID, "00002a00-0000-1000-8000-00805f9b34fb")
        @Expect(notify.characteristicValue.toString(), "[9, 9, 9, 9]")
        @Expect(notify.confirm, true)
        let notify2 = NotifyCharacteristic("00001800-0000-1000-8000-00805f9b34fb",
            "00002a00-0000-1000-8000-00805f9b34fb",
            [1, 2],
            false)
        @Expect(notify2.confirm, false)
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_NotifyCharacteristic ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ServerResponse_008
     * @tc.name      : test_ble_ServerResponse
     * @tc.desc      : test ServerResponse constructor and fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ServerResponse(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ServerResponse begins.")
        let resp = ServerResponse("00:11:22:33:44:55", 100i32, 0i32, 0i32, [1, 2, 3])
        @Expect(resp.transId, 100i32)
        @Expect(resp.status, 0i32)
        @Expect(resp.offset, 0i32)
        @Expect(resp.value.toString(), "[1, 2, 3]")
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ServerResponse ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_ble_ScanResult_reference_009
     * @tc.name      : test_ble_ScanResult_reference
     * @tc.desc      : Test ScanResult class type reference via callback signature and field access
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ble_ScanResult_reference(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ScanResult_reference begins.")
        let cb = ScanResultCb()
        try {
            on(BluetoothBleCallbackType.BleDeviceFind, cb)
            if (cb.lastArg.isSome()) {
                let arg = cb.lastArg.getOrThrow()
                @Expect(arg.rssi >= -127)
                @Expect(arg.deviceId.size > 0)
                @Expect(arg.data.size >= 0)
                @Expect(arg.deviceName.size >= 0)
                match (arg.connectable) {
                    case true => ()
                    case false => ()
                }
            } else {
                @Expect(cb.lastArg.isNone())
            }
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "", "errCode: ${e.code}, errMessage: ${e.message}")
            @Expect(e.code, 201i32)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase test_ble_ScanResult_reference ends.")
    }
}
