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
class testStartTrace_49 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480100
     * @tc.name      : TestCase_4801
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4801(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4801 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480200
     * @tc.name      : TestCase_4802
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "20", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4802(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4802 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("20", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480300
     * @tc.name      : TestCase_4803
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4803(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4803 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480400
     * @tc.name      : TestCase_4804
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4804(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4804 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480500
     * @tc.name      : TestCase_4805
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4805(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4805 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480600
     * @tc.name      : TestCase_4806
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4806(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4806 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480700
     * @tc.name      : TestCase_4807
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4807(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4807 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480800
     * @tc.name      : TestCase_4808
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4808(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4808 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_480900
     * @tc.name      : TestCase_4809
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4809(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4809 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481000
     * @tc.name      : TestCase_4810
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4810(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4810 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481100
     * @tc.name      : TestCase_4811
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4811(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4811 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481200
     * @tc.name      : TestCase_4812
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4812(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4812 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481300
     * @tc.name      : TestCase_4813
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4813(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4813 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481400
     * @tc.name      : TestCase_4814
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4814(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4814 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481500
     * @tc.name      : TestCase_4815
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4815(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4815 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481600
     * @tc.name      : TestCase_4816
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4816(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4816 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481700
     * @tc.name      : TestCase_4817
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4817(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4817 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481800
     * @tc.name      : TestCase_4818
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4818(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4818 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_481900
     * @tc.name      : TestCase_4819
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4819(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4819 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482000
     * @tc.name      : TestCase_4820
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4820(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4820 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482100
     * @tc.name      : TestCase_4821
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4821(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4821 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482200
     * @tc.name      : TestCase_4822
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4822(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4822 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482300
     * @tc.name      : TestCase_4823
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4823(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4823 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482400
     * @tc.name      : TestCase_4824
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4824(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4824 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482500
     * @tc.name      : TestCase_4825
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4825(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4825 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482600
     * @tc.name      : TestCase_4826
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4826(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4826 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482700
     * @tc.name      : TestCase_4827
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4827(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4827 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482800
     * @tc.name      : TestCase_4828
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4828(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4828 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_482900
     * @tc.name      : TestCase_4829
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4829(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4829 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483000
     * @tc.name      : TestCase_4830
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4830(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4830 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483100
     * @tc.name      : TestCase_4831
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4831(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4831 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483200
     * @tc.name      : TestCase_4832
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4832(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4832 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483300
     * @tc.name      : TestCase_4833
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4833(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4833 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483400
     * @tc.name      : TestCase_4834
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4834(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4834 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483500
     * @tc.name      : TestCase_4835
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4835(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4835 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483600
     * @tc.name      : TestCase_4836
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4836(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4836 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483700
     * @tc.name      : TestCase_4837
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4837(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4837 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483800
     * @tc.name      : TestCase_4838
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4838(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4838 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_483900
     * @tc.name      : TestCase_4839
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4839(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4839 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484000
     * @tc.name      : TestCase_4840
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4840(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4840 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484100
     * @tc.name      : TestCase_4841
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4841(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4841 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484200
     * @tc.name      : TestCase_4842
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4842(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4842 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484300
     * @tc.name      : TestCase_4843
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4843(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4843 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484400
     * @tc.name      : TestCase_4844
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4844(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4844 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484500
     * @tc.name      : TestCase_4845
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4845(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4845 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484600
     * @tc.name      : TestCase_4846
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4846(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4846 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484700
     * @tc.name      : TestCase_4847
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4847(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4847 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484800
     * @tc.name      : TestCase_4848
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4848(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4848 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_484900
     * @tc.name      : TestCase_4849
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4849(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4849 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485000
     * @tc.name      : TestCase_4850
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4850(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4850 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485100
     * @tc.name      : TestCase_4851
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4851(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4851 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485200
     * @tc.name      : TestCase_4852
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4852(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4852 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485300
     * @tc.name      : TestCase_4853
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4853(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4853 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485400
     * @tc.name      : TestCase_4854
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4854(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4854 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485500
     * @tc.name      : TestCase_4855
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4855(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4855 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485600
     * @tc.name      : TestCase_4856
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4856(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4856 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485700
     * @tc.name      : TestCase_4857
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4857(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4857 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485800
     * @tc.name      : TestCase_4858
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4858(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4858 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_485900
     * @tc.name      : TestCase_4859
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4859(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4859 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486000
     * @tc.name      : TestCase_4860
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4860(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4860 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486100
     * @tc.name      : TestCase_4861
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4861(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4861 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486200
     * @tc.name      : TestCase_4862
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4862(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4862 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486300
     * @tc.name      : TestCase_4863
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4863(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4863 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486400
     * @tc.name      : TestCase_4864
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4864(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4864 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486500
     * @tc.name      : TestCase_4865
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4865(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4865 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486600
     * @tc.name      : TestCase_4866
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4866(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4866 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486700
     * @tc.name      : TestCase_4867
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4867(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4867 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486800
     * @tc.name      : TestCase_4868
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4868(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4868 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_486900
     * @tc.name      : TestCase_4869
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4869(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4869 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487000
     * @tc.name      : TestCase_4870
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4870(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4870 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487100
     * @tc.name      : TestCase_4871
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4871(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4871 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487200
     * @tc.name      : TestCase_4872
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4872(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4872 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487300
     * @tc.name      : TestCase_4873
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4873(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4873 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487400
     * @tc.name      : TestCase_4874
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4874(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4874 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487500
     * @tc.name      : TestCase_4875
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4875(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4875 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487600
     * @tc.name      : TestCase_4876
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4876(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4876 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487700
     * @tc.name      : TestCase_4877
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4877(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4877 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487800
     * @tc.name      : TestCase_4878
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4878(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4878 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_487900
     * @tc.name      : TestCase_4879
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4879(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4879 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488000
     * @tc.name      : TestCase_4880
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4880(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4880 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488100
     * @tc.name      : TestCase_4881
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4881(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4881 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488200
     * @tc.name      : TestCase_4882
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4882(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4882 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488300
     * @tc.name      : TestCase_4883
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4883(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4883 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488400
     * @tc.name      : TestCase_4884
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4884(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4884 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488500
     * @tc.name      : TestCase_4885
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4885(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4885 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488600
     * @tc.name      : TestCase_4886
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4886(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4886 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488700
     * @tc.name      : TestCase_4887
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4887(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4887 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488800
     * @tc.name      : TestCase_4888
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4888(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4888 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_488900
     * @tc.name      : TestCase_4889
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4889(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4889 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489000
     * @tc.name      : TestCase_4890
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4890(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4890 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489100
     * @tc.name      : TestCase_4891
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4891(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4891 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489200
     * @tc.name      : TestCase_4892
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4892(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4892 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489300
     * @tc.name      : TestCase_4893
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4893(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4893 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489400
     * @tc.name      : TestCase_4894
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4894(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4894 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489500
     * @tc.name      : TestCase_4895
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4895(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4895 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489600
     * @tc.name      : TestCase_4896
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4896(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4896 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489700
     * @tc.name      : TestCase_4897
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4897(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4897 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489800
     * @tc.name      : TestCase_4898
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4898(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4898 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_489900
     * @tc.name      : TestCase_4899
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4899(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4899 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490000
     * @tc.name      : TestCase_4900
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "21", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4900(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4900 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("21", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4900 ends.")
    }
}
