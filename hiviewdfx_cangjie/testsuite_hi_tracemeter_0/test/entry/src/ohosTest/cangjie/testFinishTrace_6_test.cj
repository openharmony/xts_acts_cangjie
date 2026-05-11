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
class testFinishTrace_6 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50100
     * @tc.name      : TestCase_501
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_501(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_501 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50200
     * @tc.name      : TestCase_502
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_502(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_502 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50300
     * @tc.name      : TestCase_503
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_503(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_503 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50400
     * @tc.name      : TestCase_504
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_504(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_504 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50500
     * @tc.name      : TestCase_505
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_505(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_505 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50600
     * @tc.name      : TestCase_506
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_506(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_506 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50700
     * @tc.name      : TestCase_507
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_507(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_507 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50800
     * @tc.name      : TestCase_508
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_508(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_508 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50900
     * @tc.name      : TestCase_509
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_509(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_509 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51000
     * @tc.name      : TestCase_510
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_510(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_510 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51100
     * @tc.name      : TestCase_511
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_511(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_511 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51200
     * @tc.name      : TestCase_512
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_512(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_512 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51300
     * @tc.name      : TestCase_513
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_513(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_513 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51400
     * @tc.name      : TestCase_514
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_514(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_514 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51500
     * @tc.name      : TestCase_515
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_515(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_515 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51600
     * @tc.name      : TestCase_516
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_516(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_516 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51700
     * @tc.name      : TestCase_517
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_517(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_517 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51800
     * @tc.name      : TestCase_518
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_518(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_518 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_51900
     * @tc.name      : TestCase_519
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_519(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_519 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52000
     * @tc.name      : TestCase_520
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_520(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_520 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52100
     * @tc.name      : TestCase_521
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_521(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_521 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52200
     * @tc.name      : TestCase_522
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_522(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_522 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52300
     * @tc.name      : TestCase_523
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_523(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_523 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52400
     * @tc.name      : TestCase_524
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_524(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_524 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52500
     * @tc.name      : TestCase_525
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_525(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_525 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52600
     * @tc.name      : TestCase_526
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_526(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_526 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52700
     * @tc.name      : TestCase_527
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_527(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_527 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52800
     * @tc.name      : TestCase_528
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_528(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_528 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_52900
     * @tc.name      : TestCase_529
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_529(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_529 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53000
     * @tc.name      : TestCase_530
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_530(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_530 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53100
     * @tc.name      : TestCase_531
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_531(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_531 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53200
     * @tc.name      : TestCase_532
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_532(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_532 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53300
     * @tc.name      : TestCase_533
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_533(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_533 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53400
     * @tc.name      : TestCase_534
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_534(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_534 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53500
     * @tc.name      : TestCase_535
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_535(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_535 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53600
     * @tc.name      : TestCase_536
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_536(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_536 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53700
     * @tc.name      : TestCase_537
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_537(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_537 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53800
     * @tc.name      : TestCase_538
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_538(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_538 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_53900
     * @tc.name      : TestCase_539
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_539(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_539 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54000
     * @tc.name      : TestCase_540
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_540(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_540 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54100
     * @tc.name      : TestCase_541
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_541(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_541 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54200
     * @tc.name      : TestCase_542
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_542(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_542 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54300
     * @tc.name      : TestCase_543
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_543(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_543 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54400
     * @tc.name      : TestCase_544
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_544(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_544 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54500
     * @tc.name      : TestCase_545
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_545(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_545 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54600
     * @tc.name      : TestCase_546
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_546(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_546 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54700
     * @tc.name      : TestCase_547
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_547(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_547 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54800
     * @tc.name      : TestCase_548
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_548(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_548 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_54900
     * @tc.name      : TestCase_549
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_549(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_549 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55000
     * @tc.name      : TestCase_550
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_550(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_550 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55100
     * @tc.name      : TestCase_551
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_551(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_551 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55200
     * @tc.name      : TestCase_552
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_552(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_552 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55300
     * @tc.name      : TestCase_553
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_553(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_553 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55400
     * @tc.name      : TestCase_554
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_554(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_554 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55500
     * @tc.name      : TestCase_555
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_555(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_555 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55600
     * @tc.name      : TestCase_556
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_556(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_556 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55700
     * @tc.name      : TestCase_557
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_557(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_557 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55800
     * @tc.name      : TestCase_558
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_558(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_558 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_55900
     * @tc.name      : TestCase_559
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_559(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_559 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56000
     * @tc.name      : TestCase_560
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_560(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_560 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56100
     * @tc.name      : TestCase_561
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_561(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_561 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56200
     * @tc.name      : TestCase_562
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_562(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_562 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56300
     * @tc.name      : TestCase_563
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_563(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_563 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56400
     * @tc.name      : TestCase_564
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_564(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_564 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56500
     * @tc.name      : TestCase_565
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_565(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_565 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56600
     * @tc.name      : TestCase_566
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_566(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_566 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56700
     * @tc.name      : TestCase_567
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_567(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_567 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56800
     * @tc.name      : TestCase_568
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_568(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_568 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_56900
     * @tc.name      : TestCase_569
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_569(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_569 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57000
     * @tc.name      : TestCase_570
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_570(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_570 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57100
     * @tc.name      : TestCase_571
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_571(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_571 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57200
     * @tc.name      : TestCase_572
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_572(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_572 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57300
     * @tc.name      : TestCase_573
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_573(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_573 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57400
     * @tc.name      : TestCase_574
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_574(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_574 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57500
     * @tc.name      : TestCase_575
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_575(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_575 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57600
     * @tc.name      : TestCase_576
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_576(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_576 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57700
     * @tc.name      : TestCase_577
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_577(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_577 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57800
     * @tc.name      : TestCase_578
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_578(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_578 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_57900
     * @tc.name      : TestCase_579
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_579(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_579 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58000
     * @tc.name      : TestCase_580
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_580(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_580 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58100
     * @tc.name      : TestCase_581
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_581(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_581 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58200
     * @tc.name      : TestCase_582
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_582(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_582 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58300
     * @tc.name      : TestCase_583
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_583(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_583 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58400
     * @tc.name      : TestCase_584
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_584(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_584 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58500
     * @tc.name      : TestCase_585
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_585(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_585 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58600
     * @tc.name      : TestCase_586
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_586(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_586 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58700
     * @tc.name      : TestCase_587
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_587(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_587 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58800
     * @tc.name      : TestCase_588
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_588(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_588 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_58900
     * @tc.name      : TestCase_589
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_589(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_589 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59000
     * @tc.name      : TestCase_590
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_590(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_590 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59100
     * @tc.name      : TestCase_591
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_591(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_591 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59200
     * @tc.name      : TestCase_592
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_592(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_592 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59300
     * @tc.name      : TestCase_593
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_593(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_593 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59400
     * @tc.name      : TestCase_594
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_594(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_594 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59500
     * @tc.name      : TestCase_595
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_595(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_595 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59600
     * @tc.name      : TestCase_596
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_596(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_596 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59700
     * @tc.name      : TestCase_597
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_597(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_597 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59800
     * @tc.name      : TestCase_598
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_598(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_598 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_59900
     * @tc.name      : TestCase_599
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_599(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_599 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_60000
     * @tc.name      : TestCase_600
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "d", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_600(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_600 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("d", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_600 ends.")
    }
}
