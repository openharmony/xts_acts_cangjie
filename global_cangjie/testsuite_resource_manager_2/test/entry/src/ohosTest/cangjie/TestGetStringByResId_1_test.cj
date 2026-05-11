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
class TestGetStringByResId_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : get string by ResId(resId=1u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(1u32)
            @Expect("assertion#2174: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : get string by ResId(resId=0u32).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(0u32)
            @Expect("assertion#2175: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : get string by ResId(resId=UInt32.Min).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(UInt32.Min)
            @Expect("assertion#2177: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : get string by ResId(resId=UInt32.Max).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(UInt32.Max)
            @Expect("assertion#2178: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : get string by ResId(resId=@r(app.strarray.sizelist).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.strarray.sizelist).id)
            @Expect("assertion#2179: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : get string by ResId(resId=@r(app.plural.plural_name).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.plural.plural_name).id)
            @Expect("assertion#2180: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : get string by ResId(resId=@r(app.string.Test_Format1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        @Assert(getResourceManager().getString(@r(app.string.Test_Format1).id), "int is %d")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : get string by ResId(resId=@r(app.string.Test_Format2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        @Assert(getResourceManager().getString(@r(app.string.Test_Format2).id), "float is %f")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : get string by ResId(resId=@r(app.string.Test_Format3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        @Assert(getResourceManager().getString(@r(app.string.Test_Format3).id), "string is %s")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : get string by ResId(resId=@r(app.string.EntryAbility_desc).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        @Assert(getResourceManager().getString(@r(app.string.EntryAbility_desc).id), "description")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : get string by ResId(resId=@r(app.media.layered_image).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.layered_image).id)
            @Expect("assertion#2181: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : get string by ResId(resId=@r(app.string.EntryAbility_label).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        @Assert(getResourceManager().getString(@r(app.string.EntryAbility_label).id), "label")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : get string by ResId(resId=@r(app.media.startIcon).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.startIcon).id)
            @Expect("assertion#2182: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : get string by ResId(resId=@r(app.profile.main_pages).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.profile.main_pages).id)
            @Expect("assertion#2183: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : get string by ResId(resId=@r(app.color.start_window_background).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.color.start_window_background).id)
            @Expect("assertion#2184: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : get string by ResId(resId=@r(app.float.float_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_1).id)
            @Expect("assertion#2185: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : get string by ResId(resId=@r(app.float.float_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_2).id)
            @Expect("assertion#2186: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : get string by ResId(resId=@r(app.integer.int_1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_1).id)
            @Expect("assertion#2187: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : get string by ResId(resId=@r(app.integer.int_2).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_2).id)
            @Expect("assertion#2188: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : get string by ResId(resId=@r(app.boolean.test_boolean1).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean1).id)
            @Expect("assertion#2189: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : get string by ResId(resId=@r(app.boolean.test_boolean0).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean0).id)
            @Expect("assertion#2190: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : get string by ResId(resId=@r(app.boolean.boolean_3).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_3).id)
            @Expect("assertion#2191: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringByResId_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : get string by ResId(resId=@r(app.boolean.boolean_4).id).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_4).id)
            @Expect("assertion#2192: not throw", "fail to get string.")
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
}
