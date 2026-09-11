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
import ohos.hilog.Hilog
import ohos.wifi_manager.*
import ohos.business_exception.BusinessException

@Test
class Test_wifi_permit {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_wifi_permit_err_254001
     * @tc.name      : Test_Err_WifiPermit_Discover_StateOff
     * @tc.desc      : With Wi-Fi STA disabled (isWifiActive false) cover
     *                 startDiscoverDevices/stopDiscoverDevices/p2pCancelConnect
     *                 error path (2801001); with STA active the same calls
     *                 succeed and must not throw
     * @tc.precon    : Real-device run needs Wi-Fi STA disabled (hdc shell svc wifi disable)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_Err_WifiPermit_Discover_StateOff(): Unit {
        Hilog.info(0u32, "cangjietest", "%{public}s", "testcase Test_Err_WifiPermit_Discover_StateOff begins.")
        let staActive = isWifiActive()
        if (!staActive) {
            try {
                startDiscoverDevices()
                @Expect(false)
            } catch (e: BusinessException) {
                Hilog.error(0u32, "cangjietest", "%{public}s", "startDiscoverDevices code=${e.code.toString()}")
                @Expect(e.code, 2801001i32)
            }
            try {
                stopDiscoverDevices()
                @Expect(false)
            } catch (e: BusinessException) {
                Hilog.error(0u32, "cangjietest", "%{public}s", "stopDiscoverDevices code=${e.code.toString()}")
                @Expect(e.code, 2801001i32)
            }
            try {
                p2pCancelConnect()
                @Expect(false)
            } catch (e: BusinessException) {
                Hilog.error(0u32, "cangjietest", "%{public}s", "p2pCancelConnect code=${e.code.toString()}")
                @Expect(e.code, 2801001i32)
            }
        } else {
            try {
                startDiscoverDevices()
                stopDiscoverDevices()
            } catch (e: BusinessException) {
                Hilog.error(0u32, "cangjietest", "%{public}s", "discover success path code=${e.code.toString()}")
                @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "%{public}s", "testcase Test_Err_WifiPermit_Discover_StateOff ends.")
    }
}
