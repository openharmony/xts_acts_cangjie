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
class testFileIo_lstat_1 {
     /**
     * @tc.number: test_fs_lstat_01
     * @tc.name: test_lstat_01
      * @tc.desc    : Test
     * Enter the path parameter to get the file stat.
      * @tc.size    : MEDIUM
      * @tc.type    : Functoin
      * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_01() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_01"
            let srcpath = "/data/storage/el2/base/files/file_lstat_01_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_02
     * @tc.name: test_lstat_02
     * @tc.desc    : Test
     * The path point to nothing, no such file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_02() {
        let fpath = "/data/storage/el2/base/files/file_lstat_02"

        try {
            let stat = FileIo.lstat(fpath)
            @Expect(false)
        } catch (e: Exception) {
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900002, message: No such file or directory")
        }
    }

    /**
     * @tc.number: test_fs_lstat_03
     * @tc.name: test_lstat_03
     * @tc.desc    : Test
     * Enter the path parameter to get stat.ino of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_03() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_03"
            let srcpath = "/data/storage/el2/base/files/file_lstat_03_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let stat = FileIo.lstat(fpath)
            let res1 = stat.ino is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_04
     * @tc.name: test_lstat_04
     * @tc.desc    : Test
     * Enter the path parameter to get stat.mode of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_04() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_04"
            let srcpath = "/data/storage/el2/base/files/file_lstat_04_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            let res1 = stat.mode is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_05
     * @tc.name: test_lstat_05
     * @tc.desc    : Test
     * Enter the path parameter to get stat.uid of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_05() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_05"
            let srcpath = "/data/storage/el2/base/files/file_lstat_05_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            let res1 = stat.uid is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_06
     * @tc.name: test_lstat_06
     * @tc.desc    : Test
     * Enter the path parameter to get stat.gid of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_06() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_06"
            let srcpath = "/data/storage/el2/base/files/file_lstat_06_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            let res1 = stat.gid is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_07
     * @tc.name: test_lstat_07
     * @tc.desc    : Test
     * Enter the path parameter to get stat.size of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_07() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_07"
            let srcpath = "/data/storage/el2/base/files/file_lstat_07_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            let res1 = stat.size is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_08
     * @tc.name: test_lstat_08
     * @tc.desc    : Test
     * Enter the path parameter to get stat.atime of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_08() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_08"
            let srcpath = "/data/storage/el2/base/files/file_lstat_08_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let stat = FileIo.lstat(fpath)
            let res1 = stat.atime is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_09
     * @tc.name: test_lstat_09
     * @tc.desc    : Test
     * Enter the path parameter to get stat.mtime of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_09() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_09"
            let srcpath = "/data/storage/el2/base/files/file_lstat_09_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            let res1 = stat.mtime is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_10
     * @tc.name: test_lstat_10
     * @tc.desc    : Test
     * Enter the path parameter to get stat.ctime of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_10() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_10"
            let srcpath = "/data/storage/el2/base/files/file_lstat_10_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let stat = FileIo.lstat(fpath)
            let res1 = stat.ctime is Int64
            @Expect(res1)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isBlockDevice
     * @tc.name: test_lstat_isBlockDevice
     * @tc.desc    : Test
     * This interface shall not treat a normal file as a block special device.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isBlockDevice() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isBlockDevice"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isBlockDevice_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let res1 = FileIo.lstat(fpath).isBlockDevice()
            @Expect(res1, false)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isCharacterDevice
     * @tc.name: test_lstat_isCharacterDevice
     * @tc.desc    : Test
     * This interface shall not treat a normal file as a character special device.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isCharacterDevice() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isCharacterDevice"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isCharacterDevice_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let res1 = FileIo.lstat(fpath).isCharacterDevice()
            @Expect(res1, false)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isDirectory_01
     * @tc.name: test_lstat_isDirectory_01
     * @tc.desc    : Test
     * interface shall not treat a normal file as a directory.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isDirectory_01() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isDirectory_01"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isDirectory_01_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let res1 = FileIo.lstat(fpath).isDirectory()
            @Expect(res1, false)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isDirectory_02
     * @tc.name: test_lstat_isDirectory_02
     * @tc.desc    : Test
     * This interface shall treat a directory as a directory.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isDirectory_02() {
        let dpath = "/data/storage/el2/base/files/file_lstat_isDirectory_02"

        try {
            FileIo.mkdir(dpath)
            let res1 = FileIo.lstat(dpath).isDirectory()
            @Expect(res1, true)

            FileIo.rmdir(dpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isFIFO
     * @tc.name: test_lstat_isFIFO
     * @tc.desc    : Test
     * This interface shall not treat a normal file as a FIFO.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isFIFO() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isFIFO"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isFIFO_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let res1 = FileIo.lstat(fpath).isFifo()
            @Expect(res1, false)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isFile_01
     * @tc.name: test_lstat_isFile_01
     * @tc.desc    : Test
     * This interface shall treat a normal file as a normal file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isFile_01() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isFile_01"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isFile_01_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res1 = FileIo.lstat(fpath).isFile()
            //   @Expect(res1, false)
            @Expect(res1)
            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isFile_02
     * @tc.name: test_lstat_isFile_02
     * @tc.desc    : Test
     * This interface shall not treat a directory as a normal file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isFile_02() {
        let dpath = "/data/storage/el2/base/files/file_lstat_isFile_02"

        try {
            FileIo.mkdir(dpath)
            let res1 = FileIo.lstat(dpath).isFile()
            @Expect(res1, false)

            FileIo.rmdir(dpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isSocket
     * @tc.name: test_lstat_isSocket
     * @tc.desc    : Test
     * This interface shall not treat a file as a socket.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isSocket() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isSocket"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isSocket_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

            let res1 = FileIo.lstat(fpath).isSocket()
            @Expect(res1, false)

            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs_lstat_isSymbolicLink
     * @tc.name: test_lstat_isSymbolicLink
     * @tc.desc    : Test
     * This interface shall not treat a normal file as a symbolic link.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lstat_isSymbolicLink() {
        try {
            let fpath = "/data/storage/el2/base/files/file_lstat_isSymbolicLink"
            let srcpath = "/data/storage/el2/base/files/file_lstat_isSymbolicLink_s"
            let srcFile = FileIo.open(srcpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res = FileIo.access(srcpath)
            @Expect(res, true)
            FileIo.close(srcFile)
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res1 = FileIo.lstat(fpath).isSymbolicLink()
            //    @Expect(res1, true)
            @Expect(res1, false)
            FileIo.close(file)
            FileIo.unlink(srcpath)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
