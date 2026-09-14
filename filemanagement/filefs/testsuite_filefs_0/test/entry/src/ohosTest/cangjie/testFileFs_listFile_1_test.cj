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
class testFileIo_listFile_1 {
    protected func beforeAll(): Unit {
        let pathDir = "/data/storage/el2/base/haps"
        let dirpath = pathDir + "/testDir"
        FileIo.mkdir(dirpath)

        let dirpath_testDir_01 = "/data/storage/el2/base/haps/testDir" + "/testDir_01"
        FileIo.mkdir(dirpath_testDir_01)

        let dirpath_testDir_02 = "/data/storage/el2/base/haps/testDir" + "/testDir_02"
        FileIo.mkdir(dirpath_testDir_02)

        let dirpath_testDir_03 = "/data/storage/el2/base/haps/testDir" + "/testDir_03"
        FileIo.mkdir(dirpath_testDir_03)

        let dirpath_testDir_04 = "/data/storage/el2/base/haps/testDir" + "/testDir_04"
        FileIo.mkdir(dirpath_testDir_04)

        let dirpath_test_01 = "/data/storage/el2/base/haps/testDir" + "/test_01.txt"
        let file_01 = FileIo.open(dirpath_test_01, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        let str_01: String = "hello, world"
        FileIo.close(file_01)

        let dirpath_test_abc = "/data/storage/el2/base/haps/testDir/testDir_01" + "/test_abc.png"
        let file_02 = FileIo.open(dirpath_test_abc, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        FileIo.close(file_02)

        let dirpath_efg_test = "/data/storage/el2/base/haps/testDir/testDir_01" + "/efg_test.jpg"
        let file_03 = FileIo.open(dirpath_efg_test, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        FileIo.write(file_03.fd, str_01)
        FileIo.close(file_03)

        let dirpath_test_ab = "/data/storage/el2/base/haps/testDir/testDir_01" + "/test_ab.jpeg"
        let file_04 = FileIo.open(dirpath_test_ab, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        FileIo.write(file_04.fd, str_01)
        FileIo.close(file_04)

        let dirpath_ef_test = "/data/storage/el2/base/haps/testDir/testDir_01" + "/ef_test.txt"
        let file_05 = FileIo.open(dirpath_ef_test, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        FileIo.write(file_05.fd, str_01)
        FileIo.close(file_05)

        let dirpath_testDir_05 = "/data/storage/el2/base/haps/testDir/testDir_01" + "/testDir_05"
        FileIo.mkdir(dirpath_testDir_05)

        let dirpath_test_01abc = "/data/storage/el2/base/haps/testDir/testDir_01/testDir_05" + "/test_01abc.txt"
        let file_06 = FileIo.open(dirpath_test_01abc, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        FileIo.write(file_06.fd, str_01)
        FileIo.close(file_06)

        let dirpath_testDir_06 = "/data/storage/el2/base/haps/testDir/testDir_01" + "/testDir_06"
        FileIo.mkdir(dirpath_testDir_06)

        let dirpath_test_02 = "/data/storage/el2/base/haps/testDir/testDir_02" + "/test_02.txt"
        let file_07 = FileIo.open(dirpath_test_02, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        let str_06: String = "hi"
        FileIo.write(file_07.fd, str_06)
        FileIo.close(file_07)

        let dirpath_test_03 = "/data/storage/el2/base/haps/testDir/testDir_02" + "/test_03.txt"
        let file_08 = FileIo.open(dirpath_test_03, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        let str_02: String = "hi, world"
        FileIo.write(file_08.fd, str_02)
        FileIo.close(file_08)

        let dirpath_test_04 = "/data/storage/el2/base/haps/testDir/testDir_02" + "/test_04.txt"
        let file_10 = FileIo.open(dirpath_test_04, mode: (OpenMode.READ_WRITE | OpenMode.CREATE))
        let str_03: String = "hello, world"
        FileIo.write(file_10.fd, str_03)
        FileIo.close(file_10)

        sleepFor(Duration.second * 1)

        let dirpath_test_03_01 = "/data/storage/el2/base/haps/testDir/testDir_02" + "/test_03.txt"
        let file_09 = FileIo.open(dirpath_test_03_01, mode: OpenMode.READ_WRITE)
        FileIo.write(file_09.fd, str_02)
        FileIo.close(file_09)

        let dirpath_test_04_01 = "/data/storage/el2/base/haps/testDir/testDir_02" + "/test_04.txt"
        let file_11 = FileIo.open(dirpath_test_04_01, mode: OpenMode.READ_WRITE)
        FileIo.write(file_11.fd, str_03)
        FileIo.close(file_11)
    }

    protected func afterAll(): Unit {
            let pathdir = "/data/storage/el2/base/haps"
            let dirpath = pathdir + "/testDir"
            FileIo.rmdir(dirpath)

    }

        /*
     * @tc.number    : test_fs.listFilelistFile_01
     * @tc.name      : test_listFile_01
     * @tc.desc      : input normal Parameter， and test_01.txt is empty
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_01() {
        let pathDir = "/data/storage/el2/base/haps/testDir"
        let filenames = FileIo.listFile(pathDir)
        let name_1 = filenames[0]
        @Expect(name_1, "testDir_01")
        let name_2 = filenames[1]
        @Expect(name_2, "testDir_02")
        let name_3 = filenames[2]
        @Expect(name_3, "testDir_03")
        let name_4 = filenames[3]
        @Expect(name_4, "testDir_04")
        let name_5 = filenames[4]
        @Expect(name_5, "test_01.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_02
     * @tc.name      : test_listFile_02
     * @tc.desc      : The path does not exist
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_02() {
        let pathDir = "/data/storage/el2/base/haps/testDir02"
        try {
            let filenames = FileIo.listFile(pathDir)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900002)
        }
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_03
     * @tc.name      : test_listFile_03
     * @tc.desc      : recursion is false
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_03() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(recursion: false)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "efg_test.jpg")
        let name_3 = filenames[2]
        @Expect(name_3, "test_ab.jpeg")
        let name_4 = filenames[3]
        @Expect(name_4, "ef_test.txt")
        let name_5 = filenames[4]
        @Expect(name_5, "testDir_05")
        let name_6 = filenames[5]
        @Expect(name_6, "testDir_06")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_04
     * @tc.name      : test_listFile_04
     * @tc.desc      : recursion is true
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_04() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(recursion: true)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "/test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "/efg_test.jpg")
        let name_3 = filenames[2]
        @Expect(name_3, "/test_ab.jpeg")
        let name_4 = filenames[3]
        @Expect(name_4, "/ef_test.txt")
        let name_5 = filenames[4]
        @Expect(name_5, "/testDir_05/test_01abc.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_05
     * @tc.name      : test_listFile_05
     * @tc.desc      : listNum is 0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_05() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(listNum: 0)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "efg_test.jpg")
        let name_3 = filenames[2]
        @Expect(name_3, "test_ab.jpeg")
        let name_4 = filenames[3]
        @Expect(name_4, "ef_test.txt")
        let name_5 = filenames[4]
        @Expect(name_5, "testDir_05")
        let name_6 = filenames[5]
        @Expect(name_6, "testDir_06")
    }
        /*
     * @tc.number    : test_fs.listFilelistFile_06
     * @tc.name      : test_listFile_06
     * @tc.desc      : listNum is 2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_06() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(listNum: 2)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "efg_test.jpg")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_07
     * @tc.name      : test_listFile_07
     * @tc.desc      : listNum is 7,more than the number of files
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_07() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(listNum: 7)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "efg_test.jpg")
        let name_3 = filenames[2]
        @Expect(name_3, "test_ab.jpeg")
        let name_4 = filenames[3]
        @Expect(name_4, "ef_test.txt")
        let name_5 = filenames[4]
        @Expect(name_5, "testDir_05")
        let name_6 = filenames[5]
        @Expect(name_6, "testDir_06")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_08
     * @tc.name      : test_listFile_08
     * @tc.desc      : listNum is -1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_08() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        try {
            let listFileOptions = ListFileOptions(listNum: -1)
            let filenames = FileIo.listFile(pathDir, options: listFileOptions)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900020)
        }
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_09
     * @tc.name      : test_listFile_09
     * @tc.desc      : suffix is ".png" ,".jpg" and ".jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_09() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let filter = Filter(suffix: [".png", ".jpg", ".jpeg"])
        let listFileOptions = ListFileOptions(filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "efg_test.jpg")
        let name_3 = filenames[2]
        @Expect(name_3, "test_ab.jpeg")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_10
     * @tc.name      : test_listFile_10
     * @tc.desc      : displayName is "*txt" and "efg*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_10() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let filter = Filter(displayName: ["*txt", "efg*"])
        let listFileOptions = ListFileOptions(filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "efg_test.jpg")
        let name_2 = filenames[1]
        @Expect(name_2, "ef_test.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_11
     * @tc.name      : test_listFile_11
     * @tc.desc      : fileSizeOver is stat.size
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_11() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_02"
        let filepath = pathDir + "/test_02.txt"
        let stat = FileIo.stat(filepath)
        let filter = Filter(fileSizeOver: stat.size)
        let listFileOptions = ListFileOptions(filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_03.txt")
        let name_2 = filenames[1]
        @Expect(name_2, "test_04.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_12
     * @tc.name      : test_listFile_12
     * @tc.desc      : lastModifiedAfter is stat.mtime
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_12() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_02"
        let filepath = pathDir + "/test_02.txt"
        let stat = FileIo.stat(filepath)
        let stat_mtime = stat.mtime
        let stat_mtime_01 = Float64(stat_mtime)
        let filter = Filter(lastModifiedAfter: stat_mtime_01)
        let listFileOptions = ListFileOptions(filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_03.txt")
        let name_2 = filenames[1]
        @Expect(name_2, "test_04.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_13
     * @tc.name      : test_listFile_13
     * @tc.desc      : recursion is true,listNum is 0,suffix is ".png", ".jpg" and ".jpeg"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_13() {
        let filter = Filter(suffix: [".png", ".jpg", ".jpeg"])
        let pathDir = "/data/storage/el2/base/haps/testDir"
        let listFileOptions = ListFileOptions(recursion: true, listNum: 0, filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "/testDir_01/test_abc.png")
        let name_2 = filenames[1]
        @Expect(name_2, "/testDir_01/efg_test.jpg")
        let name_3 = filenames[2]
        @Expect(name_3, "/testDir_01/test_ab.jpeg")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_14
     * @tc.name      : test_listFile_14
     * @tc.desc      : recursion is false,listNum is 1,and displayName is "efg*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_14() {
        let filter = Filter(displayName: ["efg*"])
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(recursion: false, listNum: 1, filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "efg_test.jpg")

    }

        /*
     * @tc.number    : test_fs.listFilelistFile_15
     * @tc.name      : test_listFile_15
     * @tc.desc      : recursion is false,listNum is 1,fileSizeOver is stat.size
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_15() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_02"
        let filepath = pathDir + "/test_03.txt"
        let stat = FileIo.stat(filepath)
        let filter = Filter(fileSizeOver: stat.size)
        let listFileOptions = ListFileOptions(recursion: false, listNum: 1, filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_04.txt")

    }

        /*
     * @tc.number    : test_fs.listFilelistFile_16
     * @tc.name      : test_listFile_16
     * @tc.desc      : recursion is true, listNum is 0, lastModifiedAfter is stat.mtime
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_16() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_02"
        let filepath = pathDir + "/test_02.txt"
        let stat = FileIo.stat(filepath)
        let filter = Filter(lastModifiedAfter: Float64(stat.mtime))
        let listFileOptions = ListFileOptions(recursion: true, listNum: 0, filter: filter)
        let pathDir_01 = "/data/storage/el2/base/haps/testDir"
        let filenames = FileIo.listFile(pathDir_01, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "/testDir_02/test_03.txt")
        let name_2 = filenames[1]
        @Expect(name_2, "/testDir_02/test_04.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_17
     * @tc.name      : test_listFile_17
     * @tc.desc      : recursion is false,number is 0,suffix is ".png", ".jpg",displayName is "efg*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_17() {
        let filter = Filter(suffix: [".png", ".jpg"], displayName: ["efg*"])
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(recursion: false, listNum: 0, filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "efg_test.jpg")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_18
     * @tc.name      : test_listFile_18
     * @tc.desc      : recursion is false,number is 0,fileSizeOver is ".png",".jpg",lastModifiedAfter is "efg*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_18() {
        let filter = Filter(suffix: [".png", ".jpg"], displayName: ["efg*"])
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(recursion: false, listNum: 0, filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "efg_test.jpg")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_19
     * @tc.name      : test_listFile_19
     * @tc.desc      : recursion is false, listNum is 0 ,fileSizeOver is stat.size, lastModifiedAfter is stat.mtime
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_19() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_02"
        let filepath = pathDir + "/test_02.txt"
        let stat = FileIo.stat(filepath)
        let filter = Filter(fileSizeOver: stat.size, lastModifiedAfter: Float64(stat.mtime))
        let listFileOptions = ListFileOptions(recursion: false, listNum: 0, filter: filter)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "test_03.txt")
        let name_2 = filenames[1]
        @Expect(name_2, "test_04.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_20
     * @tc.name      : test_listFile_20
     * @tc.desc      : fileSizeOver is stat.size, lastModifiedAfter is stat.mtime
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_20() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_02"
        let filepath = pathDir + "/test_02.txt"
        let stat = FileIo.stat(filepath)
        let filter = Filter(suffix: [".txt"], displayName: ["test*"], fileSizeOver: stat.size,
            lastModifiedAfter: Float64(stat.mtime))
        let listFileOptions = ListFileOptions(recursion: true, listNum: 0, filter: filter)
        let pathDir_01 = "/data/storage/el2/base/haps/testDir"
        let filenames = FileIo.listFile(pathDir_01, options: listFileOptions)
        let name_1 = filenames[0]
        @Expect(name_1, "/testDir_02/test_03.txt")
        let name_2 = filenames[1]
        @Expect(name_2, "/testDir_02/test_04.txt")
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_21
     * @tc.name      : test_listFile_21
     * @tc.desc      : not file ,is directory
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_21() {
        let pathDir = "/data/storage/el2/base/haps/testDir/test_01.txt"
        try {
            let filenames = FileIo.listFile(pathDir)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 13900018)
        }
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_22
     * @tc.name      : test_listFile_22
     * @tc.desc      : empty directory
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_22() {
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01/testDir_06"
        let filenames = FileIo.listFile(pathDir)
        @Expect(filenames.size, 0)
    }

        /*
     * @tc.number    : test_fs.listFilelistFile_23
     * @tc.name      : test_listFile_23
     * @tc.desc      : create two filenames
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_listFile_23() {
        let pathDir_01 = "/data/storage/el2/base/haps/testDir"
        let filenames_01 = FileIo.listFile(pathDir_01)
        @Expect(filenames_01.size, 5)
        let pathDir = "/data/storage/el2/base/haps/testDir/testDir_01"
        let listFileOptions = ListFileOptions(listNum: 2)
        let filenames = FileIo.listFile(pathDir, options: listFileOptions)
        @Expect(filenames.size, 2)
    }
}
