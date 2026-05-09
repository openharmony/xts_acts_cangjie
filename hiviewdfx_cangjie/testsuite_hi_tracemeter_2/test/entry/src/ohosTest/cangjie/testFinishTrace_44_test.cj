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
class testFinishTrace_44 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430100
     * @tc.name      : TestCase_4301
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4301(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4301 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430200
     * @tc.name      : TestCase_4302
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4302(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4302 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430300
     * @tc.name      : TestCase_4303
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4303(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4303 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430400
     * @tc.name      : TestCase_4304
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4304(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4304 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430500
     * @tc.name      : TestCase_4305
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4305(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4305 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430600
     * @tc.name      : TestCase_4306
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4306(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4306 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430700
     * @tc.name      : TestCase_4307
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4307(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4307 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430800
     * @tc.name      : TestCase_4308
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4308(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4308 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_430900
     * @tc.name      : TestCase_4309
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4309(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4309 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431000
     * @tc.name      : TestCase_4310
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4310(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4310 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431100
     * @tc.name      : TestCase_4311
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4311(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4311 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431200
     * @tc.name      : TestCase_4312
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "15", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4312(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4312 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("15", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431300
     * @tc.name      : TestCase_4313
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4313(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4313 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431400
     * @tc.name      : TestCase_4314
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4314(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4314 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431500
     * @tc.name      : TestCase_4315
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4315(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4315 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431600
     * @tc.name      : TestCase_4316
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4316(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4316 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431700
     * @tc.name      : TestCase_4317
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4317(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4317 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431800
     * @tc.name      : TestCase_4318
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4318(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4318 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_431900
     * @tc.name      : TestCase_4319
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4319(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4319 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432000
     * @tc.name      : TestCase_4320
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4320(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4320 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432100
     * @tc.name      : TestCase_4321
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4321(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4321 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432200
     * @tc.name      : TestCase_4322
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4322(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4322 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432300
     * @tc.name      : TestCase_4323
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4323(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4323 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432400
     * @tc.name      : TestCase_4324
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4324(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4324 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432500
     * @tc.name      : TestCase_4325
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4325(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4325 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432600
     * @tc.name      : TestCase_4326
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4326(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4326 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432700
     * @tc.name      : TestCase_4327
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4327(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4327 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432800
     * @tc.name      : TestCase_4328
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4328(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4328 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_432900
     * @tc.name      : TestCase_4329
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4329(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4329 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433000
     * @tc.name      : TestCase_4330
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4330(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4330 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433100
     * @tc.name      : TestCase_4331
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4331(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4331 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433200
     * @tc.name      : TestCase_4332
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4332(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4332 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433300
     * @tc.name      : TestCase_4333
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4333(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4333 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433400
     * @tc.name      : TestCase_4334
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4334(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4334 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433500
     * @tc.name      : TestCase_4335
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4335(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4335 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433600
     * @tc.name      : TestCase_4336
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4336(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4336 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433700
     * @tc.name      : TestCase_4337
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4337(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4337 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433800
     * @tc.name      : TestCase_4338
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4338(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4338 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_433900
     * @tc.name      : TestCase_4339
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4339(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4339 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434000
     * @tc.name      : TestCase_4340
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4340(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4340 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434100
     * @tc.name      : TestCase_4341
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4341(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4341 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434200
     * @tc.name      : TestCase_4342
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4342(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4342 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434300
     * @tc.name      : TestCase_4343
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4343(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4343 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434400
     * @tc.name      : TestCase_4344
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4344(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4344 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434500
     * @tc.name      : TestCase_4345
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4345(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4345 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434600
     * @tc.name      : TestCase_4346
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4346(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4346 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434700
     * @tc.name      : TestCase_4347
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4347(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4347 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434800
     * @tc.name      : TestCase_4348
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4348(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4348 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_434900
     * @tc.name      : TestCase_4349
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4349(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4349 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435000
     * @tc.name      : TestCase_4350
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4350(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4350 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435100
     * @tc.name      : TestCase_4351
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4351(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4351 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435200
     * @tc.name      : TestCase_4352
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4352(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4352 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435300
     * @tc.name      : TestCase_4353
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4353(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4353 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435400
     * @tc.name      : TestCase_4354
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4354(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4354 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435500
     * @tc.name      : TestCase_4355
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4355(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4355 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435600
     * @tc.name      : TestCase_4356
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4356(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4356 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435700
     * @tc.name      : TestCase_4357
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4357(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4357 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435800
     * @tc.name      : TestCase_4358
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4358(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4358 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_435900
     * @tc.name      : TestCase_4359
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4359(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4359 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436000
     * @tc.name      : TestCase_4360
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4360(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4360 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436100
     * @tc.name      : TestCase_4361
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4361(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4361 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436200
     * @tc.name      : TestCase_4362
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4362(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4362 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436300
     * @tc.name      : TestCase_4363
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4363(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4363 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436400
     * @tc.name      : TestCase_4364
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4364(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4364 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436500
     * @tc.name      : TestCase_4365
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4365(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4365 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436600
     * @tc.name      : TestCase_4366
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4366(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4366 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436700
     * @tc.name      : TestCase_4367
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4367(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4367 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436800
     * @tc.name      : TestCase_4368
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4368(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4368 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_436900
     * @tc.name      : TestCase_4369
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4369(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4369 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437000
     * @tc.name      : TestCase_4370
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4370(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4370 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437100
     * @tc.name      : TestCase_4371
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4371(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4371 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437200
     * @tc.name      : TestCase_4372
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4372(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4372 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437300
     * @tc.name      : TestCase_4373
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4373(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4373 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437400
     * @tc.name      : TestCase_4374
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4374(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4374 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437500
     * @tc.name      : TestCase_4375
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4375(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4375 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437600
     * @tc.name      : TestCase_4376
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4376(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4376 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437700
     * @tc.name      : TestCase_4377
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4377(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4377 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437800
     * @tc.name      : TestCase_4378
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4378(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4378 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_437900
     * @tc.name      : TestCase_4379
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4379(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4379 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438000
     * @tc.name      : TestCase_4380
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4380(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4380 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438100
     * @tc.name      : TestCase_4381
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4381(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4381 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438200
     * @tc.name      : TestCase_4382
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4382(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4382 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438300
     * @tc.name      : TestCase_4383
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4383(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4383 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438400
     * @tc.name      : TestCase_4384
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4384(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4384 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438500
     * @tc.name      : TestCase_4385
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4385(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4385 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438600
     * @tc.name      : TestCase_4386
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4386(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4386 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438700
     * @tc.name      : TestCase_4387
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4387(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4387 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438800
     * @tc.name      : TestCase_4388
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4388(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4388 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_438900
     * @tc.name      : TestCase_4389
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4389(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4389 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439000
     * @tc.name      : TestCase_4390
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4390(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4390 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439100
     * @tc.name      : TestCase_4391
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4391(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4391 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439200
     * @tc.name      : TestCase_4392
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4392(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4392 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439300
     * @tc.name      : TestCase_4393
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4393(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4393 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439400
     * @tc.name      : TestCase_4394
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4394(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4394 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439500
     * @tc.name      : TestCase_4395
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4395(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4395 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439600
     * @tc.name      : TestCase_4396
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4396(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4396 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439700
     * @tc.name      : TestCase_4397
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4397(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4397 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439800
     * @tc.name      : TestCase_4398
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4398(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4398 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_439900
     * @tc.name      : TestCase_4399
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4399(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4399 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440000
     * @tc.name      : TestCase_4400
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4400(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4400 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4400 ends.")
    }
}
