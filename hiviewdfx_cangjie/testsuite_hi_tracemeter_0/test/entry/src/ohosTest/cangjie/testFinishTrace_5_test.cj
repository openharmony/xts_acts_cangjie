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
class testFinishTrace_5 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40100
     * @tc.name      : TestCase_401
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_401(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_401 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_401 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40200
     * @tc.name      : TestCase_402
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_402(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_402 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_402 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40300
     * @tc.name      : TestCase_403
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_403(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_403 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_403 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40400
     * @tc.name      : TestCase_404
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_404(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_404 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_404 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40500
     * @tc.name      : TestCase_405
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_405(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_405 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_405 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40600
     * @tc.name      : TestCase_406
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_406(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_406 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_406 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40700
     * @tc.name      : TestCase_407
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_407(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_407 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_407 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40800
     * @tc.name      : TestCase_408
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_408(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_408 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_408 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40900
     * @tc.name      : TestCase_409
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_409(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_409 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_409 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41000
     * @tc.name      : TestCase_410
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_410(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_410 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_410 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41100
     * @tc.name      : TestCase_411
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_411(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_411 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_411 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41200
     * @tc.name      : TestCase_412
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_412(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_412 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_412 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41300
     * @tc.name      : TestCase_413
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_413(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_413 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_413 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41400
     * @tc.name      : TestCase_414
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_414(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_414 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_414 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41500
     * @tc.name      : TestCase_415
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_415(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_415 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_415 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41600
     * @tc.name      : TestCase_416
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_416(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_416 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_416 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41700
     * @tc.name      : TestCase_417
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_417(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_417 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_417 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41800
     * @tc.name      : TestCase_418
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_418(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_418 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_418 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_41900
     * @tc.name      : TestCase_419
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_419(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_419 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_419 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42000
     * @tc.name      : TestCase_420
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_420(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_420 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_420 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42100
     * @tc.name      : TestCase_421
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_421(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_421 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_421 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42200
     * @tc.name      : TestCase_422
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_422(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_422 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_422 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42300
     * @tc.name      : TestCase_423
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_423(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_423 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_423 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42400
     * @tc.name      : TestCase_424
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_424(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_424 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_424 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42500
     * @tc.name      : TestCase_425
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_425(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_425 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_425 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42600
     * @tc.name      : TestCase_426
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_426(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_426 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_426 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42700
     * @tc.name      : TestCase_427
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_427(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_427 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_427 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42800
     * @tc.name      : TestCase_428
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_428(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_428 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_428 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_42900
     * @tc.name      : TestCase_429
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_429(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_429 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_429 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43000
     * @tc.name      : TestCase_430
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_430(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_430 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_430 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43100
     * @tc.name      : TestCase_431
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_431(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_431 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_431 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43200
     * @tc.name      : TestCase_432
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_432(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_432 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_432 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43300
     * @tc.name      : TestCase_433
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_433(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_433 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_433 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43400
     * @tc.name      : TestCase_434
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_434(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_434 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_434 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43500
     * @tc.name      : TestCase_435
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_435(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_435 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_435 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43600
     * @tc.name      : TestCase_436
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_436(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_436 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_436 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43700
     * @tc.name      : TestCase_437
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_437(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_437 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_437 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43800
     * @tc.name      : TestCase_438
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_438(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_438 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_438 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_43900
     * @tc.name      : TestCase_439
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_439(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_439 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_439 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44000
     * @tc.name      : TestCase_440
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_440(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_440 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_440 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44100
     * @tc.name      : TestCase_441
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_441(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_441 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_441 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44200
     * @tc.name      : TestCase_442
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_442(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_442 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_442 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44300
     * @tc.name      : TestCase_443
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_443(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_443 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_443 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44400
     * @tc.name      : TestCase_444
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_444(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_444 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_444 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44500
     * @tc.name      : TestCase_445
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_445(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_445 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_445 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44600
     * @tc.name      : TestCase_446
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_446(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_446 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_446 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44700
     * @tc.name      : TestCase_447
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_447(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_447 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_447 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44800
     * @tc.name      : TestCase_448
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_448(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_448 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_448 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_44900
     * @tc.name      : TestCase_449
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_449(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_449 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_449 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45000
     * @tc.name      : TestCase_450
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_450(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_450 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_450 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45100
     * @tc.name      : TestCase_451
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_451(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_451 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_451 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45200
     * @tc.name      : TestCase_452
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_452(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_452 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_452 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45300
     * @tc.name      : TestCase_453
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_453(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_453 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_453 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45400
     * @tc.name      : TestCase_454
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_454(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_454 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_454 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45500
     * @tc.name      : TestCase_455
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_455(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_455 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_455 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45600
     * @tc.name      : TestCase_456
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_456(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_456 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_456 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45700
     * @tc.name      : TestCase_457
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_457(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_457 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_457 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45800
     * @tc.name      : TestCase_458
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_458(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_458 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_458 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_45900
     * @tc.name      : TestCase_459
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_459(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_459 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_459 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46000
     * @tc.name      : TestCase_460
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_460(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_460 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_460 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46100
     * @tc.name      : TestCase_461
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_461(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_461 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_461 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46200
     * @tc.name      : TestCase_462
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_462(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_462 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_462 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46300
     * @tc.name      : TestCase_463
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_463(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_463 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_463 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46400
     * @tc.name      : TestCase_464
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_464(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_464 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_464 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46500
     * @tc.name      : TestCase_465
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_465(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_465 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_465 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46600
     * @tc.name      : TestCase_466
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_466(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_466 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_466 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46700
     * @tc.name      : TestCase_467
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_467(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_467 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_467 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46800
     * @tc.name      : TestCase_468
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_468(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_468 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_468 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_46900
     * @tc.name      : TestCase_469
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_469(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_469 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_469 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47000
     * @tc.name      : TestCase_470
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_470(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_470 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_470 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47100
     * @tc.name      : TestCase_471
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_471(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_471 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_471 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47200
     * @tc.name      : TestCase_472
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_472(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_472 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_472 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47300
     * @tc.name      : TestCase_473
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_473(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_473 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_473 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47400
     * @tc.name      : TestCase_474
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_474(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_474 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_474 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47500
     * @tc.name      : TestCase_475
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_475(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_475 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_475 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47600
     * @tc.name      : TestCase_476
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_476(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_476 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_476 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47700
     * @tc.name      : TestCase_477
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_477(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_477 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_477 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47800
     * @tc.name      : TestCase_478
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_478(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_478 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_478 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_47900
     * @tc.name      : TestCase_479
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_479(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_479 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_479 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48000
     * @tc.name      : TestCase_480
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_480(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_480 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_480 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48100
     * @tc.name      : TestCase_481
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_481(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_481 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_481 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48200
     * @tc.name      : TestCase_482
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_482(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_482 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_482 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48300
     * @tc.name      : TestCase_483
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_483(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_483 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_483 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48400
     * @tc.name      : TestCase_484
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_484(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_484 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_484 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48500
     * @tc.name      : TestCase_485
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_485(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_485 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_485 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48600
     * @tc.name      : TestCase_486
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_486(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_486 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_486 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48700
     * @tc.name      : TestCase_487
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_487(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_487 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_487 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48800
     * @tc.name      : TestCase_488
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_488(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_488 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_488 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_48900
     * @tc.name      : TestCase_489
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_489(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_489 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_489 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49000
     * @tc.name      : TestCase_490
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_490(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_490 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_490 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49100
     * @tc.name      : TestCase_491
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_491(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_491 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_491 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49200
     * @tc.name      : TestCase_492
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_492(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_492 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_492 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49300
     * @tc.name      : TestCase_493
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_493(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_493 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_493 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49400
     * @tc.name      : TestCase_494
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_494(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_494 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_494 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49500
     * @tc.name      : TestCase_495
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_495(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_495 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_495 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49600
     * @tc.name      : TestCase_496
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_496(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_496 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_496 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49700
     * @tc.name      : TestCase_497
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_497(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_497 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_497 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49800
     * @tc.name      : TestCase_498
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_498(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_498 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_498 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_49900
     * @tc.name      : TestCase_499
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_499(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_499 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_499 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_50000
     * @tc.name      : TestCase_500
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "c", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_500(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_500 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("c", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_500 ends.")
    }
}
