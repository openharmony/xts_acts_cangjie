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
class testStartTrace_53 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520100
     * @tc.name      : TestCase_5201
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5201(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5201 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520200
     * @tc.name      : TestCase_5202
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5202(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5202 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520300
     * @tc.name      : TestCase_5203
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5203(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5203 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520400
     * @tc.name      : TestCase_5204
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5204(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5204 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520500
     * @tc.name      : TestCase_5205
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5205(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5205 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520600
     * @tc.name      : TestCase_5206
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5206(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5206 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520700
     * @tc.name      : TestCase_5207
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5207(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5207 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520800
     * @tc.name      : TestCase_5208
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5208(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5208 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_520900
     * @tc.name      : TestCase_5209
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5209(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5209 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521000
     * @tc.name      : TestCase_5210
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5210(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5210 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521100
     * @tc.name      : TestCase_5211
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5211(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5211 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521200
     * @tc.name      : TestCase_5212
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5212(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5212 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521300
     * @tc.name      : TestCase_5213
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5213(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5213 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521400
     * @tc.name      : TestCase_5214
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5214(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5214 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521500
     * @tc.name      : TestCase_5215
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5215(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5215 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521600
     * @tc.name      : TestCase_5216
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5216(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5216 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521700
     * @tc.name      : TestCase_5217
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5217(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5217 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521800
     * @tc.name      : TestCase_5218
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5218(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5218 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_521900
     * @tc.name      : TestCase_5219
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5219(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5219 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522000
     * @tc.name      : TestCase_5220
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5220(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5220 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522100
     * @tc.name      : TestCase_5221
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5221(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5221 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522200
     * @tc.name      : TestCase_5222
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5222(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5222 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522300
     * @tc.name      : TestCase_5223
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5223(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5223 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522400
     * @tc.name      : TestCase_5224
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5224(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5224 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522500
     * @tc.name      : TestCase_5225
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5225(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5225 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522600
     * @tc.name      : TestCase_5226
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5226(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5226 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522700
     * @tc.name      : TestCase_5227
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5227(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5227 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522800
     * @tc.name      : TestCase_5228
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5228(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5228 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_522900
     * @tc.name      : TestCase_5229
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5229(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5229 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523000
     * @tc.name      : TestCase_5230
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5230(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5230 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523100
     * @tc.name      : TestCase_5231
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5231(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5231 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523200
     * @tc.name      : TestCase_5232
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5232(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5232 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523300
     * @tc.name      : TestCase_5233
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5233(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5233 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523400
     * @tc.name      : TestCase_5234
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5234(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5234 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523500
     * @tc.name      : TestCase_5235
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5235(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5235 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523600
     * @tc.name      : TestCase_5236
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5236(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5236 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523700
     * @tc.name      : TestCase_5237
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5237(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5237 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523800
     * @tc.name      : TestCase_5238
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5238(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5238 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_523900
     * @tc.name      : TestCase_5239
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5239(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5239 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524000
     * @tc.name      : TestCase_5240
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5240(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5240 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524100
     * @tc.name      : TestCase_5241
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5241(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5241 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524200
     * @tc.name      : TestCase_5242
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5242(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5242 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524300
     * @tc.name      : TestCase_5243
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5243(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5243 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524400
     * @tc.name      : TestCase_5244
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5244(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5244 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524500
     * @tc.name      : TestCase_5245
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5245(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5245 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524600
     * @tc.name      : TestCase_5246
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5246(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5246 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524700
     * @tc.name      : TestCase_5247
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5247(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5247 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524800
     * @tc.name      : TestCase_5248
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5248(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5248 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_524900
     * @tc.name      : TestCase_5249
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5249(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5249 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525000
     * @tc.name      : TestCase_5250
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5250(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5250 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525100
     * @tc.name      : TestCase_5251
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5251(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5251 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525200
     * @tc.name      : TestCase_5252
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5252(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5252 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525300
     * @tc.name      : TestCase_5253
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5253(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5253 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525400
     * @tc.name      : TestCase_5254
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5254(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5254 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525500
     * @tc.name      : TestCase_5255
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5255(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5255 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525600
     * @tc.name      : TestCase_5256
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5256(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5256 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525700
     * @tc.name      : TestCase_5257
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5257(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5257 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525800
     * @tc.name      : TestCase_5258
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5258(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5258 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_525900
     * @tc.name      : TestCase_5259
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5259(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5259 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526000
     * @tc.name      : TestCase_5260
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5260(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5260 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526100
     * @tc.name      : TestCase_5261
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5261(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5261 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526200
     * @tc.name      : TestCase_5262
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5262(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5262 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526300
     * @tc.name      : TestCase_5263
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5263(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5263 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526400
     * @tc.name      : TestCase_5264
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5264(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5264 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526500
     * @tc.name      : TestCase_5265
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5265(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5265 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526600
     * @tc.name      : TestCase_5266
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5266(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5266 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526700
     * @tc.name      : TestCase_5267
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5267(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5267 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526800
     * @tc.name      : TestCase_5268
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5268(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5268 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_526900
     * @tc.name      : TestCase_5269
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5269(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5269 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527000
     * @tc.name      : TestCase_5270
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5270(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5270 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527100
     * @tc.name      : TestCase_5271
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5271(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5271 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527200
     * @tc.name      : TestCase_5272
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5272(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5272 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527300
     * @tc.name      : TestCase_5273
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5273(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5273 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527400
     * @tc.name      : TestCase_5274
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5274(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5274 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527500
     * @tc.name      : TestCase_5275
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5275(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5275 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527600
     * @tc.name      : TestCase_5276
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5276(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5276 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527700
     * @tc.name      : TestCase_5277
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5277(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5277 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527800
     * @tc.name      : TestCase_5278
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5278(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5278 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_527900
     * @tc.name      : TestCase_5279
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5279(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5279 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528000
     * @tc.name      : TestCase_5280
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5280(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5280 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528100
     * @tc.name      : TestCase_5281
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5281(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5281 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528200
     * @tc.name      : TestCase_5282
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5282(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5282 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528300
     * @tc.name      : TestCase_5283
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5283(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5283 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528400
     * @tc.name      : TestCase_5284
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5284(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5284 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528500
     * @tc.name      : TestCase_5285
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5285(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5285 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528600
     * @tc.name      : TestCase_5286
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5286(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5286 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528700
     * @tc.name      : TestCase_5287
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5287(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5287 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528800
     * @tc.name      : TestCase_5288
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5288(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5288 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_528900
     * @tc.name      : TestCase_5289
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5289(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5289 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_529000
     * @tc.name      : TestCase_5290
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5290(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5290 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_529100
     * @tc.name      : TestCase_5291
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5291(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5291 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_529200
     * @tc.name      : TestCase_5292
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "25", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5292(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5292 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("25", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5292 ends.")
    }
}
