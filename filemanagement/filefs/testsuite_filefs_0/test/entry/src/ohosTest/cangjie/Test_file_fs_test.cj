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

internal import ohos.base.*
internal import kit.BasicServicesKit.SystemDateTime
internal import std.sync.*
internal import std.time.*
import std.runtime.GC
import kit.CoreFileKit.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*

@Test
class Test_file_fs {
    /*
     * @tc.number    : Sub_Cangjie_test_copyFile
     * @tc.name      : test_copyFile
     * @tc.desc      : check application info_test_test_copyFile
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyFile() {
        try {
            FileIo.copyFile("", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900002)
        }
        try {
            FileIo.copyDir("", "", mode: 1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }        
        try {
            FileIo.copyFile(-1, "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        try {
            FileIo.copyFile("", -1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,13900020)
        }
        try {
            FileIo.copyFile(-1, -1)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
        let src = "/data/storage/el1/base/test_copyFile"
        let dest = src + "tgt"
        if (FileIo.access(src)) {
            FileIo.unlink(src)
        }
        let file = FileIo.open(
            src,
            mode: (OpenMode
                .CREATE
                 | OpenMode
                .READ_WRITE
                )
        )
        if (FileIo.access(dest)) {
            FileIo.unlink(dest)
        }
        FileIo.copyFile(src, dest)
        let size1 = FileIo
            .stat(src)
            .size
        let size2 = FileIo
            .stat(dest)
            .size
        @Expect(size1, size2)
        FileIo.close(file)
        FileIo.unlink(src)
        FileIo.unlink(dest)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_copyDir_01
     * @tc.name      : test_copyDir_01
     * @tc.desc      : check application info_test_test_copyDir_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyDir_01() {
        let dpath = "/data/storage/el2/base/test_copyDir_01"
        let ddpath = dpath + "/srcDir_first"
        let ffpath = ddpath + "/srcFile_first_01"
        let ffpath2 = ddpath + "/srcFile_first_02"
        let dddpath = ddpath + "/srcDir_second"
        let fffpath = dddpath + "/srcFile_second_01"
        let ddpath2 = dpath + "/destDir_first"
        let ffpath3 = ddpath2 + "/destFile_first_01"
        if (FileIo.access(dpath)) {
            FileIo.rmdir(dpath)
        }
        if (FileIo.access(ddpath)) {
            FileIo.rmdir(ddpath)
        }
        if (FileIo.access(ddpath2)) {
            FileIo.rmdir(ddpath2)
        }
        if (FileIo.access(dddpath)) {
            FileIo.rmdir(dddpath)
        }
        FileIo.mkdir(dpath)
        FileIo.mkdir(ddpath)
        FileIo.mkdir(ddpath2)
        FileIo.mkdir(dddpath)
        if (FileIo.access(ffpath)) {
            FileIo.unlink(ffpath)
        }
        if (FileIo.access(ffpath2)) {
            FileIo.unlink(ffpath2)
        }
        if (FileIo.access(fffpath)) {
            FileIo.unlink(fffpath)
        }
        if (FileIo.access(ffpath3)) {
            FileIo.unlink(ffpath3)
        }
        let srcFile_first_01 = FileIo.open(
            ffpath,
            mode: (OpenMode
                .CREATE
                 | OpenMode
                .READ_WRITE
                )
        )
        let srcFile_first_02 = FileIo.open(
            ffpath2,
            mode: (OpenMode
                .CREATE
                 | OpenMode
                .READ_WRITE
                )
        )
        let srcFile_second_01 = FileIo.open(
            fffpath,
            mode: (OpenMode
                .CREATE
                 | OpenMode
                .READ_WRITE
                )
        )
        let destFile_first_01 = FileIo.open(
            ffpath3,
            mode: (OpenMode
                .CREATE
                 | OpenMode
                .READ_WRITE
                )
        )
        FileIo.copyDir(ddpath + "/", ddpath2 + "/", mode: 1)
        let size1 = FileIo
            .stat(ddpath2 + "/srcDir_first/srcFile_first_02")
            .size
        let size2 = FileIo
            .stat(ffpath2)
            .size
        @Expect(size1, size2)
        let size3 = FileIo
            .stat(ddpath2 + "/srcDir_first/srcFile_first_01")
            .size
        let size4 = FileIo
            .stat(ffpath)
            .size
        @Expect(size3, size4)
        let r1 = FileIo.access(ddpath)
        @Expect(r1, true)
        let r2 = FileIo.access(ddpath2 + "/srcDir_first/srcDir_second")
        @Expect(r2, true)
        let size5 = FileIo
            .stat(ddpath2 + "/srcDir_first/srcDir_second/srcFile_second_01")
            .size
        let size6 = FileIo
            .stat(fffpath)
            .size
        @Expect(size5, size6)
        FileIo.close(srcFile_first_01)
        FileIo.close(srcFile_first_02)
        FileIo.close(srcFile_second_01)
        FileIo.close(destFile_first_01)
        FileIo.rmdir(dpath)
    }

    /*
     * @tc.number    : Sub_Cangjie_test_copyDirConflict
     * @tc.name      : test_copyDirConflict
     * @tc.desc      : check application info_test_test_copyDirConflict
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_copyDirConflict() {
        let src1Path = "/data/storage/el2/base/haps/cpsrc1"
        let filePath = "/data/storage/el2/base/haps/cpsrc1/testcpConflict"
        let dest1Path = "/data/storage/el2/base/haps/cpdest1"
        let conflictDirPath = "/data/storage/el2/base/haps/cpdest1/cpsrc1"
        let conflictFilePath = "/data/storage/el2/base/haps/cpdest1/cpsrc1/testcpConflict"
        if (!FileIo.access(src1Path)) {
            FileIo.mkdir(src1Path)
        }
        if (!FileIo.access(dest1Path)) {
            FileIo.mkdir(dest1Path)
        }
        if (!FileIo.access(conflictDirPath)) {
            FileIo.mkdir(conflictDirPath)
        }
        if (!FileIo.access(filePath)) {
            let file1 = FileIo.open(
                filePath,
                mode: (OpenMode
                    .CREATE
                     | OpenMode
                    .READ_ONLY
                    )
            )
            FileIo.close(file1)
        }
        if (!FileIo.access(conflictFilePath)) {
            let file2 = FileIo.open(
                conflictFilePath,
                mode: (OpenMode
                    .CREATE
                     | OpenMode
                    .READ_ONLY
                    )
            )
            FileIo.close(file2)
        }
        try {
            FileIo.copyDir(src1Path, dest1Path, mode: 1)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
