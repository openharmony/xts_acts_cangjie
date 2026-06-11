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
class testFinishTrace_29 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280100
     * @tc.name      : TestCase_2801
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2801(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2801 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280200
     * @tc.name      : TestCase_2802
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2802(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2802 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280300
     * @tc.name      : TestCase_2803
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2803(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2803 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280400
     * @tc.name      : TestCase_2804
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2804(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2804 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280500
     * @tc.name      : TestCase_2805
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2805(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2805 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280600
     * @tc.name      : TestCase_2806
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2806(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2806 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280700
     * @tc.name      : TestCase_2807
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2807(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2807 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280800
     * @tc.name      : TestCase_2808
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2808(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2808 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_280900
     * @tc.name      : TestCase_2809
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2809(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2809 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281000
     * @tc.name      : TestCase_2810
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2810(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2810 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281100
     * @tc.name      : TestCase_2811
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2811(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2811 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281200
     * @tc.name      : TestCase_2812
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2812(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2812 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281300
     * @tc.name      : TestCase_2813
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2813(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2813 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281400
     * @tc.name      : TestCase_2814
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2814(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2814 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281500
     * @tc.name      : TestCase_2815
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2815(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2815 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281600
     * @tc.name      : TestCase_2816
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2816(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2816 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281700
     * @tc.name      : TestCase_2817
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2817(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2817 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281800
     * @tc.name      : TestCase_2818
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2818(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2818 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_281900
     * @tc.name      : TestCase_2819
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2819(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2819 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282000
     * @tc.name      : TestCase_2820
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2820(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2820 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282100
     * @tc.name      : TestCase_2821
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2821(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2821 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282200
     * @tc.name      : TestCase_2822
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2822(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2822 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282300
     * @tc.name      : TestCase_2823
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2823(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2823 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282400
     * @tc.name      : TestCase_2824
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2824(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2824 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282500
     * @tc.name      : TestCase_2825
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2825(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2825 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282600
     * @tc.name      : TestCase_2826
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2826(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2826 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282700
     * @tc.name      : TestCase_2827
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2827(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2827 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282800
     * @tc.name      : TestCase_2828
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2828(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2828 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_282900
     * @tc.name      : TestCase_2829
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2829(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2829 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283000
     * @tc.name      : TestCase_2830
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2830(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2830 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283100
     * @tc.name      : TestCase_2831
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2831(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2831 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283200
     * @tc.name      : TestCase_2832
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2832(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2832 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283300
     * @tc.name      : TestCase_2833
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2833(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2833 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283400
     * @tc.name      : TestCase_2834
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2834(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2834 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283500
     * @tc.name      : TestCase_2835
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2835(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2835 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283600
     * @tc.name      : TestCase_2836
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2836(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2836 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283700
     * @tc.name      : TestCase_2837
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2837(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2837 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283800
     * @tc.name      : TestCase_2838
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2838(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2838 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_283900
     * @tc.name      : TestCase_2839
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2839(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2839 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284000
     * @tc.name      : TestCase_2840
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2840(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2840 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284100
     * @tc.name      : TestCase_2841
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2841(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2841 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284200
     * @tc.name      : TestCase_2842
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "z", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2842(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2842 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("z", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284300
     * @tc.name      : TestCase_2843
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2843(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2843 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284400
     * @tc.name      : TestCase_2844
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2844(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2844 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284500
     * @tc.name      : TestCase_2845
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2845(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2845 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284600
     * @tc.name      : TestCase_2846
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2846(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2846 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284700
     * @tc.name      : TestCase_2847
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2847(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2847 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284800
     * @tc.name      : TestCase_2848
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2848(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2848 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_284900
     * @tc.name      : TestCase_2849
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2849(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2849 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285000
     * @tc.name      : TestCase_2850
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2850(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2850 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285100
     * @tc.name      : TestCase_2851
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2851(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2851 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285200
     * @tc.name      : TestCase_2852
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2852(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2852 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285300
     * @tc.name      : TestCase_2853
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2853(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2853 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285400
     * @tc.name      : TestCase_2854
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2854(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2854 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285500
     * @tc.name      : TestCase_2855
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2855(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2855 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285600
     * @tc.name      : TestCase_2856
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2856(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2856 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285700
     * @tc.name      : TestCase_2857
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2857(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2857 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285800
     * @tc.name      : TestCase_2858
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2858(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2858 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_285900
     * @tc.name      : TestCase_2859
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2859(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2859 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286000
     * @tc.name      : TestCase_2860
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2860(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2860 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286100
     * @tc.name      : TestCase_2861
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2861(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2861 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286200
     * @tc.name      : TestCase_2862
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2862(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2862 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286300
     * @tc.name      : TestCase_2863
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2863(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2863 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286400
     * @tc.name      : TestCase_2864
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2864(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2864 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286500
     * @tc.name      : TestCase_2865
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2865(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2865 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286600
     * @tc.name      : TestCase_2866
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2866(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2866 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286700
     * @tc.name      : TestCase_2867
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2867(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2867 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286800
     * @tc.name      : TestCase_2868
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2868(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2868 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_286900
     * @tc.name      : TestCase_2869
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2869(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2869 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287000
     * @tc.name      : TestCase_2870
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2870(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2870 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287100
     * @tc.name      : TestCase_2871
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2871(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2871 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287200
     * @tc.name      : TestCase_2872
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2872(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2872 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287300
     * @tc.name      : TestCase_2873
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2873(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2873 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287400
     * @tc.name      : TestCase_2874
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2874(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2874 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287500
     * @tc.name      : TestCase_2875
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2875(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2875 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287600
     * @tc.name      : TestCase_2876
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2876(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2876 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287700
     * @tc.name      : TestCase_2877
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2877(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2877 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287800
     * @tc.name      : TestCase_2878
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2878(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2878 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_287900
     * @tc.name      : TestCase_2879
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2879(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2879 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288000
     * @tc.name      : TestCase_2880
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2880(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2880 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288100
     * @tc.name      : TestCase_2881
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2881(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2881 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288200
     * @tc.name      : TestCase_2882
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2882(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2882 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288300
     * @tc.name      : TestCase_2883
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2883(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2883 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288400
     * @tc.name      : TestCase_2884
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2884(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2884 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288500
     * @tc.name      : TestCase_2885
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2885(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2885 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288600
     * @tc.name      : TestCase_2886
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2886(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2886 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288700
     * @tc.name      : TestCase_2887
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2887(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2887 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288800
     * @tc.name      : TestCase_2888
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2888(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2888 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_288900
     * @tc.name      : TestCase_2889
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2889(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2889 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289000
     * @tc.name      : TestCase_2890
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2890(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2890 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289100
     * @tc.name      : TestCase_2891
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2891(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2891 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289200
     * @tc.name      : TestCase_2892
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2892(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2892 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289300
     * @tc.name      : TestCase_2893
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2893(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2893 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289400
     * @tc.name      : TestCase_2894
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2894(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2894 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289500
     * @tc.name      : TestCase_2895
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2895(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2895 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289600
     * @tc.name      : TestCase_2896
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2896(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2896 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289700
     * @tc.name      : TestCase_2897
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2897(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2897 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289800
     * @tc.name      : TestCase_2898
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2898(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2898 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_289900
     * @tc.name      : TestCase_2899
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2899(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2899 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_290000
     * @tc.name      : TestCase_2900
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "1", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2900(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2900 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("1", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2900 ends.")
    }
}
