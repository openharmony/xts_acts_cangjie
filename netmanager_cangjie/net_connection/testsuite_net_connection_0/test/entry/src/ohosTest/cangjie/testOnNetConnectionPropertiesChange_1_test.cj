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
class testOnNetConnectionPropertiesChange_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0100
     * @tc.name      : TestCase_164
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_164 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0200
     * @tc.name      : TestCase_165
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_165 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0300
     * @tc.name      : TestCase_166
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_166 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0400
     * @tc.name      : TestCase_167
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_167 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0500
     * @tc.name      : TestCase_168
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_168 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "wifi"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0600
     * @tc.name      : TestCase_169
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_169 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0700
     * @tc.name      : TestCase_170
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_170 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0800
     * @tc.name      : TestCase_171
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_171 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_0900
     * @tc.name      : TestCase_172
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_172 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: ""), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1000
     * @tc.name      : TestCase_173
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_173 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1100
     * @tc.name      : TestCase_174
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_174 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1200
     * @tc.name      : TestCase_175
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_175 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1300
     * @tc.name      : TestCase_176
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_176 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1400
     * @tc.name      : TestCase_177
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_177 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1500
     * @tc.name      : TestCase_178
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_178 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1600
     * @tc.name      : TestCase_179
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_179 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1700
     * @tc.name      : TestCase_180
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_180 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1800
     * @tc.name      : TestCase_181
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_181 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_1900
     * @tc.name      : TestCase_182
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_182 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2000
     * @tc.name      : TestCase_183
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_183 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2100
     * @tc.name      : TestCase_184
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_184 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2200
     * @tc.name      : TestCase_185
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_185 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2300
     * @tc.name      : TestCase_186
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_186 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetConnectionPropertiesChange")
        netCon.on(NetConnectionEvent.NetConnectionPropertiesChange, NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_186 ends.")
    }
}


class NetConnectionPropertiesChangeCb <: Callback1Argument<NetConnectionPropertyInfo> {
    let callback_: (NetConnectionPropertyInfo)->Unit
    public init(callback: (NetConnectionPropertyInfo)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetConnectionPropertyInfo): Unit {
        callback_(val)
    }
}