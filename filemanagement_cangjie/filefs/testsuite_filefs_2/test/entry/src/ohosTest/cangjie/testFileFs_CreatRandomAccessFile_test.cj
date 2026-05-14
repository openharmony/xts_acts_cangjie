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
class testFileFs_CreatRandomAccessFile_1 {
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
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.write(buf)
        @Expect(num, 4096)
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
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_stream_02"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11 )
        randomAccessFile.close()
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
        let fpath = "/data/storage/el2/base/files/test_stream_03"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.WRITE_ONLY))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f)
        let buf = Array<Byte>(4096, repeat: 0)
        try{
        let num = randomAccessFile.read(buf)
        @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900008)
        }
        randomAccessFile.close()
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
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_stream_04"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.TRUNC))
        try{
            FileIo.write(f.fd, "hello world")
            FileIo.fdatasync(f.fd)
            let randomAccessFile = FileIo.createRandomAccessFile(f)
            let buf = Array<Byte>(4096, repeat: 0)
            let num = randomAccessFile.read(buf)
            @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900008)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_05
     * @tc.name: test_fs.write_05
     * @tc.desc Test FileIo.write() interfaces.
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    func test_stream_05() {
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.APPEND))

        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 4096)
        randomAccessFile.close()
        FileIo.unlink(fpath)
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
        sleepFor(3.second)
        let fpath = "/data/storage/el2/base/files/test_stream_06"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.NONBLOCK))
        try{
            FileIo.write(f.fd, "hello world")
            FileIo.fdatasync(f.fd)
            let randomAccessFile = FileIo.createRandomAccessFile(f)
            let buf = Array<Byte>(4096, repeat: 0)
            let num = randomAccessFile.read(buf)
            @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900008)
        }
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
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
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
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.READ_ONLY))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
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
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.WRITE_ONLY))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
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
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.APPEND))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
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
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.APPEND))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
    }


    /**
     * @tc.number: test_fs.write_12
     * @tc.name: test_stream_12.write_12
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_12() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.DIR))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_13.write_13
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_13() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.SYNC))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_14.write_13
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_14() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.NONBLOCK))
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(num, 11)
        randomAccessFile.close()
        FileIo.unlink(fpath)
    }
    /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_15.write_13
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_15() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        let random_option = RandomAccessFileOptions(start:1, end:3)
        try{
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE), options: random_option)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900020)
        }
    }
    /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_16.write_13
     * @tc.desc    : Test
     * Undefined option arguments, use default options.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_16() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        try{
        let random_option = RandomAccessFileOptions(start:0, end:3)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE), options: random_option)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900020)
        }
    }

   /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_17.write_13
    * @tc.desc    : Test
     * Undefined option arguments, use default options.
    * @tc.size    : MEDIUM
    * @tc.type    : Functoin
    * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_17() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        try {
        let random_option = RandomAccessFileOptions(start:Int64.Max, end:Int64.Min)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE), options: random_option)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(false)
        }catch(e: BusinessException){
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }
  /**
     * @tc.number: test_fs.write_13
     * @tc.name: test_stream_18.write_13
   * @tc.desc    : Test
     * Undefined option arguments, use default options.
   * @tc.size    : MEDIUM
   * @tc.type    : Functoin
   * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_stream_18() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        FileIo.write(f.fd, "hello world")
        FileIo.fdatasync(f.fd)
        try {
        let random_option = RandomAccessFileOptions(start:-3, end:0)
        let randomAccessFile = FileIo.createRandomAccessFile(f,mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE), options: random_option)
        let buf = Array<Byte>(4096, repeat: 0)
        let num = randomAccessFile.read(buf)
        @Expect(false)   
        }catch(e: BusinessException){
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

}