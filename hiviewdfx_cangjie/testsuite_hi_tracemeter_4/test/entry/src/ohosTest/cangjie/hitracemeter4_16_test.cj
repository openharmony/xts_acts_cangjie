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
import ohos.hi_trace_meter.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testStartTrace_33 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320100
     * @tc.name      : TestCase_3201
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3201(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3201 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320200
     * @tc.name      : TestCase_3202
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3202(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3202 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320300
     * @tc.name      : TestCase_3203
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3203(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3203 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320400
     * @tc.name      : TestCase_3204
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3204(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3204 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320500
     * @tc.name      : TestCase_3205
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3205(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3205 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320600
     * @tc.name      : TestCase_3206
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3206(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3206 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320700
     * @tc.name      : TestCase_3207
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3207(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3207 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320800
     * @tc.name      : TestCase_3208
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3208(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3208 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_320900
     * @tc.name      : TestCase_3209
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3209(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3209 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321000
     * @tc.name      : TestCase_3210
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3210(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3210 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321100
     * @tc.name      : TestCase_3211
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3211(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3211 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321200
     * @tc.name      : TestCase_3212
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3212(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3212 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321300
     * @tc.name      : TestCase_3213
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3213(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3213 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321400
     * @tc.name      : TestCase_3214
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3214(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3214 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321500
     * @tc.name      : TestCase_3215
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3215(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3215 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321600
     * @tc.name      : TestCase_3216
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3216(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3216 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321700
     * @tc.name      : TestCase_3217
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3217(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3217 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321800
     * @tc.name      : TestCase_3218
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3218(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3218 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_321900
     * @tc.name      : TestCase_3219
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3219(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3219 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322000
     * @tc.name      : TestCase_3220
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3220(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3220 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322100
     * @tc.name      : TestCase_3221
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3221(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3221 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322200
     * @tc.name      : TestCase_3222
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3222(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3222 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322300
     * @tc.name      : TestCase_3223
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3223(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3223 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322400
     * @tc.name      : TestCase_3224
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3224(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3224 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322500
     * @tc.name      : TestCase_3225
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3225(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3225 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322600
     * @tc.name      : TestCase_3226
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3226(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3226 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322700
     * @tc.name      : TestCase_3227
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3227(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3227 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322800
     * @tc.name      : TestCase_3228
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3228(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3228 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_322900
     * @tc.name      : TestCase_3229
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3229(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3229 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323000
     * @tc.name      : TestCase_3230
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3230(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3230 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323100
     * @tc.name      : TestCase_3231
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3231(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3231 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323200
     * @tc.name      : TestCase_3232
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3232(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3232 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323300
     * @tc.name      : TestCase_3233
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3233(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3233 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323400
     * @tc.name      : TestCase_3234
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "4", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3234(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3234 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("4", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323500
     * @tc.name      : TestCase_3235
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3235(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3235 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323600
     * @tc.name      : TestCase_3236
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3236(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3236 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323700
     * @tc.name      : TestCase_3237
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3237(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3237 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323800
     * @tc.name      : TestCase_3238
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3238(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3238 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_323900
     * @tc.name      : TestCase_3239
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3239(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3239 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324000
     * @tc.name      : TestCase_3240
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3240(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3240 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324100
     * @tc.name      : TestCase_3241
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3241(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3241 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324200
     * @tc.name      : TestCase_3242
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3242(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3242 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324300
     * @tc.name      : TestCase_3243
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3243(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3243 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324400
     * @tc.name      : TestCase_3244
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3244(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3244 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324500
     * @tc.name      : TestCase_3245
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3245(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3245 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324600
     * @tc.name      : TestCase_3246
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3246(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3246 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324700
     * @tc.name      : TestCase_3247
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3247(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3247 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324800
     * @tc.name      : TestCase_3248
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3248(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3248 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_324900
     * @tc.name      : TestCase_3249
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3249(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3249 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325000
     * @tc.name      : TestCase_3250
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3250(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3250 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325100
     * @tc.name      : TestCase_3251
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3251(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3251 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325200
     * @tc.name      : TestCase_3252
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3252(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3252 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325300
     * @tc.name      : TestCase_3253
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3253(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3253 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325400
     * @tc.name      : TestCase_3254
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3254(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3254 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325500
     * @tc.name      : TestCase_3255
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3255(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3255 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325600
     * @tc.name      : TestCase_3256
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3256(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3256 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325700
     * @tc.name      : TestCase_3257
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3257(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3257 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325800
     * @tc.name      : TestCase_3258
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3258(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3258 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_325900
     * @tc.name      : TestCase_3259
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3259(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3259 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326000
     * @tc.name      : TestCase_3260
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3260(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3260 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326100
     * @tc.name      : TestCase_3261
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3261(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3261 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326200
     * @tc.name      : TestCase_3262
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3262(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3262 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326300
     * @tc.name      : TestCase_3263
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3263(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3263 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326400
     * @tc.name      : TestCase_3264
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3264(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3264 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326500
     * @tc.name      : TestCase_3265
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3265(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3265 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326600
     * @tc.name      : TestCase_3266
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3266(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3266 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326700
     * @tc.name      : TestCase_3267
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3267(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3267 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326800
     * @tc.name      : TestCase_3268
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3268(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3268 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_326900
     * @tc.name      : TestCase_3269
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3269(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3269 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327000
     * @tc.name      : TestCase_3270
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3270(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3270 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327100
     * @tc.name      : TestCase_3271
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3271(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3271 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327200
     * @tc.name      : TestCase_3272
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3272(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3272 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327300
     * @tc.name      : TestCase_3273
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3273(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3273 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327400
     * @tc.name      : TestCase_3274
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3274(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3274 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327500
     * @tc.name      : TestCase_3275
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3275(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3275 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327600
     * @tc.name      : TestCase_3276
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3276(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3276 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327700
     * @tc.name      : TestCase_3277
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3277(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3277 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327800
     * @tc.name      : TestCase_3278
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3278(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3278 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_327900
     * @tc.name      : TestCase_3279
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3279(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3279 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328000
     * @tc.name      : TestCase_3280
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3280(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3280 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328100
     * @tc.name      : TestCase_3281
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3281(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3281 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328200
     * @tc.name      : TestCase_3282
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3282(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3282 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328300
     * @tc.name      : TestCase_3283
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3283(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3283 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328400
     * @tc.name      : TestCase_3284
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3284(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3284 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328500
     * @tc.name      : TestCase_3285
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3285(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3285 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328600
     * @tc.name      : TestCase_3286
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3286(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3286 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328700
     * @tc.name      : TestCase_3287
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3287(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3287 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328800
     * @tc.name      : TestCase_3288
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3288(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3288 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_328900
     * @tc.name      : TestCase_3289
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3289(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3289 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329000
     * @tc.name      : TestCase_3290
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3290(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3290 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329100
     * @tc.name      : TestCase_3291
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3291(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3291 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329200
     * @tc.name      : TestCase_3292
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3292(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3292 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329300
     * @tc.name      : TestCase_3293
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3293(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3293 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329400
     * @tc.name      : TestCase_3294
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3294(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3294 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329500
     * @tc.name      : TestCase_3295
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3295(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3295 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329600
     * @tc.name      : TestCase_3296
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3296(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3296 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329700
     * @tc.name      : TestCase_3297
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3297(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3297 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329800
     * @tc.name      : TestCase_3298
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3298(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3298 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_329900
     * @tc.name      : TestCase_3299
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3299(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3299 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_330000
     * @tc.name      : TestCase_3300
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "5", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3300(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3300 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("5", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3300 ends.")
    }
}
