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
class TestGetMediaByName_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : get Media by resName=, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get Media by resName=, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : get Media by resName=, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : get Media by resName=, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get Media by resName=, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : get Media by resName=\0, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("\0", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get Media by resName=\0, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("\0", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get Media by resName=\0, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("\0", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : get Media by resName=\0, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("\0", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : get Media by resName=\0, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("\0", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : get Media by resName=nonExistingResourceName, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("nonExistingResourceName", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : get Media by resName=nonExistingResourceName, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("nonExistingResourceName", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : get Media by resName=nonExistingResourceName, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("nonExistingResourceName", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : get Media by resName=nonExistingResourceName, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("nonExistingResourceName", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : get Media by resName=nonExistingResourceName, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("nonExistingResourceName", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : get Media by resName=module_desc, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("module_desc", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : get Media by resName=module_desc, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("module_desc", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : get Media by resName=module_desc, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("module_desc", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : get Media by resName=module_desc, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("module_desc", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : get Media by resName=module_desc, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("module_desc", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : get Media by resName=sizelist, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("sizelist", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : get Media by resName=sizelist, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("sizelist", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : get Media by resName=sizelist, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("sizelist", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : get Media by resName=sizelist, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("sizelist", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : get Media by resName=sizelist, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("sizelist", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : get Media by resName=plural_name, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("plural_name", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : get Media by resName=plural_name, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("plural_name", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : get Media by resName=plural_name, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("plural_name", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : get Media by resName=plural_name, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("plural_name", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : get Media by resName=plural_name, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("plural_name", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : get Media by resName=Test_Format1, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format1", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : get Media by resName=Test_Format1, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format1", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : get Media by resName=Test_Format1, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format1", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : get Media by resName=Test_Format1, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format1", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : get Media by resName=Test_Format1, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format1", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : get Media by resName=Test_Format2, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format2", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : get Media by resName=Test_Format2, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format2", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : get Media by resName=Test_Format2, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format2", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : get Media by resName=Test_Format2, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format2", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : get Media by resName=Test_Format2, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format2", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : get Media by resName=Test_Format3, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format3", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : get Media by resName=Test_Format3, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format3", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : get Media by resName=Test_Format3, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format3", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : get Media by resName=Test_Format3, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format3", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : get Media by resName=Test_Format3, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("Test_Format3", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : get Media by resName=EntryAbility_desc, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_desc", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : get Media by resName=EntryAbility_desc, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_desc", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : get Media by resName=EntryAbility_desc, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_desc", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : get Media by resName=EntryAbility_desc, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_desc", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : get Media by resName=EntryAbility_desc, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_desc", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : get Media by resName=layered_image, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("layered_image", density: ScreenDensity.ScreenSdpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : get Media by resName=layered_image, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("layered_image", density: ScreenDensity.ScreenMdpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : get Media by resName=layered_image, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("layered_image", density: ScreenDensity.ScreenLdpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : get Media by resName=layered_image, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("layered_image", density: ScreenDensity.ScreenXldpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : get Media by resName=layered_image, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("layered_image", density: ScreenDensity.ScreenXxldpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : get Media by resName=EntryAbility_label, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_label", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : get Media by resName=EntryAbility_label, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_label", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : get Media by resName=EntryAbility_label, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_label", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : get Media by resName=EntryAbility_label, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_label", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : get Media by resName=EntryAbility_label, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("EntryAbility_label", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : get Media by resName=startIcon, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("startIcon", density: ScreenDensity.ScreenSdpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : get Media by resName=startIcon, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("startIcon", density: ScreenDensity.ScreenMdpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : get Media by resName=startIcon, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("startIcon", density: ScreenDensity.ScreenLdpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : get Media by resName=startIcon, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("startIcon", density: ScreenDensity.ScreenXldpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : get Media by resName=startIcon, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "define local variable media")
        let media = getResourceManager().getMediaByName("startIcon", density: ScreenDensity.ScreenXxldpi)
        @Expect(media.size > 0i64, true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : get Media by resName=main_pages, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("main_pages", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : get Media by resName=main_pages, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("main_pages", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : get Media by resName=main_pages, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("main_pages", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : get Media by resName=main_pages, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("main_pages", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : get Media by resName=main_pages, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("main_pages", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : get Media by resName=start_window_background, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("start_window_background", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : get Media by resName=start_window_background, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("start_window_background", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : get Media by resName=start_window_background, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("start_window_background", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : get Media by resName=start_window_background, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("start_window_background", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : get Media by resName=start_window_background, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("start_window_background", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : get Media by resName=float_1, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_1", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : get Media by resName=float_1, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_1", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : get Media by resName=float_1, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_1", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : get Media by resName=float_1, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_1", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : get Media by resName=float_1, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_1", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : get Media by resName=float_2, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_2", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : get Media by resName=float_2, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_2", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : get Media by resName=float_2, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_2", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : get Media by resName=float_2, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_2", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : get Media by resName=float_2, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("float_2", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : get Media by resName=int_1, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_1", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : get Media by resName=int_1, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_1", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : get Media by resName=int_1, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_1", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : get Media by resName=int_1, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_1", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : get Media by resName=int_1, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_1", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : get Media by resName=int_2, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_2", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : get Media by resName=int_2, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_2", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : get Media by resName=int_2, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_2", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : get Media by resName=int_2, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_2", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : get Media by resName=int_2, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("int_2", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : get Media by resName=test_boolean1, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("test_boolean1", density: ScreenDensity.ScreenSdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : get Media by resName=test_boolean1, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("test_boolean1", density: ScreenDensity.ScreenMdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : get Media by resName=test_boolean1, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("test_boolean1", density: ScreenDensity.ScreenLdpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : get Media by resName=test_boolean1, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("test_boolean1", density: ScreenDensity.ScreenXldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaByName_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : get Media by resName=test_boolean1, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get media by name.")
        try {
            getResourceManager().getMediaByName("test_boolean1", density: ScreenDensity.ScreenXxldpi)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
}
