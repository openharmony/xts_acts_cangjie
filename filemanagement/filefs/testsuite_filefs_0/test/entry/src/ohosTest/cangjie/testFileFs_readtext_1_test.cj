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
class testFileFs_readtext_1 {
    /**
     * @tc.number    : test_fs.write_01
     * @tc.name    : test_readtext_01
     * @tc.desc    : Test Open the file in read-write mode, default write from current offset.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_01() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        let options: ReadTextOptions = ReadTextOptions(offset: 1, length: 2, encoding: "utf-8")
        let res = FileIo.readText(fpath, options: options)
        @Expect(res, "el")
    }

    /**
     * @tc.number    : test_fs.write_02
     * @tc.name    : test_readtext_02
     * @tc.desc    : Test Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_02() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        try {
            let options: ReadTextOptions = ReadTextOptions(offset: -1, length: 2, encoding: "utf-8")
            let res = FileIo.readText(fpath, options: options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_03
     * @tc.name    : test_readtext_03
     * @tc.desc    : Test Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_03() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        let options: ReadTextOptions = ReadTextOptions(offset: 0, length: 2, encoding: "utf-8")
        let res = FileIo.readText(fpath, options: options)
        @Expect(res, "he")
    }
    /**
     * @tc.number    : test_fs.write_04
     * @tc.name    : test_readtext_04
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_04() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        let options: ReadTextOptions = ReadTextOptions(offset: 0, length: 0, encoding: "utf-8")
        let res = FileIo.readText(fpath, options: options)
        @Expect(res, "")
    }
    /**
     * @tc.number    : test_fs.write_05
     * @tc.name    : test_readtext_05
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_05() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        try {
            let options: ReadTextOptions = ReadTextOptions(offset: Int64.Max, length: 99, encoding: "utf-8")
            let res = FileIo.readText(fpath, options: options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }
    /**
     * @tc.number    : test_fs.write_06
     * @tc.name    : test_readtext_06
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_06() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        try {
            let options: ReadTextOptions = ReadTextOptions(offset: Int64.Max, length: 99, encoding: "utf-8")
            let res = FileIo.readText(fpath, options: options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_06
     * @tc.name    : test_readtext_07
     * @tc.desc    : Test Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_07() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        let options: ReadTextOptions = ReadTextOptions(length: 0, encoding: "utf-8")
        let res = FileIo.readText(fpath, options: options)
        @Expect(res, "")
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_readtext_08
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_08() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))

        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        let options: ReadTextOptions = ReadTextOptions(encoding: "utf-8")
        let res = FileIo.readText(fpath, options: options)
        @Expect(res, "hello, world")
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_readtext_09
     * @tc.desc    : Test Write with invalid fd parameters.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_09() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        try {
            let options: ReadTextOptions = ReadTextOptions(encoding: "")
            let res = FileIo.readText(fpath, options: options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code , 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_readtext_10
     * @tc.desc    : Test Write with invalid fd parameters.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_10() {
        let fpath = "/data/storage/el2/base/files/test_readtext_10"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        try {
            let options: ReadTextOptions = ReadTextOptions(encoding: "utf-8")
            let res = FileIo.readText("", options: options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_readtext_11
     * @tc.desc    : Test Write with invalid fd parameters.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_readtext_11() {
        let fpath = "/data/storage/el2/base/files/test_readtext_11"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")
        try {
            let options: ReadTextOptions = ReadTextOptions(encoding: "utf-8")
            let res = FileIo.readText("/0", options: options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900002)
        }
    }
}