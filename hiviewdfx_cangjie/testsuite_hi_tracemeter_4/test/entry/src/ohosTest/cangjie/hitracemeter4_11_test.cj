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
class testStartTrace_28 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270100
     * @tc.name      : TestCase_2701
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2701(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2701 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270200
     * @tc.name      : TestCase_2702
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2702(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2702 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270300
     * @tc.name      : TestCase_2703
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2703(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2703 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270400
     * @tc.name      : TestCase_2704
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2704(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2704 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270500
     * @tc.name      : TestCase_2705
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2705(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2705 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270600
     * @tc.name      : TestCase_2706
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2706(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2706 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270700
     * @tc.name      : TestCase_2707
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2707(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2707 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270800
     * @tc.name      : TestCase_2708
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2708(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2708 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_270900
     * @tc.name      : TestCase_2709
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2709(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2709 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271000
     * @tc.name      : TestCase_2710
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2710(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2710 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271100
     * @tc.name      : TestCase_2711
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2711(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2711 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271200
     * @tc.name      : TestCase_2712
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2712(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2712 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271300
     * @tc.name      : TestCase_2713
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2713(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2713 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271400
     * @tc.name      : TestCase_2714
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2714(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2714 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271500
     * @tc.name      : TestCase_2715
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2715(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2715 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271600
     * @tc.name      : TestCase_2716
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2716(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2716 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271700
     * @tc.name      : TestCase_2717
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2717(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2717 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271800
     * @tc.name      : TestCase_2718
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2718(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2718 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_271900
     * @tc.name      : TestCase_2719
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2719(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2719 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272000
     * @tc.name      : TestCase_2720
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2720(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2720 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272100
     * @tc.name      : TestCase_2721
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2721(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2721 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272200
     * @tc.name      : TestCase_2722
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2722(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2722 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272300
     * @tc.name      : TestCase_2723
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2723(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2723 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272400
     * @tc.name      : TestCase_2724
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2724(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2724 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272500
     * @tc.name      : TestCase_2725
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2725(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2725 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272600
     * @tc.name      : TestCase_2726
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2726(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2726 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272700
     * @tc.name      : TestCase_2727
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2727(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2727 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272800
     * @tc.name      : TestCase_2728
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2728(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2728 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_272900
     * @tc.name      : TestCase_2729
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2729(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2729 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273000
     * @tc.name      : TestCase_2730
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2730(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2730 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273100
     * @tc.name      : TestCase_2731
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2731(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2731 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273200
     * @tc.name      : TestCase_2732
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2732(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2732 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273300
     * @tc.name      : TestCase_2733
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2733(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2733 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273400
     * @tc.name      : TestCase_2734
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2734(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2734 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273500
     * @tc.name      : TestCase_2735
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2735(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2735 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273600
     * @tc.name      : TestCase_2736
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2736(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2736 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273700
     * @tc.name      : TestCase_2737
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2737(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2737 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273800
     * @tc.name      : TestCase_2738
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2738(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2738 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_273900
     * @tc.name      : TestCase_2739
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2739(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2739 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274000
     * @tc.name      : TestCase_2740
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2740(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2740 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274100
     * @tc.name      : TestCase_2741
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2741(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2741 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274200
     * @tc.name      : TestCase_2742
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2742(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2742 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274300
     * @tc.name      : TestCase_2743
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2743(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2743 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274400
     * @tc.name      : TestCase_2744
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "y", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2744(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2744 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("y", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274500
     * @tc.name      : TestCase_2745
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2745(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2745 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274600
     * @tc.name      : TestCase_2746
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2746(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2746 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274700
     * @tc.name      : TestCase_2747
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2747(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2747 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274800
     * @tc.name      : TestCase_2748
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2748(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2748 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_274900
     * @tc.name      : TestCase_2749
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2749(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2749 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275000
     * @tc.name      : TestCase_2750
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2750(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2750 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275100
     * @tc.name      : TestCase_2751
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2751(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2751 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275200
     * @tc.name      : TestCase_2752
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2752(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2752 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275300
     * @tc.name      : TestCase_2753
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2753(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2753 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275400
     * @tc.name      : TestCase_2754
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2754(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2754 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275500
     * @tc.name      : TestCase_2755
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2755(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2755 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275600
     * @tc.name      : TestCase_2756
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2756(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2756 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275700
     * @tc.name      : TestCase_2757
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2757(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2757 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275800
     * @tc.name      : TestCase_2758
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2758(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2758 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_275900
     * @tc.name      : TestCase_2759
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2759(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2759 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276000
     * @tc.name      : TestCase_2760
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2760(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2760 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276100
     * @tc.name      : TestCase_2761
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2761(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2761 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276200
     * @tc.name      : TestCase_2762
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2762(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2762 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276300
     * @tc.name      : TestCase_2763
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2763(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2763 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276400
     * @tc.name      : TestCase_2764
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2764(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2764 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276500
     * @tc.name      : TestCase_2765
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2765(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2765 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276600
     * @tc.name      : TestCase_2766
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2766(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2766 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276700
     * @tc.name      : TestCase_2767
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2767(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2767 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276800
     * @tc.name      : TestCase_2768
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2768(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2768 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_276900
     * @tc.name      : TestCase_2769
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2769(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2769 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277000
     * @tc.name      : TestCase_2770
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2770(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2770 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277100
     * @tc.name      : TestCase_2771
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2771(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2771 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277200
     * @tc.name      : TestCase_2772
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2772(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2772 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277300
     * @tc.name      : TestCase_2773
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2773(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2773 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277400
     * @tc.name      : TestCase_2774
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2774(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2774 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277500
     * @tc.name      : TestCase_2775
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2775(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2775 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277600
     * @tc.name      : TestCase_2776
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2776(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2776 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277700
     * @tc.name      : TestCase_2777
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2777(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2777 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277800
     * @tc.name      : TestCase_2778
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2778(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2778 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_277900
     * @tc.name      : TestCase_2779
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2779(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2779 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278000
     * @tc.name      : TestCase_2780
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2780(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2780 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278100
     * @tc.name      : TestCase_2781
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2781(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2781 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278200
     * @tc.name      : TestCase_2782
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2782(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2782 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278300
     * @tc.name      : TestCase_2783
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2783(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2783 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278400
     * @tc.name      : TestCase_2784
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2784(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2784 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278500
     * @tc.name      : TestCase_2785
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2785(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2785 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278600
     * @tc.name      : TestCase_2786
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2786(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2786 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278700
     * @tc.name      : TestCase_2787
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2787(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2787 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278800
     * @tc.name      : TestCase_2788
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2788(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2788 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_278900
     * @tc.name      : TestCase_2789
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2789(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2789 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279000
     * @tc.name      : TestCase_2790
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2790(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2790 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279100
     * @tc.name      : TestCase_2791
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2791(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2791 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279200
     * @tc.name      : TestCase_2792
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2792(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2792 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279300
     * @tc.name      : TestCase_2793
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2793(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2793 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279400
     * @tc.name      : TestCase_2794
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2794(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2794 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279500
     * @tc.name      : TestCase_2795
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2795(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2795 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279600
     * @tc.name      : TestCase_2796
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2796(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2796 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279700
     * @tc.name      : TestCase_2797
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2797(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2797 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279800
     * @tc.name      : TestCase_2798
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2798(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2798 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_279900
     * @tc.name      : TestCase_2799
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2799(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2799 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_280000
     * @tc.name      : TestCase_2800
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "z", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2800(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2800 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("z", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2800 ends.")
    }
}
