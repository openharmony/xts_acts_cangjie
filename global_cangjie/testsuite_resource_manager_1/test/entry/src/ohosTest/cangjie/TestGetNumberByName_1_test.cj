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
class TestGetNumberByName_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("\0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("nonExistingResourceName")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("module_desc")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("sizelist")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("plural_name")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("Test_Format1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("Test_Format2")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("Test_Format3")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("EntryAbility_desc")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("layered_image")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("EntryAbility_label")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("startIcon")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("main_pages")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("start_window_background")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "check number")
        if (let NumberValueType.Float32Value(value) <- getResourceManager().getNumberByName("float_1")) {
            @Expect(value, 48.000000f32)
        } else {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "check number")
        if (let NumberValueType.Float32Value(value) <- getResourceManager().getNumberByName("float_2")) {
            @Expect(value, 24.000000f32)
        } else {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "check number")
        if (let NumberValueType.Int32Value(value) <- getResourceManager().getNumberByName("int_1")) {
            @Expect(value, 1i32)
        } else {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "check number")
        if (let NumberValueType.Int32Value(value) <- getResourceManager().getNumberByName("int_2")) {
            @Expect(value, 100i32)
        } else {
            @Expect(false)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("test_boolean1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("test_boolean0")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("boolean_3")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getNumberByName_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : get Number by name={resName}.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get Number by name.")
        try {
            getResourceManager().getNumberByName("boolean_4")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
}
