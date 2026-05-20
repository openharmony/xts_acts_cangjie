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
class testFileIo_open_1 {
       /**
     * @tc.number: test_fs.open_01
     * @tc.name: test_open_01.open_01
        * @tc.desc    : Test
     * Open the file in read-only mode, verifying the file is readable.
        * @tc.size    : MEDIUM
        * @tc.type    : Functoin
        * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_01() {
        let fpath = "/data/storage/el2/base/files/test_open_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_ONLY))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let length = 4096
            let arryBuffer = Array<Byte>(length, repeat: 0)
            let readlen = FileIo.read(file.fd, arryBuffer)
            let size = FileIo.stat(fpath).size
            @Expect(readlen, size)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_02
     * @tc.name: test_open_02.open_02
     * @tc.desc    : Test
     * Open the file in write-only mode, verifying the file is writable.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_02() {
        let fpath = "/data/storage/el2/base/files/test_open_02"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.WRITE_ONLY))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let path = file.path
            @Expect(path, fpath)
            let name = file.name
            @Expect(name, "test_open_02")
            let byteWritten = FileIo.write(file.fd, "hello, world")
            @Expect(byteWritten, 12)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_03
     * @tc.name: test_open_03.open_03
     * @tc.desc    : Test
     * Open the file in read-write mode, verifying the file is readable and writable.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_03() {
        let fpath = "/data/storage/el2/base/files/test_open_03"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let length = 4096
            let arryBuffer = Array<Byte>(length, repeat: 0)
            let readlen = FileIo.read(file.fd, arryBuffer)
            let size = FileIo.stat(fpath).size
            @Expect(readlen, size)
            let byteWritten = FileIo.write(file.fd, "hello, world")
            @Expect(byteWritten, 12)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_04
     * @tc.name: test_open_04.open_04
     * @tc.desc    : Test
     * If the path point to the file which does not exist, the file can be created.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_04() {
        let fpath = "/data/storage/el2/base/files/test_open_04"
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let res1 = file.fd is Int32
            @Expect(res1, true)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_05
     * @tc.name: test_open_05.open_05
     * @tc.desc    : Test
     * If the file exists and the file is opened for read-write, trim its length to zero.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_05() {
        let fpath = "/data/storage/el2/base/files/test_open_05"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.TRUNC | OpenMode.READ_WRITE))
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let length = 4096
            let arryBuffer = Array<Byte>(length, repeat: 0)
            let readlen = FileIo.read(file.fd, arryBuffer)
            @Expect(readlen, 0)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_06
     * @tc.name: test_open_06.open_06
     * @tc.desc    : Test
     * Open as append, subsequent writes will append to the end of the file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_06() {
        let fpath = "/data/storage/el2/base/files/test_open_06"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.APPEND | OpenMode.READ_WRITE))
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let length = 100
            let bytesWritten2 = FileIo.write(file.fd, Array<Byte>(length, repeat: 65))
            @Expect(bytesWritten2, 100)
            let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0), options: ReadOptions(offset: 0))
            @Expect(readlen, 112)
        } catch (e: Exception) {
            @Expect(false)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.open_07
     * @tc.name: test_open_07.open_07
     * @tc.desc    : Test
     * If the file is a special file, the opening and subsequent IOs perform non-blocking operations.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_07() {
        let fpath = "/data/storage/el2/base/files/test_open_07"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.NONBLOCK | OpenMode.READ_WRITE))
            let res1 = file.fd is Int32
            @Expect(res1, true)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_08
     * @tc.name: test_open_08.open_08
     * @tc.desc    : Test
     * The path points to a directory.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_08() {
        let dpath = "/data/storage/el2/base/files/test_open_08"
        FileIo.mkdir(dpath)
        try {
            let file = FileIo.open(dpath, mode: OpenMode.DIR)
            let res = file.fd is Int32
            @Expect(res, true)
            FileIo.rmdir(dpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_09
     * @tc.name: test_open_09.open_09
     * @tc.desc    : Test
     * The path does not a directory, throw error.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_09() {
        let fpath = "/data/storage/el2/base/files/test_open_09"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            FileIo.open(fpath, mode: OpenMode.DIR)
            @Expect(false)
        } catch (e: Exception) {
            FileIo.unlink(fpath)
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900018, message: Not a directory")
        }
    }

    /**
     * @tc.number: test_fs.open_10
     * @tc.name: test_open_10.open_10
     * @tc.desc    : Test
     * The path does not point to a symbolic link.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_10() {
        let fpath = "/data/storage/el2/base/files/test_open_10"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.NOFOLLOW | OpenMode.READ_WRITE))
            let res1 = file.fd is Int32
            @Expect(res1, true)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_11
     * @tc.name: test_open_11.open_11
     * @tc.desc    : Test
     * Open the file in the way of synchronous IO.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_11() {
        let fpath = "/data/storage/el2/base/files/test_open_11"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.SYNC | OpenMode.READ_WRITE))
            let res1 = file.fd is Int32
            @Expect(res1, true)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_12
     * @tc.name: test_open_12.open_12
     * @tc.desc    : Test
     * The path refers to a directory, not a file.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_12() {
        let dpath = "/data/storage/el2/base/files/test_open_12"
        FileIo.mkdir(dpath)
        try {
            let file = FileIo.open(dpath, mode: OpenMode.READ_WRITE)
            @Expect(false)
        } catch (e: Exception) {
            FileIo.rmdir(dpath)
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900019, message: Is a directory")
        }
    }

    /**
     * @tc.number: test_fs.open_13
     * @tc.name: test_open_13.open_13
     * @tc.desc    : Test
     * Undefined option arguments, use default mode = 0o0.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_13() {
        let fpath = "/data/storage/el2/base/files/test_open_13"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        var openFile: ?File = None
        try {
            openFile = FileIo.open(fpath)
            if (let Some(file) <- openFile) {
                let res1 = file.fd is Int32
                @Expect(res1, true)
                let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0))
                let size = FileIo.stat(fpath).size
                @Expect(readlen, size)
                FileIo.write(file.fd, "4096")
                @Expect(false)
            }
        } catch (e: Exception) {
            if (openFile.isSome()) {
                FileIo.close(openFile.getOrThrow())
            }
            FileIo.unlink(fpath)
            let code = e.toString()
            @Expect(code, "BusinessException: errorcode: 13900008, message: Bad file descriptor")
        }
    }

    /**
     * @tc.number: test_fs.open_14
     * @tc.name: test_open_14.open_14
     * @tc.desc    : Test
     * The File object is obtained through the open interface.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_14() {
        let fpath = "/data/storage/el2/base/files/test_open_14"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_ONLY)
            let r = file.fd is Int32
            @Expect(r, true)
            @Expect(file.path, fpath)
            @Expect(file.name, "test_open_14")
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_15
     * @tc.name: test_open_15.open_15
     * @tc.desc    : Test
     * Open the file, file getParent(),write content
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_15() {
        let fpath = "/data/storage/el2/base/files/test_open_15"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            @Expect(file.getParent(), "/data/storage/el2/base/files")
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.open_16
     * @tc.name: test_open_16.open_16
     * @tc.desc    : Test
     * Open the file, file getParent(),without content
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_open_16() {
        let fpath = "/data/storage/el2/base/files/test_open_16"
        try {
            let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            @Expect(file.getParent(), "/data/storage/el2/base/files")
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }


}
