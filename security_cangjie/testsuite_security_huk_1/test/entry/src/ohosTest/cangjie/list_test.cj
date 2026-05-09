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
    registerTestSuite {Test_SecurityHuks_AbortSession()}
    registerTestSuite {Test_SecurityHuks_Aes()}
    registerTestSuite {Test_SecurityHuks_AnonAttest()}
    registerTestSuite {Test_SecurityHuks_BasicAsymmetric()}
    registerTestSuite {Test_SecurityHuks_DeleteKey()}
    registerTestSuite {Test_SecurityHuks_ExportKeyItem()}
    registerTestSuite {Test_SecurityHuks_GenerateKey()}
    registerTestSuite {Test_SecurityHuks_GetKeyItemProperties()}
    registerTestSuite {Test_SecurityHuks_ImportKey()}
    registerTestSuite {Test_SecurityHuks_ImportWrappedKeyItem()}
    registerTestSuite {Test_SecurityHuks_IsKeyItemExist()}
    registerTestSuite {Test_SecurityHuks_KeyExchange()}
    registerTestSuite {Test_SecurityHuks_SessionOther()}
    registerTestSuite {Test_SecurityHuks_SM2()}
    registerTestSuite {Test_SecurityHuks_SM4()}
    registerTestSuite {Test_SecurityHuks_Special()}
    registerTestSuite {Test_SecurityHuks_Struct_ffi()}
    registerTestSuite {Test_SecurityHuks_Struct()}
}
