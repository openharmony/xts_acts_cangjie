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
import ohos.callback_invoke.*


@Test
class testOnNetUnavailable_1 {
    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2400
     * @tc.name      : TestCase_210
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_210 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2500
     * @tc.name      : TestCase_211
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_211 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2600
     * @tc.name      : TestCase_212
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_212 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2700
     * @tc.name      : TestCase_213
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_213 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2800
     * @tc.name      : TestCase_214
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_214 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "wifi"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_2900
     * @tc.name      : TestCase_215
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_215 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3000
     * @tc.name      : TestCase_216
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_216 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3100
     * @tc.name      : TestCase_217
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_217 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3200
     * @tc.name      : TestCase_218
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_218 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: ""), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3300
     * @tc.name      : TestCase_219
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_219 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3400
     * @tc.name      : TestCase_220
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_220 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3500
     * @tc.name      : TestCase_221
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_221 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "wifi"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3600
     * @tc.name      : TestCase_222
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_222 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3700
     * @tc.name      : TestCase_223
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_223 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3800
     * @tc.name      : TestCase_224
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_224 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerWifi], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "wifi"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_3900
     * @tc.name      : TestCase_225
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_225 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: ""), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4000
     * @tc.name      : TestCase_226
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_226 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerEthernet], linkUpBandwidthKbps: 2u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 1u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4100
     * @tc.name      : TestCase_227
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_227 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 2u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4200
     * @tc.name      : TestCase_228
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_228 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityInternet]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4300
     * @tc.name      : TestCase_229
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_229 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 1u32,
                    linkDownBandwidthKbps: 2u32, networkCap: [NetCap.NetCapabilityNotVpn]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4400
     * @tc.name      : TestCase_230
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_230 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 1u32, networkCap: [NetCap.NetCapabilityMms]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4500
     * @tc.name      : TestCase_231
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_231 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityNotMetered]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_netConnection_onNetConnectionPropertiesChange_4600
     * @tc.name      : TestCase_232
     * @tc.desc      : on net available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_232 begins.")
        Hilog.info(0, "cangjietest","define local variable netCon")
        let netCon = createNetConnection(
            netSpecifier: NetSpecifier(
                NetCapabilities([NetBearType.BearerCellular], linkUpBandwidthKbps: 0u32,
                    linkDownBandwidthKbps: 0u32, networkCap: [NetCap.NetCapabilityValidated]),
                bearerPrivateIdentifier: "slot0"), timeout: 0u32)
        Hilog.info(0, "cangjietest","register")
        netCon.register()
        Hilog.info(0, "cangjietest","onNetUnavailable")
        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "net_connection test", "onNetUnavailable")})
        netCon.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)
        Hilog.info(0, "cangjietest","unregister")
        netCon.unregister()
        @Expect(true)
        Hilog.info(0, "cangjietest","testcase TestCase_232 ends.")
    }
}


class NetUnavailableCb <: Callback0Argument {
    let callback_: ()->Unit
    public init(callback: ()->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException): Unit {
        callback_()
    }
}
