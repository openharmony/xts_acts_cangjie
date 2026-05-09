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
    registerTestSuite {testSetUserProperty_1()}
    registerTestSuite {testGetUserProperty_1()}
    registerTestSuite {testCofigure_1()}
    registerTestSuite {testAppEventPackageHolderConstructor_1()}
    registerTestSuite {testAppEventPackageHolderSetSize_1()}
    registerTestSuite {testAppEventPackageHolderTakeNext_1()}
    registerTestSuite {testAddWatcher_1()}
    registerTestSuite {testAddWatcher_2()}
    registerTestSuite {testAddWatcher_3()}
    registerTestSuite {testAddWatcher_4()}
    registerTestSuite {testAddWatcher_5()}
    registerTestSuite {testAddWatcher_6()}
    registerTestSuite {testAddWatcher_7()}
    registerTestSuite {testAddWatcher_8()}
    registerTestSuite {testAddWatcher_9()}
    registerTestSuite {testAddWatcher_10()}
    registerTestSuite {testAddWatcher_11()}
    registerTestSuite {testAddWatcher_12()}
    registerTestSuite {testAddWatcher_13()}
    registerTestSuite {testAddWatcher_14()}
    registerTestSuite {testAddWatcher_15()}
    registerTestSuite {testSetUserId_1()}
    registerTestSuite {testSetUserId_2()}
    registerTestSuite {testGetUserId_1()}
    registerTestSuite {testGetUserId_2()}
}
