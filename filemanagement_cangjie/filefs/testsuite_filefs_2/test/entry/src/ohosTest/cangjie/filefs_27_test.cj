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
import ohos.business_exception.*

@Test
class testFileFs_mkdtemp_1 {
    /*
     * @tc.number    : Sub_Cangjie_unifiedDataChannel_testFileIo_access_0200
     * @tc.name      : test_mkdtemp_01
     * @tc.desc      : testFileIo_access
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func test_mkdtemp_01() {
        try {
            let dpath = "/data/storage/el2/base/haps/file"
            let res = FileIo.mkdtemp(dpath + "/XXXXXX")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code , 13900002)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_02
     * @tc.name: test_mkdtemp_02.mkdir_02
     * @tc.desc: Duplicate Folder
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0     
     */
    @TestCase
    func test_mkdtemp_02() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01/test_mkdir_02/test_mkdir_03"
        try {
           let res = FileIo.mkdtemp(dpath + "/testmkdtemp")
           @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900020)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_03
     * @tc.name: test_mkdtemp_03.mkdir_03
     * @tc.desc    : Empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func test_mkdtemp_03() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01/test_mkdir_02/test_mkdir_03"
        try {
           let res = FileIo.mkdtemp(dpath + "")
           @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900020)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_03
     * @tc.name: test_mkdtemp_04.mkdir_03
     * @tc.desc    : Empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func test_mkdtemp_04() {
        let dpath = "/data/storage/el2/base/haps/test_mkdir_01/test_mkdir_02/test_mkdir_03"
        try {
           let res = FileIo.mkdtemp(dpath + "/0")
           @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900020)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_03
     * @tc.name: test_mkdtemp_05.mkdir_03
     * @tc.desc    : Empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func test_mkdtemp_05() {
        try {
            let dpath = "/data/storage/el2/base/haps/file"
            let res = FileIo.mkdtemp(dpath + "/XXXXXXX")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code , 13900002)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_03
     * @tc.name: test_mkdtemp_06.mkdir_03
     * @tc.desc    : Empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func test_mkdtemp_06() {
        try {
            let dpath = "/data/storage/el2/base/haps/file"
            let res = FileIo.mkdtemp(dpath + "/XXXXX")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code , 13900020)
        }
    }

    /**
     * @tc.number: test_fs.mkdir_03
     * @tc.name: test_mkdtemp_07.mkdir_03
     * @tc.desc    : Empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    func test_mkdtemp_07() {
        try {
            let dpath = "/data/storage/el2/base/haps/file"
            let res = FileIo.mkdtemp(dpath + "/n")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code , 13900020)
        }
    }

}
