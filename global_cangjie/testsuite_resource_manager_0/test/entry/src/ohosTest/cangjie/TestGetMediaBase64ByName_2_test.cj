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
class TestGetMediaBase64ByName_2 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : get MediaBase64 by resName=test_boolean0, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("test_boolean0", density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#979: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : get MediaBase64 by resName=test_boolean0, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("test_boolean0", density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#980: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : get MediaBase64 by resName=test_boolean0, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("test_boolean0", density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#981: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : get MediaBase64 by resName=test_boolean0, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("test_boolean0", density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#982: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : get MediaBase64 by resName=test_boolean0, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("test_boolean0", density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#983: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : get MediaBase64 by resName=boolean_3, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_3", density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#984: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : get MediaBase64 by resName=boolean_3, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_3", density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#985: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : get MediaBase64 by resName=boolean_3, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_3", density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#986: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : get MediaBase64 by resName=boolean_3, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_3", density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#987: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : get MediaBase64 by resName=boolean_3, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_3", density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#988: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : get MediaBase64 by resName=boolean_4, density=ScreenDensity.ScreenSdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_4", density: ScreenDensity.ScreenSdpi)
            @Expect("assertion#989: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : get MediaBase64 by resName=boolean_4, density=ScreenDensity.ScreenMdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_4", density: ScreenDensity.ScreenMdpi)
            @Expect("assertion#990: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : get MediaBase64 by resName=boolean_4, density=ScreenDensity.ScreenLdpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_4", density: ScreenDensity.ScreenLdpi)
            @Expect("assertion#991: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : get MediaBase64 by resName=boolean_4, density=ScreenDensity.ScreenXldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_4", density: ScreenDensity.ScreenXldpi)
            @Expect("assertion#992: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getMediaBase64ByName_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : get MediaBase64 by resName=boolean_4, density=ScreenDensity.ScreenXxldpi.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get mediaBase64 by name.")
        try {
            getResourceManager().getMediaBase64ByName("boolean_4", density: ScreenDensity.ScreenXxldpi)
            @Expect("assertion#993: not throw", "fail to get mediaBase64 by name.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource name.")
            @Expect(e.code, 9001003i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_115 ends.")
    }
}
