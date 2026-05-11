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
import std.time.DateTime   

@Test
class testFileFs_utimes_1 {
  /**
     * @tc.number: test_fs.write_01
     * @tc.name: test_utimes_01.write_01
   * @tc.desc    : Test
     * Open the file in read-write mode, default write from current offset.
   * @tc.size    : MEDIUM
   * @tc.type    : Functoin
   * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_01() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let bytesWritten1 = FileIo.write(f.fd, "hello, world")   
        FileIo.close(f.fd)     
        let a = FileIo.stat(fpath)
        let res = FileIo.utimes(fpath, Float64(DateTime.UnixEpoch.second))
        let b = FileIo.stat(fpath)
        @Expect(b.ctime > a.ctime, false)

    }

    /**
     * @tc.number: test_fs.write_02
     * @tc.name: test_utimes_02.write_02
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_02() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let bytesWritten1 = FileIo.write(f.fd, "hello, world")   
        FileIo.close(f.fd) 
        let a = FileIo.stat(fpath)    
        let res = FileIo.utimes(fpath, Float64(DateTime.now().second + 3600))
        let b = FileIo.stat(fpath)
        @Expect(b.ctime > a.ctime, false)
    }

    /**
     * @tc.number: test_fs.write_03
     * @tc.name: test_utimes_03.write_03
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_03() {
        let fpath = "/data/storage/el2/base/files/test_utimes_03"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
     
        let bytesWritten1 = FileIo.write(f.fd, "hello, world")   
        FileIo.close(f.fd)   
        try{
            let res = FileIo.utimes("/n", Float64(1))
            @Expect(false)
        } catch(e: BusinessException){
        @Expect(e.code, 13900002) 
        }


    }
    /**
     * @tc.number: test_fs.write_04
     * @tc.name: test_utimes_04.write_04
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_04() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let bytesWritten1 = FileIo.write(f.fd, "hello, world")   
        FileIo.close(f.fd)     
        try{

        let res = FileIo.utimes("", Float64(DateTime.UnixEpoch.second))
        @Expect(false)
        } catch(e: BusinessException){
            @Expect(e.code,  13900002)
        }
    }
    /**
     * @tc.number: test_fs.write_05
     * @tc.name: test_utimes_05.write_05
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_05() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        try{

        let res = FileIo.utimes("", Float64(DateTime.UnixEpoch.second))
        @Expect(false)
        } catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }
    }
    /**
     * @tc.number: test_fs.write_06
     * @tc.name: test_utimes_06.write_06
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_06() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let bytesWritten1 = FileIo.write(f.fd, "hello, world")   
        FileIo.close(f.fd)     
        try{

        let res = FileIo.utimes("/0", Float64(DateTime.UnixEpoch.second))
        @Expect(false)
        } catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number: test_fs.write_06
     * @tc.name: test_utimes_07.write_06
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_utimes_07() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let bytesWritten1 = FileIo.write(f.fd, "hello, world")   
        FileIo.close(f.fd)     
        try{

        let res = FileIo.utimes("/n", Float64(DateTime.UnixEpoch.second))
        @Expect(false)
        } catch(e: BusinessException){
            @Expect(e.code, 13900002)
        }
    }

} 

