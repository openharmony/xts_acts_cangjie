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
class testFinishTrace_43 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420100
     * @tc.name      : TestCase_4201
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4201(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4201 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420200
     * @tc.name      : TestCase_4202
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4202(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4202 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420300
     * @tc.name      : TestCase_4203
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4203(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4203 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420400
     * @tc.name      : TestCase_4204
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4204(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4204 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420500
     * @tc.name      : TestCase_4205
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4205(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4205 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420600
     * @tc.name      : TestCase_4206
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4206(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4206 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420700
     * @tc.name      : TestCase_4207
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4207(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4207 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420800
     * @tc.name      : TestCase_4208
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4208(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4208 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_420900
     * @tc.name      : TestCase_4209
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4209(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4209 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421000
     * @tc.name      : TestCase_4210
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4210(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4210 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421100
     * @tc.name      : TestCase_4211
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4211(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4211 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421200
     * @tc.name      : TestCase_4212
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4212(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4212 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421300
     * @tc.name      : TestCase_4213
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4213(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4213 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421400
     * @tc.name      : TestCase_4214
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "14", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4214(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4214 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("14", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421500
     * @tc.name      : TestCase_4215
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4215(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4215 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421600
     * @tc.name      : TestCase_4216
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4216(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4216 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421700
     * @tc.name      : TestCase_4217
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4217(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4217 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421800
     * @tc.name      : TestCase_4218
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4218(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4218 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_421900
     * @tc.name      : TestCase_4219
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4219(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4219 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422000
     * @tc.name      : TestCase_4220
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4220(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4220 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422100
     * @tc.name      : TestCase_4221
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4221(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4221 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422200
     * @tc.name      : TestCase_4222
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4222(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4222 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422300
     * @tc.name      : TestCase_4223
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4223(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4223 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422400
     * @tc.name      : TestCase_4224
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4224(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4224 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422500
     * @tc.name      : TestCase_4225
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4225(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4225 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422600
     * @tc.name      : TestCase_4226
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4226(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4226 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422700
     * @tc.name      : TestCase_4227
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4227(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4227 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422800
     * @tc.name      : TestCase_4228
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4228(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4228 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_422900
     * @tc.name      : TestCase_4229
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4229(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4229 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423000
     * @tc.name      : TestCase_4230
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4230(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4230 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423100
     * @tc.name      : TestCase_4231
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4231(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4231 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423200
     * @tc.name      : TestCase_4232
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4232(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4232 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423300
     * @tc.name      : TestCase_4233
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4233(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4233 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423400
     * @tc.name      : TestCase_4234
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4234(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4234 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423500
     * @tc.name      : TestCase_4235
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4235(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4235 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423600
     * @tc.name      : TestCase_4236
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4236(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4236 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423700
     * @tc.name      : TestCase_4237
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4237(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4237 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423800
     * @tc.name      : TestCase_4238
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4238(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4238 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_423900
     * @tc.name      : TestCase_4239
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4239(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4239 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424000
     * @tc.name      : TestCase_4240
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4240(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4240 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424100
     * @tc.name      : TestCase_4241
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4241(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4241 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424200
     * @tc.name      : TestCase_4242
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4242(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4242 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424300
     * @tc.name      : TestCase_4243
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4243(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4243 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424400
     * @tc.name      : TestCase_4244
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4244(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4244 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424500
     * @tc.name      : TestCase_4245
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4245(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4245 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424600
     * @tc.name      : TestCase_4246
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4246(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4246 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424700
     * @tc.name      : TestCase_4247
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4247(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4247 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424800
     * @tc.name      : TestCase_4248
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4248(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4248 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_424900
     * @tc.name      : TestCase_4249
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4249(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4249 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425000
     * @tc.name      : TestCase_4250
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4250(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4250 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425100
     * @tc.name      : TestCase_4251
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4251(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4251 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425200
     * @tc.name      : TestCase_4252
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4252(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4252 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425300
     * @tc.name      : TestCase_4253
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4253(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4253 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425400
     * @tc.name      : TestCase_4254
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4254(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4254 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425500
     * @tc.name      : TestCase_4255
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4255(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4255 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425600
     * @tc.name      : TestCase_4256
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4256(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4256 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425700
     * @tc.name      : TestCase_4257
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4257(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4257 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425800
     * @tc.name      : TestCase_4258
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4258(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4258 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_425900
     * @tc.name      : TestCase_4259
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4259(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4259 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426000
     * @tc.name      : TestCase_4260
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4260(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4260 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426100
     * @tc.name      : TestCase_4261
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4261(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4261 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426200
     * @tc.name      : TestCase_4262
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4262(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4262 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426300
     * @tc.name      : TestCase_4263
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4263(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4263 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426400
     * @tc.name      : TestCase_4264
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4264(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4264 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426500
     * @tc.name      : TestCase_4265
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4265(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4265 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426600
     * @tc.name      : TestCase_4266
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4266(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4266 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426700
     * @tc.name      : TestCase_4267
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4267(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4267 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426800
     * @tc.name      : TestCase_4268
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4268(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4268 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_426900
     * @tc.name      : TestCase_4269
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4269(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4269 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427000
     * @tc.name      : TestCase_4270
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4270(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4270 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427100
     * @tc.name      : TestCase_4271
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4271(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4271 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427200
     * @tc.name      : TestCase_4272
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4272(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4272 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427300
     * @tc.name      : TestCase_4273
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4273(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4273 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427400
     * @tc.name      : TestCase_4274
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4274(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4274 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427500
     * @tc.name      : TestCase_4275
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4275(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4275 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427600
     * @tc.name      : TestCase_4276
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4276(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4276 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427700
     * @tc.name      : TestCase_4277
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4277(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4277 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427800
     * @tc.name      : TestCase_4278
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4278(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4278 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_427900
     * @tc.name      : TestCase_4279
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4279(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4279 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428000
     * @tc.name      : TestCase_4280
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4280(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4280 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428100
     * @tc.name      : TestCase_4281
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4281(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4281 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428200
     * @tc.name      : TestCase_4282
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4282(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4282 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428300
     * @tc.name      : TestCase_4283
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4283(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4283 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428400
     * @tc.name      : TestCase_4284
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4284(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4284 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428500
     * @tc.name      : TestCase_4285
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4285(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4285 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428600
     * @tc.name      : TestCase_4286
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4286(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4286 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428700
     * @tc.name      : TestCase_4287
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4287(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4287 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428800
     * @tc.name      : TestCase_4288
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4288(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4288 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_428900
     * @tc.name      : TestCase_4289
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4289(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4289 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429000
     * @tc.name      : TestCase_4290
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4290(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4290 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429100
     * @tc.name      : TestCase_4291
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4291(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4291 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429200
     * @tc.name      : TestCase_4292
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4292(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4292 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429300
     * @tc.name      : TestCase_4293
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4293(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4293 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429400
     * @tc.name      : TestCase_4294
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4294(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4294 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429500
     * @tc.name      : TestCase_4295
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4295(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4295 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429600
     * @tc.name      : TestCase_4296
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4296(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4296 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429700
     * @tc.name      : TestCase_4297
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4297(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4297 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429800
     * @tc.name      : TestCase_4298
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4298(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4298 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_429900
     * @tc.name      : TestCase_4299
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4299(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4299 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430000
     * @tc.name      : TestCase_4300
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4300(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4300 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4300 ends.")
    }
}
