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
class TestGetStringAndFormatByResId_1 {
    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_0100
     * @tc.name      : TestCase_1
     * @tc.desc      :             get stringAndFormat by ResId(resId=1u32, args=Int32Value(100i32)).

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
            getResourceManager().getString(1u32, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_0200
     * @tc.name      : TestCase_2
     * @tc.desc      :             get stringAndFormat by ResId(resId=1u32, args=StringValue("hello")).

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
            getResourceManager().getString(1u32, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_0300
     * @tc.name      : TestCase_3
     * @tc.desc      :             get stringAndFormat by ResId(resId=1u32, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(1u32, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_0400
     * @tc.name      : TestCase_4
     * @tc.desc      :             get stringAndFormat by ResId(resId=0u32, args=Int32Value(100i32)).

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
            getResourceManager().getString(0u32, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_0500
     * @tc.name      : TestCase_5
     * @tc.desc      :             get stringAndFormat by ResId(resId=0u32, args=StringValue("hello")).

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
            getResourceManager().getString(0u32, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_0600
     * @tc.name      : TestCase_6
     * @tc.desc      :             get stringAndFormat by ResId(resId=0u32, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(0u32, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1000
     * @tc.name      : TestCase_10
     * @tc.desc      :             get stringAndFormat by ResId(resId=UInt32.Min, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(UInt32.Min, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1100
     * @tc.name      : TestCase_11
     * @tc.desc      :             get stringAndFormat by ResId(resId=UInt32.Min, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(UInt32.Min, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1200
     * @tc.name      : TestCase_12
     * @tc.desc      :             get stringAndFormat by ResId(resId=UInt32.Min, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(UInt32.Min, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1300
     * @tc.name      : TestCase_13
     * @tc.desc      :             get stringAndFormat by ResId(resId=UInt32.Max, args=Int32Value(100i32)).

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
            getResourceManager().getString(UInt32.Max, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1400
     * @tc.name      : TestCase_14
     * @tc.desc      :             get stringAndFormat by ResId(resId=UInt32.Max, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(UInt32.Max, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1500
     * @tc.name      : TestCase_15
     * @tc.desc      :             get stringAndFormat by ResId(resId=UInt32.Max, args=Float32Value(3.140000f32)).

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
            getResourceManager().getString(UInt32.Max, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid resource ID.")
            @Expect(e.code, 9001001i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_1900
     * @tc.name      : TestCase_19
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.strarray.sizelist).id, args=Int32Value(100i32)).

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
            getResourceManager().getString(@r(app.strarray.sizelist).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_2000
     * @tc.name      : TestCase_20
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.strarray.sizelist).id, args=StringValue("hello")).

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
            getResourceManager().getString(@r(app.strarray.sizelist).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_2100
     * @tc.name      : TestCase_21
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.strarray.sizelist).id, args=Float32Value(3.140000f32)).

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
            getResourceManager().getString(@r(app.strarray.sizelist).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_2200
     * @tc.name      : TestCase_22
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.plural.plural_name).id, args=Int32Value(100i32)).

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
            getResourceManager().getString(@r(app.plural.plural_name).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_2300
     * @tc.name      : TestCase_23
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.plural.plural_name).id, args=StringValue("hello")).

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
            getResourceManager().getString(@r(app.plural.plural_name).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_2400
     * @tc.name      : TestCase_24
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.plural.plural_name).id, args=Float32Value(3.140000f32)).

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
            getResourceManager().getString(@r(app.plural.plural_name).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_2500
     * @tc.name      : TestCase_25
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.string.Test_Format1).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        @Expect(getResourceManager().getString(@r(app.string.Test_Format1).id, ArgsValueType.Int32Value(100i32)), "int is 100")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_3000
     * @tc.name      : TestCase_30
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.string.Test_Format2).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        @Expect(getResourceManager().getString(@r(app.string.Test_Format2).id, ArgsValueType.Float32Value(3.140000f32)), "float is 3.140000")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_3200
     * @tc.name      : TestCase_32
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.string.Test_Format3).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        @Expect(getResourceManager().getString(@r(app.string.Test_Format3).id, ArgsValueType.StringValue("hello")), "string is hello")
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_3700
     * @tc.name      : TestCase_37
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.media.layered_image).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.layered_image).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_3800
     * @tc.name      : TestCase_38
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.media.layered_image).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.layered_image).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_3900
     * @tc.name      : TestCase_39
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.media.layered_image).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.layered_image).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }


    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4300
     * @tc.name      : TestCase_43
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.media.startIcon).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.startIcon).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4400
     * @tc.name      : TestCase_44
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.media.startIcon).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.startIcon).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4500
     * @tc.name      : TestCase_45
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.media.startIcon).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.media.startIcon).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4600
     * @tc.name      : TestCase_46
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.profile.main_pages).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.profile.main_pages).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4700
     * @tc.name      : TestCase_47
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.profile.main_pages).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.profile.main_pages).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4800
     * @tc.name      : TestCase_48
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.profile.main_pages).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.profile.main_pages).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_4900
     * @tc.name      : TestCase_49
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.color.start_window_background).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.color.start_window_background).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5000
     * @tc.name      : TestCase_50
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.color.start_window_background).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.color.start_window_background).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5100
     * @tc.name      : TestCase_51
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.color.start_window_background).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.color.start_window_background).id,
                ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5200
     * @tc.name      : TestCase_52
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.float.float_1).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_1).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5300
     * @tc.name      : TestCase_53
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.float.float_1).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_1).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5400
     * @tc.name      : TestCase_54
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.float.float_1).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_1).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5500
     * @tc.name      : TestCase_55
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.float.float_2).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_2).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5600
     * @tc.name      : TestCase_56
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.float.float_2).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_2).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5700
     * @tc.name      : TestCase_57
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.float.float_2).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.float.float_2).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5800
     * @tc.name      : TestCase_58
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.integer.int_1).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_1).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_5900
     * @tc.name      : TestCase_59
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.integer.int_1).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_1).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6000
     * @tc.name      : TestCase_60
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.integer.int_1).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_1).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6100
     * @tc.name      : TestCase_61
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.integer.int_2).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_2).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6200
     * @tc.name      : TestCase_62
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.integer.int_2).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_2).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6300
     * @tc.name      : TestCase_63
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.integer.int_2).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.integer.int_2).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6400
     * @tc.name      : TestCase_64
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.test_boolean1).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean1).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6500
     * @tc.name      : TestCase_65
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.test_boolean1).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean1).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6600
     * @tc.name      : TestCase_66
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.test_boolean1).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean1).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6700
     * @tc.name      : TestCase_67
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.test_boolean0).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean0).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6800
     * @tc.name      : TestCase_68
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.test_boolean0).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean0).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_6900
     * @tc.name      : TestCase_69
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.test_boolean0).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.test_boolean0).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_7000
     * @tc.name      : TestCase_70
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.boolean_3).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_3).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_7100
     * @tc.name      : TestCase_71
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.boolean_3).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_3).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_7200
     * @tc.name      : TestCase_72
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.boolean_3).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_3).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_7300
     * @tc.name      : TestCase_73
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.boolean_4).id, args=Int32Value(100i32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_4).id, ArgsValueType.Int32Value(100i32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_7400
     * @tc.name      : TestCase_74
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.boolean_4).id, args=StringValue("hello")).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_4).id, ArgsValueType.StringValue("hello"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ResourceManager_getStringAndFormatByResId_7500
     * @tc.name      : TestCase_75
     * @tc.desc      :             get stringAndFormat by ResId(resId=@r(app.boolean.boolean_4).id, args=Float32Value(3.140000f32)).

     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to get string.")
        try {
            getResourceManager().getString(@r(app.boolean.boolean_4).id, ArgsValueType.Float32Value(3.140000f32))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "No matching resource is found based on the resource ID.")
            @Expect(e.code, 9001002i32)
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
}
