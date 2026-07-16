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
     * @tc.name      : TestCase_187
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_187 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0200
     * @tc.name      : TestCase_188
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_188 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0300
     * @tc.name      : TestCase_189
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_189 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0400
     * @tc.name      : TestCase_190
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_190 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0500
     * @tc.name      : TestCase_191
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_191 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "wifi"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0600
     * @tc.name      : TestCase_192
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_192 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0700
     * @tc.name      : TestCase_193
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_193 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0800
     * @tc.name      : TestCase_194
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_194 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_0900
     * @tc.name      : TestCase_195
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_195 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: ""), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1000
     * @tc.name      : TestCase_196
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_196 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1100
     * @tc.name      : TestCase_197
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_197 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1200
     * @tc.name      : TestCase_198
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_198 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1300
     * @tc.name      : TestCase_199
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_199 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1400
     * @tc.name      : TestCase_200
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_200 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_200 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1500
     * @tc.name      : TestCase_201
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_201 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1600
     * @tc.name      : TestCase_202
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_202 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1700
     * @tc.name      : TestCase_203
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_203 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1800
     * @tc.name      : TestCase_204
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_204 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_1900
     * @tc.name      : TestCase_205
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_205 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_2000
     * @tc.name      : TestCase_206
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_206 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_2100
     * @tc.name      : TestCase_207
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_207 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_2200
     * @tc.name      : TestCase_208
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_208 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetLost_2300
     * @tc.name      : TestCase_209
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_209 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetLost")
        netCon.on(NetConnectionEvent.NetLost, NetLostCb({
            handle => Hilog.info(0, "net_connection test", "onNetLost handle is ${handle.netId}")
                    }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_209 ends.")
    }
}



class NetLostCb <: Callback1Argument<NetHandle> {
    let callback_: (NetHandle)->Unit
    public init(callback: (NetHandle)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetHandle): Unit {
        callback_(val)
    }
}