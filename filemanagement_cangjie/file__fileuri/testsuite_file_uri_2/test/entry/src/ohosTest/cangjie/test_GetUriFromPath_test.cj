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
class test_GetUriFromPath {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "CangjieTest", "start entry ability")
        let driver: Driver = Driver.create()
        driver.waitForComponent(On().text("Hello World"), 5000i32)
    }

        /*
     * @tc.number    : Sub_Cangjie_fileuri_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : fileuri test_GetStringByName 普通路径场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        try {
            let uri = getUriFromPath("/data/files/test.txt")
            @Expect(uri,"file://com.example.myapplication/data/files/test.txt")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_fileuri_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : fileuri test_GetStringByName 含中文路径场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        try {
            let uri = getUriFromPath("/data/files/测试文件.txt")
            @Expect(uri,"file://com.example.myapplication/data/files/%E6%B5%8B%E8%AF%95%E6%96%87%E4%BB%B6.txt")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_fileuri_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : fileuri test_GetStringByName 含特殊字符路径场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        try {
            let uri = getUriFromPath("/data/files/file@#$%.txt")
            @Expect(uri,"file://com.example.myapplication/data/files/file%40%23%24%25.txt")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_fileuri_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : fileuri test_GetStringByName 含空格路径场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        try {
            let uri = getUriFromPath("/data/files/my file.txt")
            @Expect(uri,"file://com.example.myapplication/data/files/my%20file.txt")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_fileuri_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : fileuri test_GetStringByName 多层级目录场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        try {
            let uri = getUriFromPath("/data/files/a/b/c/d.txt")
            @Expect(uri,"file://com.example.myapplication/data/files/a/b/c/d.txt")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_fileuri_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : fileuri test_GetStringByName 路径末尾带斜杠场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        try {
            let uri = getUriFromPath("/data/files/folder/")
            @Expect(uri,"file://com.example.myapplication/data/files/folder/")
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.message,"false")
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_fileuri_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : fileuri test_GetStringByName 空路径场景
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        try {
            let uri = getUriFromPath("")
            @Expect(false)
        } catch (e: BusinessException) {
            Hilog.info(0, "test", "${e.message}")
            @Expect(e.code, 13900020)
        }
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }
}
