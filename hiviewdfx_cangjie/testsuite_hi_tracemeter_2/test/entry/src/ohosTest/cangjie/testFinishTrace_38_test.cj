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
class testFinishTrace_38 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370100
     * @tc.name      : TestCase_3701
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3701(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3701 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370200
     * @tc.name      : TestCase_3702
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3702(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3702 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370300
     * @tc.name      : TestCase_3703
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3703(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3703 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370400
     * @tc.name      : TestCase_3704
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3704(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3704 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370500
     * @tc.name      : TestCase_3705
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3705(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3705 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370600
     * @tc.name      : TestCase_3706
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3706(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3706 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370700
     * @tc.name      : TestCase_3707
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3707(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3707 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370800
     * @tc.name      : TestCase_3708
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3708(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3708 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_370900
     * @tc.name      : TestCase_3709
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3709(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3709 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371000
     * @tc.name      : TestCase_3710
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3710(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3710 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371100
     * @tc.name      : TestCase_3711
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3711(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3711 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371200
     * @tc.name      : TestCase_3712
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3712(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3712 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371300
     * @tc.name      : TestCase_3713
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3713(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3713 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371400
     * @tc.name      : TestCase_3714
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3714(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3714 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371500
     * @tc.name      : TestCase_3715
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3715(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3715 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371600
     * @tc.name      : TestCase_3716
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3716(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3716 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371700
     * @tc.name      : TestCase_3717
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3717(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3717 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371800
     * @tc.name      : TestCase_3718
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3718(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3718 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_371900
     * @tc.name      : TestCase_3719
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3719(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3719 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372000
     * @tc.name      : TestCase_3720
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3720(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3720 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372100
     * @tc.name      : TestCase_3721
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3721(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3721 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372200
     * @tc.name      : TestCase_3722
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3722(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3722 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372300
     * @tc.name      : TestCase_3723
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3723(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3723 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372400
     * @tc.name      : TestCase_3724
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "9", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3724(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3724 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("9", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372500
     * @tc.name      : TestCase_3725
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3725(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3725 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372600
     * @tc.name      : TestCase_3726
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3726(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3726 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372700
     * @tc.name      : TestCase_3727
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3727(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3727 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372800
     * @tc.name      : TestCase_3728
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3728(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3728 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_372900
     * @tc.name      : TestCase_3729
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3729(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3729 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373000
     * @tc.name      : TestCase_3730
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3730(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3730 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373100
     * @tc.name      : TestCase_3731
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3731(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3731 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373200
     * @tc.name      : TestCase_3732
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3732(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3732 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373300
     * @tc.name      : TestCase_3733
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3733(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3733 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373400
     * @tc.name      : TestCase_3734
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3734(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3734 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373500
     * @tc.name      : TestCase_3735
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3735(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3735 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373600
     * @tc.name      : TestCase_3736
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3736(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3736 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373700
     * @tc.name      : TestCase_3737
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3737(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3737 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373800
     * @tc.name      : TestCase_3738
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3738(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3738 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_373900
     * @tc.name      : TestCase_3739
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3739(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3739 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374000
     * @tc.name      : TestCase_3740
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3740(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3740 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374100
     * @tc.name      : TestCase_3741
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3741(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3741 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374200
     * @tc.name      : TestCase_3742
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3742(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3742 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374300
     * @tc.name      : TestCase_3743
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3743(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3743 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374400
     * @tc.name      : TestCase_3744
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3744(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3744 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374500
     * @tc.name      : TestCase_3745
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3745(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3745 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374600
     * @tc.name      : TestCase_3746
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3746(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3746 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374700
     * @tc.name      : TestCase_3747
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3747(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3747 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374800
     * @tc.name      : TestCase_3748
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3748(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3748 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_374900
     * @tc.name      : TestCase_3749
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3749(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3749 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375000
     * @tc.name      : TestCase_3750
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3750(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3750 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375100
     * @tc.name      : TestCase_3751
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3751(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3751 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375200
     * @tc.name      : TestCase_3752
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3752(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3752 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375300
     * @tc.name      : TestCase_3753
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3753(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3753 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375400
     * @tc.name      : TestCase_3754
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3754(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3754 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375500
     * @tc.name      : TestCase_3755
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3755(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3755 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375600
     * @tc.name      : TestCase_3756
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3756(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3756 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375700
     * @tc.name      : TestCase_3757
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3757(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3757 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375800
     * @tc.name      : TestCase_3758
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3758(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3758 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_375900
     * @tc.name      : TestCase_3759
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3759(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3759 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376000
     * @tc.name      : TestCase_3760
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3760(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3760 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376100
     * @tc.name      : TestCase_3761
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3761(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3761 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376200
     * @tc.name      : TestCase_3762
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3762(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3762 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376300
     * @tc.name      : TestCase_3763
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3763(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3763 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376400
     * @tc.name      : TestCase_3764
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3764(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3764 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376500
     * @tc.name      : TestCase_3765
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3765(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3765 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376600
     * @tc.name      : TestCase_3766
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3766(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3766 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376700
     * @tc.name      : TestCase_3767
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3767(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3767 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376800
     * @tc.name      : TestCase_3768
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3768(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3768 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_376900
     * @tc.name      : TestCase_3769
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3769(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3769 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377000
     * @tc.name      : TestCase_3770
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3770(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3770 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377100
     * @tc.name      : TestCase_3771
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3771(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3771 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377200
     * @tc.name      : TestCase_3772
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3772(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3772 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377300
     * @tc.name      : TestCase_3773
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3773(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3773 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377400
     * @tc.name      : TestCase_3774
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3774(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3774 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377500
     * @tc.name      : TestCase_3775
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3775(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3775 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377600
     * @tc.name      : TestCase_3776
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3776(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3776 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377700
     * @tc.name      : TestCase_3777
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3777(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3777 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377800
     * @tc.name      : TestCase_3778
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3778(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3778 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_377900
     * @tc.name      : TestCase_3779
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3779(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3779 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378000
     * @tc.name      : TestCase_3780
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3780(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3780 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378100
     * @tc.name      : TestCase_3781
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3781(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3781 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378200
     * @tc.name      : TestCase_3782
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3782(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3782 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378300
     * @tc.name      : TestCase_3783
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3783(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3783 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378400
     * @tc.name      : TestCase_3784
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3784(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3784 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378500
     * @tc.name      : TestCase_3785
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3785(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3785 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378600
     * @tc.name      : TestCase_3786
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3786(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3786 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378700
     * @tc.name      : TestCase_3787
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3787(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3787 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378800
     * @tc.name      : TestCase_3788
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3788(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3788 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_378900
     * @tc.name      : TestCase_3789
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3789(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3789 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379000
     * @tc.name      : TestCase_3790
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3790(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3790 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379100
     * @tc.name      : TestCase_3791
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3791(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3791 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379200
     * @tc.name      : TestCase_3792
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3792(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3792 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379300
     * @tc.name      : TestCase_3793
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3793(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3793 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379400
     * @tc.name      : TestCase_3794
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3794(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3794 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379500
     * @tc.name      : TestCase_3795
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3795(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3795 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379600
     * @tc.name      : TestCase_3796
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3796(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3796 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379700
     * @tc.name      : TestCase_3797
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3797(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3797 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379800
     * @tc.name      : TestCase_3798
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3798(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3798 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_379900
     * @tc.name      : TestCase_3799
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3799(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3799 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_380000
     * @tc.name      : TestCase_3800
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "10", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3800(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3800 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("10", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3800 ends.")
    }
}
