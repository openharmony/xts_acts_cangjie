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

@Test
class testFileIo_copyDir_1 {
    /**
     * @tc.number    : test_fs.copyDir_01
     * @tc.name    : test_copyDir_01
     * @tc.desc    : Test There is no target folder(src) under path dest. Mode is 1.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyDir_01() {
        let dpath = "/data/storage/el1/base/test_copyDir_01"
        let ddpath = dpath + "/srcDir_first"
        let ffpath = ddpath + "/srcFile_first_01"
        let ffpath2 = ddpath + "/srcFile_first_02"
        let dddpath = ddpath + "/srcDir_second"
        let fffpath = dddpath + "/srcFile_second_01"
        let ddpath2 = dpath + "/destDir_first"
        let ffpath3 = ddpath2 + "/destFile_first_01"
        FileIo.mkdir(dpath)
        FileIo.mkdir(ddpath)
        FileIo.mkdir(ddpath2)
        FileIo.mkdir(dddpath)
        let srcFile_first_01 = FileIo.open(ffpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let srcFile_first_02 = FileIo.open(ffpath2, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let srcFile_second_01 = FileIo.open(fffpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let destFile_first_01 = FileIo.open(ffpath3, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res1 = FileIo.access(ffpath)
        @Expect(res1, true)
        let res2 = FileIo.access(ffpath2)
        @Expect(res2, true)
        let res3 = FileIo.access(fffpath)
        @Expect(res3, true)
        let res4 = FileIo.access(ffpath3)
        @Expect(res4, true)
        FileIo.copyDir(ddpath, ddpath2, mode: 1)
        let size1 = FileIo.stat(ddpath2 + "/srcDir_first/srcFile_first_02").size
        let size2 = FileIo.stat(ffpath2).size
        @Expect(size1, size2)
        let size3 = FileIo.stat(ddpath2 + "/srcDir_first/srcFile_first_01").size
        let size4 = FileIo.stat(ffpath).size
        @Expect(size3, size4)
        let r1 = FileIo.access(ddpath)
        @Expect(r1, true)
        let r2 = FileIo.access(ddpath2 + "/srcDir_first/srcDir_second")
        @Expect(r2, true)
        let size5 = FileIo.stat(ddpath2 + "/srcDir_first/srcDir_second/srcFile_second_01").size
        let size6 = FileIo.stat(fffpath).size
        @Expect(size5, size6)
        FileIo.close(srcFile_first_01)
        FileIo.close(srcFile_first_02)
        FileIo.close(srcFile_second_01)
        FileIo.close(destFile_first_01)
        FileIo.rmdir(dpath)
    }
}
