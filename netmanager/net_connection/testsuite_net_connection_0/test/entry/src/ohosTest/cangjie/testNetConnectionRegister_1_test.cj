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
import ohos.business_exception.{BusinessException}
import kit.PerformanceAnalysisKit.Hilog
import ohos.callback_invoke.Callback1Argument

struct NetConParam {
    let bearType: NetBearType
    let linkUp: UInt32
    let linkDown: UInt32
    let networkCap: NetCap
    let bearerPrivateId: String
    let timeout: UInt32

    public init(bearType: NetBearType, linkUp: UInt32, linkDown: UInt32, networkCap: NetCap, bearerPrivateId: String, timeout: UInt32) {
        this.bearType = bearType
        this.linkUp = linkUp
        this.linkDown = linkDown
        this.networkCap = networkCap
        this.bearerPrivateId = bearerPrivateId
        this.timeout = timeout
    }
}

let netConCases: Array<NetConParam> = [
    NetConParam(NetBearType.BearerCellular, 0u32, 0u32, NetCap.NetCapabilityMms, "slot0", 0u32),
    NetConParam(NetBearType.BearerWifi, 1u32, 1u32, NetCap.NetCapabilityNotMetered, "wifi", 0u32),
    NetConParam(NetBearType.BearerEthernet, 2u32, 2u32, NetCap.NetCapabilityInternet, "", 0u32),
    NetConParam(NetBearType.BearerWifi, 0u32, 0u32, NetCap.NetCapabilityMms, "", 1u32),
    NetConParam(NetBearType.BearerEthernet, 0u32, 0u32, NetCap.NetCapabilityNotVpn, "wifi", 2u32),
    NetConParam(NetBearType.BearerCellular, 2u32, 1u32, NetCap.NetCapabilityNotVpn, "slot0", 1u32),
    NetConParam(NetBearType.BearerCellular, 1u32, 0u32, NetCap.NetCapabilityInternet, "slot0", 2u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 2u32, NetCap.NetCapabilityValidated, "wifi", 1u32),
    NetConParam(NetBearType.BearerEthernet, 0u32, 1u32, NetCap.NetCapabilityNotMetered, "", 2u32),
    NetConParam(NetBearType.BearerEthernet, 1u32, 0u32, NetCap.NetCapabilityValidated, "", 1u32),
    NetConParam(NetBearType.BearerWifi, 2u32, 2u32, NetCap.NetCapabilityValidated, "slot0", 2u32),
    NetConParam(NetBearType.BearerEthernet, 2u32, 0u32, NetCap.NetCapabilityMms, "wifi", 0u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 2u32, NetCap.NetCapabilityNotMetered, "slot0", 0u32),
    NetConParam(NetBearType.BearerWifi, 0u32, 0u32, NetCap.NetCapabilityNotVpn, "", 0u32),
    NetConParam(NetBearType.BearerWifi, 0u32, 0u32, NetCap.NetCapabilityInternet, "wifi", 1u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 1u32, NetCap.NetCapabilityValidated, "", 0u32),
    NetConParam(NetBearType.BearerEthernet, 2u32, 0u32, NetCap.NetCapabilityNotMetered, "slot0", 1u32),
    NetConParam(NetBearType.BearerCellular, 1u32, 2u32, NetCap.NetCapabilityMms, "slot0", 2u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 1u32, NetCap.NetCapabilityInternet, "slot0", 0u32),
    NetConParam(NetBearType.BearerCellular, 1u32, 2u32, NetCap.NetCapabilityNotVpn, "slot0", 0u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 1u32, NetCap.NetCapabilityMms, "slot0", 0u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 0u32, NetCap.NetCapabilityNotMetered, "slot0", 0u32),
    NetConParam(NetBearType.BearerCellular, 0u32, 0u32, NetCap.NetCapabilityValidated, "slot0", 0u32)
]

@Test
class testNetConnectionRegister_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_register_0100
     * @tc.name      : TestCase_register
     * @tc.desc      : merged from register_0100~2300: register NetConnection across various NetSpecifier param combinations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_register(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_register begins.")
        for (param in netConCases) {
            let netCon = createNetConnection(
                netSpecifier: NetSpecifier(
                    NetCapabilities([param.bearType], linkUpBandwidthKbps: param.linkUp,
                        linkDownBandwidthKbps: param.linkDown, networkCap: [param.networkCap]),
                    bearerPrivateIdentifier: param.bearerPrivateId), timeout: param.timeout)
            netCon.register()
            @Expect(true)
        }
        let netConDup = createNetConnection()
        netConDup.register()
        try {
            netConDup.register()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 2101008)
        } finally {
            try {
                netConDup.unregister()
            } catch (e: Exception) {
                Hilog.error(0, "cangjietest", "TestCase_register cleanup " + e.toString())
            }
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_register ends.")
    }
}
