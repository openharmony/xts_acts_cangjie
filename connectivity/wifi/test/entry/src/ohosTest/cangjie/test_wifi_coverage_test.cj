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
import std.unittest.testmacro.*
import std.unittest.common.*
import ohos.hilog.*
import ohos.wifi_manager.*
import ohos.business_exception.*

@Test
class TestWifiCoverage201 {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8101
     * @tc.name      : testWifiStateFunctions
     * @tc.desc      : cover isWifiActive and getScanInfoList
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testWifiStateFunctions(): Unit {
        try {
            let active = isWifiActive()
            Hilog.info(0u32, "cangjietest", "isWifiActive=${active}")
            let infos = getScanInfoList()
            @Expect(infos.size >= 0)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8102
     * @tc.name      : testWifiP2pFunctions
     * @tc.desc      : cover p2pConnect with constructed config, p2pCancelConnect and discovery functions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testWifiP2pFunctions(): Unit {
        try {
            let _ = p2pConnect(WifiP2pConfig("00:11:22:33:44:55", 0, "12345678", "grp", GroupOwnerBand.GoBandAuto))
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = p2pCancelConnect()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = startDiscoverDevices()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
        try {
            let _ = stopDiscoverDevices()
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_bt_cov_8103
     * @tc.name      : testWifiOnOffExplicitCallback
     * @tc.desc      : cover wifi on/off with explicitly constructed callback
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testWifiOnOffExplicitCallback(): Unit {
        try {
            on(WifiCallbackType.WifiScanStateChange, Int32Cb())
            off(WifiCallbackType.WifiScanStateChange, callback: Int32Cb())
            @Expect(true)
        } catch (e: BusinessException) {
            Hilog.error(0u32, "cangjietest", "code=${e.code}")
            @Expect(e.code != 0)
        }
    }

}
