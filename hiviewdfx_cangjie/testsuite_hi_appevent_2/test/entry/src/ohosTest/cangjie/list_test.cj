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
    registerTestSuite {Test_ohos_hiAppEvent()}
    registerTestSuite {Test_hiAppEvent_write()}
    registerTestSuite {Test_hiAppEvent_config()}
    registerTestSuite {Test_hiAppEvent_setUserProperty()}
    registerTestSuite {Test_hiAppEvent_setUserId()}
    registerTestSuite {Test_hiAppEvent_addProcessor()}
    registerTestSuite {Test_hiAppEvent_getUserProperty()}
    registerTestSuite {Test_hiAppEvent_getUserId()}
}
