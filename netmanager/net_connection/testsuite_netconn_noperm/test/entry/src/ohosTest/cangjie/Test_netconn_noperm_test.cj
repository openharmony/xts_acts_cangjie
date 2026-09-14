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

import ohos.base.*
import std.unittest.testmacro.*
import ohos.net.connection.*
import ohos.business_exception.BusinessException
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class Test_netconn_noperm {
    /*
     * @tc.number    : Sub_Cangjie_test_getDefaultNet_noperm
     * @tc.name      : test_getDefaultNet_noperm
     * @tc.desc      : verify getDefaultNet throws 201 when GET_NETWORK_INFO is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getDefaultNet_noperm(): Unit {
        try {
            let _ = getDefaultNet()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getDefaultNet noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getAllNets_noperm
     * @tc.name      : test_getAllNets_noperm
     * @tc.desc      : verify getAllNets throws 201 when GET_NETWORK_INFO is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getAllNets_noperm(): Unit {
        try {
            let _ = getAllNets()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getAllNets noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_isDefaultNetMetered_noperm
     * @tc.name      : test_isDefaultNetMetered_noperm
     * @tc.desc      : verify isDefaultNetMetered throws 201 when GET_NETWORK_INFO is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_isDefaultNetMetered_noperm(): Unit {
        try {
            let _ = isDefaultNetMetered()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "isDefaultNetMetered noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_hasDefaultNet_noperm
     * @tc.name      : test_hasDefaultNet_noperm
     * @tc.desc      : verify hasDefaultNet throws 201 when GET_NETWORK_INFO is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_hasDefaultNet_noperm(): Unit {
        try {
            let _ = hasDefaultNet()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "hasDefaultNet noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getAddressesByName_noperm
     * @tc.name      : test_getAddressesByName_noperm
     * @tc.desc      : verify getAddressesByName throws 201 when GET_NETWORK_INFO is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getAddressesByName_noperm(): Unit {
        try {
            let _ = getAddressesByName("www.example.com")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getAddressesByName noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_netConnectionRegister_noperm
     * @tc.name      : test_netConnectionRegister_noperm
     * @tc.desc      : verify NetConnection.register throws 201 when GET_NETWORK_INFO is not declared
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_netConnectionRegister_noperm(): Unit {
        let netConn = createNetConnection()
        try {
            netConn.register()
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "NetConnection.register noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_setAppNet_noperm_0001
     * @tc.name      : test_setAppNet_noperm
     * @tc.desc      : verify setAppNet throws 201 when INTERNET is not declared, using the NetHandle returned by getAppNet
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_setAppNet_noperm(): Unit {
        let netHandle = getAppNet()
        try {
            setAppNet(netHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "setAppNet noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getConnectionProperties_noperm_0002
     * @tc.name      : test_getConnectionProperties_noperm
     * @tc.desc      : verify getConnectionProperties throws 201 when GET_NETWORK_INFO is not declared, using the NetHandle returned by getAppNet
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getConnectionProperties_noperm(): Unit {
        let netHandle = getAppNet()
        try {
            let _ = getConnectionProperties(netHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getConnectionProperties noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_getNetCapabilities_noperm_0003
     * @tc.name      : test_getNetCapabilities_noperm
     * @tc.desc      : verify getNetCapabilities throws 201 when GET_NETWORK_INFO is not declared, using the NetHandle returned by getAppNet
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_getNetCapabilities_noperm(): Unit {
        let netHandle = getAppNet()
        try {
            let _ = getNetCapabilities(netHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "getNetCapabilities noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_reportNetConnected_noperm_0004
     * @tc.name      : test_reportNetConnected_noperm
     * @tc.desc      : verify reportNetConnected throws 201 when GET_NETWORK_INFO and INTERNET are not declared, using the NetHandle returned by getAppNet
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_reportNetConnected_noperm(): Unit {
        let netHandle = getAppNet()
        try {
            reportNetConnected(netHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "reportNetConnected noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_test_reportNetDisconnected_noperm_0005
     * @tc.name      : test_reportNetDisconnected_noperm
     * @tc.desc      : verify reportNetDisconnected throws 201 when GET_NETWORK_INFO and INTERNET are not declared, using the NetHandle returned by getAppNet
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 1
     */
    @TestCase
    @Tag[APILevel22, TestLevel1]
    func test_reportNetDisconnected_noperm(): Unit {
        let netHandle = getAppNet()
        try {
            reportNetDisconnected(netHandle)
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0u32, "cangjietest", "reportNetDisconnected noperm code=${e.code}")
            @Expect(e.code, 201)
        }
    }
}
