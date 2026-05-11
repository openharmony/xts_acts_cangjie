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
class testFinishTrace_32 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310100
     * @tc.name      : TestCase_3101
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3101(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3101 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310200
     * @tc.name      : TestCase_3102
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3102(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3102 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310300
     * @tc.name      : TestCase_3103
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3103(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3103 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310400
     * @tc.name      : TestCase_3104
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3104(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3104 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310500
     * @tc.name      : TestCase_3105
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3105(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3105 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310600
     * @tc.name      : TestCase_3106
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3106(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3106 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310700
     * @tc.name      : TestCase_3107
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3107(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3107 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310800
     * @tc.name      : TestCase_3108
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3108(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3108 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_310900
     * @tc.name      : TestCase_3109
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3109(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3109 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311000
     * @tc.name      : TestCase_3110
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3110(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3110 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311100
     * @tc.name      : TestCase_3111
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3111(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3111 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311200
     * @tc.name      : TestCase_3112
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3112(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3112 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311300
     * @tc.name      : TestCase_3113
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3113(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3113 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311400
     * @tc.name      : TestCase_3114
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3114(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3114 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311500
     * @tc.name      : TestCase_3115
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3115(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3115 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311600
     * @tc.name      : TestCase_3116
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3116(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3116 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311700
     * @tc.name      : TestCase_3117
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3117(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3117 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311800
     * @tc.name      : TestCase_3118
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3118(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3118 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_311900
     * @tc.name      : TestCase_3119
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3119(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3119 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312000
     * @tc.name      : TestCase_3120
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3120(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3120 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312100
     * @tc.name      : TestCase_3121
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3121(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3121 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312200
     * @tc.name      : TestCase_3122
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3122(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3122 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312300
     * @tc.name      : TestCase_3123
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3123(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3123 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312400
     * @tc.name      : TestCase_3124
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3124(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3124 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312500
     * @tc.name      : TestCase_3125
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3125(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3125 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312600
     * @tc.name      : TestCase_3126
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3126(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3126 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312700
     * @tc.name      : TestCase_3127
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3127(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3127 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312800
     * @tc.name      : TestCase_3128
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3128(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3128 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_312900
     * @tc.name      : TestCase_3129
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3129(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3129 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313000
     * @tc.name      : TestCase_3130
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3130(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3130 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313100
     * @tc.name      : TestCase_3131
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3131(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3131 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313200
     * @tc.name      : TestCase_3132
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3132(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3132 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313300
     * @tc.name      : TestCase_3133
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3133(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3133 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313400
     * @tc.name      : TestCase_3134
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3134(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3134 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313500
     * @tc.name      : TestCase_3135
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3135(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3135 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313600
     * @tc.name      : TestCase_3136
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "3", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3136(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3136 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("3", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313700
     * @tc.name      : TestCase_3137
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3137(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3137 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313800
     * @tc.name      : TestCase_3138
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3138(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3138 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_313900
     * @tc.name      : TestCase_3139
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3139(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3139 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314000
     * @tc.name      : TestCase_3140
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3140(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3140 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314100
     * @tc.name      : TestCase_3141
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3141(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3141 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314200
     * @tc.name      : TestCase_3142
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3142(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3142 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314300
     * @tc.name      : TestCase_3143
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3143(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3143 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314400
     * @tc.name      : TestCase_3144
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3144(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3144 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314500
     * @tc.name      : TestCase_3145
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3145(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3145 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314600
     * @tc.name      : TestCase_3146
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3146(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3146 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314700
     * @tc.name      : TestCase_3147
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3147(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3147 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314800
     * @tc.name      : TestCase_3148
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3148(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3148 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_314900
     * @tc.name      : TestCase_3149
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3149(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3149 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315000
     * @tc.name      : TestCase_3150
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3150(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3150 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315100
     * @tc.name      : TestCase_3151
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3151(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3151 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315200
     * @tc.name      : TestCase_3152
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3152(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3152 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315300
     * @tc.name      : TestCase_3153
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3153(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3153 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315400
     * @tc.name      : TestCase_3154
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3154(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3154 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315500
     * @tc.name      : TestCase_3155
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3155(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3155 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315600
     * @tc.name      : TestCase_3156
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3156(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3156 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315700
     * @tc.name      : TestCase_3157
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3157(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3157 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315800
     * @tc.name      : TestCase_3158
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3158(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3158 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_315900
     * @tc.name      : TestCase_3159
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3159(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3159 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316000
     * @tc.name      : TestCase_3160
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3160(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3160 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316100
     * @tc.name      : TestCase_3161
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3161(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3161 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316200
     * @tc.name      : TestCase_3162
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3162(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3162 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316300
     * @tc.name      : TestCase_3163
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3163(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3163 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316400
     * @tc.name      : TestCase_3164
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3164(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3164 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316500
     * @tc.name      : TestCase_3165
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3165(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3165 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316600
     * @tc.name      : TestCase_3166
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3166(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3166 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316700
     * @tc.name      : TestCase_3167
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3167(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3167 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316800
     * @tc.name      : TestCase_3168
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3168(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3168 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_316900
     * @tc.name      : TestCase_3169
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3169(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3169 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317000
     * @tc.name      : TestCase_3170
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3170(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3170 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317100
     * @tc.name      : TestCase_3171
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3171(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3171 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317200
     * @tc.name      : TestCase_3172
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3172(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3172 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317300
     * @tc.name      : TestCase_3173
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3173(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3173 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317400
     * @tc.name      : TestCase_3174
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3174(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3174 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317500
     * @tc.name      : TestCase_3175
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3175(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3175 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317600
     * @tc.name      : TestCase_3176
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3176(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3176 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317700
     * @tc.name      : TestCase_3177
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3177(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3177 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317800
     * @tc.name      : TestCase_3178
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3178(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3178 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_317900
     * @tc.name      : TestCase_3179
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3179(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3179 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318000
     * @tc.name      : TestCase_3180
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3180(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3180 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318100
     * @tc.name      : TestCase_3181
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3181(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3181 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318200
     * @tc.name      : TestCase_3182
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3182(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3182 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318300
     * @tc.name      : TestCase_3183
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3183(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3183 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318400
     * @tc.name      : TestCase_3184
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3184(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3184 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318500
     * @tc.name      : TestCase_3185
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3185(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3185 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318600
     * @tc.name      : TestCase_3186
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3186(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3186 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318700
     * @tc.name      : TestCase_3187
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3187(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3187 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318800
     * @tc.name      : TestCase_3188
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3188(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3188 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_318900
     * @tc.name      : TestCase_3189
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3189(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3189 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319000
     * @tc.name      : TestCase_3190
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3190(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3190 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319100
     * @tc.name      : TestCase_3191
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3191(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3191 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319200
     * @tc.name      : TestCase_3192
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3192(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3192 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319300
     * @tc.name      : TestCase_3193
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3193(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3193 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319400
     * @tc.name      : TestCase_3194
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3194(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3194 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319500
     * @tc.name      : TestCase_3195
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3195(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3195 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319600
     * @tc.name      : TestCase_3196
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3196(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3196 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319700
     * @tc.name      : TestCase_3197
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3197(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3197 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319800
     * @tc.name      : TestCase_3198
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3198(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3198 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_319900
     * @tc.name      : TestCase_3199
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3199(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3199 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_320000
     * @tc.name      : TestCase_3200
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "4", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3200(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3200 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("4", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3200 ends.")
    }
}
