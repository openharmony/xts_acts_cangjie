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
class testStartTrace_13 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120100
     * @tc.name      : TestCase_1201
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1201(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1201 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120200
     * @tc.name      : TestCase_1202
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1202(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1202 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120300
     * @tc.name      : TestCase_1203
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1203(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1203 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120400
     * @tc.name      : TestCase_1204
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1204(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1204 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120500
     * @tc.name      : TestCase_1205
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1205(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1205 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120600
     * @tc.name      : TestCase_1206
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1206(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1206 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120700
     * @tc.name      : TestCase_1207
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1207(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1207 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120800
     * @tc.name      : TestCase_1208
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1208(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1208 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_120900
     * @tc.name      : TestCase_1209
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1209(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1209 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121000
     * @tc.name      : TestCase_1210
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1210(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1210 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121100
     * @tc.name      : TestCase_1211
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1211(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1211 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121200
     * @tc.name      : TestCase_1212
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1212(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1212 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121300
     * @tc.name      : TestCase_1213
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1213(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1213 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121400
     * @tc.name      : TestCase_1214
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1214(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1214 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121500
     * @tc.name      : TestCase_1215
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1215(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1215 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121600
     * @tc.name      : TestCase_1216
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1216(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1216 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121700
     * @tc.name      : TestCase_1217
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1217(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1217 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121800
     * @tc.name      : TestCase_1218
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1218(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1218 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_121900
     * @tc.name      : TestCase_1219
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1219(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1219 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122000
     * @tc.name      : TestCase_1220
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1220(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1220 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122100
     * @tc.name      : TestCase_1221
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1221(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1221 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122200
     * @tc.name      : TestCase_1222
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1222(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1222 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122300
     * @tc.name      : TestCase_1223
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1223(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1223 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122400
     * @tc.name      : TestCase_1224
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1224(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1224 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122500
     * @tc.name      : TestCase_1225
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1225(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1225 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122600
     * @tc.name      : TestCase_1226
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1226(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1226 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122700
     * @tc.name      : TestCase_1227
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1227(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1227 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122800
     * @tc.name      : TestCase_1228
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1228(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1228 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_122900
     * @tc.name      : TestCase_1229
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1229(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1229 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123000
     * @tc.name      : TestCase_1230
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1230(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1230 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123100
     * @tc.name      : TestCase_1231
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1231(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1231 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123200
     * @tc.name      : TestCase_1232
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1232(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1232 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123300
     * @tc.name      : TestCase_1233
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1233(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1233 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123400
     * @tc.name      : TestCase_1234
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1234(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1234 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123500
     * @tc.name      : TestCase_1235
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1235(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1235 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123600
     * @tc.name      : TestCase_1236
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1236(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1236 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123700
     * @tc.name      : TestCase_1237
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1237(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1237 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123800
     * @tc.name      : TestCase_1238
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1238(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1238 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_123900
     * @tc.name      : TestCase_1239
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1239(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1239 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124000
     * @tc.name      : TestCase_1240
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1240(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1240 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124100
     * @tc.name      : TestCase_1241
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1241(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1241 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124200
     * @tc.name      : TestCase_1242
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1242(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1242 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124300
     * @tc.name      : TestCase_1243
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1243(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1243 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124400
     * @tc.name      : TestCase_1244
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1244(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1244 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124500
     * @tc.name      : TestCase_1245
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1245(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1245 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124600
     * @tc.name      : TestCase_1246
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1246(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1246 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124700
     * @tc.name      : TestCase_1247
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1247(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1247 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124800
     * @tc.name      : TestCase_1248
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1248(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1248 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_124900
     * @tc.name      : TestCase_1249
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1249(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1249 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125000
     * @tc.name      : TestCase_1250
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1250(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1250 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125100
     * @tc.name      : TestCase_1251
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1251(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1251 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125200
     * @tc.name      : TestCase_1252
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1252(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1252 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125300
     * @tc.name      : TestCase_1253
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1253(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1253 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125400
     * @tc.name      : TestCase_1254
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1254(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1254 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125500
     * @tc.name      : TestCase_1255
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1255(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1255 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125600
     * @tc.name      : TestCase_1256
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1256(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1256 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125700
     * @tc.name      : TestCase_1257
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1257(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1257 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125800
     * @tc.name      : TestCase_1258
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1258(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1258 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_125900
     * @tc.name      : TestCase_1259
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1259(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1259 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126000
     * @tc.name      : TestCase_1260
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1260(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1260 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126100
     * @tc.name      : TestCase_1261
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1261(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1261 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126200
     * @tc.name      : TestCase_1262
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1262(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1262 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126300
     * @tc.name      : TestCase_1263
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1263(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1263 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126400
     * @tc.name      : TestCase_1264
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1264(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1264 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126500
     * @tc.name      : TestCase_1265
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1265(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1265 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126600
     * @tc.name      : TestCase_1266
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1266(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1266 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126700
     * @tc.name      : TestCase_1267
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1267(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1267 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126800
     * @tc.name      : TestCase_1268
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1268(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1268 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_126900
     * @tc.name      : TestCase_1269
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1269(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1269 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127000
     * @tc.name      : TestCase_1270
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1270(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1270 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127100
     * @tc.name      : TestCase_1271
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1271(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1271 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127200
     * @tc.name      : TestCase_1272
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1272(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1272 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127300
     * @tc.name      : TestCase_1273
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1273(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1273 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127400
     * @tc.name      : TestCase_1274
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "j", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1274(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1274 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("j", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127500
     * @tc.name      : TestCase_1275
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1275(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1275 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127600
     * @tc.name      : TestCase_1276
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1276(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1276 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127700
     * @tc.name      : TestCase_1277
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1277(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1277 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127800
     * @tc.name      : TestCase_1278
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1278(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1278 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_127900
     * @tc.name      : TestCase_1279
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1279(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1279 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128000
     * @tc.name      : TestCase_1280
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1280(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1280 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128100
     * @tc.name      : TestCase_1281
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1281(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1281 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128200
     * @tc.name      : TestCase_1282
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1282(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1282 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128300
     * @tc.name      : TestCase_1283
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1283(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1283 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128400
     * @tc.name      : TestCase_1284
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1284(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1284 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128500
     * @tc.name      : TestCase_1285
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1285(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1285 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128600
     * @tc.name      : TestCase_1286
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1286(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1286 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128700
     * @tc.name      : TestCase_1287
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1287(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1287 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128800
     * @tc.name      : TestCase_1288
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1288(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1288 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_128900
     * @tc.name      : TestCase_1289
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1289(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1289 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129000
     * @tc.name      : TestCase_1290
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1290(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1290 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129100
     * @tc.name      : TestCase_1291
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1291(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1291 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129200
     * @tc.name      : TestCase_1292
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1292(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1292 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129300
     * @tc.name      : TestCase_1293
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1293(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1293 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129400
     * @tc.name      : TestCase_1294
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1294(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1294 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129500
     * @tc.name      : TestCase_1295
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1295(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1295 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129600
     * @tc.name      : TestCase_1296
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1296(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1296 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129700
     * @tc.name      : TestCase_1297
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1297(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1297 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129800
     * @tc.name      : TestCase_1298
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1298(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1298 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_129900
     * @tc.name      : TestCase_1299
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1299(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1299 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_130000
     * @tc.name      : TestCase_1300
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "k", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1300(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1300 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("k", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1300 ends.")
    }
}
