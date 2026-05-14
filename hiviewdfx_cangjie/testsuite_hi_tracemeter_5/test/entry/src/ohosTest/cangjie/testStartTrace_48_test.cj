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
class testStartTrace_48 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470100
     * @tc.name      : TestCase_4701
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "19", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4701(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4701 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("19", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470200
     * @tc.name      : TestCase_4702
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "19", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4702(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4702 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("19", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470300
     * @tc.name      : TestCase_4703
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "19", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4703(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4703 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("19", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470400
     * @tc.name      : TestCase_4704
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "19", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4704(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4704 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("19", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470500
     * @tc.name      : TestCase_4705
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4705(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4705 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470600
     * @tc.name      : TestCase_4706
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4706(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4706 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470700
     * @tc.name      : TestCase_4707
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4707(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4707 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470800
     * @tc.name      : TestCase_4708
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4708(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4708 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_470900
     * @tc.name      : TestCase_4709
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4709(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4709 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471000
     * @tc.name      : TestCase_4710
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4710(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4710 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471100
     * @tc.name      : TestCase_4711
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4711(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4711 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471200
     * @tc.name      : TestCase_4712
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4712(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4712 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471300
     * @tc.name      : TestCase_4713
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4713(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4713 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471400
     * @tc.name      : TestCase_4714
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4714(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4714 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471500
     * @tc.name      : TestCase_4715
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4715(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4715 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471600
     * @tc.name      : TestCase_4716
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4716(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4716 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471700
     * @tc.name      : TestCase_4717
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4717(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4717 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471800
     * @tc.name      : TestCase_4718
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4718(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4718 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_471900
     * @tc.name      : TestCase_4719
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4719(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4719 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472000
     * @tc.name      : TestCase_4720
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4720(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4720 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472100
     * @tc.name      : TestCase_4721
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4721(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4721 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472200
     * @tc.name      : TestCase_4722
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4722(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4722 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472300
     * @tc.name      : TestCase_4723
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4723(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4723 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472400
     * @tc.name      : TestCase_4724
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4724(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4724 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472500
     * @tc.name      : TestCase_4725
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4725(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4725 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472600
     * @tc.name      : TestCase_4726
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4726(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4726 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472700
     * @tc.name      : TestCase_4727
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4727(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4727 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472800
     * @tc.name      : TestCase_4728
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4728(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4728 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_472900
     * @tc.name      : TestCase_4729
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4729(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4729 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473000
     * @tc.name      : TestCase_4730
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4730(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4730 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473100
     * @tc.name      : TestCase_4731
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4731(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4731 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473200
     * @tc.name      : TestCase_4732
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4732(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4732 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473300
     * @tc.name      : TestCase_4733
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4733(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4733 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473400
     * @tc.name      : TestCase_4734
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4734(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4734 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473500
     * @tc.name      : TestCase_4735
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4735(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4735 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473600
     * @tc.name      : TestCase_4736
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4736(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4736 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473700
     * @tc.name      : TestCase_4737
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4737(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4737 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473800
     * @tc.name      : TestCase_4738
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4738(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4738 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_473900
     * @tc.name      : TestCase_4739
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4739(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4739 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474000
     * @tc.name      : TestCase_4740
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4740(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4740 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474100
     * @tc.name      : TestCase_4741
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4741(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4741 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474200
     * @tc.name      : TestCase_4742
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4742(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4742 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474300
     * @tc.name      : TestCase_4743
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4743(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4743 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474400
     * @tc.name      : TestCase_4744
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4744(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4744 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474500
     * @tc.name      : TestCase_4745
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4745(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4745 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474600
     * @tc.name      : TestCase_4746
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4746(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4746 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474700
     * @tc.name      : TestCase_4747
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4747(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4747 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474800
     * @tc.name      : TestCase_4748
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4748(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4748 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_474900
     * @tc.name      : TestCase_4749
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4749(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4749 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475000
     * @tc.name      : TestCase_4750
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4750(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4750 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475100
     * @tc.name      : TestCase_4751
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4751(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4751 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475200
     * @tc.name      : TestCase_4752
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4752(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4752 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475300
     * @tc.name      : TestCase_4753
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4753(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4753 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475400
     * @tc.name      : TestCase_4754
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4754(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4754 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475500
     * @tc.name      : TestCase_4755
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4755(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4755 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475600
     * @tc.name      : TestCase_4756
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4756(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4756 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475700
     * @tc.name      : TestCase_4757
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4757(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4757 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475800
     * @tc.name      : TestCase_4758
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4758(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4758 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_475900
     * @tc.name      : TestCase_4759
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4759(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4759 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476000
     * @tc.name      : TestCase_4760
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4760(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4760 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476100
     * @tc.name      : TestCase_4761
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4761(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4761 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476200
     * @tc.name      : TestCase_4762
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4762(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4762 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476300
     * @tc.name      : TestCase_4763
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4763(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4763 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476400
     * @tc.name      : TestCase_4764
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4764(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4764 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476500
     * @tc.name      : TestCase_4765
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4765(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4765 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476600
     * @tc.name      : TestCase_4766
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4766(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4766 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476700
     * @tc.name      : TestCase_4767
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4767(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4767 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476800
     * @tc.name      : TestCase_4768
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4768(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4768 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_476900
     * @tc.name      : TestCase_4769
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4769(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4769 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477000
     * @tc.name      : TestCase_4770
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4770(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4770 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477100
     * @tc.name      : TestCase_4771
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4771(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4771 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477200
     * @tc.name      : TestCase_4772
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4772(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4772 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477300
     * @tc.name      : TestCase_4773
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4773(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4773 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477400
     * @tc.name      : TestCase_4774
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4774(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4774 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477500
     * @tc.name      : TestCase_4775
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4775(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4775 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477600
     * @tc.name      : TestCase_4776
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4776(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4776 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477700
     * @tc.name      : TestCase_4777
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4777(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4777 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477800
     * @tc.name      : TestCase_4778
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4778(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4778 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_477900
     * @tc.name      : TestCase_4779
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4779(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4779 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478000
     * @tc.name      : TestCase_4780
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4780(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4780 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478100
     * @tc.name      : TestCase_4781
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4781(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4781 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478200
     * @tc.name      : TestCase_4782
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4782(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4782 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478300
     * @tc.name      : TestCase_4783
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4783(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4783 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478400
     * @tc.name      : TestCase_4784
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4784(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4784 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478500
     * @tc.name      : TestCase_4785
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4785(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4785 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478600
     * @tc.name      : TestCase_4786
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4786(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4786 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478700
     * @tc.name      : TestCase_4787
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4787(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4787 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478800
     * @tc.name      : TestCase_4788
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4788(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4788 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_478900
     * @tc.name      : TestCase_4789
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4789(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4789 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479000
     * @tc.name      : TestCase_4790
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4790(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4790 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479100
     * @tc.name      : TestCase_4791
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4791(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4791 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479200
     * @tc.name      : TestCase_4792
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4792(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4792 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479300
     * @tc.name      : TestCase_4793
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4793(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4793 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479400
     * @tc.name      : TestCase_4794
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4794(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4794 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479500
     * @tc.name      : TestCase_4795
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4795(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4795 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479600
     * @tc.name      : TestCase_4796
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4796(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4796 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479700
     * @tc.name      : TestCase_4797
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4797(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4797 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479800
     * @tc.name      : TestCase_4798
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4798(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4798 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_479900
     * @tc.name      : TestCase_4799
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4799(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4799 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480000
     * @tc.name      : TestCase_4800
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4800(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4800 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4800 ends.")
    }
}
