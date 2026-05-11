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
class testFinishTrace_35 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340100
     * @tc.name      : TestCase_3401
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3401(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3401 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340200
     * @tc.name      : TestCase_3402
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3402(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3402 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340300
     * @tc.name      : TestCase_3403
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3403(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3403 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340400
     * @tc.name      : TestCase_3404
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3404(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3404 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340500
     * @tc.name      : TestCase_3405
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3405(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3405 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340600
     * @tc.name      : TestCase_3406
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3406(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3406 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340700
     * @tc.name      : TestCase_3407
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3407(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3407 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340800
     * @tc.name      : TestCase_3408
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3408(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3408 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_340900
     * @tc.name      : TestCase_3409
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3409(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3409 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341000
     * @tc.name      : TestCase_3410
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3410(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3410 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341100
     * @tc.name      : TestCase_3411
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3411(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3411 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341200
     * @tc.name      : TestCase_3412
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3412(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3412 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341300
     * @tc.name      : TestCase_3413
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3413(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3413 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341400
     * @tc.name      : TestCase_3414
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3414(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3414 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341500
     * @tc.name      : TestCase_3415
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3415(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3415 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341600
     * @tc.name      : TestCase_3416
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3416(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3416 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341700
     * @tc.name      : TestCase_3417
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3417(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3417 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341800
     * @tc.name      : TestCase_3418
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3418(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3418 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_341900
     * @tc.name      : TestCase_3419
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3419(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3419 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342000
     * @tc.name      : TestCase_3420
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3420(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3420 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342100
     * @tc.name      : TestCase_3421
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3421(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3421 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342200
     * @tc.name      : TestCase_3422
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3422(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3422 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342300
     * @tc.name      : TestCase_3423
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3423(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3423 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342400
     * @tc.name      : TestCase_3424
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3424(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3424 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342500
     * @tc.name      : TestCase_3425
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3425(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3425 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342600
     * @tc.name      : TestCase_3426
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3426(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3426 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342700
     * @tc.name      : TestCase_3427
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3427(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3427 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342800
     * @tc.name      : TestCase_3428
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3428(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3428 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_342900
     * @tc.name      : TestCase_3429
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3429(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3429 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343000
     * @tc.name      : TestCase_3430
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "6", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3430(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3430 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("6", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343100
     * @tc.name      : TestCase_3431
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3431(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3431 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343200
     * @tc.name      : TestCase_3432
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3432(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3432 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343300
     * @tc.name      : TestCase_3433
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3433(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3433 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343400
     * @tc.name      : TestCase_3434
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3434(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3434 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343500
     * @tc.name      : TestCase_3435
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3435(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3435 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343600
     * @tc.name      : TestCase_3436
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3436(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3436 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343700
     * @tc.name      : TestCase_3437
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3437(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3437 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343800
     * @tc.name      : TestCase_3438
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3438(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3438 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_343900
     * @tc.name      : TestCase_3439
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3439(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3439 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344000
     * @tc.name      : TestCase_3440
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3440(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3440 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344100
     * @tc.name      : TestCase_3441
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3441(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3441 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344200
     * @tc.name      : TestCase_3442
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3442(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3442 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344300
     * @tc.name      : TestCase_3443
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3443(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3443 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344400
     * @tc.name      : TestCase_3444
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3444(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3444 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344500
     * @tc.name      : TestCase_3445
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3445(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3445 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344600
     * @tc.name      : TestCase_3446
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3446(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3446 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344700
     * @tc.name      : TestCase_3447
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3447(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3447 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344800
     * @tc.name      : TestCase_3448
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3448(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3448 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_344900
     * @tc.name      : TestCase_3449
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3449(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3449 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345000
     * @tc.name      : TestCase_3450
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3450(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3450 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3450 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345100
     * @tc.name      : TestCase_3451
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3451(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3451 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345200
     * @tc.name      : TestCase_3452
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3452(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3452 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345300
     * @tc.name      : TestCase_3453
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3453(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3453 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345400
     * @tc.name      : TestCase_3454
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3454(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3454 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345500
     * @tc.name      : TestCase_3455
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3455(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3455 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345600
     * @tc.name      : TestCase_3456
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3456(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3456 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345700
     * @tc.name      : TestCase_3457
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3457(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3457 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345800
     * @tc.name      : TestCase_3458
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3458(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3458 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_345900
     * @tc.name      : TestCase_3459
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3459(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3459 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346000
     * @tc.name      : TestCase_3460
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3460(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3460 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346100
     * @tc.name      : TestCase_3461
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3461(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3461 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346200
     * @tc.name      : TestCase_3462
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3462(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3462 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346300
     * @tc.name      : TestCase_3463
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3463(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3463 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346400
     * @tc.name      : TestCase_3464
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3464(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3464 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346500
     * @tc.name      : TestCase_3465
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3465(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3465 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346600
     * @tc.name      : TestCase_3466
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3466(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3466 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346700
     * @tc.name      : TestCase_3467
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3467(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3467 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346800
     * @tc.name      : TestCase_3468
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3468(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3468 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_346900
     * @tc.name      : TestCase_3469
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3469(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3469 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347000
     * @tc.name      : TestCase_3470
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3470(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3470 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3470 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347100
     * @tc.name      : TestCase_3471
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3471(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3471 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347200
     * @tc.name      : TestCase_3472
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3472(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3472 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347300
     * @tc.name      : TestCase_3473
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3473(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3473 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347400
     * @tc.name      : TestCase_3474
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3474(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3474 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347500
     * @tc.name      : TestCase_3475
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3475(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3475 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347600
     * @tc.name      : TestCase_3476
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3476(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3476 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347700
     * @tc.name      : TestCase_3477
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3477(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3477 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347800
     * @tc.name      : TestCase_3478
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3478(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3478 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_347900
     * @tc.name      : TestCase_3479
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3479(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3479 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348000
     * @tc.name      : TestCase_3480
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3480(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3480 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3480 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348100
     * @tc.name      : TestCase_3481
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3481(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3481 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348200
     * @tc.name      : TestCase_3482
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3482(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3482 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348300
     * @tc.name      : TestCase_3483
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3483(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3483 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348400
     * @tc.name      : TestCase_3484
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3484(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3484 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348500
     * @tc.name      : TestCase_3485
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3485(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3485 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348600
     * @tc.name      : TestCase_3486
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3486(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3486 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348700
     * @tc.name      : TestCase_3487
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3487(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3487 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348800
     * @tc.name      : TestCase_3488
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3488(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3488 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_348900
     * @tc.name      : TestCase_3489
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3489(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3489 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349000
     * @tc.name      : TestCase_3490
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3490(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3490 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349100
     * @tc.name      : TestCase_3491
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3491(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3491 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349200
     * @tc.name      : TestCase_3492
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3492(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3492 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349300
     * @tc.name      : TestCase_3493
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3493(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3493 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349400
     * @tc.name      : TestCase_3494
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3494(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3494 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349500
     * @tc.name      : TestCase_3495
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3495(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3495 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349600
     * @tc.name      : TestCase_3496
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3496(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3496 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349700
     * @tc.name      : TestCase_3497
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3497(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3497 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349800
     * @tc.name      : TestCase_3498
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3498(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3498 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_349900
     * @tc.name      : TestCase_3499
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3499(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3499 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_350000
     * @tc.name      : TestCase_3500
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "7", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3500(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3500 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("7", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3500 ends.")
    }
}
