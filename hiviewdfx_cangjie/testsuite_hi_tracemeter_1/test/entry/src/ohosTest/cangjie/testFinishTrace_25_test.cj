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
class testFinishTrace_25 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240100
     * @tc.name      : TestCase_2401
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2401(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2401 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240200
     * @tc.name      : TestCase_2402
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2402(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2402 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240300
     * @tc.name      : TestCase_2403
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2403(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2403 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240400
     * @tc.name      : TestCase_2404
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2404(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2404 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240500
     * @tc.name      : TestCase_2405
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2405(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2405 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240600
     * @tc.name      : TestCase_2406
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2406(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2406 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240700
     * @tc.name      : TestCase_2407
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2407(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2407 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240800
     * @tc.name      : TestCase_2408
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2408(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2408 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_240900
     * @tc.name      : TestCase_2409
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2409(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2409 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241000
     * @tc.name      : TestCase_2410
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2410(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2410 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241100
     * @tc.name      : TestCase_2411
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2411(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2411 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241200
     * @tc.name      : TestCase_2412
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2412(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2412 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241300
     * @tc.name      : TestCase_2413
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2413(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2413 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241400
     * @tc.name      : TestCase_2414
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2414(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2414 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241500
     * @tc.name      : TestCase_2415
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2415(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2415 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241600
     * @tc.name      : TestCase_2416
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2416(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2416 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241700
     * @tc.name      : TestCase_2417
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2417(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2417 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241800
     * @tc.name      : TestCase_2418
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2418(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2418 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_241900
     * @tc.name      : TestCase_2419
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2419(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2419 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242000
     * @tc.name      : TestCase_2420
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2420(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2420 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242100
     * @tc.name      : TestCase_2421
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2421(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2421 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242200
     * @tc.name      : TestCase_2422
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2422(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2422 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242300
     * @tc.name      : TestCase_2423
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2423(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2423 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242400
     * @tc.name      : TestCase_2424
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2424(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2424 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242500
     * @tc.name      : TestCase_2425
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2425(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2425 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242600
     * @tc.name      : TestCase_2426
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2426(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2426 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242700
     * @tc.name      : TestCase_2427
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2427(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2427 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242800
     * @tc.name      : TestCase_2428
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2428(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2428 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_242900
     * @tc.name      : TestCase_2429
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2429(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2429 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243000
     * @tc.name      : TestCase_2430
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2430(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2430 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243100
     * @tc.name      : TestCase_2431
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2431(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2431 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243200
     * @tc.name      : TestCase_2432
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2432(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2432 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243300
     * @tc.name      : TestCase_2433
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2433(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2433 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243400
     * @tc.name      : TestCase_2434
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2434(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2434 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243500
     * @tc.name      : TestCase_2435
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2435(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2435 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243600
     * @tc.name      : TestCase_2436
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2436(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2436 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243700
     * @tc.name      : TestCase_2437
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2437(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2437 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243800
     * @tc.name      : TestCase_2438
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2438(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2438 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_243900
     * @tc.name      : TestCase_2439
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2439(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2439 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244000
     * @tc.name      : TestCase_2440
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2440(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2440 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244100
     * @tc.name      : TestCase_2441
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2441(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2441 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244200
     * @tc.name      : TestCase_2442
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2442(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2442 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244300
     * @tc.name      : TestCase_2443
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2443(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2443 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244400
     * @tc.name      : TestCase_2444
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2444(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2444 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244500
     * @tc.name      : TestCase_2445
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2445(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2445 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244600
     * @tc.name      : TestCase_2446
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2446(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2446 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244700
     * @tc.name      : TestCase_2447
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2447(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2447 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244800
     * @tc.name      : TestCase_2448
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2448(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2448 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_244900
     * @tc.name      : TestCase_2449
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2449(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2449 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245000
     * @tc.name      : TestCase_2450
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "v", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2450(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2450 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("v", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2450 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245100
     * @tc.name      : TestCase_2451
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2451(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2451 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245200
     * @tc.name      : TestCase_2452
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2452(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2452 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245300
     * @tc.name      : TestCase_2453
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2453(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2453 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245400
     * @tc.name      : TestCase_2454
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2454(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2454 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245500
     * @tc.name      : TestCase_2455
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2455(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2455 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245600
     * @tc.name      : TestCase_2456
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2456(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2456 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245700
     * @tc.name      : TestCase_2457
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2457(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2457 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245800
     * @tc.name      : TestCase_2458
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2458(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2458 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_245900
     * @tc.name      : TestCase_2459
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2459(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2459 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246000
     * @tc.name      : TestCase_2460
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2460(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2460 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246100
     * @tc.name      : TestCase_2461
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2461(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2461 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246200
     * @tc.name      : TestCase_2462
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2462(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2462 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246300
     * @tc.name      : TestCase_2463
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2463(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2463 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246400
     * @tc.name      : TestCase_2464
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2464(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2464 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246500
     * @tc.name      : TestCase_2465
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2465(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2465 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246600
     * @tc.name      : TestCase_2466
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2466(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2466 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246700
     * @tc.name      : TestCase_2467
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2467(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2467 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246800
     * @tc.name      : TestCase_2468
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2468(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2468 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_246900
     * @tc.name      : TestCase_2469
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2469(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2469 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247000
     * @tc.name      : TestCase_2470
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2470(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2470 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2470 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247100
     * @tc.name      : TestCase_2471
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2471(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2471 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247200
     * @tc.name      : TestCase_2472
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2472(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2472 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247300
     * @tc.name      : TestCase_2473
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2473(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2473 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247400
     * @tc.name      : TestCase_2474
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2474(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2474 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247500
     * @tc.name      : TestCase_2475
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2475(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2475 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247600
     * @tc.name      : TestCase_2476
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2476(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2476 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247700
     * @tc.name      : TestCase_2477
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2477(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2477 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247800
     * @tc.name      : TestCase_2478
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2478(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2478 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_247900
     * @tc.name      : TestCase_2479
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2479(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2479 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248000
     * @tc.name      : TestCase_2480
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2480(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2480 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2480 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248100
     * @tc.name      : TestCase_2481
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2481(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2481 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248200
     * @tc.name      : TestCase_2482
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2482(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2482 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248300
     * @tc.name      : TestCase_2483
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2483(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2483 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248400
     * @tc.name      : TestCase_2484
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2484(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2484 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248500
     * @tc.name      : TestCase_2485
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2485(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2485 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248600
     * @tc.name      : TestCase_2486
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2486(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2486 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248700
     * @tc.name      : TestCase_2487
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2487(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2487 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248800
     * @tc.name      : TestCase_2488
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2488(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2488 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_248900
     * @tc.name      : TestCase_2489
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2489(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2489 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249000
     * @tc.name      : TestCase_2490
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2490(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2490 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249100
     * @tc.name      : TestCase_2491
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2491(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2491 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249200
     * @tc.name      : TestCase_2492
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2492(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2492 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249300
     * @tc.name      : TestCase_2493
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2493(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2493 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249400
     * @tc.name      : TestCase_2494
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2494(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2494 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249500
     * @tc.name      : TestCase_2495
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2495(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2495 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249600
     * @tc.name      : TestCase_2496
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2496(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2496 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249700
     * @tc.name      : TestCase_2497
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2497(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2497 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249800
     * @tc.name      : TestCase_2498
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2498(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2498 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_249900
     * @tc.name      : TestCase_2499
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2499(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2499 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_250000
     * @tc.name      : TestCase_2500
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "w", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2500(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2500 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("w", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2500 ends.")
    }
}
