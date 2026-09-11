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
class testFileFs_read_1 {
    /**
     * @tc.number    : test_fs.write_01
     * @tc.name    : test_read_01
     * @tc.desc    : Test Open the file in read-write mode, default write from current offset.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_01() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let str = "Hello World"
        let writelen = FileIo.write(f.fd, str.toArray())
        let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(2, repeat: 65), options: ReadOptions(offset: 0))
        @Expect(bytesWritten2, 2)
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_02
     * @tc.name    : test_read_02
     * @tc.desc    : Test  Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_02() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        try {
            let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(12, repeat: 65), options: ReadOptions(offset: -1))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_03
     * @tc.name    : test_read_03
     * @tc.desc    : Test  Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_03() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_03"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(12, repeat: 65), options: ReadOptions(offset: 1))
        @Expect(bytesWritten2, 0)
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_04
     * @tc.name    : test_read_04
     * @tc.desc    : Test  Open the file in write-only mode, writing a string of length = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_04() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        try {
            let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(12, repeat: 65), options: ReadOptions(offset: Int64.Min))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_05
     * @tc.name    : test_read_05
     * @tc.desc    : Test  Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_05() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        try {
            let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(12, repeat: 65), options: ReadOptions(offset: Int64.Max))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_06
     * @tc.name    : test_read_06
     * @tc.desc    : Test  Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_06() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let str = "Hello World"
        let writelen = FileIo.write(f.fd, str.toArray())
        let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(3, repeat: 65), options: ReadOptions(length: 1))
        @Expect(bytesWritten2, 0)
        FileIo.unlink(fpath)
    }
    /**
     * @tc.number    : test_fs.write_07
     * @tc.name    : test_read_07
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_07() {
        try {
            let bytesWritten2 = FileIo.read(-1, Array<Byte>(12, repeat: 65))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code , 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_read_08
     * @tc.desc    : Test  Write with invalid fd parameters.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_08() {
        try {
            FileIo.read(1, Array<Byte>(12, repeat: 65), options: ReadOptions(offset: -1))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_09
     * @tc.name    : test_read_09
     * @tc.desc    : Test  Open the file in write-only mode, writing an ArrayBuffer(4096).
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_09() {
        try {
            let a = FileIo.read(0, Array<Byte>(12, repeat: 65), options: ReadOptions(offset: Int64.Min))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_10
     * @tc.name    : test_read_10
     * @tc.desc    : Test Write with invalid "length" option.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_10() {
        try {
            let a = FileIo.read(Int32.Max + 1, Array<Byte>(12, repeat: 65))
            @Expect(false)
        } catch (e: OverflowException) {
            @Expect(!e.message.isEmpty())
        }
    }

    /**
     * @tc.number    : test_fs.write_11
     * @tc.name    : test_read_11
     * @tc.desc    : Test  Write with invalid "offset" option.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_11() {
        try {
            let a = FileIo.read(Int32.Min - 1, Array<Byte>(12, repeat: 65))
            @Expect(false)
        } catch (e: OverflowException) {
            @Expect(!e.message.isEmpty())
        }
    }

    /**
     * @tc.number    : test_fs.write_12
     * @tc.name    : test_read_12
     * @tc.desc    : Test  Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_12() {
        let fpath = "/data/storage/el2/base/files/test_write_12"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let res1 = f.fd is Int32
        @Expect(res1, true)
        let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(12, repeat: 6))
        @Expect(bytesWritten2, 0)
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_13
     * @tc.name    : test_read_13
     * @tc.desc    : Test  Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_13() {
        let fpath = "/data/storage/el2/base/files/test_write_13"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let randomAccessFile = FileIo.createRandomAccessFile(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let ArrayBuffer = Array<Byte>(4096, repeat: 0)
        let bytesWritten2 = randomAccessFile.read(ArrayBuffer)
        @Expect(bytesWritten2, 0)
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_13
     * @tc.name    : test_read_14
     * @tc.desc    : Test  Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_14() {
        let fpath = "/data/storage/el2/base/files/test_write_13"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let randomAccessFile = FileIo.createRandomAccessFile(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let ArrayBuffer = Array<Byte>(4096, repeat: 0)
        try {
            let bytesWritten2 = randomAccessFile.read(ArrayBuffer, options: ReadOptions(offset: Int64.Max))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_13
     * @tc.name    : test_read_15
     * @tc.desc    : Test  Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_15() {
        let fpath = "/data/storage/el2/base/files/test_write_13"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let randomAccessFile = FileIo.createRandomAccessFile(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let ArrayBuffer = Array<Byte>(4096, repeat: 0)
        try {
            let bytesWritten2 = randomAccessFile.read(ArrayBuffer, options: ReadOptions(offset: Int64.Min - 1))
            @Expect(false)
        } catch (e: OverflowException) {
            @Expect(!e.message.isEmpty())
        }
        FileIo.unlink(fpath)
    }
    /**
     * @tc.number    : test_fs.write_13
     * @tc.name    : test_read_16
     * @tc.desc    : Test  Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_16() {
        let fpath = "/data/storage/el2/base/files/test_write_16"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let ArrayBuffer = Array<Byte>(4096, repeat: 0)
        try {
            let bytesWritten2 = FileIo.read(f.fd, ArrayBuffer, options: ReadOptions(offset: Int64.Min))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_13
     * @tc.name    : test_read_17
     * @tc.desc    : Test  Undefined option arguments, use default options.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_read_17() {
        let fpath = "/data/storage/el2/base/files/test_write_14"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        try {
            let bytesWritten2 = FileIo.read(f.fd, Array<Byte>(4096, repeat: 0), options: ReadOptions(offset: Int64.Max))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }
}