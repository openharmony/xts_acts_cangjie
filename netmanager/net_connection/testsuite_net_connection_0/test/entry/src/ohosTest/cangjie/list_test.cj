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

import ohos_app_cangjie_entry_test.unittest_support.registerTestSuite

private let register = testsuite()

func testsuite() {
    registerTestSuite {testCreateNetConnection_1()}
    registerTestSuite {testGetDefaultNet_1()}
    registerTestSuite {testGetDefaultHttpProxy_1()}
    registerTestSuite {testGetAppNet_1()}
    registerTestSuite {testSetAppNet_1()}
    registerTestSuite {testGetAllNets_1()}
    registerTestSuite {testGetConnectionProperties_1()}
    registerTestSuite {testGetNetCapabilities_1()}
    registerTestSuite {testIsDefaultNetMetered_1()}
    registerTestSuite {testHasDefaultNet_1()}
    registerTestSuite {testReportNetConnected_1()}
    registerTestSuite {testReportNetDisconnected_1()}
    registerTestSuite {testGetAddressesByName_1()}
    registerTestSuite {testNetConnectionRegister_1()}
    registerTestSuite {testNetConnectionUnregister_1()}
    registerTestSuite {testOnNetAvailable_1()}
    registerTestSuite {testOnNetBlockStatusChange_1()}
    registerTestSuite {testOnNetCapabilitiesChange_1()}
    registerTestSuite {testOnNetConnectionPropertiesChange_1()}
    registerTestSuite {testOnNetLost_1()}
    registerTestSuite {testOnNetUnavailable_1()}
    registerTestSuite {testNetHandleGetAddressesByName_1()}
    registerTestSuite {testNetHandleGetAddressByName_1()}
}
