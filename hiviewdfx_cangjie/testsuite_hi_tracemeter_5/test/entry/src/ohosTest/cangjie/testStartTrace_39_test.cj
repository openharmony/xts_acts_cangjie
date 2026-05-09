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
class testStartTrace_39 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380100
     * @tc.name      : TestCase_3801
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3801(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3801 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380200
     * @tc.name      : TestCase_3802
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3802(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3802 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380300
     * @tc.name      : TestCase_3803
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3803(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3803 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380400
     * @tc.name      : TestCase_3804
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3804(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3804 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380500
     * @tc.name      : TestCase_3805
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3805(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3805 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380600
     * @tc.name      : TestCase_3806
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3806(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3806 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380700
     * @tc.name      : TestCase_3807
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3807(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3807 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380800
     * @tc.name      : TestCase_3808
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3808(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3808 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_380900
     * @tc.name      : TestCase_3809
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3809(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3809 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381000
     * @tc.name      : TestCase_3810
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3810(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3810 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381100
     * @tc.name      : TestCase_3811
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3811(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3811 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381200
     * @tc.name      : TestCase_3812
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3812(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3812 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381300
     * @tc.name      : TestCase_3813
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3813(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3813 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381400
     * @tc.name      : TestCase_3814
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3814(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3814 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381500
     * @tc.name      : TestCase_3815
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3815(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3815 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381600
     * @tc.name      : TestCase_3816
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3816(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3816 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381700
     * @tc.name      : TestCase_3817
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3817(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3817 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381800
     * @tc.name      : TestCase_3818
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3818(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3818 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_381900
     * @tc.name      : TestCase_3819
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3819(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3819 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382000
     * @tc.name      : TestCase_3820
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3820(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3820 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382100
     * @tc.name      : TestCase_3821
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3821(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3821 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382200
     * @tc.name      : TestCase_3822
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "10", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3822(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3822 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("10", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382300
     * @tc.name      : TestCase_3823
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3823(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3823 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382400
     * @tc.name      : TestCase_3824
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3824(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3824 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382500
     * @tc.name      : TestCase_3825
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3825(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3825 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382600
     * @tc.name      : TestCase_3826
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3826(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3826 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382700
     * @tc.name      : TestCase_3827
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3827(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3827 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382800
     * @tc.name      : TestCase_3828
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3828(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3828 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_382900
     * @tc.name      : TestCase_3829
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3829(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3829 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383000
     * @tc.name      : TestCase_3830
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3830(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3830 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383100
     * @tc.name      : TestCase_3831
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3831(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3831 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383200
     * @tc.name      : TestCase_3832
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3832(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3832 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383300
     * @tc.name      : TestCase_3833
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3833(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3833 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383400
     * @tc.name      : TestCase_3834
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3834(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3834 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383500
     * @tc.name      : TestCase_3835
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3835(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3835 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383600
     * @tc.name      : TestCase_3836
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3836(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3836 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383700
     * @tc.name      : TestCase_3837
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3837(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3837 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383800
     * @tc.name      : TestCase_3838
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3838(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3838 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_383900
     * @tc.name      : TestCase_3839
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3839(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3839 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384000
     * @tc.name      : TestCase_3840
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3840(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3840 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384100
     * @tc.name      : TestCase_3841
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3841(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3841 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384200
     * @tc.name      : TestCase_3842
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3842(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3842 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384300
     * @tc.name      : TestCase_3843
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3843(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3843 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384400
     * @tc.name      : TestCase_3844
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3844(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3844 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384500
     * @tc.name      : TestCase_3845
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3845(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3845 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384600
     * @tc.name      : TestCase_3846
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3846(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3846 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384700
     * @tc.name      : TestCase_3847
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3847(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3847 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384800
     * @tc.name      : TestCase_3848
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3848(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3848 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_384900
     * @tc.name      : TestCase_3849
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3849(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3849 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385000
     * @tc.name      : TestCase_3850
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3850(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3850 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385100
     * @tc.name      : TestCase_3851
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3851(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3851 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385200
     * @tc.name      : TestCase_3852
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3852(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3852 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385300
     * @tc.name      : TestCase_3853
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3853(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3853 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385400
     * @tc.name      : TestCase_3854
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3854(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3854 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385500
     * @tc.name      : TestCase_3855
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3855(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3855 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385600
     * @tc.name      : TestCase_3856
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3856(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3856 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385700
     * @tc.name      : TestCase_3857
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3857(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3857 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385800
     * @tc.name      : TestCase_3858
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3858(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3858 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_385900
     * @tc.name      : TestCase_3859
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3859(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3859 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386000
     * @tc.name      : TestCase_3860
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3860(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3860 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386100
     * @tc.name      : TestCase_3861
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3861(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3861 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386200
     * @tc.name      : TestCase_3862
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3862(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3862 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386300
     * @tc.name      : TestCase_3863
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3863(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3863 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386400
     * @tc.name      : TestCase_3864
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3864(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3864 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386500
     * @tc.name      : TestCase_3865
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3865(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3865 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386600
     * @tc.name      : TestCase_3866
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3866(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3866 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386700
     * @tc.name      : TestCase_3867
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3867(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3867 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386800
     * @tc.name      : TestCase_3868
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3868(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3868 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_386900
     * @tc.name      : TestCase_3869
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3869(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3869 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387000
     * @tc.name      : TestCase_3870
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3870(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3870 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387100
     * @tc.name      : TestCase_3871
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3871(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3871 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387200
     * @tc.name      : TestCase_3872
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3872(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3872 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387300
     * @tc.name      : TestCase_3873
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3873(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3873 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387400
     * @tc.name      : TestCase_3874
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3874(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3874 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387500
     * @tc.name      : TestCase_3875
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3875(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3875 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387600
     * @tc.name      : TestCase_3876
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3876(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3876 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387700
     * @tc.name      : TestCase_3877
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3877(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3877 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387800
     * @tc.name      : TestCase_3878
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3878(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3878 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_387900
     * @tc.name      : TestCase_3879
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3879(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3879 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388000
     * @tc.name      : TestCase_3880
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3880(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3880 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388100
     * @tc.name      : TestCase_3881
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3881(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3881 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388200
     * @tc.name      : TestCase_3882
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3882(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3882 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388300
     * @tc.name      : TestCase_3883
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3883(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3883 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388400
     * @tc.name      : TestCase_3884
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3884(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3884 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388500
     * @tc.name      : TestCase_3885
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3885(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3885 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388600
     * @tc.name      : TestCase_3886
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3886(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3886 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388700
     * @tc.name      : TestCase_3887
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3887(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3887 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388800
     * @tc.name      : TestCase_3888
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3888(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3888 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_388900
     * @tc.name      : TestCase_3889
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3889(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3889 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389000
     * @tc.name      : TestCase_3890
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3890(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3890 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389100
     * @tc.name      : TestCase_3891
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3891(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3891 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389200
     * @tc.name      : TestCase_3892
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3892(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3892 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389300
     * @tc.name      : TestCase_3893
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3893(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3893 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389400
     * @tc.name      : TestCase_3894
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3894(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3894 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389500
     * @tc.name      : TestCase_3895
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3895(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3895 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389600
     * @tc.name      : TestCase_3896
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3896(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3896 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389700
     * @tc.name      : TestCase_3897
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3897(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3897 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389800
     * @tc.name      : TestCase_3898
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3898(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3898 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_389900
     * @tc.name      : TestCase_3899
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3899(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3899 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390000
     * @tc.name      : TestCase_3900
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3900(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3900 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3900 ends.")
    }
}
