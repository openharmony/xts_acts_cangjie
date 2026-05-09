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
class testFinishTrace_47 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460100
     * @tc.name      : TestCase_4601
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "18", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4601(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4601 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("18", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4601 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460200
     * @tc.name      : TestCase_4602
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "18", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4602(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4602 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("18", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4602 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460300
     * @tc.name      : TestCase_4603
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "18", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4603(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4603 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("18", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4603 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460400
     * @tc.name      : TestCase_4604
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "18", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4604(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4604 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("18", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4604 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460500
     * @tc.name      : TestCase_4605
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "18", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4605(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4605 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("18", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4605 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460600
     * @tc.name      : TestCase_4606
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "18", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4606(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4606 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("18", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4606 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460700
     * @tc.name      : TestCase_4607
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4607(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4607 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4607 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460800
     * @tc.name      : TestCase_4608
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4608(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4608 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4608 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_460900
     * @tc.name      : TestCase_4609
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4609(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4609 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4609 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461000
     * @tc.name      : TestCase_4610
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4610(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4610 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4610 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461100
     * @tc.name      : TestCase_4611
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4611(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4611 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4611 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461200
     * @tc.name      : TestCase_4612
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4612(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4612 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4612 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461300
     * @tc.name      : TestCase_4613
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4613(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4613 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4613 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461400
     * @tc.name      : TestCase_4614
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4614(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4614 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4614 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461500
     * @tc.name      : TestCase_4615
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4615(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4615 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4615 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461600
     * @tc.name      : TestCase_4616
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4616(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4616 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4616 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461700
     * @tc.name      : TestCase_4617
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4617(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4617 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4617 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461800
     * @tc.name      : TestCase_4618
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4618(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4618 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4618 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_461900
     * @tc.name      : TestCase_4619
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4619(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4619 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4619 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462000
     * @tc.name      : TestCase_4620
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4620(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4620 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4620 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462100
     * @tc.name      : TestCase_4621
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4621(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4621 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462200
     * @tc.name      : TestCase_4622
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4622(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4622 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4622 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462300
     * @tc.name      : TestCase_4623
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4623(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4623 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4623 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462400
     * @tc.name      : TestCase_4624
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4624(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4624 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4624 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462500
     * @tc.name      : TestCase_4625
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4625(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4625 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4625 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462600
     * @tc.name      : TestCase_4626
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4626(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4626 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4626 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462700
     * @tc.name      : TestCase_4627
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4627(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4627 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4627 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462800
     * @tc.name      : TestCase_4628
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4628(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4628 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4628 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_462900
     * @tc.name      : TestCase_4629
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4629(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4629 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4629 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463000
     * @tc.name      : TestCase_4630
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4630(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4630 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4630 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463100
     * @tc.name      : TestCase_4631
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4631(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4631 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4631 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463200
     * @tc.name      : TestCase_4632
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4632(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4632 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4632 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463300
     * @tc.name      : TestCase_4633
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4633(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4633 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4633 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463400
     * @tc.name      : TestCase_4634
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4634(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4634 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4634 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463500
     * @tc.name      : TestCase_4635
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4635(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4635 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4635 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463600
     * @tc.name      : TestCase_4636
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4636(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4636 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4636 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463700
     * @tc.name      : TestCase_4637
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4637(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4637 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4637 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463800
     * @tc.name      : TestCase_4638
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4638(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4638 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4638 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_463900
     * @tc.name      : TestCase_4639
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4639(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4639 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4639 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464000
     * @tc.name      : TestCase_4640
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4640(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4640 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4640 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464100
     * @tc.name      : TestCase_4641
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4641(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4641 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4641 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464200
     * @tc.name      : TestCase_4642
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4642(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4642 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4642 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464300
     * @tc.name      : TestCase_4643
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4643(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4643 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4643 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464400
     * @tc.name      : TestCase_4644
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4644(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4644 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4644 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464500
     * @tc.name      : TestCase_4645
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4645(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4645 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4645 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464600
     * @tc.name      : TestCase_4646
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4646(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4646 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4646 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464700
     * @tc.name      : TestCase_4647
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4647(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4647 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4647 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464800
     * @tc.name      : TestCase_4648
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4648(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4648 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4648 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_464900
     * @tc.name      : TestCase_4649
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4649(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4649 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4649 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465000
     * @tc.name      : TestCase_4650
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4650(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4650 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4650 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465100
     * @tc.name      : TestCase_4651
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4651(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4651 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465200
     * @tc.name      : TestCase_4652
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4652(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4652 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465300
     * @tc.name      : TestCase_4653
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4653(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4653 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465400
     * @tc.name      : TestCase_4654
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4654(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4654 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465500
     * @tc.name      : TestCase_4655
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4655(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4655 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465600
     * @tc.name      : TestCase_4656
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4656(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4656 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465700
     * @tc.name      : TestCase_4657
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4657(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4657 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465800
     * @tc.name      : TestCase_4658
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4658(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4658 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_465900
     * @tc.name      : TestCase_4659
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4659(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4659 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466000
     * @tc.name      : TestCase_4660
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4660(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4660 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466100
     * @tc.name      : TestCase_4661
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4661(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4661 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466200
     * @tc.name      : TestCase_4662
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4662(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4662 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466300
     * @tc.name      : TestCase_4663
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4663(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4663 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466400
     * @tc.name      : TestCase_4664
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4664(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4664 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466500
     * @tc.name      : TestCase_4665
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4665(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4665 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466600
     * @tc.name      : TestCase_4666
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4666(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4666 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466700
     * @tc.name      : TestCase_4667
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4667(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4667 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466800
     * @tc.name      : TestCase_4668
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4668(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4668 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_466900
     * @tc.name      : TestCase_4669
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4669(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4669 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467000
     * @tc.name      : TestCase_4670
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4670(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4670 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467100
     * @tc.name      : TestCase_4671
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4671(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4671 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467200
     * @tc.name      : TestCase_4672
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4672(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4672 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467300
     * @tc.name      : TestCase_4673
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4673(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4673 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467400
     * @tc.name      : TestCase_4674
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4674(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4674 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467500
     * @tc.name      : TestCase_4675
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4675(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4675 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467600
     * @tc.name      : TestCase_4676
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4676(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4676 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467700
     * @tc.name      : TestCase_4677
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4677(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4677 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467800
     * @tc.name      : TestCase_4678
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4678(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4678 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_467900
     * @tc.name      : TestCase_4679
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4679(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4679 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468000
     * @tc.name      : TestCase_4680
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4680(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4680 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468100
     * @tc.name      : TestCase_4681
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4681(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4681 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468200
     * @tc.name      : TestCase_4682
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4682(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4682 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468300
     * @tc.name      : TestCase_4683
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4683(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4683 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468400
     * @tc.name      : TestCase_4684
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4684(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4684 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468500
     * @tc.name      : TestCase_4685
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4685(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4685 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468600
     * @tc.name      : TestCase_4686
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4686(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4686 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468700
     * @tc.name      : TestCase_4687
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4687(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4687 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468800
     * @tc.name      : TestCase_4688
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4688(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4688 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_468900
     * @tc.name      : TestCase_4689
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4689(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4689 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469000
     * @tc.name      : TestCase_4690
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4690(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4690 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469100
     * @tc.name      : TestCase_4691
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4691(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4691 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469200
     * @tc.name      : TestCase_4692
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4692(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4692 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469300
     * @tc.name      : TestCase_4693
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4693(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4693 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469400
     * @tc.name      : TestCase_4694
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4694(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4694 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469500
     * @tc.name      : TestCase_4695
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4695(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4695 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469600
     * @tc.name      : TestCase_4696
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4696(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4696 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469700
     * @tc.name      : TestCase_4697
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4697(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4697 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469800
     * @tc.name      : TestCase_4698
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4698(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4698 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_469900
     * @tc.name      : TestCase_4699
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4699(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4699 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_470000
     * @tc.name      : TestCase_4700
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "19", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4700(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4700 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("19", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4700 ends.")
    }
}
