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
class testStartTrace_50 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490100
     * @tc.name      : TestCase_4901
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4901(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4901 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490200
     * @tc.name      : TestCase_4902
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4902(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4902 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490300
     * @tc.name      : TestCase_4903
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4903(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4903 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490400
     * @tc.name      : TestCase_4904
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4904(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4904 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490500
     * @tc.name      : TestCase_4905
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4905(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4905 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490600
     * @tc.name      : TestCase_4906
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4906(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4906 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490700
     * @tc.name      : TestCase_4907
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4907(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4907 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4907 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490800
     * @tc.name      : TestCase_4908
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4908(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4908 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4908 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_490900
     * @tc.name      : TestCase_4909
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4909(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4909 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4909 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491000
     * @tc.name      : TestCase_4910
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4910(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4910 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491100
     * @tc.name      : TestCase_4911
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4911(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4911 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491200
     * @tc.name      : TestCase_4912
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4912(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4912 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491300
     * @tc.name      : TestCase_4913
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4913(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4913 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491400
     * @tc.name      : TestCase_4914
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4914(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4914 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491500
     * @tc.name      : TestCase_4915
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4915(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4915 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491600
     * @tc.name      : TestCase_4916
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4916(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4916 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491700
     * @tc.name      : TestCase_4917
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4917(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4917 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491800
     * @tc.name      : TestCase_4918
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4918(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4918 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_491900
     * @tc.name      : TestCase_4919
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4919(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4919 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492000
     * @tc.name      : TestCase_4920
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4920(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4920 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492100
     * @tc.name      : TestCase_4921
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4921(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4921 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492200
     * @tc.name      : TestCase_4922
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4922(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4922 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492300
     * @tc.name      : TestCase_4923
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4923(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4923 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492400
     * @tc.name      : TestCase_4924
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4924(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4924 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492500
     * @tc.name      : TestCase_4925
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4925(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4925 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492600
     * @tc.name      : TestCase_4926
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4926(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4926 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492700
     * @tc.name      : TestCase_4927
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4927(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4927 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492800
     * @tc.name      : TestCase_4928
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4928(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4928 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_492900
     * @tc.name      : TestCase_4929
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4929(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4929 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493000
     * @tc.name      : TestCase_4930
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4930(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4930 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4930 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493100
     * @tc.name      : TestCase_4931
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4931(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4931 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493200
     * @tc.name      : TestCase_4932
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4932(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4932 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493300
     * @tc.name      : TestCase_4933
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4933(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4933 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493400
     * @tc.name      : TestCase_4934
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4934(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4934 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493500
     * @tc.name      : TestCase_4935
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4935(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4935 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493600
     * @tc.name      : TestCase_4936
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4936(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4936 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493700
     * @tc.name      : TestCase_4937
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4937(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4937 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493800
     * @tc.name      : TestCase_4938
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4938(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4938 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_493900
     * @tc.name      : TestCase_4939
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4939(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4939 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494000
     * @tc.name      : TestCase_4940
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4940(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4940 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494100
     * @tc.name      : TestCase_4941
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4941(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4941 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494200
     * @tc.name      : TestCase_4942
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4942(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4942 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494300
     * @tc.name      : TestCase_4943
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4943(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4943 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494400
     * @tc.name      : TestCase_4944
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4944(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4944 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494500
     * @tc.name      : TestCase_4945
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4945(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4945 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494600
     * @tc.name      : TestCase_4946
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4946(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4946 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494700
     * @tc.name      : TestCase_4947
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4947(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4947 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494800
     * @tc.name      : TestCase_4948
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4948(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4948 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_494900
     * @tc.name      : TestCase_4949
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4949(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4949 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495000
     * @tc.name      : TestCase_4950
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4950(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4950 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495100
     * @tc.name      : TestCase_4951
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4951(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4951 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495200
     * @tc.name      : TestCase_4952
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4952(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4952 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495300
     * @tc.name      : TestCase_4953
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4953(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4953 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495400
     * @tc.name      : TestCase_4954
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4954(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4954 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495500
     * @tc.name      : TestCase_4955
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4955(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4955 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495600
     * @tc.name      : TestCase_4956
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4956(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4956 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495700
     * @tc.name      : TestCase_4957
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4957(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4957 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495800
     * @tc.name      : TestCase_4958
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4958(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4958 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_495900
     * @tc.name      : TestCase_4959
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4959(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4959 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496000
     * @tc.name      : TestCase_4960
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4960(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4960 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4960 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496100
     * @tc.name      : TestCase_4961
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4961(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4961 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4961 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496200
     * @tc.name      : TestCase_4962
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4962(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4962 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4962 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496300
     * @tc.name      : TestCase_4963
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4963(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4963 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4963 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496400
     * @tc.name      : TestCase_4964
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4964(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4964 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4964 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496500
     * @tc.name      : TestCase_4965
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4965(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4965 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4965 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496600
     * @tc.name      : TestCase_4966
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4966(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4966 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4966 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496700
     * @tc.name      : TestCase_4967
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4967(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4967 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4967 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496800
     * @tc.name      : TestCase_4968
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4968(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4968 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4968 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_496900
     * @tc.name      : TestCase_4969
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4969(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4969 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4969 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497000
     * @tc.name      : TestCase_4970
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4970(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4970 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4970 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497100
     * @tc.name      : TestCase_4971
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4971(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4971 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4971 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497200
     * @tc.name      : TestCase_4972
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4972(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4972 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4972 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497300
     * @tc.name      : TestCase_4973
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4973(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4973 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4973 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497400
     * @tc.name      : TestCase_4974
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4974(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4974 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4974 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497500
     * @tc.name      : TestCase_4975
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4975(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4975 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4975 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497600
     * @tc.name      : TestCase_4976
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4976(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4976 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4976 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497700
     * @tc.name      : TestCase_4977
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4977(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4977 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4977 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497800
     * @tc.name      : TestCase_4978
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4978(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4978 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4978 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_497900
     * @tc.name      : TestCase_4979
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4979(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4979 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4979 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498000
     * @tc.name      : TestCase_4980
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4980(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4980 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4980 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498100
     * @tc.name      : TestCase_4981
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4981(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4981 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4981 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498200
     * @tc.name      : TestCase_4982
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4982(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4982 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4982 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498300
     * @tc.name      : TestCase_4983
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4983(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4983 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4983 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498400
     * @tc.name      : TestCase_4984
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4984(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4984 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4984 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498500
     * @tc.name      : TestCase_4985
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4985(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4985 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4985 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498600
     * @tc.name      : TestCase_4986
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4986(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4986 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4986 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498700
     * @tc.name      : TestCase_4987
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4987(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4987 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4987 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498800
     * @tc.name      : TestCase_4988
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4988(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4988 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4988 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_498900
     * @tc.name      : TestCase_4989
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4989(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4989 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4989 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499000
     * @tc.name      : TestCase_4990
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4990(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4990 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4990 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499100
     * @tc.name      : TestCase_4991
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4991(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4991 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499200
     * @tc.name      : TestCase_4992
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4992(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4992 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499300
     * @tc.name      : TestCase_4993
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4993(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4993 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499400
     * @tc.name      : TestCase_4994
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4994(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4994 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499500
     * @tc.name      : TestCase_4995
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4995(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4995 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499600
     * @tc.name      : TestCase_4996
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4996(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4996 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499700
     * @tc.name      : TestCase_4997
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4997(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4997 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499800
     * @tc.name      : TestCase_4998
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "22", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4998(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4998 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("22", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_499900
     * @tc.name      : TestCase_4999
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4999(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4999 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500000
     * @tc.name      : TestCase_5000
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5000(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5000 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5000 ends.")
    }
}
