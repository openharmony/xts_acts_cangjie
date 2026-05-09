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
    registerTestSuite {testCreateColor_Standard_1()}
    registerTestSuite {testCreateColor_Customize_1()}
    registerTestSuite {testCreateColor_Customize_2()}
    registerTestSuite {testCreateColor_Customize_3()}
    registerTestSuite {testCreateColor_Customize_4()}
    registerTestSuite {testCreateColor_Customize_5()}
    registerTestSuite {testCreateColor_Customize_6()}
    registerTestSuite {testCreateColor_Customize_7()}
    registerTestSuite {testCreateColor_Customize_8()}
    registerTestSuite {testCreateColor_CustomizeTwo_1()}
}
