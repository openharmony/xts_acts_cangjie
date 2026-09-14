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
import ohos.business_exception.*

@Test
class testFileIo_write01_1 {
    /**
     * @tc.number    : test_fs.write_01
     * @tc.name    : test_write_01
     * @tc.desc    : Test Open the file in read-write mode, default write from current offset.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_01() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
        let res1 = file.fd is Int32
        @Expect(res1, true)
        let bytesWritten1 = FileIo.write(file.fd, "hello, world")
        @Expect(bytesWritten1, 12)
        let bytesWritten2 = FileIo.write(file.fd, Array<Byte>(12, repeat: 65))
        @Expect(bytesWritten2, 12)
        let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0), options: ReadOptions(offset: 0))
        FileIo.close(file)
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_02
     * @tc.name    : test_write_02
     * @tc.desc    : Test Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_02() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten = FileIo.write(file.fd, "hello, world", options: WriteOptions(encoding: "utf-8"))
            @Expect(bytesWritten, 12)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_03
     * @tc.name    : test_write_03
     * @tc.desc    : Test Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_03() {
        let fpath = "/data/storage/el2/base/files/test_write_03"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten = FileIo.write(file.fd, "hello, world", options: WriteOptions(offset: 1))
            @Expect(bytesWritten, 12)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_04
     * @tc.name    : test_write_04
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_04() {
        let fpath = "/data/storage/el2/base/files/test_write_04"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten = FileIo.write(file.fd, "hello, world", options: WriteOptions(length: 1))
            @Expect(bytesWritten, 1)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_05
     * @tc.name    : test_write_05
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_05() {
        let fpath = "/data/storage/el2/base/files/test_write_05"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten = FileIo.write(file.fd, "hello, world", options: WriteOptions(offset: 1, length: 1))
            @Expect(bytesWritten, 1)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_06
     * @tc.name    : test_write_06
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_06() {
        let fpath = "/data/storage/el2/base/files/test_write_06"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten = FileIo.write(file.fd, "hello, world",
                options: WriteOptions(offset: 1, length: 1, encoding: "utf-8"))
            @Expect(bytesWritten, 1)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_07
     * @tc.name    : test_write_07
     * @tc.desc    : Test Write with invalid "length" option.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_07() {
        let fpath = "/data/storage/el2/base/files/test_write_07"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        var writeFile: ?File = None
        try {
            writeFile = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            if (let Some(file) <- writeFile) {
                let res1 = file.fd is Int32
                @Expect(res1, true)
                let bytesWritten = FileIo.write(file.fd, "hello, world", options: WriteOptions(length: 9999))
                @Expect(false)
            }
        } catch (e: BusinessException) {
            if (writeFile.isSome()) {
                FileIo.close(writeFile.getOrThrow())
            }
            FileIo.unlink(fpath)
            @Expect(e.code,  13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_write_08
     * @tc.desc    : Test Write with invalid fd parameters.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_08() {
        try {
            FileIo.write(-1, "hello, world")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,  13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_09
     * @tc.name    : test_write_09
     * @tc.desc    : Test Open the file in write-only mode, writing an ArrayBuffer(4096).
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_09() {
        let fpath = "/data/storage/el2/base/files/test_write_09"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten = FileIo.write(file.fd, Array<Byte>(4096, repeat: 65))
            @Expect(bytesWritten, 4096)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_10
     * @tc.name    : test_write_10
     * @tc.desc    : Test  Write with invalid "length" option.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_10() {
        let fpath = "/data/storage/el2/base/files/test_write_10"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        var writeFile: ?File = None
        try {
            writeFile = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            if (let Some(file) <- writeFile) {
                let res1 = file.fd is Int32
                @Expect(res1, true)
                let bytesWritten = FileIo.write(file.fd, Array<Byte>(4096, repeat: 65),
                    options: WriteOptions(length: 4097))
                @Expect(false)
            }
        } catch (e: BusinessException) {
            if (writeFile.isSome()) {
                FileIo.close(writeFile.getOrThrow())
            }
            FileIo.unlink(fpath)
            @Expect(e.code,  13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_11
     * @tc.name    : test_write_11
     * @tc.desc    : Test Write with invalid "offset" option.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_11() {
        let fpath = "/data/storage/el2/base/files/test_write_11"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        var writeFile: ?File = None
        try {
            writeFile = FileIo.open(fpath, mode: OpenMode.WRITE_ONLY)
            if (let Some(file) <- writeFile) {
                let res1 = file.fd is Int32
                @Expect(res1, true)
                let bytesWritten = FileIo.write(
                    file.fd,
                    Array<Byte>(4096, repeat: 0),
                    options: WriteOptions(offset: -1)
                )
                @Expect(false)
            }
        } catch (e: BusinessException) {
            if (writeFile.isSome()) {
                FileIo.close(writeFile.getOrThrow())
            }
            FileIo.unlink(fpath)
            @Expect(e.code,  13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_12
     * @tc.name    : test_write_12
     * @tc.desc    : Test Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_12() {
        let fpath = "/data/storage/el2/base/files/test_write_12"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten1 = FileIo.write(file.fd, "hello, world")
            @Expect(bytesWritten1, 12)
            let bytesWritten2 = FileIo.write(file.fd, Array<Byte>(12, repeat: 6))
            @Expect(bytesWritten2, 12)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.write_13
     * @tc.name    : test_write_13
     * @tc.desc    : Test Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_write_13() {
        let fpath = "/data/storage/el2/base/files/test_write_13"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            let res1 = file.fd is Int32
            @Expect(res1, true)
            let bytesWritten1 = FileIo.write(file.fd, "hello, world", options: WriteOptions())
            @Expect(bytesWritten1, 12)
            let bytesWritten2 = FileIo.write(file.fd, Array<Byte>(12, repeat: 65), options: WriteOptions())
            @Expect(bytesWritten2, 12)
            let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0), options: ReadOptions(offset: 0))
            @Expect(readlen, 24)
            FileIo.close(file)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
