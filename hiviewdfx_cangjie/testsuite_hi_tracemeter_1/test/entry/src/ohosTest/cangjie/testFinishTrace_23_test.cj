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
class testFinishTrace_23 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220100
     * @tc.name      : TestCase_2201
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2201(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2201 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220200
     * @tc.name      : TestCase_2202
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2202(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2202 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220300
     * @tc.name      : TestCase_2203
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2203(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2203 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220400
     * @tc.name      : TestCase_2204
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2204(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2204 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220500
     * @tc.name      : TestCase_2205
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2205(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2205 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220600
     * @tc.name      : TestCase_2206
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2206(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2206 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220700
     * @tc.name      : TestCase_2207
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2207(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2207 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220800
     * @tc.name      : TestCase_2208
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2208(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2208 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220900
     * @tc.name      : TestCase_2209
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2209(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2209 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221000
     * @tc.name      : TestCase_2210
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2210(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2210 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221100
     * @tc.name      : TestCase_2211
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2211(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2211 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221200
     * @tc.name      : TestCase_2212
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2212(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2212 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221300
     * @tc.name      : TestCase_2213
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2213(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2213 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221400
     * @tc.name      : TestCase_2214
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2214(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2214 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221500
     * @tc.name      : TestCase_2215
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2215(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2215 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221600
     * @tc.name      : TestCase_2216
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2216(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2216 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221700
     * @tc.name      : TestCase_2217
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2217(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2217 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221800
     * @tc.name      : TestCase_2218
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2218(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2218 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_221900
     * @tc.name      : TestCase_2219
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2219(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2219 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222000
     * @tc.name      : TestCase_2220
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2220(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2220 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222100
     * @tc.name      : TestCase_2221
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2221(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2221 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222200
     * @tc.name      : TestCase_2222
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2222(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2222 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222300
     * @tc.name      : TestCase_2223
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2223(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2223 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222400
     * @tc.name      : TestCase_2224
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2224(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2224 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222500
     * @tc.name      : TestCase_2225
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2225(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2225 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222600
     * @tc.name      : TestCase_2226
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2226(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2226 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222700
     * @tc.name      : TestCase_2227
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2227(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2227 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222800
     * @tc.name      : TestCase_2228
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2228(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2228 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_222900
     * @tc.name      : TestCase_2229
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2229(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2229 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223000
     * @tc.name      : TestCase_2230
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2230(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2230 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223100
     * @tc.name      : TestCase_2231
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2231(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2231 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223200
     * @tc.name      : TestCase_2232
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2232(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2232 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223300
     * @tc.name      : TestCase_2233
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2233(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2233 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223400
     * @tc.name      : TestCase_2234
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2234(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2234 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223500
     * @tc.name      : TestCase_2235
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2235(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2235 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223600
     * @tc.name      : TestCase_2236
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2236(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2236 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223700
     * @tc.name      : TestCase_2237
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2237(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2237 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223800
     * @tc.name      : TestCase_2238
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2238(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2238 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_223900
     * @tc.name      : TestCase_2239
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2239(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2239 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224000
     * @tc.name      : TestCase_2240
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2240(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2240 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224100
     * @tc.name      : TestCase_2241
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2241(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2241 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224200
     * @tc.name      : TestCase_2242
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2242(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2242 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224300
     * @tc.name      : TestCase_2243
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2243(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2243 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224400
     * @tc.name      : TestCase_2244
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2244(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2244 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224500
     * @tc.name      : TestCase_2245
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2245(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2245 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224600
     * @tc.name      : TestCase_2246
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2246(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2246 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224700
     * @tc.name      : TestCase_2247
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2247(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2247 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224800
     * @tc.name      : TestCase_2248
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2248(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2248 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_224900
     * @tc.name      : TestCase_2249
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2249(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2249 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225000
     * @tc.name      : TestCase_2250
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2250(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2250 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225100
     * @tc.name      : TestCase_2251
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2251(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2251 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225200
     * @tc.name      : TestCase_2252
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2252(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2252 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225300
     * @tc.name      : TestCase_2253
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2253(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2253 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225400
     * @tc.name      : TestCase_2254
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2254(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2254 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225500
     * @tc.name      : TestCase_2255
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2255(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2255 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225600
     * @tc.name      : TestCase_2256
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2256(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2256 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225700
     * @tc.name      : TestCase_2257
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2257(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2257 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225800
     * @tc.name      : TestCase_2258
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2258(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2258 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_225900
     * @tc.name      : TestCase_2259
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2259(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2259 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226000
     * @tc.name      : TestCase_2260
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2260(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2260 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226100
     * @tc.name      : TestCase_2261
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2261(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2261 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226200
     * @tc.name      : TestCase_2262
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2262(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2262 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226300
     * @tc.name      : TestCase_2263
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2263(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2263 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226400
     * @tc.name      : TestCase_2264
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2264(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2264 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226500
     * @tc.name      : TestCase_2265
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2265(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2265 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226600
     * @tc.name      : TestCase_2266
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2266(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2266 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226700
     * @tc.name      : TestCase_2267
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2267(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2267 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226800
     * @tc.name      : TestCase_2268
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2268(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2268 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_226900
     * @tc.name      : TestCase_2269
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2269(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2269 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227000
     * @tc.name      : TestCase_2270
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2270(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2270 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227100
     * @tc.name      : TestCase_2271
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2271(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2271 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227200
     * @tc.name      : TestCase_2272
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2272(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2272 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227300
     * @tc.name      : TestCase_2273
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2273(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2273 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227400
     * @tc.name      : TestCase_2274
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2274(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2274 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227500
     * @tc.name      : TestCase_2275
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2275(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2275 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227600
     * @tc.name      : TestCase_2276
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2276(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2276 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227700
     * @tc.name      : TestCase_2277
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2277(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2277 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227800
     * @tc.name      : TestCase_2278
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2278(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2278 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_227900
     * @tc.name      : TestCase_2279
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2279(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2279 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228000
     * @tc.name      : TestCase_2280
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2280(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2280 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228100
     * @tc.name      : TestCase_2281
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2281(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2281 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228200
     * @tc.name      : TestCase_2282
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2282(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2282 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228300
     * @tc.name      : TestCase_2283
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2283(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2283 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228400
     * @tc.name      : TestCase_2284
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2284(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2284 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228500
     * @tc.name      : TestCase_2285
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2285(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2285 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228600
     * @tc.name      : TestCase_2286
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2286(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2286 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228700
     * @tc.name      : TestCase_2287
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2287(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2287 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228800
     * @tc.name      : TestCase_2288
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2288(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2288 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_228900
     * @tc.name      : TestCase_2289
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2289(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2289 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229000
     * @tc.name      : TestCase_2290
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2290(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2290 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229100
     * @tc.name      : TestCase_2291
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2291(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2291 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229200
     * @tc.name      : TestCase_2292
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2292(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2292 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229300
     * @tc.name      : TestCase_2293
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2293(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2293 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229400
     * @tc.name      : TestCase_2294
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2294(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2294 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229500
     * @tc.name      : TestCase_2295
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2295(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2295 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229600
     * @tc.name      : TestCase_2296
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2296(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2296 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229700
     * @tc.name      : TestCase_2297
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2297(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2297 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229800
     * @tc.name      : TestCase_2298
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2298(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2298 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_229900
     * @tc.name      : TestCase_2299
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2299(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2299 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_230000
     * @tc.name      : TestCase_2300
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "u", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2300(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2300 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("u", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2300 ends.")
    }
}
