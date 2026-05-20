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
import ohos.resource_manager.ScreenDensity
import ohos.resource_manager.NumberValueType
import kit.LocalizationKit.__GenerateResource__
import ohos_app_cangjie_entry.Global

@Test
class TestGetStringAndFormatByResName_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : get stringAndFormat by resName resName=, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get stringAndFormat by resName resName=, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : get stringAndFormat by resName resName=, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : get stringAndFormat by resName resName=\0, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("\0", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get stringAndFormat by resName resName=\0, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("\0", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : get stringAndFormat by resName resName=\0, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("\0", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get stringAndFormat by resName resName=nonExistingResourceName, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("nonExistingResourceName", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get stringAndFormat by resName resName=nonExistingResourceName, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("nonExistingResourceName", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : get stringAndFormat by resName resName=nonExistingResourceName, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string and format by name.")
        try {
            getResourceManager().getStringByName("nonExistingResourceName", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }



    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : get stringAndFormat by resName resName=sizelist, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("sizelist", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : get stringAndFormat by resName resName=sizelist, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("sizelist", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : get stringAndFormat by resName resName=sizelist, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("sizelist", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : get stringAndFormat by resName resName=plural_name, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("plural_name", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : get stringAndFormat by resName resName=plural_name, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("plural_name", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : get stringAndFormat by resName resName=plural_name, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("plural_name", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : get stringAndFormat by resName resName=Test_Format1, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        @Expect(getResourceManager().getStringByName("Test_Format1", ArgsValueType.Int32Value(100i32)), "int is 100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : get stringAndFormat by resName resName=Test_Format2, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        @Expect(getResourceManager().getStringByName("Test_Format2", ArgsValueType.Float32Value(3.140000f32)), "float is 3.140000")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }



    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : get stringAndFormat by resName resName=Test_Format3, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        @Expect(getResourceManager().getStringByName("Test_Format3", ArgsValueType.StringValue("hello")), "string is hello")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : get stringAndFormat by resName resName=layered_image, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("layered_image", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : get stringAndFormat by resName resName=layered_image, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("layered_image", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : get stringAndFormat by resName resName=layered_image, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("layered_image", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : get stringAndFormat by resName resName=startIcon, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("startIcon", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : get stringAndFormat by resName resName=startIcon, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("startIcon", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : get stringAndFormat by resName resName=startIcon, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("startIcon", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : get stringAndFormat by resName resName=main_pages, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("main_pages", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : get stringAndFormat by resName resName=main_pages, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("main_pages", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : get stringAndFormat by resName resName=main_pages, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("main_pages", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : get stringAndFormat by resName resName=start_window_background, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("start_window_background", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : get stringAndFormat by resName resName=start_window_background, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("start_window_background", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : get stringAndFormat by resName resName=start_window_background, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("start_window_background", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : get stringAndFormat by resName resName=float_1, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("float_1", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : get stringAndFormat by resName resName=float_1, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("float_1", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : get stringAndFormat by resName resName=float_1, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("float_1", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : get stringAndFormat by resName resName=float_2, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("float_2", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : get stringAndFormat by resName resName=float_2, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("float_2", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : get stringAndFormat by resName resName=float_2, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("float_2", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : get stringAndFormat by resName resName=int_1, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_1", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : get stringAndFormat by resName resName=int_1, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_1", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : get stringAndFormat by resName resName=int_1, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_1", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : get stringAndFormat by resName resName=int_2, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_2", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : get stringAndFormat by resName resName=int_2, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_2", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : get stringAndFormat by resName resName=int_2, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_2", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : get stringAndFormat by resName resName=test_boolean1, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean1", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : get stringAndFormat by resName resName=test_boolean1, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean1", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : get stringAndFormat by resName resName=test_boolean1, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean1", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : get stringAndFormat by resName resName=test_boolean0, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean0", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : get stringAndFormat by resName resName=test_boolean0, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean0", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : get stringAndFormat by resName resName=test_boolean0, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean0", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : get stringAndFormat by resName resName=boolean_3, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_3", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : get stringAndFormat by resName resName=boolean_3, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_3", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : get stringAndFormat by resName resName=boolean_3, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_3", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : get stringAndFormat by resName resName=boolean_4, args=Int32Value(100i32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_4", ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : get stringAndFormat by resName resName=boolean_4, args=StringValue("hello").
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_4", ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResName_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : get stringAndFormat by resName resName=boolean_4, args=Float32Value(3.140000f32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_4", ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
}
