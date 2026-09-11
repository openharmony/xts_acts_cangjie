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
import std.collection.*
import ohos.base.*
import kit.NetworkKit.*
import std.regex.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.callback_invoke.Callback1Argument

@Test
class testGetConnectionProperties_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_getConnectionProperties_0100
     * @tc.name      : TestCase_28
     * @tc.desc      : test get connection properties.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest","Operation failed. Cannot connect to service")
        try {
            let netHandle = getDefaultNet()
            let connectionProperties = getConnectionProperties(netHandle)
            @Expect(connectionProperties.interfaceName == "wlan0"
                    && connectionProperties.domains == ""
                    && connectionProperties.linkAddresses.size >= 1i64
                    && connectionProperties.linkAddresses[0].address.address.size >= 1i64
                    && connectionProperties.linkAddresses[0].address.family == 1u32
                    && connectionProperties.linkAddresses[0].address.port == 0u32
            )
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0, "cangjietest","testcase TestCase_28 fail: ${e.code}" + e.message)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_28 ends.")
    }
}
