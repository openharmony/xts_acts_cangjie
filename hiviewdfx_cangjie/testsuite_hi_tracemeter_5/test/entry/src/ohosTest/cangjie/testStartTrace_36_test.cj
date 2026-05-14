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
class testStartTrace_36 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350100
     * @tc.name      : TestCase_3501
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3501(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3501 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350200
     * @tc.name      : TestCase_3502
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3502(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3502 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350300
     * @tc.name      : TestCase_3503
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3503(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3503 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350400
     * @tc.name      : TestCase_3504
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3504(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3504 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350500
     * @tc.name      : TestCase_3505
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3505(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3505 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350600
     * @tc.name      : TestCase_3506
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3506(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3506 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350700
     * @tc.name      : TestCase_3507
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3507(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3507 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350800
     * @tc.name      : TestCase_3508
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3508(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3508 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_350900
     * @tc.name      : TestCase_3509
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3509(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3509 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351000
     * @tc.name      : TestCase_3510
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3510(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3510 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351100
     * @tc.name      : TestCase_3511
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3511(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3511 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351200
     * @tc.name      : TestCase_3512
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3512(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3512 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351300
     * @tc.name      : TestCase_3513
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3513(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3513 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351400
     * @tc.name      : TestCase_3514
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3514(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3514 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351500
     * @tc.name      : TestCase_3515
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3515(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3515 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351600
     * @tc.name      : TestCase_3516
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3516(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3516 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351700
     * @tc.name      : TestCase_3517
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3517(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3517 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351800
     * @tc.name      : TestCase_3518
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3518(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3518 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_351900
     * @tc.name      : TestCase_3519
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3519(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3519 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352000
     * @tc.name      : TestCase_3520
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3520(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3520 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352100
     * @tc.name      : TestCase_3521
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3521(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3521 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352200
     * @tc.name      : TestCase_3522
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3522(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3522 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352300
     * @tc.name      : TestCase_3523
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3523(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3523 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352400
     * @tc.name      : TestCase_3524
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3524(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3524 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352500
     * @tc.name      : TestCase_3525
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3525(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3525 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352600
     * @tc.name      : TestCase_3526
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3526(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3526 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352700
     * @tc.name      : TestCase_3527
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3527(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3527 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352800
     * @tc.name      : TestCase_3528
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "7", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3528(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3528 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("7", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_352900
     * @tc.name      : TestCase_3529
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3529(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3529 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353000
     * @tc.name      : TestCase_3530
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3530(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3530 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353100
     * @tc.name      : TestCase_3531
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3531(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3531 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353200
     * @tc.name      : TestCase_3532
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3532(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3532 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353300
     * @tc.name      : TestCase_3533
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3533(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3533 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353400
     * @tc.name      : TestCase_3534
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3534(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3534 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353500
     * @tc.name      : TestCase_3535
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3535(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3535 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353600
     * @tc.name      : TestCase_3536
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3536(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3536 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353700
     * @tc.name      : TestCase_3537
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3537(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3537 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353800
     * @tc.name      : TestCase_3538
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3538(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3538 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_353900
     * @tc.name      : TestCase_3539
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3539(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3539 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354000
     * @tc.name      : TestCase_3540
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3540(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3540 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354100
     * @tc.name      : TestCase_3541
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3541(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3541 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354200
     * @tc.name      : TestCase_3542
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3542(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3542 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354300
     * @tc.name      : TestCase_3543
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3543(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3543 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354400
     * @tc.name      : TestCase_3544
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3544(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3544 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354500
     * @tc.name      : TestCase_3545
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3545(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3545 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354600
     * @tc.name      : TestCase_3546
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3546(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3546 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354700
     * @tc.name      : TestCase_3547
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3547(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3547 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354800
     * @tc.name      : TestCase_3548
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3548(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3548 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_354900
     * @tc.name      : TestCase_3549
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3549(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3549 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355000
     * @tc.name      : TestCase_3550
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3550(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3550 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355100
     * @tc.name      : TestCase_3551
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3551(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3551 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355200
     * @tc.name      : TestCase_3552
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3552(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3552 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355300
     * @tc.name      : TestCase_3553
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3553(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3553 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355400
     * @tc.name      : TestCase_3554
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3554(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3554 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355500
     * @tc.name      : TestCase_3555
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3555(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3555 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355600
     * @tc.name      : TestCase_3556
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3556(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3556 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355700
     * @tc.name      : TestCase_3557
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3557(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3557 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355800
     * @tc.name      : TestCase_3558
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3558(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3558 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_355900
     * @tc.name      : TestCase_3559
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3559(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3559 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356000
     * @tc.name      : TestCase_3560
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3560(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3560 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356100
     * @tc.name      : TestCase_3561
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3561(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3561 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356200
     * @tc.name      : TestCase_3562
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3562(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3562 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356300
     * @tc.name      : TestCase_3563
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3563(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3563 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356400
     * @tc.name      : TestCase_3564
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3564(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3564 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356500
     * @tc.name      : TestCase_3565
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3565(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3565 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356600
     * @tc.name      : TestCase_3566
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3566(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3566 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356700
     * @tc.name      : TestCase_3567
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3567(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3567 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356800
     * @tc.name      : TestCase_3568
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3568(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3568 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_356900
     * @tc.name      : TestCase_3569
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3569(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3569 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357000
     * @tc.name      : TestCase_3570
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3570(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3570 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357100
     * @tc.name      : TestCase_3571
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3571(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3571 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357200
     * @tc.name      : TestCase_3572
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3572(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3572 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357300
     * @tc.name      : TestCase_3573
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3573(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3573 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357400
     * @tc.name      : TestCase_3574
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3574(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3574 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357500
     * @tc.name      : TestCase_3575
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3575(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3575 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357600
     * @tc.name      : TestCase_3576
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3576(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3576 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357700
     * @tc.name      : TestCase_3577
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3577(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3577 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357800
     * @tc.name      : TestCase_3578
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3578(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3578 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_357900
     * @tc.name      : TestCase_3579
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3579(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3579 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358000
     * @tc.name      : TestCase_3580
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3580(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3580 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358100
     * @tc.name      : TestCase_3581
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3581(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3581 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358200
     * @tc.name      : TestCase_3582
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3582(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3582 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358300
     * @tc.name      : TestCase_3583
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3583(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3583 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358400
     * @tc.name      : TestCase_3584
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3584(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3584 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358500
     * @tc.name      : TestCase_3585
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3585(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3585 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358600
     * @tc.name      : TestCase_3586
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3586(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3586 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358700
     * @tc.name      : TestCase_3587
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3587(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3587 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358800
     * @tc.name      : TestCase_3588
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3588(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3588 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_358900
     * @tc.name      : TestCase_3589
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3589(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3589 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359000
     * @tc.name      : TestCase_3590
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3590(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3590 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359100
     * @tc.name      : TestCase_3591
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3591(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3591 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359200
     * @tc.name      : TestCase_3592
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3592(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3592 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359300
     * @tc.name      : TestCase_3593
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3593(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3593 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359400
     * @tc.name      : TestCase_3594
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3594(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3594 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359500
     * @tc.name      : TestCase_3595
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3595(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3595 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359600
     * @tc.name      : TestCase_3596
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3596(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3596 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359700
     * @tc.name      : TestCase_3597
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3597(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3597 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359800
     * @tc.name      : TestCase_3598
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3598(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3598 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_359900
     * @tc.name      : TestCase_3599
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3599(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3599 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_360000
     * @tc.name      : TestCase_3600
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "8", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3600(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3600 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("8", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3600 ends.")
    }
}
