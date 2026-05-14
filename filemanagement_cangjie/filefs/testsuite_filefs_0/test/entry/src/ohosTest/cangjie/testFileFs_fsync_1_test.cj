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

import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.CoreFileKit.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testFileIo_fsync_1 {
      /**
     * @tc.number: test_fs_fdatasync_01
     * @tc.name: test_fdatasync_01
       * @tc.desc    : Test
     * Open the file in read-write mode, and synchronize the file content data.
       * @tc.size    : MEDIUM
       * @tc.type    : Functoin
       * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_fdatasync_01() {
        let fpath = "/data/storage/el2/base/files/test_fdatasync_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            FileIo.write(file.fd, "hello, world")
            FileIo.fdatasync(file.fd)
            let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0), options: ReadOptions(offset: 0))
            @Expect(readlen, 12)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_fdatasync_02
     * @tc.name: test_fdatasync_02
     * @tc.desc    : Test
     * Invalid fd parameter.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_fdatasync_02() {
        try {
            FileIo.fdatasync(-1)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900008, message: Bad file descriptor")
        }
    }
}
