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
class testStartTrace_24 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230100
     * @tc.name      : TestCase_2301
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2301(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2301 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230200
     * @tc.name      : TestCase_2302
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2302(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2302 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230300
     * @tc.name      : TestCase_2303
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2303(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2303 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230400
     * @tc.name      : TestCase_2304
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2304(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2304 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230500
     * @tc.name      : TestCase_2305
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2305(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2305 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230600
     * @tc.name      : TestCase_2306
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2306(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2306 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230700
     * @tc.name      : TestCase_2307
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2307(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2307 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230800
     * @tc.name      : TestCase_2308
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2308(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2308 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_230900
     * @tc.name      : TestCase_2309
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2309(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2309 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231000
     * @tc.name      : TestCase_2310
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2310(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2310 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231100
     * @tc.name      : TestCase_2311
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2311(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2311 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231200
     * @tc.name      : TestCase_2312
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2312(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2312 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231300
     * @tc.name      : TestCase_2313
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2313(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2313 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231400
     * @tc.name      : TestCase_2314
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2314(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2314 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231500
     * @tc.name      : TestCase_2315
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2315(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2315 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231600
     * @tc.name      : TestCase_2316
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2316(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2316 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231700
     * @tc.name      : TestCase_2317
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2317(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2317 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231800
     * @tc.name      : TestCase_2318
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2318(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2318 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_231900
     * @tc.name      : TestCase_2319
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2319(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2319 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232000
     * @tc.name      : TestCase_2320
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2320(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2320 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232100
     * @tc.name      : TestCase_2321
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2321(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2321 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232200
     * @tc.name      : TestCase_2322
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2322(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2322 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232300
     * @tc.name      : TestCase_2323
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2323(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2323 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232400
     * @tc.name      : TestCase_2324
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2324(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2324 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232500
     * @tc.name      : TestCase_2325
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2325(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2325 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232600
     * @tc.name      : TestCase_2326
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2326(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2326 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232700
     * @tc.name      : TestCase_2327
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2327(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2327 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232800
     * @tc.name      : TestCase_2328
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2328(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2328 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_232900
     * @tc.name      : TestCase_2329
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2329(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2329 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233000
     * @tc.name      : TestCase_2330
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2330(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2330 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233100
     * @tc.name      : TestCase_2331
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2331(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2331 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233200
     * @tc.name      : TestCase_2332
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2332(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2332 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233300
     * @tc.name      : TestCase_2333
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2333(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2333 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233400
     * @tc.name      : TestCase_2334
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2334(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2334 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233500
     * @tc.name      : TestCase_2335
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2335(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2335 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233600
     * @tc.name      : TestCase_2336
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2336(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2336 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233700
     * @tc.name      : TestCase_2337
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2337(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2337 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233800
     * @tc.name      : TestCase_2338
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2338(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2338 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_233900
     * @tc.name      : TestCase_2339
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2339(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2339 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234000
     * @tc.name      : TestCase_2340
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2340(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2340 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234100
     * @tc.name      : TestCase_2341
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2341(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2341 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234200
     * @tc.name      : TestCase_2342
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2342(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2342 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234300
     * @tc.name      : TestCase_2343
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2343(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2343 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234400
     * @tc.name      : TestCase_2344
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2344(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2344 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234500
     * @tc.name      : TestCase_2345
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2345(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2345 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234600
     * @tc.name      : TestCase_2346
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2346(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2346 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234700
     * @tc.name      : TestCase_2347
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2347(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2347 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234800
     * @tc.name      : TestCase_2348
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2348(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2348 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_234900
     * @tc.name      : TestCase_2349
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2349(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2349 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235000
     * @tc.name      : TestCase_2350
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2350(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2350 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235100
     * @tc.name      : TestCase_2351
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2351(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2351 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235200
     * @tc.name      : TestCase_2352
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "u", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2352(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2352 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("u", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235300
     * @tc.name      : TestCase_2353
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2353(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2353 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235400
     * @tc.name      : TestCase_2354
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2354(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2354 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235500
     * @tc.name      : TestCase_2355
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2355(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2355 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235600
     * @tc.name      : TestCase_2356
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2356(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2356 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235700
     * @tc.name      : TestCase_2357
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2357(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2357 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235800
     * @tc.name      : TestCase_2358
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2358(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2358 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_235900
     * @tc.name      : TestCase_2359
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2359(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2359 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236000
     * @tc.name      : TestCase_2360
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2360(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2360 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236100
     * @tc.name      : TestCase_2361
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2361(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2361 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236200
     * @tc.name      : TestCase_2362
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2362(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2362 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236300
     * @tc.name      : TestCase_2363
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2363(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2363 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236400
     * @tc.name      : TestCase_2364
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2364(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2364 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236500
     * @tc.name      : TestCase_2365
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2365(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2365 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236600
     * @tc.name      : TestCase_2366
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2366(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2366 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236700
     * @tc.name      : TestCase_2367
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2367(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2367 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236800
     * @tc.name      : TestCase_2368
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2368(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2368 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_236900
     * @tc.name      : TestCase_2369
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2369(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2369 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237000
     * @tc.name      : TestCase_2370
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2370(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2370 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237100
     * @tc.name      : TestCase_2371
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2371(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2371 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237200
     * @tc.name      : TestCase_2372
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2372(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2372 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237300
     * @tc.name      : TestCase_2373
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2373(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2373 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237400
     * @tc.name      : TestCase_2374
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2374(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2374 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237500
     * @tc.name      : TestCase_2375
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2375(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2375 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237600
     * @tc.name      : TestCase_2376
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2376(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2376 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237700
     * @tc.name      : TestCase_2377
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2377(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2377 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237800
     * @tc.name      : TestCase_2378
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2378(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2378 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_237900
     * @tc.name      : TestCase_2379
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2379(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2379 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238000
     * @tc.name      : TestCase_2380
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2380(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2380 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238100
     * @tc.name      : TestCase_2381
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2381(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2381 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238200
     * @tc.name      : TestCase_2382
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2382(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2382 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238300
     * @tc.name      : TestCase_2383
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2383(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2383 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238400
     * @tc.name      : TestCase_2384
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2384(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2384 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238500
     * @tc.name      : TestCase_2385
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2385(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2385 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238600
     * @tc.name      : TestCase_2386
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2386(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2386 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238700
     * @tc.name      : TestCase_2387
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2387(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2387 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238800
     * @tc.name      : TestCase_2388
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2388(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2388 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_238900
     * @tc.name      : TestCase_2389
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2389(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2389 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239000
     * @tc.name      : TestCase_2390
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2390(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2390 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239100
     * @tc.name      : TestCase_2391
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2391(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2391 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239200
     * @tc.name      : TestCase_2392
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2392(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2392 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239300
     * @tc.name      : TestCase_2393
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2393(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2393 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239400
     * @tc.name      : TestCase_2394
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2394(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2394 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239500
     * @tc.name      : TestCase_2395
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2395(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2395 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239600
     * @tc.name      : TestCase_2396
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2396(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2396 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239700
     * @tc.name      : TestCase_2397
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2397(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2397 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239800
     * @tc.name      : TestCase_2398
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2398(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2398 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_239900
     * @tc.name      : TestCase_2399
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2399(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2399 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_240000
     * @tc.name      : TestCase_2400
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "v", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2400(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2400 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("v", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2400 ends.")
    }
}
