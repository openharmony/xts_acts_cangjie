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
class testStartTrace_8 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70100
     * @tc.name      : TestCase_701
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_701(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_701 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70200
     * @tc.name      : TestCase_702
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_702(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_702 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70300
     * @tc.name      : TestCase_703
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_703(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_703 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70400
     * @tc.name      : TestCase_704
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_704(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_704 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70500
     * @tc.name      : TestCase_705
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_705(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_705 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70600
     * @tc.name      : TestCase_706
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_706(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_706 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70700
     * @tc.name      : TestCase_707
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_707(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_707 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70800
     * @tc.name      : TestCase_708
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_708(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_708 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_70900
     * @tc.name      : TestCase_709
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_709(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_709 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71000
     * @tc.name      : TestCase_710
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_710(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_710 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71100
     * @tc.name      : TestCase_711
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_711(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_711 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71200
     * @tc.name      : TestCase_712
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_712(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_712 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71300
     * @tc.name      : TestCase_713
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_713(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_713 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71400
     * @tc.name      : TestCase_714
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_714(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_714 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71500
     * @tc.name      : TestCase_715
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_715(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_715 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71600
     * @tc.name      : TestCase_716
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_716(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_716 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71700
     * @tc.name      : TestCase_717
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_717(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_717 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71800
     * @tc.name      : TestCase_718
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_718(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_718 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_71900
     * @tc.name      : TestCase_719
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_719(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_719 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72000
     * @tc.name      : TestCase_720
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_720(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_720 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72100
     * @tc.name      : TestCase_721
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_721(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_721 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72200
     * @tc.name      : TestCase_722
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_722(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_722 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72300
     * @tc.name      : TestCase_723
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_723(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_723 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72400
     * @tc.name      : TestCase_724
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_724(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_724 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72500
     * @tc.name      : TestCase_725
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_725(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_725 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72600
     * @tc.name      : TestCase_726
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_726(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_726 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72700
     * @tc.name      : TestCase_727
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_727(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_727 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72800
     * @tc.name      : TestCase_728
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_728(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_728 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_72900
     * @tc.name      : TestCase_729
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_729(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_729 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73000
     * @tc.name      : TestCase_730
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_730(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_730 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73100
     * @tc.name      : TestCase_731
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_731(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_731 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73200
     * @tc.name      : TestCase_732
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_732(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_732 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73300
     * @tc.name      : TestCase_733
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_733(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_733 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73400
     * @tc.name      : TestCase_734
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_734(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_734 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73500
     * @tc.name      : TestCase_735
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_735(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_735 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73600
     * @tc.name      : TestCase_736
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_736(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_736 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73700
     * @tc.name      : TestCase_737
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_737(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_737 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73800
     * @tc.name      : TestCase_738
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_738(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_738 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_73900
     * @tc.name      : TestCase_739
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_739(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_739 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74000
     * @tc.name      : TestCase_740
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_740(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_740 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74100
     * @tc.name      : TestCase_741
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_741(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_741 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74200
     * @tc.name      : TestCase_742
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_742(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_742 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74300
     * @tc.name      : TestCase_743
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_743(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_743 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74400
     * @tc.name      : TestCase_744
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_744(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_744 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74500
     * @tc.name      : TestCase_745
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_745(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_745 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74600
     * @tc.name      : TestCase_746
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_746(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_746 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74700
     * @tc.name      : TestCase_747
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_747(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_747 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74800
     * @tc.name      : TestCase_748
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_748(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_748 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_74900
     * @tc.name      : TestCase_749
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_749(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_749 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75000
     * @tc.name      : TestCase_750
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_750(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_750 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75100
     * @tc.name      : TestCase_751
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_751(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_751 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75200
     * @tc.name      : TestCase_752
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_752(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_752 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75300
     * @tc.name      : TestCase_753
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_753(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_753 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75400
     * @tc.name      : TestCase_754
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_754(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_754 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75500
     * @tc.name      : TestCase_755
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_755(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_755 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75600
     * @tc.name      : TestCase_756
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_756(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_756 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75700
     * @tc.name      : TestCase_757
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_757(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_757 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75800
     * @tc.name      : TestCase_758
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_758(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_758 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_75900
     * @tc.name      : TestCase_759
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_759(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_759 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76000
     * @tc.name      : TestCase_760
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_760(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_760 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76100
     * @tc.name      : TestCase_761
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_761(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_761 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76200
     * @tc.name      : TestCase_762
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_762(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_762 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76300
     * @tc.name      : TestCase_763
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_763(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_763 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76400
     * @tc.name      : TestCase_764
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_764(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_764 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76500
     * @tc.name      : TestCase_765
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_765(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_765 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76600
     * @tc.name      : TestCase_766
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_766(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_766 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76700
     * @tc.name      : TestCase_767
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_767(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_767 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76800
     * @tc.name      : TestCase_768
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_768(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_768 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_76900
     * @tc.name      : TestCase_769
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_769(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_769 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77000
     * @tc.name      : TestCase_770
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_770(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_770 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77100
     * @tc.name      : TestCase_771
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_771(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_771 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77200
     * @tc.name      : TestCase_772
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_772(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_772 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77300
     * @tc.name      : TestCase_773
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_773(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_773 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77400
     * @tc.name      : TestCase_774
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_774(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_774 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77500
     * @tc.name      : TestCase_775
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_775(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_775 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77600
     * @tc.name      : TestCase_776
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_776(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_776 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77700
     * @tc.name      : TestCase_777
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_777(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_777 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77800
     * @tc.name      : TestCase_778
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_778(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_778 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_77900
     * @tc.name      : TestCase_779
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_779(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_779 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78000
     * @tc.name      : TestCase_780
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_780(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_780 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78100
     * @tc.name      : TestCase_781
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_781(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_781 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78200
     * @tc.name      : TestCase_782
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_782(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_782 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78300
     * @tc.name      : TestCase_783
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_783(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_783 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78400
     * @tc.name      : TestCase_784
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "e", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_784(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_784 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("e", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78500
     * @tc.name      : TestCase_785
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_785(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_785 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78600
     * @tc.name      : TestCase_786
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_786(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_786 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78700
     * @tc.name      : TestCase_787
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_787(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_787 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78800
     * @tc.name      : TestCase_788
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_788(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_788 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_78900
     * @tc.name      : TestCase_789
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_789(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_789 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79000
     * @tc.name      : TestCase_790
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_790(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_790 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79100
     * @tc.name      : TestCase_791
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_791(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_791 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79200
     * @tc.name      : TestCase_792
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_792(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_792 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79300
     * @tc.name      : TestCase_793
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_793(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_793 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79400
     * @tc.name      : TestCase_794
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_794(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_794 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79500
     * @tc.name      : TestCase_795
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_795(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_795 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79600
     * @tc.name      : TestCase_796
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_796(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_796 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79700
     * @tc.name      : TestCase_797
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_797(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_797 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79800
     * @tc.name      : TestCase_798
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_798(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_798 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_79900
     * @tc.name      : TestCase_799
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_799(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_799 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80000
     * @tc.name      : TestCase_800
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_800(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_800 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_800 ends.")
    }
}
