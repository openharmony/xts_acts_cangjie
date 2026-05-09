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
class testFileIo_copyfile_1 {
   /**
     * @tc.number: test_fs.copyFile_01
     * @tc.name: test_copyFile_01.copyFile_01
    * @tc.desc    : Test
     * Test file copied successfully by path.
    * @tc.size    : MEDIUM
    * @tc.type    : Functoin
    * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyFile_01() {
        let fpath = "/data/storage/el2/base/files/test_copyFile_01"
        let fpathTarget = fpath + "tgt"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            FileIo.copyFile(fpath, fpathTarget)
            let size1 = FileIo.stat(fpath).size
            let size2 = FileIo.stat(fpathTarget).size
            @Expect(size1, size2)

            FileIo.close(file)
            FileIo.unlink(fpath)
            FileIo.unlink(fpathTarget)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.copyFile_02
     * @tc.name: test_copyFile_02.copyFile_02
     * @tc.desc    : Test
     * Test file copied successfully by file descriptor.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyFile_02() {
        let fpath = "/data/storage/el2/base/files/test_copyFile_02"
        let fpathTarget = fpath + "tgt"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            FileIo.copyFile(file.fd, fpathTarget)
            let size1 = FileIo.stat(fpath).size
            let size2 = FileIo.stat(fpathTarget).size
            @Expect(size1, size2)

            FileIo.close(file)
            FileIo.unlink(fpath)
            FileIo.unlink(fpathTarget)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.copyFile_03
     * @tc.name: test_copyFile_03.copyFile_03
     * @tc.desc    : Test
     * The path point to nothing, no such file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyFile_03() {
        let fpath = "/data/storage/el2/base/files/test_copyFile_03"
        let fpathTarget = fpath + "tgt"

        try {
            FileIo.copyFile(fpath, fpathTarget)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900002, message: No such file or directory")
        }
    }

    /**
     * @tc.number: test_fs.copyFile_04
     * @tc.name: test_copyFile_04.copyFile_04
     * @tc.desc    : Test
     * Use default mode = 0.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyFile_04() {
        let fpath = "/data/storage/el2/base/files/test_copyFile_04"
        let fpathTarget = fpath + "tgt"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            FileIo.copyFile(fpath, fpathTarget, mode: 0)
            let size1 = FileIo.stat(fpath).size
            let size2 = FileIo.stat(fpathTarget).size
            @Expect(size1, size2)

            FileIo.close(file)
            FileIo.unlink(fpath)
            FileIo.unlink(fpathTarget)
        } catch (e: Exception) {
            @Expect(false)
        }
    }


    /**
     * @tc.number: test_fs.copyFile_07
     * @tc.name: test_copyFile_07.copyFile_07
     * @tc.desc    : Test
     * The length of file name is too long.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyFile_07() {
        let fpath = "/data/storage/el2/base/files/test_copyFile_07"
        var fpathTarget = fpath + "tgt"
        for (i in 0..250) {
            fpathTarget = fpathTarget + i.toString()
        }
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)

        try {
            FileIo.copyFile(fpath, fpathTarget)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900030, message: Filename too Long")
        }
    }
}
