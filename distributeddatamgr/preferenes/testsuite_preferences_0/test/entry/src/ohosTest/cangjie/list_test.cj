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
    registerTestSuite {TestGetPreferencesByName_1()}
    registerTestSuite {TestGetPreferencesByOptionsOnlyName_1()}
    registerTestSuite {TestGetPreferencesByOptionsNameAndGroupId_1()}
    registerTestSuite {TestDeletePreferencesByNameFailDueToInvalidName_1()}
    registerTestSuite {TestDeletePreferencesByname_1()}
    registerTestSuite {TestDeletePreferencesByOptionsOnlyName_1()}
    registerTestSuite {TestDeletePreferencesByOptions_1()}
    registerTestSuite {TestRemovePreferencesFromCacheByname_1()}
    registerTestSuite {TestRemovePreferencesFromCacheByOptionsOnlyName_1()}
    registerTestSuite {TestRemovePreferencesFromCacheByOptions_1()}
    registerTestSuite {TestPreferencesContext_1()}
    registerTestSuite {TestPutSuccess_1()}
    registerTestSuite {TestPutFailDueToInvalidKV_1()}
    registerTestSuite {TestDelete_1()}
    registerTestSuite {TestClear_1()}
    registerTestSuite {TestFlush_1()}
    registerTestSuite {TestOn_1()}
    registerTestSuite {TestOff_1()}
    registerTestSuite {test_Preferences_ErrorCodes()}
}
