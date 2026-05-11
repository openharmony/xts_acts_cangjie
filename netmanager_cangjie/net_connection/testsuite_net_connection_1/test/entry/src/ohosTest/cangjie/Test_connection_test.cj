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

internal import kit.NetworkKit.*
import kit.AbilityKit.*
import std.unittest.testmacro.*
import std.runtime.*
import std.sync.*
import std.time.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.hilog.Hilog
import ohos.callback_invoke.*
import ohos.business_exception.*

@Test
public class Test_connection {

    /*
     * @tc.number    : Sub_Cangjie_testConenction
     * @tc.name      : testConenction
     * @tc.desc      : check application info_test_testConenction
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testConenction() {
        let netConn = createNetConnection()

        netConn.register()

        let netAvailableCallBack = NetAvailableCb({handle => Hilog.info(0, "CangjieTest", "onNetAvailable handle is ${handle.netId}")})
        netConn.on(NetConnectionEvent.NetAvailable, netAvailableCallBack)

        let netUnAvailableCallBack = NetUnavailableCb({=> Hilog.info(0, "CangjieTest", "onNetUnavailable")})
        netConn.on(NetConnectionEvent.NetUnavailable, netUnAvailableCallBack)

        let netLostCallBack = NetLostCb({handle => Hilog.info(0, "CangjieTest", "onNetLost handle is ${handle.netId}")})
        netConn.on(NetConnectionEvent.NetLost, netLostCallBack)

        let netConnectionPropertiesChangeCallBack = NetConnectionPropertiesChangeCb(
            {
                info => Hilog.info(0, "CangjieTest",
                    "onNetConnectionPropertiesChange handle is ${info.netHandle.netId}, props is ")
            })
        netConn.on(NetConnectionEvent.NetConnectionPropertiesChange, netConnectionPropertiesChangeCallBack)

        let netCapabilitiesChangeCallBack = NetCapabilitiesChangeCb(
            {
                info => Hilog.info(0, "CangjieTest",
                    "onNetCapabilitiesChange handle is ${info.netHandle.netId}, props is ")
            })
        netConn.on(NetConnectionEvent.NetCapabilitiesChange, netCapabilitiesChangeCallBack)

        let netBlockStatusChangeCallBack = NetBlockStatusChangeCb(
            {
                info => Hilog.info(0, "CangjieTest",
                    "onNetBlockStatusChange handle is ${info.netHandle.netId}, block is ${info.blocked}")
            })
        netConn.on(NetConnectionEvent.NetBlockStatusChange, netBlockStatusChangeCallBack)

        netConn.unregister()
    }

    /*
     * @tc.number    : Sub_Cangjie_testMeter
     * @tc.name      : testMeter
     * @tc.desc      : check application info_test_testMeter
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testMeter() {
        Hilog.info(0, "CangjieTest", "isDefaultNetMetered")
        let dnm = isDefaultNetMetered()
        Hilog.info(0, "CangjieTest", "isDefaultNetMetered ${dnm}")
    }

    /*
     * @tc.number    : Sub_Cangjie_testHandle
     * @tc.name      : testHandle
     * @tc.desc      : check application info_test_testHandle
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testHandle() {
        Hilog.info(0, "CangjieTest", "getDefaultNet")
        let handle = getDefaultNet()
        Hilog.info(0, "CangjieTest", "getDefaultNet ${handle.netId}")

        Hilog.info(0, "CangjieTest", "getAppNet")
        let handleapp = getAppNet()
        Hilog.info(0, "CangjieTest", "getAppNet ${handleapp.netId}")

        Hilog.info(0, "CangjieTest", "setAppNet")
        setAppNet(handle)
        Hilog.info(0, "CangjieTest", "setAppNet ok")

        Hilog.info(0, "CangjieTest", "getAppNet")
        let handleapp1 = getAppNet()
        Hilog.info(0, "CangjieTest", "getAppNet ${handleapp1.netId}")

        Hilog.info(0, "CangjieTest", "hasDefaultNet")
        let hasDef = hasDefaultNet()
        Hilog.info(0, "CangjieTest", "hasDefaultNet ${hasDef}")

        Hilog.info(0, "CangjieTest", "getAddressesByName def")
        let addressesdef = getAddressesByName("localhost")
        Hilog.info(0, "CangjieTest",
            "getAddressesByName def ${addressesdef.size} ${addressesdef[0].address} ${addressesdef[0].family} ${addressesdef[0].port}"
        )

        Hilog.info(0, "CangjieTest", "getAddressesByName")
        let addresses = handle.getAddressesByName("localhost")
        Hilog.info(0, "CangjieTest",
            "getAddressesByName ${addresses.size} ${addresses[0].address} ${addresses[0].family} ${addresses[0].port}")

        Hilog.info(0, "CangjieTest", "getAddressByName")
        let address = handle.getAddressByName("localhost")
        Hilog.info(0, "CangjieTest",
            "getAddressByName ${addresses[0].address} ${addresses[0].family} ${addresses[0].port}")
    }

    /*
     * @tc.number    : Sub_Cangjie_testProp
     * @tc.name      : testProp
     * @tc.desc      : check application info_test_testProp
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testProp() {
        let handle = getDefaultNet()
        Hilog.info(0, "CangjieTest", "getNetCapabilities")
        let capabilities = try {
            getNetCapabilities(handle)
        } catch (e: Exception) {
            Hilog.info(0, "CangjieTest", "getNetCapabilities failed: ${e.message}")
            NetCapabilities(Array<NetBearType>(), linkDownBandwidthKbps: 0, linkUpBandwidthKbps: 0,
                networkCap: Array<NetCap>())
        }
        Hilog.info(0, "CangjieTest",
            "getNetCapabilities : ${capabilities.linkDownBandwidthKbps} ${capabilities.linkUpBandwidthKbps} ${capabilities.bearerTypes.size} ${capabilities.networkCap.size}"
        )

        Hilog.info(0, "CangjieTest", "getConnectionProperties")
        try {
            let props = getConnectionProperties(handle)
            Hilog.info(0, "CangjieTest",
                "getConnectionProperties : ${props.interfaceName} ${props.domains} ${props.mtu} ${props.linkAddresses.size} ${props.dnses.size} ${props.routes.size}"
            )
        } catch (e: Exception) {
            Hilog.info(0, "CangjieTest", "getNetCapabilities failed: ${e.message}")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testReport
     * @tc.name      : testReport
     * @tc.desc      : check application info_test_testReport
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func testReport() {
        let handle = getDefaultNet()
        Hilog.info(0, "CangjieTest", "reportNetConnected")
        try {
            reportNetConnected(handle)
        } catch (e: Exception) {
            Hilog.info(0, "CangjieTest", "reportNetConnected failed: ${e.message}")
        }
        Hilog.info(0, "CangjieTest", "reportNetConnected ok")

        Hilog.info(0, "CangjieTest", "reportNetDisconnected")
        try {
            reportNetDisconnected(handle)
        } catch (e: Exception) {
            Hilog.info(0, "CangjieTest", "reportNetDisconnected failed: ${e.message}")
        }
        Hilog.info(0, "CangjieTest", "reportNetDisconnected ok")
    }

    /*
     * @tc.number    : Sub_Cangjie_GetDefaultHttpProxy_Success
     * @tc.name      : GetDefaultHttpProxy_Success
     * @tc.desc      : check application info_test_GetDefaultHttpProxy_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func GetDefaultHttpProxy_Success() {
        let httpProxy = getDefaultHttpProxy()
        Hilog.info(0, "CangjieTest", "host is ${httpProxy.host}")
    }

    /*
     * @tc.number    : Sub_Cangjie_GetAllNets_Success
     * @tc.name      : GetAllNets_Success
     * @tc.desc      : check application info_test_GetAllNets_Success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func GetAllNets_Success() {
        let nethandles = getAllNets()
        Hilog.info(0, "CangjieTest", "size is ${nethandles.size}")
    }

    /*
     * @tc.number    : Sub_Cangjie_NetConnection_Unregister_ThrowBusinessException
     * @tc.name      : NetConnection_Unregister_ThrowBusinessException
     * @tc.desc      : check application info_test_NetConnection_Unregister_ThrowBusinessException
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func NetConnection_Unregister_ThrowBusinessException() {
        expectBusinessException(2101007) {
            createNetConnection().unregister()
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Classes_Init
     * @tc.name      : Classes_Init
     * @tc.desc      : check application info_test_Classes_Init
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Classes_Init() {
        let nc = NetCapabilities(Array<NetBearType>(), linkDownBandwidthKbps: 0, linkUpBandwidthKbps: 0,
            networkCap: Array<NetCap>())
        NetSpecifier(nc, bearerPrivateIdentifier: "")
        let na = NetAddress("0.0.0.0", family: 1, port: 4564)
        HttpProxy("", 0, Array<String>(), username: "", password: "")
    }

    /*
     * @tc.number    : Sub_Cangjie_createNetConnectionWithNetCapabilities
     * @tc.name      : createNetConnectionWithNetCapabilities
     * @tc.desc      : check application info_test_createNetConnectionWithNetCapabilities
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func createNetConnectionWithNetCapabilities(): Unit {
        let netCaps: Array<NetCap> = [
            NetCapabilityMms,
            NetCapabilityNotMetered,
            NetCapabilityInternet,
            NetCapabilityNotVpn,
            NetCapabilityValidated
        ]
        let nc = NetCapabilities(Array<NetBearType>(), networkCap: netCaps)
        let ns = NetSpecifier(nc)
        try {
            createNetConnection(netSpecifier: ns)
        } catch (_: Exception) {}
    }

    /*
     * @tc.number    : Sub_Cangjie_createNetConnectionWithNetCapabilities1
     * @tc.name      : createNetConnectionWithNetCapabilities1
     * @tc.desc      : check application info_test_createNetConnectionWithNetCapabilities1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func createNetConnectionWithNetCapabilities1(): Unit {
        let a: Array<NetBearType> = [
            BearerCellular,
            BearerWifi,
            BearerEthernet
        ]
        let nc = NetCapabilities(a)
        let ns = NetSpecifier(nc)
        try {
            createNetConnection(netSpecifier: ns)
        } catch (_: Exception) {}
    }

    /*
     * @tc.number    : Sub_Cangjie_getAddressByName
     * @tc.name      : getAddressByName
     * @tc.desc      : check application info_test_getAddressByName
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func getAddressByName(): Unit {
        let handle = getAppNet()
        handle.getAddressByName("localhost")

        try {
            handle.getAddressByName("test")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 2100001)
        }
    }

}

func expectBusinessException(expectCode: Int32, f: () -> Unit) {
    try {
        f()
        @Expect(false)
    } catch (e: BusinessException) {
        @Expect(e.code, expectCode)
    }
}

class NetAvailableCb <: Callback1Argument<NetHandle> {
    let callback_: (NetHandle)->Unit
    public init(callback: (NetHandle)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetHandle): Unit {
        callback_(val)
    }
}

class NetUnavailableCb <: Callback0Argument {
    let callback_: ()->Unit
    public init(callback: ()->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException): Unit {
        callback_()
    }
}

class NetLostCb <: Callback1Argument<NetHandle> {
    let callback_: (NetHandle)->Unit
    public init(callback: (NetHandle)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetHandle): Unit {
        callback_(val)
    }
}

class NetConnectionPropertiesChangeCb <: Callback1Argument<NetConnectionPropertyInfo> {
    let callback_: (NetConnectionPropertyInfo)->Unit
    public init(callback: (NetConnectionPropertyInfo)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetConnectionPropertyInfo): Unit {
        callback_(val)
    }
}

class NetCapabilitiesChangeCb <: Callback1Argument<NetCapabilityInfo> {
    let callback_: (NetCapabilityInfo)->Unit
    public init(callback: (NetCapabilityInfo)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetCapabilityInfo): Unit {
        callback_(val)
    }
}

class NetBlockStatusChangeCb <: Callback1Argument<NetBlockStatusInfo> {
    let callback_: (NetBlockStatusInfo)->Unit
    public init(callback: (NetBlockStatusInfo)->Unit) {callback_ = callback}
    public open func invoke(err: ?BusinessException, val: NetBlockStatusInfo): Unit {
        callback_(val)
    }
}
