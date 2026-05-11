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
import ohos_app_cangjie_entry.Global

@Test
class TestGetStringByResName_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : get string by resName=.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("")
            @Expect("assertion#2193: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get string by resName=\0.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("\0")
            @Expect("assertion#2194: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : get string by resName=nonExistingResourceName.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("nonExistingResourceName")
            @Expect("assertion#2195: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }



    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get string by resName=sizelist.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("sizelist")
            @Expect("assertion#2196: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : get string by resName=plural_name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("plural_name")
            @Expect("assertion#2197: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get string by resName=Test_Format1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        @Assert("int is %d", getResourceManager().getStringByName("Test_Format1"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get string by resName=Test_Format2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        @Assert("float is %f", getResourceManager().getStringByName("Test_Format2"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : get string by resName=Test_Format3.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        @Assert("string is %s", getResourceManager().getStringByName("Test_Format3"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : get string by resName=EntryAbility_desc.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        @Assert("description", getResourceManager().getStringByName("EntryAbility_desc"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : get string by resName=layered_image.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("layered_image")
            @Expect("assertion#2198: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : get string by resName=EntryAbility_label.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        @Assert("label", getResourceManager().getStringByName("EntryAbility_label"))
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : get string by resName=startIcon.
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
            getResourceManager().getStringByName("startIcon")
            @Expect("assertion#2199: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : get string by resName=main_pages.
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
            getResourceManager().getStringByName("main_pages")
            @Expect("assertion#2200: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : get string by resName=start_window_background.
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
            getResourceManager().getStringByName("start_window_background")
            @Expect("assertion#2201: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : get string by resName=float_1.
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
            getResourceManager().getStringByName("float_1")
            @Expect("assertion#2202: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : get string by resName=float_2.
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
            getResourceManager().getStringByName("float_2")
            @Expect("assertion#2203: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : get string by resName=int_1.
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
            getResourceManager().getStringByName("int_1")
            @Expect("assertion#2204: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : get string by resName=int_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("int_2")
            @Expect("assertion#2205: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : get string by resName=test_boolean1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean1")
            @Expect("assertion#2206: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : get string by resName=test_boolean0.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("test_boolean0")
            @Expect("assertion#2207: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : get string by resName=boolean_3.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_3")
            @Expect("assertion#2208: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResName_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : get string by resName=boolean_4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string by name.")
        try {
            getResourceManager().getStringByName("boolean_4")
            @Expect("assertion#2209: not throw", "fail to get string by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
}
