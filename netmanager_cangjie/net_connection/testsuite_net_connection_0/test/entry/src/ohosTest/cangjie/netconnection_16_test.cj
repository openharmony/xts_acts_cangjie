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
class testOnNetBlockStatusChange_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0100
     * @tc.name      : TestCase_118
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_118 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0200
     * @tc.name      : TestCase_119
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_119 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0300
     * @tc.name      : TestCase_120
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_120 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0400
     * @tc.name      : TestCase_121
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_121 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0500
     * @tc.name      : TestCase_122
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_122 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "wifi"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0600
     * @tc.name      : TestCase_123
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_123 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0700
     * @tc.name      : TestCase_124
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_124 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0800
     * @tc.name      : TestCase_125
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_125 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_0900
     * @tc.name      : TestCase_126
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_126 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: ""), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1000
     * @tc.name      : TestCase_127
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_127 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1100
     * @tc.name      : TestCase_128
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_128 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1200
     * @tc.name      : TestCase_129
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_129 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1300
     * @tc.name      : TestCase_130
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_130 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1400
     * @tc.name      : TestCase_131
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_131 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1500
     * @tc.name      : TestCase_132
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_132 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1600
     * @tc.name      : TestCase_133
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_133 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1700
     * @tc.name      : TestCase_134
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_134 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1800
     * @tc.name      : TestCase_135
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_135 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_1900
     * @tc.name      : TestCase_136
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_136 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_2000
     * @tc.name      : TestCase_137
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_137 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_2100
     * @tc.name      : TestCase_138
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_138 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_2200
     * @tc.name      : TestCase_139
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_139 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetBlockStatusChange_2300
     * @tc.name      : TestCase_140
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_140 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetAvailable")
        netCon.on(NetConnectionEvent.NetBlockStatusChange, NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "net_connection test",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            }))
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_140 ends.")
    }
}



class NetBlockStatusChangeCb <: Callback1Argument<NetBlockStatusInfo> {
    let callback_: (NetBlockStatusInfo) -> Unit
    public init(callback: (NetBlockStatusInfo) -> Unit) {
        callback_ = callback
    }
    public open func invoke(err: ?BusinessException, val: NetBlockStatusInfo): Unit {
        callback_(val)
    }
}
