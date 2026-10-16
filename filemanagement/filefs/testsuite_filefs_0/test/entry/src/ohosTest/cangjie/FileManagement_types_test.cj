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

import kit.CoreFileKit.*
import std.unittest.*
import std.unittest.testmacro.*
import ohos.hilog.Hilog

@Test
class FileManagement_types_test {

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00100
     * @tc.name      : test_OpenMode_READ_ONLY
     * @tc.desc      : test OpenMode.READ_ONLY constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_READ_ONLY() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_READ_ONLY begins.")
        @Expect(OpenMode.READ_ONLY, 0o0)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_READ_ONLY ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00200
     * @tc.name      : test_OpenMode_WRITE_ONLY
     * @tc.desc      : test OpenMode.WRITE_ONLY constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_WRITE_ONLY() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_WRITE_ONLY begins.")
        @Expect(OpenMode.WRITE_ONLY, 0o1)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_WRITE_ONLY ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00300
     * @tc.name      : test_OpenMode_READ_WRITE
     * @tc.desc      : test OpenMode.READ_WRITE constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_READ_WRITE() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_READ_WRITE begins.")
        @Expect(OpenMode.READ_WRITE, 0o2)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_READ_WRITE ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00400
     * @tc.name      : test_OpenMode_CREATE
     * @tc.desc      : test OpenMode.CREATE constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_CREATE() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_CREATE begins.")
        @Expect(OpenMode.CREATE, 0o100)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_CREATE ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00500
     * @tc.name      : test_OpenMode_TRUNC
     * @tc.desc      : test OpenMode.TRUNC constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_TRUNC() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_TRUNC begins.")
        @Expect(OpenMode.TRUNC, 0o1000)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_TRUNC ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00600
     * @tc.name      : test_OpenMode_APPEND
     * @tc.desc      : test OpenMode.APPEND constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_APPEND() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_APPEND begins.")
        @Expect(OpenMode.APPEND, 0o2000)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_APPEND ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00700
     * @tc.name      : test_OpenMode_NONBLOCK
     * @tc.desc      : test OpenMode.NONBLOCK constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_NONBLOCK() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_NONBLOCK begins.")
        @Expect(OpenMode.NONBLOCK, 0o4000)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_NONBLOCK ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00800
     * @tc.name      : test_OpenMode_DIR
     * @tc.desc      : test OpenMode.DIR constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_DIR() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_DIR begins.")
        @Expect(OpenMode.DIR, 0o200000)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_DIR ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_00900
     * @tc.name      : test_OpenMode_NOFOLLOW
     * @tc.desc      : test OpenMode.NOFOLLOW constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_NOFOLLOW() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_NOFOLLOW begins.")
        @Expect(OpenMode.NOFOLLOW, 0o400000)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_NOFOLLOW ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_01000
     * @tc.name      : test_OpenMode_SYNC
     * @tc.desc      : test OpenMode.SYNC constant value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_SYNC() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_SYNC begins.")
        @Expect(OpenMode.SYNC, 0o4010000)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_SYNC ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_OpenMode_01100
     * @tc.name      : test_OpenMode_combination
     * @tc.desc      : test OpenMode combination of multiple flags
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_OpenMode_combination() {
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_combination begins.")
        let mode = OpenMode.READ_ONLY | OpenMode.CREATE
        @Expect(mode, 0o100)

        let mode2 = OpenMode.READ_WRITE | OpenMode.CREATE | OpenMode.TRUNC
        @Expect(mode2, 0o1102)
        Hilog.info(0u32, "cangjietest", "testcase test_OpenMode_combination ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_ReaderIterator_00100
     * @tc.name      : test_ReaderIterator_next
     * @tc.desc      : test ReaderIterator.next method to read lines
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_ReaderIterator_next() {
        Hilog.info(0u32, "cangjietest", "testcase test_ReaderIterator_next begins.")
        let testFilePath = "/data/storage/el2/base/test_reader_iterator.txt"
        if (FileIo.access(testFilePath)) {
            FileIo.unlink(testFilePath)
        }
        let file = FileIo.open(testFilePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.write(file.fd, "line1\nline2\nline3")
        FileIo.close(file)
        let iterator = FileIo.readLines(testFilePath)

        let result1 = iterator.next()
        @Expect(result1.done, false)
        @Expect(result1.value, "line1\n")  
        let result2 = iterator.next()
        @Expect(result2.done, false)
        @Expect(result2.value, "line2\n")
        let result3 = iterator.next()
        @Expect(result3.done, false)
        @Expect(result3.value, "line3")
        let result4 = iterator.next()
        @Expect(result4.done)
        FileIo.unlink(testFilePath)
        Hilog.info(0u32, "cangjietest", "testcase test_ReaderIterator_next ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_AccessModeType_00500
     * @tc.name      : test_AccessModeType_usage
     * @tc.desc      : test AccessModeType usage in FileIo.access method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_AccessModeType_usage() {
        Hilog.info(0u32, "cangjietest", "testcase test_AccessModeType_usage begins.")
        let testPath = "/data/storage/el2/base/test_access_mode.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let result1 = FileIo.access(testPath, mode: AccessModeType.Exist)
        @Expect(result1, false)

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let result2 = FileIo.access(testPath, mode: AccessModeType.Exist)
        @Expect(result2)
        let result3 = FileIo.access(testPath, mode: AccessModeType.Read)
        @Expect(result3)
        let result4 = FileIo.access(testPath, mode: AccessModeType.Write)
        @Expect(result4)
        let result5 = FileIo.access(testPath, mode: AccessModeType.ReadWrite)
        @Expect(result5)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_AccessModeType_usage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_AccessFlagType_00200
     * @tc.name      : test_AccessFlagType_usage
     * @tc.desc      : test AccessFlagType usage in FileIo.access method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_AccessFlagType_usage() {
        Hilog.info(0u32, "cangjietest", "testcase test_AccessFlagType_usage begins.")
        let testPath = "/data/storage/el2/base/test_access_flag.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let result = FileIo.access(testPath, mode: AccessModeType.Exist, flag: AccessFlagType.Local)
        @Expect(result)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_AccessFlagType_usage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_WhenceType_00400
     * @tc.name      : test_WhenceType_usage
     * @tc.desc      : test WhenceType usage in FileIo.lseek method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_WhenceType_usage() {
        Hilog.info(0u32, "cangjietest", "testcase test_WhenceType_usage begins.")
        let testPath = "/data/storage/el2/base/test_whence.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.write(file.fd, "0123456789")

        let pos1 = FileIo.lseek(file.fd, 5, whence: WhenceType.SeekSet)
        @Expect(pos1, 5)
        let pos2 = FileIo.lseek(file.fd, 2, whence: WhenceType.SeekCur)
        @Expect(pos2, 7)
        let pos3 = FileIo.lseek(file.fd, -3, whence: WhenceType.SeekEnd)
        @Expect(pos3, 7)
        FileIo.close(file)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_WhenceType_usage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Filter_00300
     * @tc.name      : test_Filter_allFields
     * @tc.desc      : test Filter all fields
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Filter_allFields() {
        Hilog.info(0u32, "cangjietest", "testcase test_Filter_allFields begins.")
        let filter = Filter()
        filter.suffix = [".txt", ".jpg"]
        filter.displayName = ["test*"]
        filter.mimeType = ["text/plain"]
        filter.fileSizeOver = 1024
        filter.lastModifiedAfter = 1000.0
        filter.excludeMedia = true

        @Expect(filter.suffix.size, 2)
        @Expect(filter.displayName.size, 1)
        @Expect(filter.mimeType.size, 1)
        @Expect(filter.fileSizeOver, 1024)
        @Expect(filter.lastModifiedAfter, 1000.0)
        @Expect(filter.excludeMedia)
        Hilog.info(0u32, "cangjietest", "testcase test_Filter_allFields ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_FileIo_00100
     * @tc.name      : test_FileIo_class
     * @tc.desc      : test FileIo class basic operations
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_FileIo_class() {
        Hilog.info(0u32, "cangjietest", "testcase test_FileIo_class begins.")
        let testPath = "/data/storage/el2/base/test_fileio_class.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        @Expect(FileIo.access(testPath), false)

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        @Expect(file.fd > 0)

        FileIo.close(file)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_FileIo_class ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_File_00100
     * @tc.name      : test_File_class
     * @tc.desc      : test File class properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_File_class() {
        Hilog.info(0u32, "cangjietest", "testcase test_File_class begins.")
        let testPath = "/data/storage/el2/base/test_file_class.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

        @Expect(file.fd > 0)
        @Expect(file.path.size > 0)
        @Expect(file.name.size > 0)

        FileIo.close(file)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_File_class ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_File_00200
     * @tc.name      : test_File_getParent
     * @tc.desc      : test File.getParent method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_File_getParent() {
        Hilog.info(0u32, "cangjietest", "testcase test_File_getParent begins.")
        let testPath = "/data/storage/el2/base/test_file_parent.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let parent = file.getParent()
        @Expect(parent.size > 0)
        FileIo.close(file)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_File_getParent ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_File_00300
     * @tc.name      : test_File_lock_unlock
     * @tc.desc      : test File lock and unlock methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_File_lock_unlock() {
        Hilog.info(0u32, "cangjietest", "testcase test_File_lock_unlock begins.")
        let testPath = "/data/storage/el2/base/test_file_lock.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        file.tryLock(exclusive: true)
        file.unlock()
        file.tryLock(exclusive: false)
        file.unlock()
        @Expect(true)
        FileIo.close(file)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_File_lock_unlock ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_RandomAccessFile_00100
     * @tc.name      : test_RandomAccessFile_class
     * @tc.desc      : test RandomAccessFile class properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_RandomAccessFile_class() {
        Hilog.info(0u32, "cangjietest", "testcase test_RandomAccessFile_class begins.")
        let testPath = "/data/storage/el2/base/test_randomaccessfile_class.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let raf = FileIo.createRandomAccessFile(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))

        @Expect(raf.fd > 0)
        @Expect(raf.filePointer, 0)

        raf.setFilePointer(10)
        @Expect(raf.filePointer, 10)

        raf.close()
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_RandomAccessFile_class ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_RandomAccessFile_00200
     * @tc.name      : test_RandomAccessFile_write_read
     * @tc.desc      : test RandomAccessFile write and read methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_RandomAccessFile_write_read() {
        Hilog.info(0u32, "cangjietest", "testcase test_RandomAccessFile_write_read begins.")
        let testPath = "/data/storage/el2/base/test_randomaccessfile_write.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let raf = FileIo.createRandomAccessFile(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        let writeLen = raf.write("Hello World")
        @Expect(writeLen > 0)
        raf.setFilePointer(0)
        let buffer = Array<Byte>(100, repeat: 0)
        let readLen = raf.read(buffer)
        @Expect(readLen > 0)

        raf.close()
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_RandomAccessFile_write_read ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00100
     * @tc.name      : test_Stat_class
     * @tc.desc      : test Stat class properties
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_class() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_class begins.")
        let testPath = "/data/storage/el2/base/test_stat_class.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.write(file.fd, "test content")
        FileIo.close(file)

        let stat = FileIo.stat(testPath)

        @Expect(stat.ino >= 0)
        @Expect(stat.mode >= 0)
        @Expect(stat.uid >= 0)
        @Expect(stat.gid >= 0)
        @Expect(stat.size, 12)
        @Expect(stat.atime >= 0)
        @Expect(stat.mtime >= 0)
        @Expect(stat.ctime >= 0)

        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_class ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00200
     * @tc.name      : test_Stat_isDirectory
     * @tc.desc      : test Stat.isDirectory method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isDirectory() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isDirectory begins.")
        let testDir = "/data/storage/el2/base/test_stat_dir"
        if (FileIo.access(testDir)) {
            FileIo.rmdir(testDir)
        }

        FileIo.mkdir(testDir)
        let stat = FileIo.stat(testDir)
        @Expect(stat.isDirectory())
        @Expect(stat.isFile(), false)

        FileIo.rmdir(testDir)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isDirectory ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00300
     * @tc.name      : test_Stat_isFile
     * @tc.desc      : test Stat.isFile method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isFile() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isFile begins.")
        let testPath = "/data/storage/el2/base/test_stat_file.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let stat = FileIo.stat(testPath)
        @Expect(stat.isFile())
        @Expect(stat.isDirectory(), false)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isFile ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00400
     * @tc.name      : test_Stat_isBlockDevice
     * @tc.desc      : test Stat.isBlockDevice method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isBlockDevice() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isBlockDevice begins.")
        let testPath = "/data/storage/el2/base/test_stat_block.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)
        let stat = FileIo.stat(testPath)
        @Expect(stat.isBlockDevice(), false)
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isBlockDevice ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00500
     * @tc.name      : test_Stat_isCharacterDevice
     * @tc.desc      : test Stat.isCharacterDevice method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isCharacterDevice() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isCharacterDevice begins.")
        let testPath = "/data/storage/el2/base/test_stat_char.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)

        let stat = FileIo.stat(testPath)
        @Expect(stat.isCharacterDevice(), false)

        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isCharacterDevice ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00600
     * @tc.name      : test_Stat_isFifo
     * @tc.desc      : test Stat.isFifo method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isFifo() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isFifo begins.")
        let testPath = "/data/storage/el2/base/test_stat_fifo.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)

        let stat = FileIo.stat(testPath)
        @Expect(stat.isFifo(), false)

        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isFifo ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00700
     * @tc.name      : test_Stat_isSocket
     * @tc.desc      : test Stat.isSocket method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isSocket() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isSocket begins.")
        let testPath = "/data/storage/el2/base/test_stat_socket.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)

        let stat = FileIo.stat(testPath)
        @Expect(stat.isSocket(), false)

        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isSocket ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stat_00800
     * @tc.name      : test_Stat_isSymbolicLink
     * @tc.desc      : test Stat.isSymbolicLink method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stat_isSymbolicLink() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isSymbolicLink begins.")
        let testPath = "/data/storage/el2/base/test_stat_symlink.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }

        let file = FileIo.open(testPath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
        FileIo.close(file)

        let stat = FileIo.stat(testPath)
        @Expect(stat.isSymbolicLink(), false)

        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stat_isSymbolicLink ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stream_00200
     * @tc.name      : test_Stream_write_read
     * @tc.desc      : test Stream write and read methods
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stream_write_read() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stream_write_read begins.")
        let testPath = "/data/storage/el2/base/test_stream_write.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let stream = FileIo.createStream(testPath, "w+")
        let writeLen = stream.write("Test data")
        @Expect(writeLen > 0)
        stream.flush()
        let buffer = Array<Byte>(100, repeat: 0)
        stream.close()
        let readStream = FileIo.createStream(testPath, "r")
        let readLen = readStream.read(buffer)
        @Expect(readLen > 0)
        readStream.close()
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stream_write_read ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_file_fs_Stream_00300
     * @tc.name      : test_Stream_flush
     * @tc.desc      : test Stream.flush method
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_Stream_flush() {
        Hilog.info(0u32, "cangjietest", "testcase test_Stream_flush begins.")
        let testPath = "/data/storage/el2/base/test_stream_flush.txt"
        if (FileIo.access(testPath)) {
            FileIo.unlink(testPath)
        }
        let stream = FileIo.createStream(testPath, "w+")
        stream.write("Test data")
        stream.flush()
        @Expect(true)
        stream.close()
        FileIo.unlink(testPath)
        Hilog.info(0u32, "cangjietest", "testcase test_Stream_flush ends.")
    }
}
