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
    registerTestSuite {testFileFs_mkdtemp_1()}
    registerTestSuite {testFileFs_CreatStream_1()}
    registerTestSuite {testFileFs_fsync_1()}
    registerTestSuite {testFileFs_read_1()}
    registerTestSuite {testFileFs_write_1()}
    registerTestSuite {testFileFs_readlines_1()}
    registerTestSuite {testFileFs_readtext_1()}
    registerTestSuite {testFileFs_trylock_1()}
    registerTestSuite {testFileFs_utimes_1()}
    registerTestSuite {testFileFs_CreatRandomAccessFile_1()}
    registerTestSuite {testFileFs_dup_1()}
    registerTestSuite {testFileFs_fdopenStream_1()}
    registerTestSuite {testFileFs_movedir_1()}
    registerTestSuite {testFileFs_moveFile_1()}
}
