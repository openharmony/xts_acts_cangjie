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
class testFinishTrace_27 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260100
     * @tc.name      : TestCase_2601
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2601(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2601 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2601 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260200
     * @tc.name      : TestCase_2602
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2602(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2602 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2602 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260300
     * @tc.name      : TestCase_2603
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2603(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2603 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2603 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260400
     * @tc.name      : TestCase_2604
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2604(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2604 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2604 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260500
     * @tc.name      : TestCase_2605
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2605(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2605 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2605 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260600
     * @tc.name      : TestCase_2606
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2606(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2606 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2606 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260700
     * @tc.name      : TestCase_2607
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2607(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2607 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2607 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260800
     * @tc.name      : TestCase_2608
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2608(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2608 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2608 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_260900
     * @tc.name      : TestCase_2609
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2609(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2609 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2609 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261000
     * @tc.name      : TestCase_2610
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2610(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2610 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2610 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261100
     * @tc.name      : TestCase_2611
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2611(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2611 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2611 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261200
     * @tc.name      : TestCase_2612
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2612(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2612 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2612 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261300
     * @tc.name      : TestCase_2613
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2613(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2613 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2613 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261400
     * @tc.name      : TestCase_2614
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2614(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2614 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2614 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261500
     * @tc.name      : TestCase_2615
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2615(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2615 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2615 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261600
     * @tc.name      : TestCase_2616
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2616(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2616 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2616 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261700
     * @tc.name      : TestCase_2617
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2617(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2617 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2617 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261800
     * @tc.name      : TestCase_2618
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2618(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2618 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2618 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_261900
     * @tc.name      : TestCase_2619
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2619(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2619 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2619 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262000
     * @tc.name      : TestCase_2620
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2620(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2620 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2620 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262100
     * @tc.name      : TestCase_2621
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2621(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2621 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262200
     * @tc.name      : TestCase_2622
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2622(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2622 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2622 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262300
     * @tc.name      : TestCase_2623
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2623(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2623 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2623 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262400
     * @tc.name      : TestCase_2624
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2624(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2624 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2624 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262500
     * @tc.name      : TestCase_2625
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2625(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2625 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2625 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262600
     * @tc.name      : TestCase_2626
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2626(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2626 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2626 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262700
     * @tc.name      : TestCase_2627
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2627(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2627 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2627 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262800
     * @tc.name      : TestCase_2628
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2628(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2628 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2628 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_262900
     * @tc.name      : TestCase_2629
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2629(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2629 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2629 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263000
     * @tc.name      : TestCase_2630
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2630(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2630 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2630 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263100
     * @tc.name      : TestCase_2631
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2631(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2631 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2631 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263200
     * @tc.name      : TestCase_2632
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2632(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2632 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2632 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263300
     * @tc.name      : TestCase_2633
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2633(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2633 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2633 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263400
     * @tc.name      : TestCase_2634
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2634(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2634 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2634 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263500
     * @tc.name      : TestCase_2635
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2635(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2635 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2635 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263600
     * @tc.name      : TestCase_2636
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2636(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2636 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2636 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263700
     * @tc.name      : TestCase_2637
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2637(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2637 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2637 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263800
     * @tc.name      : TestCase_2638
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2638(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2638 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2638 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_263900
     * @tc.name      : TestCase_2639
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2639(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2639 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2639 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264000
     * @tc.name      : TestCase_2640
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2640(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2640 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2640 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264100
     * @tc.name      : TestCase_2641
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2641(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2641 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2641 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264200
     * @tc.name      : TestCase_2642
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2642(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2642 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2642 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264300
     * @tc.name      : TestCase_2643
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2643(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2643 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2643 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264400
     * @tc.name      : TestCase_2644
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2644(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2644 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2644 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264500
     * @tc.name      : TestCase_2645
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2645(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2645 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2645 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264600
     * @tc.name      : TestCase_2646
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "x", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2646(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2646 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("x", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2646 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264700
     * @tc.name      : TestCase_2647
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2647(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2647 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2647 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264800
     * @tc.name      : TestCase_2648
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2648(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2648 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2648 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_264900
     * @tc.name      : TestCase_2649
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2649(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2649 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2649 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265000
     * @tc.name      : TestCase_2650
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2650(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2650 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2650 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265100
     * @tc.name      : TestCase_2651
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2651(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2651 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265200
     * @tc.name      : TestCase_2652
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2652(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2652 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265300
     * @tc.name      : TestCase_2653
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2653(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2653 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265400
     * @tc.name      : TestCase_2654
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2654(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2654 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265500
     * @tc.name      : TestCase_2655
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2655(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2655 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265600
     * @tc.name      : TestCase_2656
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2656(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2656 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265700
     * @tc.name      : TestCase_2657
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2657(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2657 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265800
     * @tc.name      : TestCase_2658
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2658(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2658 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_265900
     * @tc.name      : TestCase_2659
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2659(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2659 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266000
     * @tc.name      : TestCase_2660
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2660(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2660 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266100
     * @tc.name      : TestCase_2661
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2661(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2661 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266200
     * @tc.name      : TestCase_2662
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2662(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2662 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266300
     * @tc.name      : TestCase_2663
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2663(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2663 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266400
     * @tc.name      : TestCase_2664
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2664(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2664 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266500
     * @tc.name      : TestCase_2665
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2665(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2665 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266600
     * @tc.name      : TestCase_2666
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2666(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2666 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266700
     * @tc.name      : TestCase_2667
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2667(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2667 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266800
     * @tc.name      : TestCase_2668
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2668(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2668 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_266900
     * @tc.name      : TestCase_2669
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2669(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2669 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267000
     * @tc.name      : TestCase_2670
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2670(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2670 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267100
     * @tc.name      : TestCase_2671
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2671(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2671 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267200
     * @tc.name      : TestCase_2672
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2672(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2672 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267300
     * @tc.name      : TestCase_2673
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2673(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2673 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267400
     * @tc.name      : TestCase_2674
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2674(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2674 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267500
     * @tc.name      : TestCase_2675
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2675(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2675 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267600
     * @tc.name      : TestCase_2676
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2676(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2676 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267700
     * @tc.name      : TestCase_2677
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2677(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2677 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267800
     * @tc.name      : TestCase_2678
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2678(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2678 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_267900
     * @tc.name      : TestCase_2679
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2679(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2679 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268000
     * @tc.name      : TestCase_2680
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2680(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2680 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268100
     * @tc.name      : TestCase_2681
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2681(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2681 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268200
     * @tc.name      : TestCase_2682
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2682(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2682 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268300
     * @tc.name      : TestCase_2683
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2683(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2683 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268400
     * @tc.name      : TestCase_2684
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2684(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2684 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268500
     * @tc.name      : TestCase_2685
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2685(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2685 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268600
     * @tc.name      : TestCase_2686
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2686(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2686 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268700
     * @tc.name      : TestCase_2687
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2687(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2687 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268800
     * @tc.name      : TestCase_2688
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2688(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2688 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_268900
     * @tc.name      : TestCase_2689
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2689(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2689 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269000
     * @tc.name      : TestCase_2690
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2690(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2690 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269100
     * @tc.name      : TestCase_2691
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2691(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2691 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269200
     * @tc.name      : TestCase_2692
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2692(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2692 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269300
     * @tc.name      : TestCase_2693
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2693(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2693 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269400
     * @tc.name      : TestCase_2694
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2694(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2694 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269500
     * @tc.name      : TestCase_2695
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2695(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2695 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269600
     * @tc.name      : TestCase_2696
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2696(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2696 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269700
     * @tc.name      : TestCase_2697
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2697(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2697 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269800
     * @tc.name      : TestCase_2698
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2698(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2698 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_269900
     * @tc.name      : TestCase_2699
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2699(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2699 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_270000
     * @tc.name      : TestCase_2700
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "y", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2700(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2700 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("y", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2700 ends.")
    }
}
