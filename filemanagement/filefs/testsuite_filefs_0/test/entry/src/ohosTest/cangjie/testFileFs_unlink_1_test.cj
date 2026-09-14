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
class testFileIo_unlink_1 {
    /**
     * @tc.number    : test_fs.unlink_01
     * @tc.name    : test_unlink_01
     * @tc.desc    : Test The path point to nothing, no such file.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_unlink_01() {
        let fpath = "/data/storage/el2/base/files/test_unlink_01";
        try {
            FileIo.unlink(fpath)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }

    /**
     * @tc.number    : test_fs.unlink_02
     * @tc.name    : test_unlink_02
     * @tc.desc    : Test Delete the file by path, verify the normal function.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_unlink_02() {
        let fpath = "/data/storage/el2/base/files/test_unlink_02";
        let file = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        try {
            let res1 = FileIo.access(fpath)
            @Expect(res1, true)
            FileIo.unlink(fpath)
            let res2 = FileIo.access(fpath)
            @Expect(res2, false)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.unlink_03
     * @tc.name    : test_unlink_03
     * @tc.desc    : TestThe path refers to a directory, not a file.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_unlink_03() {
        let dpath = "/data/storage/el2/base/files/test_unlink_03";
        FileIo.mkdir(dpath)
        try {
            let res = FileIo.access(dpath)
            @Expect(res, true)
            FileIo.unlink(dpath)
            @Expect(false)
        } catch (e: BusinessException) {
            FileIo.rmdir(dpath)
            @Expect(e.code, 13900019)
        }
    }
}
