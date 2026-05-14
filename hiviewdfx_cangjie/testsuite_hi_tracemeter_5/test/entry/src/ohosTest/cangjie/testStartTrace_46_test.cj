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
class testStartTrace_46 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450100
     * @tc.name      : TestCase_4501
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4501(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4501 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450200
     * @tc.name      : TestCase_4502
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4502(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4502 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450300
     * @tc.name      : TestCase_4503
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4503(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4503 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450400
     * @tc.name      : TestCase_4504
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4504(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4504 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450500
     * @tc.name      : TestCase_4505
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4505(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4505 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450600
     * @tc.name      : TestCase_4506
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4506(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4506 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450700
     * @tc.name      : TestCase_4507
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4507(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4507 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450800
     * @tc.name      : TestCase_4508
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "17", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4508(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4508 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("17", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_450900
     * @tc.name      : TestCase_4509
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4509(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4509 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451000
     * @tc.name      : TestCase_4510
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4510(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4510 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451100
     * @tc.name      : TestCase_4511
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4511(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4511 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451200
     * @tc.name      : TestCase_4512
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4512(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4512 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451300
     * @tc.name      : TestCase_4513
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4513(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4513 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451400
     * @tc.name      : TestCase_4514
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4514(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4514 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451500
     * @tc.name      : TestCase_4515
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4515(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4515 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451600
     * @tc.name      : TestCase_4516
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4516(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4516 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451700
     * @tc.name      : TestCase_4517
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4517(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4517 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451800
     * @tc.name      : TestCase_4518
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4518(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4518 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_451900
     * @tc.name      : TestCase_4519
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4519(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4519 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452000
     * @tc.name      : TestCase_4520
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4520(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4520 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452100
     * @tc.name      : TestCase_4521
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4521(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4521 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452200
     * @tc.name      : TestCase_4522
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4522(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4522 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452300
     * @tc.name      : TestCase_4523
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4523(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4523 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452400
     * @tc.name      : TestCase_4524
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4524(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4524 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452500
     * @tc.name      : TestCase_4525
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4525(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4525 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452600
     * @tc.name      : TestCase_4526
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4526(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4526 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452700
     * @tc.name      : TestCase_4527
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4527(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4527 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452800
     * @tc.name      : TestCase_4528
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4528(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4528 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_452900
     * @tc.name      : TestCase_4529
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4529(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4529 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453000
     * @tc.name      : TestCase_4530
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4530(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4530 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453100
     * @tc.name      : TestCase_4531
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4531(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4531 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453200
     * @tc.name      : TestCase_4532
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4532(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4532 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453300
     * @tc.name      : TestCase_4533
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4533(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4533 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453400
     * @tc.name      : TestCase_4534
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4534(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4534 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453500
     * @tc.name      : TestCase_4535
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4535(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4535 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453600
     * @tc.name      : TestCase_4536
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4536(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4536 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453700
     * @tc.name      : TestCase_4537
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4537(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4537 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453800
     * @tc.name      : TestCase_4538
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4538(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4538 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_453900
     * @tc.name      : TestCase_4539
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4539(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4539 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454000
     * @tc.name      : TestCase_4540
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4540(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4540 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454100
     * @tc.name      : TestCase_4541
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4541(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4541 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454200
     * @tc.name      : TestCase_4542
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4542(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4542 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454300
     * @tc.name      : TestCase_4543
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4543(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4543 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454400
     * @tc.name      : TestCase_4544
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4544(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4544 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454500
     * @tc.name      : TestCase_4545
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4545(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4545 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454600
     * @tc.name      : TestCase_4546
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4546(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4546 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454700
     * @tc.name      : TestCase_4547
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4547(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4547 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454800
     * @tc.name      : TestCase_4548
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4548(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4548 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_454900
     * @tc.name      : TestCase_4549
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4549(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4549 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455000
     * @tc.name      : TestCase_4550
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4550(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4550 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455100
     * @tc.name      : TestCase_4551
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4551(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4551 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455200
     * @tc.name      : TestCase_4552
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4552(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4552 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455300
     * @tc.name      : TestCase_4553
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4553(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4553 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455400
     * @tc.name      : TestCase_4554
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4554(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4554 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455500
     * @tc.name      : TestCase_4555
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4555(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4555 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455600
     * @tc.name      : TestCase_4556
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4556(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4556 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455700
     * @tc.name      : TestCase_4557
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4557(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4557 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455800
     * @tc.name      : TestCase_4558
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4558(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4558 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_455900
     * @tc.name      : TestCase_4559
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4559(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4559 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456000
     * @tc.name      : TestCase_4560
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4560(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4560 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456100
     * @tc.name      : TestCase_4561
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4561(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4561 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456200
     * @tc.name      : TestCase_4562
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4562(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4562 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456300
     * @tc.name      : TestCase_4563
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4563(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4563 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456400
     * @tc.name      : TestCase_4564
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4564(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4564 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456500
     * @tc.name      : TestCase_4565
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4565(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4565 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456600
     * @tc.name      : TestCase_4566
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4566(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4566 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456700
     * @tc.name      : TestCase_4567
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4567(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4567 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456800
     * @tc.name      : TestCase_4568
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4568(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4568 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_456900
     * @tc.name      : TestCase_4569
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4569(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4569 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457000
     * @tc.name      : TestCase_4570
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4570(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4570 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457100
     * @tc.name      : TestCase_4571
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4571(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4571 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457200
     * @tc.name      : TestCase_4572
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4572(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4572 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457300
     * @tc.name      : TestCase_4573
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4573(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4573 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457400
     * @tc.name      : TestCase_4574
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4574(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4574 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457500
     * @tc.name      : TestCase_4575
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4575(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4575 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457600
     * @tc.name      : TestCase_4576
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4576(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4576 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457700
     * @tc.name      : TestCase_4577
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4577(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4577 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457800
     * @tc.name      : TestCase_4578
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4578(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4578 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_457900
     * @tc.name      : TestCase_4579
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4579(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4579 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458000
     * @tc.name      : TestCase_4580
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4580(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4580 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458100
     * @tc.name      : TestCase_4581
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4581(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4581 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458200
     * @tc.name      : TestCase_4582
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4582(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4582 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458300
     * @tc.name      : TestCase_4583
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4583(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4583 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458400
     * @tc.name      : TestCase_4584
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4584(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4584 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458500
     * @tc.name      : TestCase_4585
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4585(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4585 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458600
     * @tc.name      : TestCase_4586
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4586(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4586 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458700
     * @tc.name      : TestCase_4587
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4587(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4587 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458800
     * @tc.name      : TestCase_4588
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4588(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4588 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_458900
     * @tc.name      : TestCase_4589
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4589(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4589 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459000
     * @tc.name      : TestCase_4590
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4590(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4590 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459100
     * @tc.name      : TestCase_4591
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4591(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4591 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459200
     * @tc.name      : TestCase_4592
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4592(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4592 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459300
     * @tc.name      : TestCase_4593
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4593(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4593 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459400
     * @tc.name      : TestCase_4594
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4594(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4594 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459500
     * @tc.name      : TestCase_4595
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4595(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4595 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459600
     * @tc.name      : TestCase_4596
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4596(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4596 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459700
     * @tc.name      : TestCase_4597
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4597(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4597 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459800
     * @tc.name      : TestCase_4598
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4598(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4598 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_459900
     * @tc.name      : TestCase_4599
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4599(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4599 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_460000
     * @tc.name      : TestCase_4600
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "18", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4600(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4600 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("18", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4600 ends.")
    }
}
