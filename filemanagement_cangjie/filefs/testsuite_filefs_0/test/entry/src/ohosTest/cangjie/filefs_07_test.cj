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
class testFileIo_lseek_1 {
     protected func beforeEach(): Unit {
        let pathdir = "/data/storage/el2/base/haps"
        let filepath = pathdir + "/test_file.txt"
        let file = FileIo.open(filepath, mode: OpenMode.READ_WRITE | OpenMode.CREATE)
        let str: String = "hello, world"
        let writeLen = FileIo.write(file.fd, str)
        FileIo.close(file)
    }

    protected func afterEach(): Unit {
        try {
            let pathdir = "/data/storage/el2/base/haps"
            let filepath = pathdir + "/test_file.txt"
            FileIo.unlink(filepath)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_01
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_01
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_01() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        let number: Int64 = 0
        try {
            let offset = FileIo.lseek(file_fd, number)
            @Expect(offset,number)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_02
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_02
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_02() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = -1
        try {
            let offset = FileIo.lseek(Int32(file_fd), 0)
            @Expect(false)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(cord,"BusinessException: errorcode: 13900020, message: Invalid argument")
            FileIo.close(file)
        }
    }

    /**
     * @tc.number: test_fs.lseek_03
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_03
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_03() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size - 1)
            @Expect(offset, FileIo.stat(filePath).size-1)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
    /**
     * @tc.number: test_fs.lseek_04
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_04
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_04() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size + 1)
            @Expect(offset, FileIo.stat(filePath).size+1)
            let writeLen = FileIo.write(file_fd, "hello Cangjie!")
            @Expect(writeLen, 14)
            let offset2 = FileIo.lseek(file_fd, 0, whence: WhenceType.SeekCur)
            @Expect(offset2, 27)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_05
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_05
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_05() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        let number: Int64 = -1
        try {
            let offset = FileIo.lseek(file_fd, number)
            @Expect(false)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(cord,"BusinessException: errorcode: 13900020, message: Invalid argument")
            FileIo.close(file)
        }
    }

    /**
     * @tc.number: test_fs.lseek_06
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_06
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_06() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size - 1, whence: WhenceType.SeekSet)
            @Expect(offset, FileIo.stat(filePath).size-1)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_07
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_07
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_07() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        let number: Int64 = -1
        try {
            let offset = FileIo.lseek(file_fd, number, whence: WhenceType.SeekSet)
            @Expect(false)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(cord,"BusinessException: errorcode: 13900020, message: Invalid argument")
            FileIo.close(file)
        }
    }

    /**
     * @tc.number: test_fs.lseek_08
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_08
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_08() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size + 1, whence: WhenceType.SeekSet)
            @Expect(offset,FileIo.stat(filePath).size+1)
            let writeLen = FileIo.write(file_fd, "hello Cangjie!")
            @Expect(writeLen, 14)
            let offset2 = FileIo.lseek(file_fd, 0, whence: WhenceType.SeekCur)
            @Expect(offset2, 27)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_09
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_09
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_09() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size - 1), whence: WhenceType.SeekEnd)
            @Expect(offset,1)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_10
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_10
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_10() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size + 1), whence: WhenceType.SeekEnd)
            @Expect(false)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(cord,"BusinessException: errorcode: 13900020, message: Invalid argument")
            FileIo.close(file)
        }
    }

    /**
     * @tc.number: test_fs.lseek_11
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_11
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_11() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        let number: Int64 = 1
        try {
            let offset = FileIo.lseek(file_fd, number, whence: WhenceType.SeekEnd)
            @Expect(offset,FileIo.stat(filePath).size+1)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_12
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_12
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_12() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size - 2, whence: WhenceType.SeekSet)
            @Expect(offset,FileIo.stat(filePath).size-2)
            let offset_1 = FileIo.lseek(file_fd, 1, whence: WhenceType.SeekCur)
            @Expect(offset_1,FileIo.stat(filePath).size-1)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_13
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_13
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_13() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size - 1, whence: WhenceType.SeekSet)
            @Expect(offset,FileIo.stat(filePath).size-1)
            let offset_1 = FileIo.lseek(file_fd, 2, whence: WhenceType.SeekCur)
            @Expect(offset_1,FileIo.stat(filePath).size+1)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_14
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_14
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_14() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size - 1, whence: WhenceType.SeekSet)
            @Expect(offset,FileIo.stat(filePath).size-1)
            let offset_1 = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size - 1), whence: WhenceType.SeekCur)
            @Expect(offset_1,0)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_15
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_15
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_15() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, FileIo.stat(filePath).size - 1, whence: WhenceType.SeekSet)
            @Expect(offset,FileIo.stat(filePath).size-1)
            let offset_1 = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size + 2), whence: WhenceType.SeekCur)
            @Expect(false)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(cord,"BusinessException: errorcode: 13900020, message: Invalid argument")
            FileIo.close(file)
        }
    }

    /**
     * @tc.number: test_fs.lseek_16
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_16
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_16() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        try {
            let offset = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size - 1), whence: WhenceType.SeekEnd)
            @Expect(offset,1)
            let offset_1 = FileIo.lseek(file_fd, (FileIo.stat(filePath).size - 2), whence: WhenceType.SeekCur)
            @Expect(offset_1,(FileIo.stat(filePath).size-1))
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /**
     * @tc.number: test_fs.lseek_17
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_17
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_17() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        let offset_01 = FileIo.lseek(file_fd, 0, whence: WhenceType.SeekEnd)
        try {
            let offset = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size - 1), whence: WhenceType.SeekEnd)
            @Expect(offset,1)
            let offset_1 = FileIo.lseek(file_fd, -2, whence: WhenceType.SeekCur)
            @Expect(false)
            FileIo.close(file)
        } catch (e: Exception) {
            let cord = e.toString()
            @Expect(cord,"BusinessException: errorcode: 13900020, message: Invalid argument")
            FileIo.close(file)
        }
    }

    /**
     * @tc.number: test_fs.lseek_18
     * @tc.level    : Level 0
     * @tc.type    : Function
     * @tc.size    : MediumTest
     * @tc.name: test_fs.lseek_18
     * @tc.desc    : Test
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_lseek_18() {
        let filePath = "/data/storage/el2/base/haps/test_file.txt"
        let file = FileIo.open(filePath, mode: OpenMode.READ_WRITE)
        let file_fd = file.fd
        let offset_01 = FileIo.lseek(file_fd, 0, whence: WhenceType.SeekEnd)
        try {
            let offset = FileIo.lseek(file_fd, -(FileIo.stat(filePath).size - 1), whence: WhenceType.SeekEnd)
            @Expect(offset,1)
            let offset_1 = FileIo.lseek(file_fd, FileIo.stat(filePath).size, whence: WhenceType.SeekCur)
            @Expect(offset_1,FileIo.stat(filePath).size+1)
            FileIo.close(file)
        } catch (e: Exception) {
            @Expect(false)
        }
    }
}
