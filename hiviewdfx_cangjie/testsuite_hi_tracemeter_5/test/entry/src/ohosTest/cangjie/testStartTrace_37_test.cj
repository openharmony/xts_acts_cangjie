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
class testStartTrace_37 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360100
     * @tc.name      : TestCase_3601
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3601(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3601 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3601 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360200
     * @tc.name      : TestCase_3602
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3602(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3602 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3602 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360300
     * @tc.name      : TestCase_3603
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3603(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3603 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3603 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360400
     * @tc.name      : TestCase_3604
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3604(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3604 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3604 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360500
     * @tc.name      : TestCase_3605
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3605(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3605 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3605 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360600
     * @tc.name      : TestCase_3606
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3606(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3606 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3606 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360700
     * @tc.name      : TestCase_3607
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3607(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3607 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3607 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360800
     * @tc.name      : TestCase_3608
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3608(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3608 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3608 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360900
     * @tc.name      : TestCase_3609
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3609(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3609 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3609 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361000
     * @tc.name      : TestCase_3610
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3610(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3610 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3610 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361100
     * @tc.name      : TestCase_3611
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3611(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3611 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3611 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361200
     * @tc.name      : TestCase_3612
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3612(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3612 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3612 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361300
     * @tc.name      : TestCase_3613
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3613(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3613 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3613 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361400
     * @tc.name      : TestCase_3614
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3614(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3614 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3614 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361500
     * @tc.name      : TestCase_3615
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3615(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3615 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3615 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361600
     * @tc.name      : TestCase_3616
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3616(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3616 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3616 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361700
     * @tc.name      : TestCase_3617
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3617(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3617 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3617 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361800
     * @tc.name      : TestCase_3618
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3618(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3618 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3618 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_361900
     * @tc.name      : TestCase_3619
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3619(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3619 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3619 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362000
     * @tc.name      : TestCase_3620
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3620(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3620 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3620 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362100
     * @tc.name      : TestCase_3621
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3621(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3621 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3621 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362200
     * @tc.name      : TestCase_3622
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3622(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3622 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3622 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362300
     * @tc.name      : TestCase_3623
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3623(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3623 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3623 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362400
     * @tc.name      : TestCase_3624
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3624(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3624 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3624 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362500
     * @tc.name      : TestCase_3625
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3625(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3625 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3625 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362600
     * @tc.name      : TestCase_3626
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3626(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3626 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3626 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362700
     * @tc.name      : TestCase_3627
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3627(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3627 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3627 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362800
     * @tc.name      : TestCase_3628
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3628(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3628 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3628 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_362900
     * @tc.name      : TestCase_3629
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3629(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3629 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3629 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363000
     * @tc.name      : TestCase_3630
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3630(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3630 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3630 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363100
     * @tc.name      : TestCase_3631
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3631(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3631 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3631 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363200
     * @tc.name      : TestCase_3632
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3632(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3632 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3632 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363300
     * @tc.name      : TestCase_3633
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3633(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3633 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3633 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363400
     * @tc.name      : TestCase_3634
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3634(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3634 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3634 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363500
     * @tc.name      : TestCase_3635
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3635(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3635 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3635 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363600
     * @tc.name      : TestCase_3636
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3636(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3636 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3636 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363700
     * @tc.name      : TestCase_3637
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3637(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3637 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3637 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363800
     * @tc.name      : TestCase_3638
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3638(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3638 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3638 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_363900
     * @tc.name      : TestCase_3639
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3639(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3639 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3639 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364000
     * @tc.name      : TestCase_3640
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3640(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3640 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3640 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364100
     * @tc.name      : TestCase_3641
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3641(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3641 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3641 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364200
     * @tc.name      : TestCase_3642
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3642(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3642 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3642 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364300
     * @tc.name      : TestCase_3643
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3643(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3643 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3643 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364400
     * @tc.name      : TestCase_3644
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3644(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3644 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3644 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364500
     * @tc.name      : TestCase_3645
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3645(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3645 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3645 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364600
     * @tc.name      : TestCase_3646
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3646(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3646 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3646 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364700
     * @tc.name      : TestCase_3647
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3647(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3647 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3647 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364800
     * @tc.name      : TestCase_3648
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3648(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3648 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3648 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_364900
     * @tc.name      : TestCase_3649
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3649(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3649 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3649 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365000
     * @tc.name      : TestCase_3650
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3650(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3650 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3650 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365100
     * @tc.name      : TestCase_3651
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3651(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3651 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3651 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365200
     * @tc.name      : TestCase_3652
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3652(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3652 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3652 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365300
     * @tc.name      : TestCase_3653
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3653(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3653 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3653 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365400
     * @tc.name      : TestCase_3654
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3654(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3654 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3654 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365500
     * @tc.name      : TestCase_3655
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3655(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3655 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3655 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365600
     * @tc.name      : TestCase_3656
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3656(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3656 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3656 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365700
     * @tc.name      : TestCase_3657
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3657(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3657 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3657 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365800
     * @tc.name      : TestCase_3658
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3658(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3658 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3658 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_365900
     * @tc.name      : TestCase_3659
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3659(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3659 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3659 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366000
     * @tc.name      : TestCase_3660
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3660(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3660 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3660 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366100
     * @tc.name      : TestCase_3661
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3661(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3661 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3661 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366200
     * @tc.name      : TestCase_3662
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3662(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3662 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3662 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366300
     * @tc.name      : TestCase_3663
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3663(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3663 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3663 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366400
     * @tc.name      : TestCase_3664
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3664(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3664 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3664 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366500
     * @tc.name      : TestCase_3665
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3665(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3665 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3665 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366600
     * @tc.name      : TestCase_3666
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3666(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3666 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3666 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366700
     * @tc.name      : TestCase_3667
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3667(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3667 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3667 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366800
     * @tc.name      : TestCase_3668
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3668(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3668 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3668 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_366900
     * @tc.name      : TestCase_3669
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3669(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3669 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3669 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367000
     * @tc.name      : TestCase_3670
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3670(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3670 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3670 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367100
     * @tc.name      : TestCase_3671
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3671(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3671 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3671 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367200
     * @tc.name      : TestCase_3672
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3672(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3672 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3672 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367300
     * @tc.name      : TestCase_3673
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3673(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3673 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3673 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367400
     * @tc.name      : TestCase_3674
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3674(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3674 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3674 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367500
     * @tc.name      : TestCase_3675
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3675(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3675 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3675 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367600
     * @tc.name      : TestCase_3676
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3676(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3676 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3676 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367700
     * @tc.name      : TestCase_3677
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3677(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3677 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3677 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367800
     * @tc.name      : TestCase_3678
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3678(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3678 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3678 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_367900
     * @tc.name      : TestCase_3679
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3679(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3679 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3679 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368000
     * @tc.name      : TestCase_3680
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3680(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3680 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3680 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368100
     * @tc.name      : TestCase_3681
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3681(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3681 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3681 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368200
     * @tc.name      : TestCase_3682
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3682(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3682 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3682 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368300
     * @tc.name      : TestCase_3683
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3683(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3683 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3683 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368400
     * @tc.name      : TestCase_3684
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3684(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3684 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3684 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368500
     * @tc.name      : TestCase_3685
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3685(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3685 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3685 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368600
     * @tc.name      : TestCase_3686
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3686(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3686 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3686 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368700
     * @tc.name      : TestCase_3687
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3687(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3687 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3687 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368800
     * @tc.name      : TestCase_3688
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3688(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3688 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3688 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_368900
     * @tc.name      : TestCase_3689
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3689(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3689 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3689 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369000
     * @tc.name      : TestCase_3690
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3690(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3690 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3690 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369100
     * @tc.name      : TestCase_3691
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3691(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3691 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3691 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369200
     * @tc.name      : TestCase_3692
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3692(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3692 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3692 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369300
     * @tc.name      : TestCase_3693
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3693(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3693 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3693 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369400
     * @tc.name      : TestCase_3694
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3694(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3694 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3694 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369500
     * @tc.name      : TestCase_3695
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3695(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3695 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3695 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369600
     * @tc.name      : TestCase_3696
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3696(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3696 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3696 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369700
     * @tc.name      : TestCase_3697
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3697(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3697 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3697 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369800
     * @tc.name      : TestCase_3698
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3698(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3698 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3698 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_369900
     * @tc.name      : TestCase_3699
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3699(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3699 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3699 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_370000
     * @tc.name      : TestCase_3700
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "9", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3700(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3700 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("9", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3700 ends.")
    }
}
