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


struct CreateNetConnectionParam {
    let bearType: NetBearType
    let linkUpBandwidthKbps: UInt32
    let linkDownBandwidthKbps: UInt32
    let networkCap: NetCap
    let bearerPrivateIdentifier: String
    let timeout: UInt32

    public init(bearType: NetBearType, linkUpBandwidthKbps: UInt32, linkDownBandwidthKbps: UInt32,
        networkCap: NetCap, bearerPrivateIdentifier: String, timeout: UInt32) {
        this.bearType = bearType
        this.linkUpBandwidthKbps = linkUpBandwidthKbps
        this.linkDownBandwidthKbps = linkDownBandwidthKbps
        this.networkCap = networkCap
        this.bearerPrivateIdentifier = bearerPrivateIdentifier
        this.timeout = timeout
    }
}

let createNetConnectionCases: Array<CreateNetConnectionParam> = [
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 0u32, NetCap.NetCapabilityMms, "slot0", 0u32),
    CreateNetConnectionParam(NetBearType.BearerWifi, 1u32, 1u32, NetCap.NetCapabilityNotMetered, "wifi", 0u32),
    CreateNetConnectionParam(NetBearType.BearerEthernet, 2u32, 2u32, NetCap.NetCapabilityInternet, "", 0u32),
    CreateNetConnectionParam(NetBearType.BearerWifi, 0u32, 0u32, NetCap.NetCapabilityMms, "", 1u32),
    CreateNetConnectionParam(NetBearType.BearerEthernet, 0u32, 0u32, NetCap.NetCapabilityNotVpn, "wifi", 2u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 2u32, 1u32, NetCap.NetCapabilityNotVpn, "slot0", 1u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 1u32, 0u32, NetCap.NetCapabilityInternet, "slot0", 2u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 2u32, NetCap.NetCapabilityValidated, "wifi", 1u32),
    CreateNetConnectionParam(NetBearType.BearerEthernet, 0u32, 1u32, NetCap.NetCapabilityNotMetered, "", 2u32),
    CreateNetConnectionParam(NetBearType.BearerEthernet, 1u32, 0u32, NetCap.NetCapabilityValidated, "", 1u32),
    CreateNetConnectionParam(NetBearType.BearerWifi, 2u32, 2u32, NetCap.NetCapabilityValidated, "slot0", 2u32),
    CreateNetConnectionParam(NetBearType.BearerEthernet, 2u32, 0u32, NetCap.NetCapabilityMms, "wifi", 0u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 2u32, NetCap.NetCapabilityNotMetered, "slot0", 0u32),
    CreateNetConnectionParam(NetBearType.BearerWifi, 0u32, 0u32, NetCap.NetCapabilityNotVpn, "", 0u32),
    CreateNetConnectionParam(NetBearType.BearerWifi, 0u32, 0u32, NetCap.NetCapabilityInternet, "wifi", 1u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 1u32, NetCap.NetCapabilityValidated, "", 0u32),
    CreateNetConnectionParam(NetBearType.BearerEthernet, 2u32, 0u32, NetCap.NetCapabilityNotMetered, "slot0", 1u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 1u32, 2u32, NetCap.NetCapabilityMms, "slot0", 2u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 1u32, NetCap.NetCapabilityInternet, "slot0", 0u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 1u32, 2u32, NetCap.NetCapabilityNotVpn, "slot0", 0u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 1u32, NetCap.NetCapabilityMms, "slot0", 0u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 0u32, NetCap.NetCapabilityNotMetered, "slot0", 0u32),
    CreateNetConnectionParam(NetBearType.BearerCellular, 0u32, 0u32, NetCap.NetCapabilityValidated, "slot0", 0u32)
]


@Test
class testCreateNetConnection_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_createNetConnection_0100
     * @tc.name      : TestCase_0
     * @tc.desc      : test create net connection.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_0(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_0 begins.")
        for (param in createNetConnectionCases) {
            Hilog.info(0, "cangjietest","create connection")
            try {
                createNetConnection(
                    netSpecifier: NetSpecifier(
                        NetCapabilities([param.bearType], linkUpBandwidthKbps: param.linkUpBandwidthKbps,
                            linkDownBandwidthKbps: param.linkDownBandwidthKbps, networkCap: [param.networkCap]),
                        bearerPrivateIdentifier: param.bearerPrivateIdentifier), timeout: param.timeout)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        Hilog.info(0, "cangjietest","testcase TestCase_0 ends.")
    }
}
