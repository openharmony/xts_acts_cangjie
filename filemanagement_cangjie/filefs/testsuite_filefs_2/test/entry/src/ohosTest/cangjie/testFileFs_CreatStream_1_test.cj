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
class testFileFs_CreatStream_1 {
  /**
     * @tc.number: test_fs.write_01
     * @tc.name: test_stream_01.write_01
   * @tc.desc    : Test
     * Open the file in read-write mode, default write from current offset.
   * @tc.size    : MEDIUM
   * @tc.type    : Functoin
   * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_01() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/t_stream_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let stream = FileIo.createStream(fpath, "r+")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.read(buf)
        @Expect(num, 0)
        stream.close()
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_02
     * @tc.name: test_stream_02.write_02
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_02() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let stream = FileIo.createStream(fpath, "r")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.read(buf)
        @Expect(num, 0)
        stream.close()
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_03
     * @tc.name: test_stream_03.write_03
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_03() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let stream = FileIo.createStream(fpath, "w+")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.read(buf)
        @Expect(num, 0)
        stream.close()
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_04
     * @tc.name: test_stream_04.write_04
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_04() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        try {
        let stream = FileIo.createStream(fpath, "w")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.read(buf)
        @Expect(false)
        }
        catch(e: BusinessException){
            @Expect(e.code, 13900005)
        }
    }

    /**
     * @tc.number: test_fs.write_05
     * @tc.name: test_stream_05.write_05
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_05() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        try {
        let stream = FileIo.createStream(fpath, "a")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.read(buf)
        @Expect(false)
        }
        catch(e: BusinessException){
            @Expect(e.code, 13900005)
        }
    }

    /**
     * @tc.number: test_fs.write_06
     * @tc.name: test_stream_06.write_06
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_06() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let stream = FileIo.createStream(fpath, "a+")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.read(buf)
        @Expect(num, 0)
        stream.close()
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_07
     * @tc.name: test_stream_07.write_07
     * @tc.desc    : Test
     * Write with invalid "length" option.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_07() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let stream = FileIo.createStream(fpath, "a+")
        let buf = Array<Byte>(4096, repeat: 0)
        let num = stream.write(buf)
        @Expect(num, 4096)
        stream.close() 
        FileIo.unlink(fpath) 
    }

    /**
     * @tc.number: test_fs.write_08
     * @tc.name: test_stream_08.write_08
     * @tc.desc    : Test
     * Write with invalid fd parameters.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_08() {
        let fpath = "/n"
        try {
        let stream = FileIo.createStream(fpath, "a+")
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900012)
        }

    }

    /**
     * @tc.number: test_fs.write_09
     * @tc.name: test_stream_09.write_09
     * @tc.desc    : Test
     * Open the file in write-only mode, writing an ArrayBuffer(4096).
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_09() {
        let fpath = "/data/storage/el2/base/files/test_write_02"
        try {
            let f1path = fpath + "/test11111111111111111111111111111111111111ddddddddddddddd.txt"
        let stream = FileIo.createStream(f1path, "r+")
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }

    }

    /**
     * @tc.number: test_fs.write_10
     * @tc.name: test_stream_10.write_10
     * @tc.desc    : Test
     * Write with invalid "length" option.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_10() {
        let fpath = ""
        try {
        let stream = FileIo.createStream(fpath, "r+")
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }

    }

    /**
     * @tc.number: test_fs.write_11
     * @tc.name: test_stream_11.write_11
     * @tc.desc    : Test
     * Write with invalid "offset" option.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_11() {
        let fpath = "/0"
        try {
        let stream = FileIo.createStream(fpath, "r+")
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }

    }

    /**
     * @tc.number: test_fs.write_12
     * @tc.name: test_stream_111.write_12
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_111() {
        let fpath = "/n"
        try {
        let stream = FileIo.createStream(fpath, "r+")
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }

    }

    /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_12.write_13
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_12() {
        let fpath = "/data/storage/base/"
        try {
        let stream = FileIo.createStream(fpath, "r+")
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }

    }

}