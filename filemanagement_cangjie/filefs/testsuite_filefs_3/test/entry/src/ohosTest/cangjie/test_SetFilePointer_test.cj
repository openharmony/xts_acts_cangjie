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

    /*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import kit.CoreFileKit.*
import ohos.ui_test.*

@Test
class test_SetFilePointer {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }
    
    /*
     * @tc.number    : Sub_Cangjie_filefs_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : fileuri setFilePointer 正常偏移
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        try {
            let pathDir = "/data/storage/el1/base/"
            let filePath = pathDir + "/test.txt"
            let randomAccessFile = FileIo.createRandomAccessFile(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            randomAccessFile.write("helloworld")
            randomAccessFile.setFilePointer(3)
            @Expect(randomAccessFile.filePointer, 3)
            randomAccessFile.write("111")
            let str=FileIo.readText(filePath)
            @Expect(str,"hel111orld")
            randomAccessFile.close()  //关闭
            FileIo.unlink(filePath)  //删除
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_filefs_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : fileuri setFilePointer 偏移到文件开头
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        try {
            let pathDir = "/data/storage/el1/base/"
            let filePath = pathDir + "/test2.txt"
            let randomAccessFile = FileIo.createRandomAccessFile(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            randomAccessFile.write("helloworld")
            randomAccessFile.setFilePointer(0)
            @Expect(randomAccessFile.filePointer, 0)
            randomAccessFile.write("ABC")
            let str=FileIo.readText(filePath)
            @Expect(str,"ABCloworld")
            randomAccessFile.close()
            FileIo.unlink(filePath)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_filefs_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : fileuri setFilePointer 偏移到文件末尾
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        try {
            let pathDir = "/data/storage/el1/base/"
            let filePath = pathDir + "/test3.txt"
            let randomAccessFile = FileIo.createRandomAccessFile(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            let content = "helloworld"
            randomAccessFile.write(content)
            randomAccessFile.setFilePointer(10)
            @Expect(randomAccessFile.filePointer, 10)
            randomAccessFile.write("123")
            let str=FileIo.readText(filePath)
            @Expect(str,"helloworld123")
            randomAccessFile.close()
            FileIo.unlink(filePath)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_filefs_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : fileuri setFilePointer 偏移超出文件长度
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        try {
            let pathDir = "/data/storage/el1/base/"
            let filePath = pathDir + "/test4.txt"
            let randomAccessFile = FileIo.createRandomAccessFile(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            randomAccessFile.write("helloworld")
            randomAccessFile.setFilePointer(15)
            @Expect(randomAccessFile.filePointer, 15)
            randomAccessFile.write("XYZ")
            let str=FileIo.readText(filePath)
            @Expect(str,"helloworld")
            randomAccessFile.close()
            FileIo.unlink(filePath)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_filefs_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : fileuri setFilePointer 负数偏移
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        try {
            let pathDir = "/data/storage/el1/base/"
            let filePath = pathDir + "/test5.txt"
            let randomAccessFile = FileIo.createRandomAccessFile(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            randomAccessFile.write("helloworld")
            randomAccessFile.setFilePointer(-5)
            @Expect(randomAccessFile.filePointer, -5)
            randomAccessFile.write("XYZ")
            let str=FileIo.readText(filePath)
            @Expect(str,"XYZloworld")
            randomAccessFile.close()
            FileIo.unlink(filePath)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_filefs_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : fileuri setFilePointer 重复设置偏移
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        try {
            let pathDir = "/data/storage/el1/base/"
            let filePath = pathDir + "/test6.txt"
            let randomAccessFile = FileIo.createRandomAccessFile(filePath, mode: (OpenMode.CREATE | OpenMode.READ_WRITE))
            randomAccessFile.write("helloworld")
            // 第一次偏移：3
            randomAccessFile.setFilePointer(3)
            @Expect(randomAccessFile.filePointer, 3)
            randomAccessFile.write("111")
            // 第二次偏移：0
            randomAccessFile.setFilePointer(0)
            @Expect(randomAccessFile.filePointer, 0)
            randomAccessFile.write("ABC")
            let str=FileIo.readText(filePath)
            @Expect(str,"ABC111orld")
            randomAccessFile.close()
            FileIo.unlink(filePath)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }
}
