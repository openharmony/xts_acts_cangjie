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
class testFileFs_moveFile_1 {
  /**
     * @tc.number: test_fs.write_01
     * @tc.name: test_movefile_01.write_01
   * @tc.desc    : Test
     * Open the file in read-write mode, default write from current offset.
   * @tc.size    : MEDIUM
   * @tc.type    : Functoin
   * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movefile_01() {
        let fpath = "/data/storage/el2/base/files/test_movefile_0111"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))
        let fpathTartget = "/data/storage/el2/base/files/test_movefile_0123"
        try {
            FileIo.moveFile(fpath, fpathTartget)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
            @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number: test_fs.write_02
     * @tc.name: test_movefile_02.write_02
     * @tc.desc    : Test
     * Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MEDIUM
     * @tc.type    : Functoin
     * @tc.level    : Level
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movefile_02() {
        let fpath = "/data/storage/el2/base/files/test_write_0112"
        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01234"
        try {
            FileIo.moveFile(fpath, fpathTartget)
            @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number: test_fs.write_03
     * @tc.name: test_fs.write_03
     * @tc.desc Test FileIo.write() interfaces.
     * Open the file in write-only mode, writing a string from offset(position) = 1.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    func test_movefile_03() {
        let fpath = "/data/storage/el2/base/files/test_write_01233"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01111"
        try {
            FileIo.moveFile(fpath, fpathTartget, mode:0)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
             @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_04
     * @tc.name: test_fs.write_04
     * @tc.desc Test FileIo.write() interfaces.
     * Open the file in write-only mode, writing a string of length = 1.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    func test_movefile_04() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveFile(fpath, fpathTartget, mode:0)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
             @Expect(false)    
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
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
    func test_movefile_05() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveFile(fpath, fpathTartget,mode: 1)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
             @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_06
     * @tc.name: test_fs.write_06
     * @tc.desc Test FileIo.write() interfaces.
     * Open the file in write-only mode, writing a string of length = 1 and offset(position) = 1.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    func test_movefile_06() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveFile(fpath, fpathTartget,mode: -1)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
             @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_07
     * @tc.name: test_fs.write_07
     * @tc.desc Test FileIo.write() interfaces.
     * Write with invalid "length" option.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    func test_movefile_07() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveFile(fpath, fpathTartget,mode: Int32.Max)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
             @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number: test_fs.write_08
     * @tc.name: test_fs.write_08
     * @tc.desc Test FileIo.write() interfaces.
     * Write with invalid fd parameters.
     * @tc.size MEDIUM
     * @tc.type Functoin
     * @tc.level Level 0
     */
    func test_movefile_08() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode
            .CREATE
             | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveFile(fpath, fpathTartget,mode: Int32.Min)
            let size1 = FileIo.stat(fpath).size 
            let size2 = FileIo.stat(fpathTartget).size
             @Expect(false)
        }catch (e: BusinessException){
            @Expect(e.code, 13900002)
        }
        FileIo.unlink(fpath)
    }


}