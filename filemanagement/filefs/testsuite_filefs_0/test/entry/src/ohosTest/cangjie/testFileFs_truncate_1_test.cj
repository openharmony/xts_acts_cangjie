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
class testFileIo_truncate_1 {
    /**
     * @tc.number    : test_fs.truncate_01
     * @tc.name    : test_truncate_01
     * @tc.desc    : Test Truncate the file with path.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_01() {
        let fpath = "/data/storage/el2/base/files/test_truncate_01"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            FileIo.truncate(fpath)
            let size = FileIo.stat(fpath).size
            @Expect(size, 0)
            FileIo.unlink(fpath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.truncate_02
     * @tc.name    : test_truncate_02
     * @tc.desc    : Test Truncate the file with fd and truncateLen = 5.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_02() {
        let fpath = "/data/storage/el2/base/files/test_truncate_02"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            let res = file.fd is Int32
            @Expect(res, true)
            FileIo.truncate(file.fd, len: 5)
            let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0))
            @Expect(readlen, 5)
            FileIo.close(file)
            FileIo.unlink(fpath)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number    : test_fs.truncate_03
     * @tc.name    : test_truncate_03
     * @tc.desc    : Test The path point to nothing, no such file.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_03() {
        let fpath = "/data/storage/el2/base/files/test_truncate_03"
        try {
            FileIo.truncate(fpath)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,  13900002)
        }
    }

    /**
     * @tc.number    : test_fs.truncate_04
     * @tc.name    : test_truncate_04
     * @tc.desc    : Test Invalid parameter fd.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_04() {
        try {
            FileIo.truncate(-1, len: 2)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code,  13900020)
        }
    }

    /**
     * @tc.number    : test_fs.truncate_05
     * @tc.name    : test_truncate_05
     * @tc.desc    : Test Invalid parameter len.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_05() {
        let fpath = "/data/storage/el2/base/files/test_truncate_05"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            FileIo.truncate(fpath, len: -1)
            @Expect(false)
        } catch (e: BusinessException) {
            FileIo.unlink(fpath)
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.truncate_06
     * @tc.name    : test_truncate_06
     * @tc.desc    : Test Invalid parameter len.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_06() {
        let fpath = "/data/storage/el2/base/files/test_truncate_06"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        var truncateFile: ?File = None
        try {
            truncateFile = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            if (let Some(file) <- truncateFile) {
                FileIo.truncate(file.fd, len: -1)
                @Expect(false)
            }
        } catch (e: BusinessException) {
            if (truncateFile.isSome()) {
                FileIo.close(truncateFile.getOrThrow())
            }
            FileIo.unlink(fpath)
            @Expect(e.code, 13900020)
        }
    }

    /**
     * @tc.number    : test_fs.truncate_07
     * @tc.name    : test_truncate_07
     * @tc.desc    : Test  Use default truncateLen = 0.
     * @tc.size    : MediumTest
     * @tc.type    : Function
     * @tc.level    : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_truncate_07() {
        let fpath = "/data/storage/el2/base/files/test_truncate_07"
        let f = FileIo.open(fpath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let res = FileIo.access(fpath)
        @Expect(res, true)
        FileIo.write(f.fd, "hello, world")
        FileIo.close(f)
        try {
            let file = FileIo.open(fpath, mode: OpenMode.READ_WRITE)
            let res = file.fd is Int32
            @Expect(res, true)
            FileIo.truncate(file.fd)
            let readlen = FileIo.read(file.fd, Array<Byte>(4096, repeat: 0))
            @Expect(readlen, 0)
            FileIo.close(file)
            FileIo.unlink(fpath)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
