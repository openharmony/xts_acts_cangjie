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

@Test
class testNetConnectionUnregister_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0100
     * @tc.name      : TestCase_72
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_72 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0200
     * @tc.name      : TestCase_73
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_73 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0300
     * @tc.name      : TestCase_74
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_74 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0400
     * @tc.name      : TestCase_75
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_75 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0500
     * @tc.name      : TestCase_76
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_76 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "wifi"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0600
     * @tc.name      : TestCase_77
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_77 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0700
     * @tc.name      : TestCase_78
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_78 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0800
     * @tc.name      : TestCase_79
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_79 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_0900
     * @tc.name      : TestCase_80
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_80 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: ""), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1000
     * @tc.name      : TestCase_81
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_81 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1100
     * @tc.name      : TestCase_82
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_82 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1200
     * @tc.name      : TestCase_83
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_83 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1300
     * @tc.name      : TestCase_84
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_84 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1400
     * @tc.name      : TestCase_85
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_85 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1500
     * @tc.name      : TestCase_86
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_86 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1600
     * @tc.name      : TestCase_87
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_87 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1700
     * @tc.name      : TestCase_88
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_88 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1800
     * @tc.name      : TestCase_89
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_89 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_1900
     * @tc.name      : TestCase_90
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_90 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_2000
     * @tc.name      : TestCase_91
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_91 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_2100
     * @tc.name      : TestCase_92
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_92 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_2200
     * @tc.name      : TestCase_93
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_93 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_unregister_2300
     * @tc.name      : TestCase_94
     * @tc.desc      : net connection unregister
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_94 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_94 ends.")
    }
}
