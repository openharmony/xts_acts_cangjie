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
import ohos.hilog.*
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.callback_invoke.Callback1Argument

@Test
class testOnNetLost_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0100
     * @tc.name      : TestCase_onNetLost
     * @tc.desc      : merged from onNetLost_0100~2300: register, on(NetLost), unregister across various NetSpecifier param combinations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_onNetLost(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_onNetLost begins.")
        for (param in netConCases) {
            let netCon = createNetConnection(
                netSpecifier: NetSpecifier(
                    NetCapabilities([param.bearType], linkUpBandwidthKbps: param.linkUp,
                        linkDownBandwidthKbps: param.linkDown, networkCap: [param.networkCap]),
                    bearerPrivateIdentifier: param.bearerPrivateId), timeout: param.timeout)
            netCon.register()
            netCon.on(NetConnectionEvent.NetLost, NetLostCb({
                handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
            }))
            netCon.unregister()
            @Expect(true)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_onNetLost ends.")
    }
}


class NetLostCb <: Callback1Argument<NetHandle> {
    let callback_: (NetHandle)->Unit
    public init(callback: (NetHandle)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetHandle): Unit {
        callback_(val)
    }
}
