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
class testStartTrace_2 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_114 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_115 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_116 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_117 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_118 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_119 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_120 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_121 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_122 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_123 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_124 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_125 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_126 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_127 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_128 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_129 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_130 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_131 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_132 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_133 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_134 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_135 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_136 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_137 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_138 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_139 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_140 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_141 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_142 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_143 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_144 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_145 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_146 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_147 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_148 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_149 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_150 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_151 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_152 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_153 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_154 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_155 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_156 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_157 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_158 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_159 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_160 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_161 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_162 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_163 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_164 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_165 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_166 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_167 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_168 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_169 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_170 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_171 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_172 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_173 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_174 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_175 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_176 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_177 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_178 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_179 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_180 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_181 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_182 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_183 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_184 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_185 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_186 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_187 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_188 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_189 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_190 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_191 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_192 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_193 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_194 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_195 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "xxx", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_196 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("xxx", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "0", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_197 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("0", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "0", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_198 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("0", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "0", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_199 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("0", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "0", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_200 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("0", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_200 ends.")
    }
}
