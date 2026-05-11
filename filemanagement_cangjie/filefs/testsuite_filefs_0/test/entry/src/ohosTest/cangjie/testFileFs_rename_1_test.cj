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
class testFileIo_rename_1 {
     /**
     * @tc.number: test_fs_rename_01
     * @tc.name: test_rename_01
      * @tc.desc    : Test
     * Rename the file by path, verify the normal function.
      * @tc.size    : MEDIUM
      * @tc.type    : Functoin
      * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_01() {
        let fpath = "/data/storage/el2/base/files/file_rename_01"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let newf = fpath + "test"
            FileIo.rename(fpath, newf)
            let r = FileIo.access(newf)
            @Expect(r, true)
            FileIo.unlink(newf)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_rename_02
     * @tc.name: test_rename_02
     * @tc.desc    : Test
     * The path point to nothing, no such file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_02() {
        let fpath = "/data/storage/el2/base/files/file_rename_02"

        try {
            let newf = fpath + "test"
            FileIo.rename(fpath, newf)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900002, message: No such file or directory")
        }
    }

    /**
     * @tc.number: test_fs_rename_03
     * @tc.name: test_rename_03
     * @tc.desc    : Test
     * Modify file names across directory.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_03() {
        let dpath = "/data/storage/el2/base/files/file_rename_03"
        let fpath = dpath + "/file_000"
        FileIo.mkdir(dpath)
        FileIo.mkdir(dpath + "/dir_000")
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            let newf = dpath + "/dir_000/newFileName";
            FileIo.rename(fpath, newf)
            let r = FileIo.access(newf)
            @Expect(r, true)
            FileIo.unlink(newf)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_rename_04
     * @tc.name: test_rename_04
     * @tc.desc    : Test
     * The length of file name is too long.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_04() {
        let fpath = "/data/storage/el2/base/files/file_rename_04"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let res = FileIo.access(fpath)
        @Expect(res, true)
        var fpathTarget = fpath + "tgt"
        for (i in 0..250) {
            fpathTarget = fpathTarget + i.toString()
        }

        try {
            FileIo.rename(fpath, fpathTarget)
            @Expect(false)
        } catch (e: Exception) {
            FileIo.unlink(fpath)
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900030, message: Filename too Long")
        }
    }

    /**
     * @tc.number: test_fs_rename_05
     * @tc.name: test_rename_05
     * @tc.desc    : Test
     * Don't have permission to operate on the root directory.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_05() {
        try {
            FileIo.rename("/data", "/data_new")
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900012, message: Permission denied")
        }
    }

    /**
     * @tc.number: test_fs_rename_06
     * @tc.name: test_rename_06
     * @tc.desc    : Test
     * The path is exist.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_06() {
        let fpath = "/data/storage/el2/base/files/file_rename_06"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let res = FileIo.access(fpath)
        @Expect(res, true)

        let dstpath = "/data/storage/el2/base/files/file_rename_06_dst"
        let f = FileIo.open(dstpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(f)
        let res1 = FileIo.access(dstpath)
        @Expect(res1, true)

        try {
            FileIo.rename(fpath, dstpath)
            FileIo.unlink(dstpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_rename_07
     * @tc.name: test_rename_07
     * @tc.desc    : Test
     * The path is exist and is a directory.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_rename_07() {
        let fpath = "/data/storage/el2/base/files/file_rename_07"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let res = FileIo.access(fpath)
        @Expect(res, true)

        let dstpath = "/data/storage/el2/base/files/file_rename_06_dst"
        FileIo.mkdir(dstpath)
        let res1 = FileIo.access(dstpath)
        @Expect(res1, true)

        try {
            FileIo.rename(fpath, dstpath)
            @Expect(false)
        } catch (e: Exception) {
            FileIo.unlink(fpath)
            FileIo.rmdir(dstpath)
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900019, message: Is a directory")
        }
    }
}
