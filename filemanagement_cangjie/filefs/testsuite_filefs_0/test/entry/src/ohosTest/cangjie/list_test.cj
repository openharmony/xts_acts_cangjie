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
    registerTestSuite {testFileIo_stat01_1()}
    registerTestSuite {testFileIo_access_1()}
    registerTestSuite {testFileIo_open_1()}
    registerTestSuite {testFileIo_close_1()}
    registerTestSuite {testFileIo_copyfile_1()}
    registerTestSuite {testFileIo_copyDir_1()}
    registerTestSuite {testFileIo_mkdir_1()}
    registerTestSuite {testFileIo_rmdir_1()}
    registerTestSuite {testFileIo_unlink_1()}
    registerTestSuite {testFileIo_write01_1()}
    registerTestSuite {testFileIo_truncate_1()}
    registerTestSuite {testFileIo_lstat_1()}
    registerTestSuite {testFileIo_rename_1()}
    registerTestSuite {testFileIo_fsync_1()}
    registerTestSuite {testFileIo_listFile_1()}
    registerTestSuite {testFileIo_lseek_1()}
    registerTestSuite {testFileIo_statclass_1()}
    registerTestSuite {testFileIo_mkdir01_1()}
    registerTestSuite {testFileIo_truncate02_1()}
    registerTestSuite {testFileIo_write02_1()}
}
