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
class testFinishTrace_45 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440100
     * @tc.name      : TestCase_4401
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4401(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4401 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440200
     * @tc.name      : TestCase_4402
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4402(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4402 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440300
     * @tc.name      : TestCase_4403
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4403(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4403 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440400
     * @tc.name      : TestCase_4404
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4404(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4404 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440500
     * @tc.name      : TestCase_4405
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4405(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4405 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440600
     * @tc.name      : TestCase_4406
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4406(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4406 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440700
     * @tc.name      : TestCase_4407
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4407(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4407 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440800
     * @tc.name      : TestCase_4408
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4408(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4408 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_440900
     * @tc.name      : TestCase_4409
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4409(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4409 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441000
     * @tc.name      : TestCase_4410
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "16", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4410(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4410 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("16", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441100
     * @tc.name      : TestCase_4411
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4411(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4411 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441200
     * @tc.name      : TestCase_4412
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4412(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4412 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441300
     * @tc.name      : TestCase_4413
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4413(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4413 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441400
     * @tc.name      : TestCase_4414
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4414(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4414 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441500
     * @tc.name      : TestCase_4415
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4415(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4415 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441600
     * @tc.name      : TestCase_4416
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4416(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4416 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441700
     * @tc.name      : TestCase_4417
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4417(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4417 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441800
     * @tc.name      : TestCase_4418
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4418(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4418 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_441900
     * @tc.name      : TestCase_4419
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4419(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4419 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442000
     * @tc.name      : TestCase_4420
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4420(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4420 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442100
     * @tc.name      : TestCase_4421
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4421(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4421 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442200
     * @tc.name      : TestCase_4422
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4422(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4422 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442300
     * @tc.name      : TestCase_4423
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4423(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4423 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442400
     * @tc.name      : TestCase_4424
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4424(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4424 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442500
     * @tc.name      : TestCase_4425
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4425(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4425 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442600
     * @tc.name      : TestCase_4426
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4426(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4426 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442700
     * @tc.name      : TestCase_4427
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4427(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4427 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442800
     * @tc.name      : TestCase_4428
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4428(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4428 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_442900
     * @tc.name      : TestCase_4429
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4429(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4429 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443000
     * @tc.name      : TestCase_4430
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4430(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4430 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443100
     * @tc.name      : TestCase_4431
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4431(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4431 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443200
     * @tc.name      : TestCase_4432
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4432(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4432 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443300
     * @tc.name      : TestCase_4433
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4433(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4433 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443400
     * @tc.name      : TestCase_4434
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4434(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4434 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443500
     * @tc.name      : TestCase_4435
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4435(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4435 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443600
     * @tc.name      : TestCase_4436
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4436(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4436 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443700
     * @tc.name      : TestCase_4437
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4437(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4437 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443800
     * @tc.name      : TestCase_4438
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4438(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4438 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_443900
     * @tc.name      : TestCase_4439
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4439(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4439 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444000
     * @tc.name      : TestCase_4440
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4440(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4440 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444100
     * @tc.name      : TestCase_4441
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4441(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4441 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444200
     * @tc.name      : TestCase_4442
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4442(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4442 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444300
     * @tc.name      : TestCase_4443
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4443(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4443 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444400
     * @tc.name      : TestCase_4444
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4444(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4444 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444500
     * @tc.name      : TestCase_4445
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4445(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4445 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444600
     * @tc.name      : TestCase_4446
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4446(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4446 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444700
     * @tc.name      : TestCase_4447
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4447(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4447 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444800
     * @tc.name      : TestCase_4448
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4448(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4448 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_444900
     * @tc.name      : TestCase_4449
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4449(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4449 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445000
     * @tc.name      : TestCase_4450
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4450(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4450 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4450 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445100
     * @tc.name      : TestCase_4451
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4451(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4451 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445200
     * @tc.name      : TestCase_4452
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4452(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4452 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445300
     * @tc.name      : TestCase_4453
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4453(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4453 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445400
     * @tc.name      : TestCase_4454
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4454(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4454 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445500
     * @tc.name      : TestCase_4455
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4455(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4455 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445600
     * @tc.name      : TestCase_4456
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4456(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4456 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445700
     * @tc.name      : TestCase_4457
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4457(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4457 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445800
     * @tc.name      : TestCase_4458
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4458(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4458 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_445900
     * @tc.name      : TestCase_4459
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4459(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4459 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446000
     * @tc.name      : TestCase_4460
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4460(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4460 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446100
     * @tc.name      : TestCase_4461
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4461(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4461 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446200
     * @tc.name      : TestCase_4462
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4462(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4462 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446300
     * @tc.name      : TestCase_4463
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4463(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4463 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446400
     * @tc.name      : TestCase_4464
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4464(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4464 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446500
     * @tc.name      : TestCase_4465
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4465(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4465 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446600
     * @tc.name      : TestCase_4466
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4466(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4466 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446700
     * @tc.name      : TestCase_4467
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4467(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4467 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446800
     * @tc.name      : TestCase_4468
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4468(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4468 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_446900
     * @tc.name      : TestCase_4469
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4469(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4469 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447000
     * @tc.name      : TestCase_4470
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4470(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4470 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4470 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447100
     * @tc.name      : TestCase_4471
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4471(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4471 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447200
     * @tc.name      : TestCase_4472
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4472(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4472 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447300
     * @tc.name      : TestCase_4473
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4473(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4473 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447400
     * @tc.name      : TestCase_4474
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4474(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4474 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447500
     * @tc.name      : TestCase_4475
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4475(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4475 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447600
     * @tc.name      : TestCase_4476
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4476(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4476 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447700
     * @tc.name      : TestCase_4477
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4477(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4477 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447800
     * @tc.name      : TestCase_4478
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4478(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4478 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_447900
     * @tc.name      : TestCase_4479
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4479(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4479 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448000
     * @tc.name      : TestCase_4480
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4480(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4480 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4480 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448100
     * @tc.name      : TestCase_4481
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4481(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4481 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448200
     * @tc.name      : TestCase_4482
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4482(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4482 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448300
     * @tc.name      : TestCase_4483
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4483(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4483 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448400
     * @tc.name      : TestCase_4484
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4484(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4484 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448500
     * @tc.name      : TestCase_4485
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4485(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4485 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448600
     * @tc.name      : TestCase_4486
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4486(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4486 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448700
     * @tc.name      : TestCase_4487
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4487(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4487 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448800
     * @tc.name      : TestCase_4488
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4488(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4488 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_448900
     * @tc.name      : TestCase_4489
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4489(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4489 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449000
     * @tc.name      : TestCase_4490
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4490(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4490 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449100
     * @tc.name      : TestCase_4491
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4491(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4491 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449200
     * @tc.name      : TestCase_4492
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4492(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4492 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449300
     * @tc.name      : TestCase_4493
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4493(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4493 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449400
     * @tc.name      : TestCase_4494
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4494(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4494 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449500
     * @tc.name      : TestCase_4495
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4495(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4495 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449600
     * @tc.name      : TestCase_4496
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4496(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4496 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449700
     * @tc.name      : TestCase_4497
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4497(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4497 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449800
     * @tc.name      : TestCase_4498
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4498(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4498 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_449900
     * @tc.name      : TestCase_4499
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4499(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4499 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_450000
     * @tc.name      : TestCase_4500
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "17", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4500(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4500 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("17", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4500 ends.")
    }
}
