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
class testStartTrace_26 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250100
     * @tc.name      : TestCase_2501
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2501(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2501 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250200
     * @tc.name      : TestCase_2502
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2502(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2502 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250300
     * @tc.name      : TestCase_2503
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2503(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2503 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250400
     * @tc.name      : TestCase_2504
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2504(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2504 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250500
     * @tc.name      : TestCase_2505
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2505(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2505 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250600
     * @tc.name      : TestCase_2506
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2506(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2506 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250700
     * @tc.name      : TestCase_2507
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2507(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2507 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250800
     * @tc.name      : TestCase_2508
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2508(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2508 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_250900
     * @tc.name      : TestCase_2509
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2509(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2509 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251000
     * @tc.name      : TestCase_2510
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2510(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2510 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251100
     * @tc.name      : TestCase_2511
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2511(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2511 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251200
     * @tc.name      : TestCase_2512
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2512(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2512 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251300
     * @tc.name      : TestCase_2513
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2513(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2513 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251400
     * @tc.name      : TestCase_2514
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2514(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2514 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251500
     * @tc.name      : TestCase_2515
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2515(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2515 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251600
     * @tc.name      : TestCase_2516
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2516(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2516 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251700
     * @tc.name      : TestCase_2517
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2517(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2517 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251800
     * @tc.name      : TestCase_2518
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2518(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2518 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_251900
     * @tc.name      : TestCase_2519
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2519(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2519 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252000
     * @tc.name      : TestCase_2520
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2520(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2520 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252100
     * @tc.name      : TestCase_2521
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2521(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2521 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252200
     * @tc.name      : TestCase_2522
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2522(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2522 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252300
     * @tc.name      : TestCase_2523
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2523(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2523 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252400
     * @tc.name      : TestCase_2524
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2524(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2524 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252500
     * @tc.name      : TestCase_2525
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2525(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2525 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252600
     * @tc.name      : TestCase_2526
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2526(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2526 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252700
     * @tc.name      : TestCase_2527
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2527(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2527 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252800
     * @tc.name      : TestCase_2528
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2528(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2528 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_252900
     * @tc.name      : TestCase_2529
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2529(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2529 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253000
     * @tc.name      : TestCase_2530
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2530(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2530 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253100
     * @tc.name      : TestCase_2531
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2531(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2531 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253200
     * @tc.name      : TestCase_2532
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2532(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2532 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253300
     * @tc.name      : TestCase_2533
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2533(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2533 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253400
     * @tc.name      : TestCase_2534
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2534(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2534 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253500
     * @tc.name      : TestCase_2535
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2535(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2535 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253600
     * @tc.name      : TestCase_2536
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2536(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2536 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253700
     * @tc.name      : TestCase_2537
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2537(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2537 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253800
     * @tc.name      : TestCase_2538
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2538(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2538 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_253900
     * @tc.name      : TestCase_2539
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2539(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2539 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254000
     * @tc.name      : TestCase_2540
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2540(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2540 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254100
     * @tc.name      : TestCase_2541
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2541(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2541 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254200
     * @tc.name      : TestCase_2542
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2542(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2542 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254300
     * @tc.name      : TestCase_2543
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2543(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2543 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254400
     * @tc.name      : TestCase_2544
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2544(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2544 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254500
     * @tc.name      : TestCase_2545
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2545(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2545 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254600
     * @tc.name      : TestCase_2546
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2546(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2546 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254700
     * @tc.name      : TestCase_2547
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2547(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2547 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254800
     * @tc.name      : TestCase_2548
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "w", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2548(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2548 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("w", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_254900
     * @tc.name      : TestCase_2549
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2549(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2549 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255000
     * @tc.name      : TestCase_2550
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2550(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2550 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255100
     * @tc.name      : TestCase_2551
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2551(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2551 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255200
     * @tc.name      : TestCase_2552
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2552(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2552 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255300
     * @tc.name      : TestCase_2553
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2553(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2553 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255400
     * @tc.name      : TestCase_2554
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2554(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2554 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255500
     * @tc.name      : TestCase_2555
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2555(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2555 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255600
     * @tc.name      : TestCase_2556
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2556(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2556 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255700
     * @tc.name      : TestCase_2557
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2557(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2557 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255800
     * @tc.name      : TestCase_2558
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2558(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2558 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_255900
     * @tc.name      : TestCase_2559
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2559(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2559 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256000
     * @tc.name      : TestCase_2560
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2560(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2560 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256100
     * @tc.name      : TestCase_2561
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2561(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2561 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256200
     * @tc.name      : TestCase_2562
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2562(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2562 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256300
     * @tc.name      : TestCase_2563
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2563(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2563 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256400
     * @tc.name      : TestCase_2564
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2564(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2564 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256500
     * @tc.name      : TestCase_2565
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2565(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2565 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256600
     * @tc.name      : TestCase_2566
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2566(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2566 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256700
     * @tc.name      : TestCase_2567
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2567(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2567 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256800
     * @tc.name      : TestCase_2568
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2568(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2568 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_256900
     * @tc.name      : TestCase_2569
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2569(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2569 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257000
     * @tc.name      : TestCase_2570
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2570(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2570 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257100
     * @tc.name      : TestCase_2571
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2571(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2571 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257200
     * @tc.name      : TestCase_2572
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2572(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2572 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257300
     * @tc.name      : TestCase_2573
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2573(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2573 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257400
     * @tc.name      : TestCase_2574
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2574(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2574 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257500
     * @tc.name      : TestCase_2575
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2575(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2575 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257600
     * @tc.name      : TestCase_2576
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2576(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2576 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257700
     * @tc.name      : TestCase_2577
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2577(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2577 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257800
     * @tc.name      : TestCase_2578
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2578(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2578 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_257900
     * @tc.name      : TestCase_2579
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2579(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2579 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258000
     * @tc.name      : TestCase_2580
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2580(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2580 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258100
     * @tc.name      : TestCase_2581
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2581(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2581 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258200
     * @tc.name      : TestCase_2582
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2582(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2582 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258300
     * @tc.name      : TestCase_2583
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2583(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2583 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258400
     * @tc.name      : TestCase_2584
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2584(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2584 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258500
     * @tc.name      : TestCase_2585
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2585(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2585 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258600
     * @tc.name      : TestCase_2586
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2586(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2586 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258700
     * @tc.name      : TestCase_2587
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2587(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2587 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258800
     * @tc.name      : TestCase_2588
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2588(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2588 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_258900
     * @tc.name      : TestCase_2589
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2589(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2589 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259000
     * @tc.name      : TestCase_2590
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2590(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2590 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259100
     * @tc.name      : TestCase_2591
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2591(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2591 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259200
     * @tc.name      : TestCase_2592
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2592(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2592 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259300
     * @tc.name      : TestCase_2593
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2593(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2593 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259400
     * @tc.name      : TestCase_2594
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2594(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2594 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259500
     * @tc.name      : TestCase_2595
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2595(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2595 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259600
     * @tc.name      : TestCase_2596
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2596(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2596 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259700
     * @tc.name      : TestCase_2597
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2597(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2597 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259800
     * @tc.name      : TestCase_2598
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2598(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2598 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_259900
     * @tc.name      : TestCase_2599
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2599(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2599 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_260000
     * @tc.name      : TestCase_2600
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "x", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2600(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2600 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("x", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2600 ends.")
    }
}
