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
import ohos.business_exception.BusinessException
import ohos.wifi_manager.isWifiActive
import ohos.wifi_manager.getScanInfoList
import ohos.wifi_manager.p2pConnect
import ohos.wifi_manager.p2pCancelConnect
import ohos.wifi_manager.startDiscoverDevices
import ohos.wifi_manager.stopDiscoverDevices
import ohos.wifi_manager.WifiCallbackType
import ohos.wifi_manager.WifiP2pConfig
import ohos.wifi_manager.GroupOwnerBand
import ohos.wifi_manager.on
import ohos.wifi_manager.off
import ohos.callback_invoke.Callback1Argument
import ohos.business_exception.BusinessException

class Int32Cb <: Callback1Argument<Int32> {
    public func invoke(err: ?BusinessException, arg: Int32): Unit {}
}

@Test
class Test_wifi_funcs {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_isWifiActive_252001
     * @tc.name      : test_wifi_isWifiActive
     * @tc.desc      : Test isWifiActive query of wifi status; may throw 801/2501000 without device
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_isWifiActive(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_isWifiActive begins.")
        try {
            let result = isWifiActive()
            Hilog.info(0, "cangjietest", "isWifiActive returned: ${result.toString()}")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_isWifiActive ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_getScanInfoList_252002
     * @tc.name      : test_wifi_getScanInfoList
     * @tc.desc      : Test getScanInfoList throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_getScanInfoList(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_getScanInfoList begins.")
        try {
            let _ = getScanInfoList()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_getScanInfoList ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_p2pConnect_252003
     * @tc.name      : test_wifi_p2pConnect
     * @tc.desc      : Test p2pConnect throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_p2pConnect(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_p2pConnect begins.")
        let config = WifiP2pConfig(
            "00:11:22:33:44:55",
            -1i32,
            "passphrase",
            "testGroup",
            GroupOwnerBand.GoBandAuto
        )
        try {
            p2pConnect(config)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_p2pConnect ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_p2pCancelConnect_252004
     * @tc.name      : test_wifi_p2pCancelConnect
     * @tc.desc      : Test p2pCancelConnect throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_p2pCancelConnect(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_p2pCancelConnect begins.")
        try {
            p2pCancelConnect()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_p2pCancelConnect ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_startDiscoverDevices_252005
     * @tc.name      : test_wifi_startDiscoverDevices
     * @tc.desc      : Test startDiscoverDevices throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_startDiscoverDevices(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_startDiscoverDevices begins.")
        try {
            startDiscoverDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_startDiscoverDevices ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_stopDiscoverDevices_252006
     * @tc.name      : test_wifi_stopDiscoverDevices
     * @tc.desc      : Test stopDiscoverDevices throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_stopDiscoverDevices(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_stopDiscoverDevices begins.")
        try {
            stopDiscoverDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_stopDiscoverDevices ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_on_252007
     * @tc.name      : test_wifi_on
     * @tc.desc      : Test on(eventType, callback) throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_on(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_on begins.")
        let cb = Int32Cb()
        try {
            on(WifiCallbackType.WifiScanStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_on ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_off_252008
     * @tc.name      : test_wifi_off
     * @tc.desc      : Test off(eventType) throws 201 without GET_WIFI_INFO permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_wifi_off(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_wifi_off begins.")
        try {
            off(WifiCallbackType.WifiScanStateChange)
            off(WifiCallbackType.WifiScanStateChange, callback: Int32Cb())
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_wifi_off ends.")
    }
}
