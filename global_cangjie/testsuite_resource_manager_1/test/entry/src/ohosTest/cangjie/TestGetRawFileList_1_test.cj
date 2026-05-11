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
import ohos.arkui.state_macro_manage.r
import ohos.resource_manager.AppResource
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.*
import ohos.resource_manager.ArgsValueType
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType
import kit.LocalizationKit.__GenerateResource__

@Test
class TestGetRawFileList_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : get rawFileList by path=.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable rawFileList")
        let rawFileList = getResourceManager().getRawFileList("")
        @Assert(4i64, rawFileList.size)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get rawFileList by path=\0.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable rawFileList")
        let rawFileList = getResourceManager().getRawFileList("\0")
        @Assert(4i64, rawFileList.size)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : get rawFileList by path=non_existing_rawfile_path_0.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get RawFileList")
        try {
            getResourceManager().getRawFileList("non_existing_rawfile_path_0")
            @Expect("assertion#1789: not throw", "fail to get RawFileList")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : get rawFileList by path=aaaaa/bbbbb.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get RawFileList")
        try {
            getResourceManager().getRawFileList("aaaaa/bbbbb")
            @Expect("assertion#1790: not throw", "fail to get RawFileList")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get rawFileList by path=//////.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get RawFileList")
        try {
            getResourceManager().getRawFileList("//////")
            @Expect("assertion#1791: not throw", "fail to get RawFileList")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : get rawFileList by path=\\\\.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get RawFileList")
        try {
            getResourceManager().getRawFileList("\\\\")
            @Expect("assertion#1792: not throw", "fail to get RawFileList")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get rawFileList by path=dir0.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable rawFileList")
        // let rawFileList = getResourceManager().getRawFileList("dir0")
        // @Assert(-1i64, rawFileList.size)
        try {
            getResourceManager().getRawFileList("dir0")
            @Expect("assertion#1792: not throw", "fail to get RawFileList")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_GetRawFileList_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get rawFileList by path=dir0/dir0.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable rawFileList")
        // let rawFileList = getResourceManager().getRawFileList("dir0/dir0")
        // @Assert(1i64, rawFileList.size)
        try {
            getResourceManager().getRawFileList("dir0/dir0")
            @Expect("assertion#1792: not throw", "fail to get RawFileList")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid relative path.")
            @Expect(e.code, 9001005i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
}
