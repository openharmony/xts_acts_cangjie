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
class testFileIo_mkdir_1 {
     /**
     * @tc.number: test_mkdir_01
      * @tc.level    : Level 0
      * @tc.type    : Function
      * @tc.size    : MediumTest
     * @tc.name: test_mkdir_01
      * @tc.desc    : input
     */
    @TestCase
    func test_mkdir_01() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01/test_mkdir_02/test_mkdir_03"
        try {
            FileIo.mkdir(dpath, true)
            let res = FileIo.access(dpath)
            @Expect(res, true)
            let dpath_01 = "/data/storage/el2/base/haps/test_mkdir_01"
            FileIo.rmdir(dpath_01)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_02
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.mkdir_02
     * @tc.desc: Duplicate Folder
     */
    @TestCase
    func test_mkdir_02() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01/test_mkdir_02/test_mkdir_03"
        FileIo.mkdir(dpath, true)
        let res = FileIo.access(dpath)
        @Expect(res, true)
        try {
            FileIo.mkdir(dpath)
            @Expect(false)
            let dpath_01 = "/data/storage/el2/base/haps/test_mkdir_01"
            FileIo.rmdir(dpath_01)
        } catch (e: BusinessException) {
            @Expect(e.code,13900015)
            @Expect(e.message,"File exists")
            let dpath_01 = "/data/storage/el2/base/haps/test_mkdir_01"
            FileIo.rmdir(dpath_01)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_03
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.mkdir_03
     * @tc.desc    : Empty
     */
    @TestCase
    func test_mkdir_03() {
        try {
            FileIo.mkdir("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900002)
            @Expect(e.message,"No such file or directory")
        }
    }

    /**
     * @tc.number: test_fs.mkdir_04
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.mkdir_04
     * @tc.desc    : Create
     */
    @TestCase
    func test_mkdir_04() {
        let fpath = "/data/storage/el2/base/haps/test_mkdir_04.txt"
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        try {
            let dpath = "/data/storage/el2/base/haps/test_mkdir_04.txt/test_dir/test_dir01"
            FileIo.mkdir(dpath)
            @Expect(false)
            FileIo.unlink(fpath)
        } catch (e: BusinessException) {
            @Expect(e.code,13900018)
            @Expect(e.message,"Not a directory")
            FileIo.unlink(fpath)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_05
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.mkdir_05
     * @tc.desc    : recursion
     */
    @TestCase
    func test_mkdir_05() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01"
        try {
            FileIo.mkdir(dpath, false)
            let res = FileIo.access(dpath)
            @Expect(res, true)
            let dpath_01 = "/data/storage/el2/base/haps/test_mkdir_01"
            FileIo.rmdir(dpath_01)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_06
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.mkdir_06
     * @tc.desc    : recursion
     */
    @TestCase
    func test_mkdir_06() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01/test_mkdir_02/test_mkdir_03"
        try {
            FileIo.mkdir(dpath, false)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900002)
            @Expect(e.message,"No such file or directory")
        }
    }
}
