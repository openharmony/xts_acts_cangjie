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
class testStartTrace_9 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80100
     * @tc.name      : TestCase_801
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_801(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_801 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80200
     * @tc.name      : TestCase_802
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_802(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_802 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80300
     * @tc.name      : TestCase_803
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_803(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_803 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80400
     * @tc.name      : TestCase_804
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_804(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_804 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80500
     * @tc.name      : TestCase_805
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_805(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_805 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80600
     * @tc.name      : TestCase_806
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_806(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_806 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80700
     * @tc.name      : TestCase_807
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_807(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_807 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80800
     * @tc.name      : TestCase_808
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_808(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_808 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_80900
     * @tc.name      : TestCase_809
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_809(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_809 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81000
     * @tc.name      : TestCase_810
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_810(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_810 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81100
     * @tc.name      : TestCase_811
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_811(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_811 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81200
     * @tc.name      : TestCase_812
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_812(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_812 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81300
     * @tc.name      : TestCase_813
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_813(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_813 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81400
     * @tc.name      : TestCase_814
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_814(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_814 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81500
     * @tc.name      : TestCase_815
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_815(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_815 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81600
     * @tc.name      : TestCase_816
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_816(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_816 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81700
     * @tc.name      : TestCase_817
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_817(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_817 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81800
     * @tc.name      : TestCase_818
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_818(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_818 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_81900
     * @tc.name      : TestCase_819
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_819(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_819 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82000
     * @tc.name      : TestCase_820
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_820(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_820 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82100
     * @tc.name      : TestCase_821
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_821(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_821 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82200
     * @tc.name      : TestCase_822
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_822(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_822 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82300
     * @tc.name      : TestCase_823
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_823(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_823 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82400
     * @tc.name      : TestCase_824
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_824(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_824 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82500
     * @tc.name      : TestCase_825
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_825(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_825 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82600
     * @tc.name      : TestCase_826
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_826(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_826 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82700
     * @tc.name      : TestCase_827
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_827(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_827 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82800
     * @tc.name      : TestCase_828
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_828(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_828 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_82900
     * @tc.name      : TestCase_829
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_829(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_829 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83000
     * @tc.name      : TestCase_830
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_830(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_830 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83100
     * @tc.name      : TestCase_831
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_831(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_831 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83200
     * @tc.name      : TestCase_832
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_832(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_832 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83300
     * @tc.name      : TestCase_833
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_833(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_833 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83400
     * @tc.name      : TestCase_834
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_834(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_834 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83500
     * @tc.name      : TestCase_835
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_835(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_835 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83600
     * @tc.name      : TestCase_836
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_836(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_836 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83700
     * @tc.name      : TestCase_837
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_837(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_837 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83800
     * @tc.name      : TestCase_838
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_838(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_838 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_83900
     * @tc.name      : TestCase_839
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_839(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_839 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84000
     * @tc.name      : TestCase_840
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_840(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_840 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84100
     * @tc.name      : TestCase_841
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_841(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_841 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84200
     * @tc.name      : TestCase_842
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_842(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_842 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84300
     * @tc.name      : TestCase_843
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_843(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_843 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84400
     * @tc.name      : TestCase_844
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_844(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_844 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84500
     * @tc.name      : TestCase_845
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_845(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_845 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84600
     * @tc.name      : TestCase_846
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_846(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_846 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84700
     * @tc.name      : TestCase_847
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_847(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_847 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84800
     * @tc.name      : TestCase_848
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_848(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_848 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_84900
     * @tc.name      : TestCase_849
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_849(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_849 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85000
     * @tc.name      : TestCase_850
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_850(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_850 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85100
     * @tc.name      : TestCase_851
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_851(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_851 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85200
     * @tc.name      : TestCase_852
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_852(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_852 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85300
     * @tc.name      : TestCase_853
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_853(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_853 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85400
     * @tc.name      : TestCase_854
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_854(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_854 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85500
     * @tc.name      : TestCase_855
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_855(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_855 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85600
     * @tc.name      : TestCase_856
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_856(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_856 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85700
     * @tc.name      : TestCase_857
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_857(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_857 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85800
     * @tc.name      : TestCase_858
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_858(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_858 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_85900
     * @tc.name      : TestCase_859
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_859(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_859 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86000
     * @tc.name      : TestCase_860
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_860(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_860 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86100
     * @tc.name      : TestCase_861
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_861(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_861 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86200
     * @tc.name      : TestCase_862
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_862(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_862 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86300
     * @tc.name      : TestCase_863
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_863(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_863 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86400
     * @tc.name      : TestCase_864
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_864(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_864 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86500
     * @tc.name      : TestCase_865
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_865(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_865 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86600
     * @tc.name      : TestCase_866
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_866(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_866 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86700
     * @tc.name      : TestCase_867
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_867(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_867 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86800
     * @tc.name      : TestCase_868
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_868(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_868 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_86900
     * @tc.name      : TestCase_869
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_869(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_869 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87000
     * @tc.name      : TestCase_870
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_870(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_870 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87100
     * @tc.name      : TestCase_871
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_871(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_871 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87200
     * @tc.name      : TestCase_872
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_872(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_872 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87300
     * @tc.name      : TestCase_873
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_873(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_873 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87400
     * @tc.name      : TestCase_874
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_874(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_874 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87500
     * @tc.name      : TestCase_875
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_875(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_875 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87600
     * @tc.name      : TestCase_876
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_876(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_876 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87700
     * @tc.name      : TestCase_877
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_877(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_877 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87800
     * @tc.name      : TestCase_878
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_878(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_878 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_87900
     * @tc.name      : TestCase_879
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_879(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_879 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88000
     * @tc.name      : TestCase_880
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_880(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_880 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88100
     * @tc.name      : TestCase_881
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_881(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_881 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88200
     * @tc.name      : TestCase_882
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "f", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_882(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_882 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("f", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88300
     * @tc.name      : TestCase_883
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_883(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_883 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88400
     * @tc.name      : TestCase_884
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_884(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_884 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88500
     * @tc.name      : TestCase_885
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_885(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_885 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88600
     * @tc.name      : TestCase_886
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_886(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_886 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88700
     * @tc.name      : TestCase_887
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_887(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_887 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88800
     * @tc.name      : TestCase_888
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_888(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_888 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_88900
     * @tc.name      : TestCase_889
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_889(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_889 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89000
     * @tc.name      : TestCase_890
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_890(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_890 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89100
     * @tc.name      : TestCase_891
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_891(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_891 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89200
     * @tc.name      : TestCase_892
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_892(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_892 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89300
     * @tc.name      : TestCase_893
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_893(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_893 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89400
     * @tc.name      : TestCase_894
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_894(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_894 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89500
     * @tc.name      : TestCase_895
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_895(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_895 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89600
     * @tc.name      : TestCase_896
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_896(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_896 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89700
     * @tc.name      : TestCase_897
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_897(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_897 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89800
     * @tc.name      : TestCase_898
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_898(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_898 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_89900
     * @tc.name      : TestCase_899
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_899(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_899 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_90000
     * @tc.name      : TestCase_900
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "g", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_900(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_900 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("g", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_900 ends.")
    }
}
