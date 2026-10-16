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
    registerTestSuite {Test_ble_bacicFunc()}
    registerTestSuite {Test_ble_basicClass()}
    registerTestSuite {Test_bt_constant()}
    registerTestSuite {Test_bt_base_profile()}
    registerTestSuite {Test_bt_a2dp()}
    registerTestSuite {Test_bt_hfp()}
    registerTestSuite {Test_ble_GattDataClass()}
    registerTestSuite {Test_ble_Enums()}
    registerTestSuite {Test_ble_GattServer()}
    registerTestSuite {Test_ble_GattClientDevice()}
    registerTestSuite {Test_ble_CallbackData()}
    registerTestSuite {Test_bt_errors()}
    registerTestSuite {Test_bt_errors_device()}
    registerTestSuite {Test_bt_noperm_device()}
    registerTestSuite {TestBtCoverage201()}
}
