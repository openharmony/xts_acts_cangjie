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
class testFileFs_movedir_1 {
    /**
     * @tc.number    : test_fs.write_01
     * @tc.name    : test_movedir_01
     * @tc.desc    : Test Open the file in read-write mode, default write from current offset.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_01() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_02
     * @tc.name    : test_movedir_02
     * @tc.desc    : Test Open the file in write-only mode, writing a string with encoding = "utf-8".
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_02() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_03
     * @tc.name    : test_movedir_03
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_03() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))
        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget, mode: 0)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /*
    * @tc.number    : test_fs.movedir_04
    * @tc.name      : test_movedir_04
    * @tc.desc      : Test moveDir with valid directory path and mode 0.
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_04(): Unit {
        let srcDir = "/data/storage/el2/base/files/test_movedir_src_04"
        let targetDir = "/data/storage/el2/base/files/test_movedir_target_04"
        FileIo.mkdir(srcDir)
        FileIo.mkdir(targetDir)
        let f = FileIo.open(srcDir + "/test.txt", mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(f)
        FileIo.moveDir(srcDir, targetDir, mode: 0)
        @Expect(FileIo.access(srcDir), false)             
        @Expect(FileIo.access(targetDir), true)          
        @Expect(FileIo.access(targetDir + "/test.txt"), true)  
        FileIo.unlink(targetDir + "/test.txt")
        FileIo.rmdir(targetDir)
    }

    /**
     * @tc.number    : test_fs.write_05
     * @tc.name    : test_movedir_05
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_05() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget, mode: 1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.write_06
     * @tc.name    : test_movedir_06
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_06() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget, mode: -1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_07
     * @tc.name    : test_movedir_07
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_07() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget, mode: Int32.Max)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }

    /**
     * @tc.number    : test_fs.write_08
     * @tc.name    : test_movedir_08
     * @tc.desc    : Test function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level   : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_movedir_08() {
        let fpath = "/data/storage/el2/base/files/test_write_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE
            | OpenMode.READ_WRITE))

        let fpathTartget = "/data/storage/el2/base/files/test_movefile_01"
        try {
            FileIo.moveDir(fpath, fpathTartget, mode: Int32.Min)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        FileIo.unlink(fpath)
    }
}