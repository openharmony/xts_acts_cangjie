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
class testFinishTrace_52 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510100
     * @tc.name      : TestCase_5101
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5101(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5101 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510200
     * @tc.name      : TestCase_5102
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5102(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5102 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510300
     * @tc.name      : TestCase_5103
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5103(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5103 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510400
     * @tc.name      : TestCase_5104
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5104(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5104 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510500
     * @tc.name      : TestCase_5105
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5105(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5105 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510600
     * @tc.name      : TestCase_5106
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5106(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5106 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510700
     * @tc.name      : TestCase_5107
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5107(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5107 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510800
     * @tc.name      : TestCase_5108
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5108(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5108 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_510900
     * @tc.name      : TestCase_5109
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5109(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5109 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511000
     * @tc.name      : TestCase_5110
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5110(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5110 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511100
     * @tc.name      : TestCase_5111
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5111(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5111 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511200
     * @tc.name      : TestCase_5112
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5112(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5112 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511300
     * @tc.name      : TestCase_5113
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5113(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5113 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511400
     * @tc.name      : TestCase_5114
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5114(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5114 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511500
     * @tc.name      : TestCase_5115
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5115(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5115 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511600
     * @tc.name      : TestCase_5116
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5116(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5116 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511700
     * @tc.name      : TestCase_5117
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5117(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5117 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511800
     * @tc.name      : TestCase_5118
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5118(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5118 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_511900
     * @tc.name      : TestCase_5119
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5119(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5119 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512000
     * @tc.name      : TestCase_5120
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5120(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5120 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512100
     * @tc.name      : TestCase_5121
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5121(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5121 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512200
     * @tc.name      : TestCase_5122
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5122(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5122 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512300
     * @tc.name      : TestCase_5123
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5123(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5123 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512400
     * @tc.name      : TestCase_5124
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5124(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5124 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512500
     * @tc.name      : TestCase_5125
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5125(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5125 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512600
     * @tc.name      : TestCase_5126
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5126(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5126 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512700
     * @tc.name      : TestCase_5127
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5127(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5127 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512800
     * @tc.name      : TestCase_5128
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5128(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5128 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_512900
     * @tc.name      : TestCase_5129
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5129(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5129 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513000
     * @tc.name      : TestCase_5130
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5130(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5130 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513100
     * @tc.name      : TestCase_5131
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5131(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5131 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513200
     * @tc.name      : TestCase_5132
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5132(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5132 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513300
     * @tc.name      : TestCase_5133
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5133(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5133 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513400
     * @tc.name      : TestCase_5134
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5134(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5134 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513500
     * @tc.name      : TestCase_5135
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5135(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5135 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513600
     * @tc.name      : TestCase_5136
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5136(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5136 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513700
     * @tc.name      : TestCase_5137
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5137(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5137 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513800
     * @tc.name      : TestCase_5138
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5138(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5138 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_513900
     * @tc.name      : TestCase_5139
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5139(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5139 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514000
     * @tc.name      : TestCase_5140
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5140(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5140 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514100
     * @tc.name      : TestCase_5141
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5141(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5141 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514200
     * @tc.name      : TestCase_5142
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5142(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5142 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514300
     * @tc.name      : TestCase_5143
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5143(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5143 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514400
     * @tc.name      : TestCase_5144
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5144(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5144 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514500
     * @tc.name      : TestCase_5145
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5145(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5145 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514600
     * @tc.name      : TestCase_5146
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5146(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5146 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514700
     * @tc.name      : TestCase_5147
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5147(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5147 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514800
     * @tc.name      : TestCase_5148
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5148(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5148 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_514900
     * @tc.name      : TestCase_5149
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5149(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5149 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515000
     * @tc.name      : TestCase_5150
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5150(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5150 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515100
     * @tc.name      : TestCase_5151
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5151(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5151 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515200
     * @tc.name      : TestCase_5152
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5152(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5152 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515300
     * @tc.name      : TestCase_5153
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5153(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5153 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515400
     * @tc.name      : TestCase_5154
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5154(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5154 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515500
     * @tc.name      : TestCase_5155
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5155(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5155 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515600
     * @tc.name      : TestCase_5156
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5156(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5156 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515700
     * @tc.name      : TestCase_5157
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5157(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5157 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515800
     * @tc.name      : TestCase_5158
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5158(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5158 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_515900
     * @tc.name      : TestCase_5159
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5159(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5159 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516000
     * @tc.name      : TestCase_5160
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5160(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5160 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516100
     * @tc.name      : TestCase_5161
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5161(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5161 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516200
     * @tc.name      : TestCase_5162
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5162(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5162 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516300
     * @tc.name      : TestCase_5163
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5163(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5163 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516400
     * @tc.name      : TestCase_5164
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5164(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5164 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516500
     * @tc.name      : TestCase_5165
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5165(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5165 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516600
     * @tc.name      : TestCase_5166
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5166(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5166 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516700
     * @tc.name      : TestCase_5167
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5167(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5167 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516800
     * @tc.name      : TestCase_5168
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5168(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5168 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_516900
     * @tc.name      : TestCase_5169
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5169(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5169 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517000
     * @tc.name      : TestCase_5170
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5170(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5170 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517100
     * @tc.name      : TestCase_5171
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5171(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5171 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517200
     * @tc.name      : TestCase_5172
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5172(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5172 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517300
     * @tc.name      : TestCase_5173
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5173(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5173 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517400
     * @tc.name      : TestCase_5174
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5174(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5174 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517500
     * @tc.name      : TestCase_5175
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5175(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5175 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517600
     * @tc.name      : TestCase_5176
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5176(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5176 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517700
     * @tc.name      : TestCase_5177
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5177(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5177 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517800
     * @tc.name      : TestCase_5178
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5178(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5178 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_517900
     * @tc.name      : TestCase_5179
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5179(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5179 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518000
     * @tc.name      : TestCase_5180
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5180(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5180 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518100
     * @tc.name      : TestCase_5181
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5181(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5181 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518200
     * @tc.name      : TestCase_5182
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5182(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5182 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518300
     * @tc.name      : TestCase_5183
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5183(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5183 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518400
     * @tc.name      : TestCase_5184
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5184(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5184 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518500
     * @tc.name      : TestCase_5185
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5185(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5185 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518600
     * @tc.name      : TestCase_5186
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5186(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5186 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518700
     * @tc.name      : TestCase_5187
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5187(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5187 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518800
     * @tc.name      : TestCase_5188
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5188(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5188 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_518900
     * @tc.name      : TestCase_5189
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5189(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5189 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519000
     * @tc.name      : TestCase_5190
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5190(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5190 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519100
     * @tc.name      : TestCase_5191
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5191(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5191 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519200
     * @tc.name      : TestCase_5192
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5192(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5192 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519300
     * @tc.name      : TestCase_5193
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5193(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5193 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519400
     * @tc.name      : TestCase_5194
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "24", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5194(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5194 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("24", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519500
     * @tc.name      : TestCase_5195
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "25", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5195(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5195 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("25", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519600
     * @tc.name      : TestCase_5196
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "25", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5196(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5196 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("25", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519700
     * @tc.name      : TestCase_5197
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "25", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5197(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5197 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("25", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519800
     * @tc.name      : TestCase_5198
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "25", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5198(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5198 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("25", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_519900
     * @tc.name      : TestCase_5199
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "25", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5199(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5199 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("25", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_520000
     * @tc.name      : TestCase_5200
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "25", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5200(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5200 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("25", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5200 ends.")
    }
}
