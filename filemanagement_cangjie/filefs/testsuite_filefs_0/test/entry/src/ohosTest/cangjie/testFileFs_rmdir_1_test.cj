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
class testFileIo_rmdir_1 {
     /**
     * @tc.number: test_fs.rmdir_01
     * @tc.name: test_rmdir_01.rmdir_01
      * @tc.desc    : Test
     * Recursively delete all files and subfolders in a directory.
      * @tc.size    : MEDIUM
      * @tc.type    : Functoin
      * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rmdir_01() {
        let dpath = "/data/storage/el2/base/files/test_rmdir_01";
        let fpath = dpath + "/rmdir_sync_000";
        let ffpath = dpath + "/rmdir_sync_000_1";
        let ddpath = dpath + "/rmdir_sync_000_1d";
        let fffpath = ddpath + "/rmdir_sync_000";
        FileIo.mkdir(dpath)
        FileIo.mkdir(ddpath)
        let rmdir_sync_000 = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let rmdir_sync_000_1 = FileIo.open(ffpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let rmdir_sync_000_fff = FileIo.open(fffpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(rmdir_sync_000)
        FileIo.close(rmdir_sync_000_1)
        FileIo.close(rmdir_sync_000_fff)
        try {
            let res1 = FileIo.access(ddpath)
            @Expect(res1, true)
            let res2 = FileIo.access(fffpath)
            @Expect(res2, true)
            FileIo.rmdir(dpath)
            let res3 = FileIo.access(dpath)
            @Expect(res3, false)
            let res4 = FileIo.access(ddpath)
            @Expect(res4, false)
            let res5 = FileIo.access(fffpath)
            @Expect(res5, false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.rmdir_02
     * @tc.name: test_rmdir_02.rmdir_02
     * @tc.desc    : Test
     * Invalid path.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rmdir_02() {
        let dpath = "/data/storage/el2/base/files/test_rmdir_02";
        try {
            FileIo.rmdir(dpath)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900002, message: No such file or directory")
        }
    }

    /**
     * @tc.number: test_fs.rmdir_03
     * @tc.name: test_rmdir_03.rmdir_03
     * @tc.desc    : Test
     * The path contains ../, normal call.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rmdir_03() {
        let dpath = "/data/storage/el2/base/haps/entry/../entry/files/test_rmdir_03";
        try {
            FileIo.mkdir(dpath)
            let res1 = FileIo.access(dpath)
            @Expect(res1, true)
            FileIo.rmdir(dpath)
            let res2 = FileIo.access(dpath)
            @Expect(res2, false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.rmdir_04
     * @tc.name: test_rmdir_04.rmdir_04
     * @tc.desc    : Test
     * The path is file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rmdir_04() {
        let fpath = "/data/storage/el2/base/files/test_rmdir_04";
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let res = FileIo.access(fpath)
        @Expect(res, true)
        try {
            FileIo.rmdir(fpath)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900018, message: Not a directory")
        }
    }
}
