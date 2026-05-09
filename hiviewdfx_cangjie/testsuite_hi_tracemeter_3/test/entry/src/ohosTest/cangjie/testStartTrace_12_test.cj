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
class testStartTrace_12 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110100
     * @tc.name      : TestCase_1101
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1101(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1101 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110200
     * @tc.name      : TestCase_1102
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1102(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1102 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110300
     * @tc.name      : TestCase_1103
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1103(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1103 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110400
     * @tc.name      : TestCase_1104
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1104(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1104 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110500
     * @tc.name      : TestCase_1105
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1105(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1105 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110600
     * @tc.name      : TestCase_1106
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1106(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1106 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110700
     * @tc.name      : TestCase_1107
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1107(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1107 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110800
     * @tc.name      : TestCase_1108
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1108(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1108 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110900
     * @tc.name      : TestCase_1109
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1109(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1109 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111000
     * @tc.name      : TestCase_1110
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1110(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1110 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111100
     * @tc.name      : TestCase_1111
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1111(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1111 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111200
     * @tc.name      : TestCase_1112
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1112(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1112 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111300
     * @tc.name      : TestCase_1113
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1113(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1113 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111400
     * @tc.name      : TestCase_1114
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1114(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1114 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111500
     * @tc.name      : TestCase_1115
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1115(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1115 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111600
     * @tc.name      : TestCase_1116
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1116(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1116 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111700
     * @tc.name      : TestCase_1117
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1117(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1117 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111800
     * @tc.name      : TestCase_1118
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1118(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1118 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_111900
     * @tc.name      : TestCase_1119
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1119(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1119 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112000
     * @tc.name      : TestCase_1120
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1120(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1120 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112100
     * @tc.name      : TestCase_1121
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1121(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1121 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112200
     * @tc.name      : TestCase_1122
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1122(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1122 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112300
     * @tc.name      : TestCase_1123
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1123(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1123 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112400
     * @tc.name      : TestCase_1124
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1124(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1124 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112500
     * @tc.name      : TestCase_1125
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1125(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1125 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112600
     * @tc.name      : TestCase_1126
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1126(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1126 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112700
     * @tc.name      : TestCase_1127
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1127(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1127 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112800
     * @tc.name      : TestCase_1128
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1128(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1128 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_112900
     * @tc.name      : TestCase_1129
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1129(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1129 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113000
     * @tc.name      : TestCase_1130
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1130(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1130 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113100
     * @tc.name      : TestCase_1131
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1131(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1131 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113200
     * @tc.name      : TestCase_1132
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1132(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1132 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113300
     * @tc.name      : TestCase_1133
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1133(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1133 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113400
     * @tc.name      : TestCase_1134
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1134(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1134 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113500
     * @tc.name      : TestCase_1135
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1135(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1135 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113600
     * @tc.name      : TestCase_1136
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1136(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1136 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113700
     * @tc.name      : TestCase_1137
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1137(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1137 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113800
     * @tc.name      : TestCase_1138
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1138(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1138 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_113900
     * @tc.name      : TestCase_1139
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1139(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1139 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114000
     * @tc.name      : TestCase_1140
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1140(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1140 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114100
     * @tc.name      : TestCase_1141
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1141(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1141 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114200
     * @tc.name      : TestCase_1142
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1142(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1142 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114300
     * @tc.name      : TestCase_1143
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1143(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1143 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114400
     * @tc.name      : TestCase_1144
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1144(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1144 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114500
     * @tc.name      : TestCase_1145
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1145(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1145 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114600
     * @tc.name      : TestCase_1146
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1146(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1146 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114700
     * @tc.name      : TestCase_1147
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1147(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1147 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114800
     * @tc.name      : TestCase_1148
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1148(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1148 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_114900
     * @tc.name      : TestCase_1149
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1149(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1149 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115000
     * @tc.name      : TestCase_1150
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1150(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1150 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115100
     * @tc.name      : TestCase_1151
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1151(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1151 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115200
     * @tc.name      : TestCase_1152
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1152(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1152 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115300
     * @tc.name      : TestCase_1153
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1153(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1153 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115400
     * @tc.name      : TestCase_1154
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1154(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1154 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115500
     * @tc.name      : TestCase_1155
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1155(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1155 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115600
     * @tc.name      : TestCase_1156
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1156(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1156 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115700
     * @tc.name      : TestCase_1157
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1157(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1157 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115800
     * @tc.name      : TestCase_1158
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1158(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1158 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_115900
     * @tc.name      : TestCase_1159
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1159(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1159 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116000
     * @tc.name      : TestCase_1160
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1160(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1160 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116100
     * @tc.name      : TestCase_1161
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1161(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1161 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116200
     * @tc.name      : TestCase_1162
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1162(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1162 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116300
     * @tc.name      : TestCase_1163
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1163(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1163 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116400
     * @tc.name      : TestCase_1164
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1164(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1164 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116500
     * @tc.name      : TestCase_1165
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1165(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1165 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116600
     * @tc.name      : TestCase_1166
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1166(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1166 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116700
     * @tc.name      : TestCase_1167
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1167(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1167 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116800
     * @tc.name      : TestCase_1168
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1168(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1168 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_116900
     * @tc.name      : TestCase_1169
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1169(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1169 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117000
     * @tc.name      : TestCase_1170
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1170(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1170 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117100
     * @tc.name      : TestCase_1171
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1171(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1171 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117200
     * @tc.name      : TestCase_1172
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1172(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1172 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117300
     * @tc.name      : TestCase_1173
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1173(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1173 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117400
     * @tc.name      : TestCase_1174
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1174(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1174 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117500
     * @tc.name      : TestCase_1175
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1175(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1175 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117600
     * @tc.name      : TestCase_1176
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1176(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1176 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117700
     * @tc.name      : TestCase_1177
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1177(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1177 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117800
     * @tc.name      : TestCase_1178
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1178(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1178 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_117900
     * @tc.name      : TestCase_1179
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1179(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1179 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118000
     * @tc.name      : TestCase_1180
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1180(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1180 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118100
     * @tc.name      : TestCase_1181
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1181(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1181 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118200
     * @tc.name      : TestCase_1182
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1182(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1182 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118300
     * @tc.name      : TestCase_1183
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1183(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1183 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118400
     * @tc.name      : TestCase_1184
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1184(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1184 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118500
     * @tc.name      : TestCase_1185
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1185(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1185 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118600
     * @tc.name      : TestCase_1186
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1186(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1186 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118700
     * @tc.name      : TestCase_1187
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1187(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1187 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118800
     * @tc.name      : TestCase_1188
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1188(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1188 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_118900
     * @tc.name      : TestCase_1189
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1189(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1189 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119000
     * @tc.name      : TestCase_1190
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1190(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1190 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119100
     * @tc.name      : TestCase_1191
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1191(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1191 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119200
     * @tc.name      : TestCase_1192
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1192(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1192 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119300
     * @tc.name      : TestCase_1193
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1193(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1193 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119400
     * @tc.name      : TestCase_1194
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1194(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1194 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119500
     * @tc.name      : TestCase_1195
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1195(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1195 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119600
     * @tc.name      : TestCase_1196
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1196(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1196 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119700
     * @tc.name      : TestCase_1197
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1197(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1197 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119800
     * @tc.name      : TestCase_1198
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1198(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1198 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_119900
     * @tc.name      : TestCase_1199
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1199(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1199 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120000
     * @tc.name      : TestCase_1200
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1200(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1200 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1200 ends.")
    }
}
