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
class testStartTrace_40 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390100
     * @tc.name      : TestCase_3901
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3901(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3901 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390200
     * @tc.name      : TestCase_3902
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3902(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3902 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390300
     * @tc.name      : TestCase_3903
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3903(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3903 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390400
     * @tc.name      : TestCase_3904
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3904(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3904 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390500
     * @tc.name      : TestCase_3905
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3905(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3905 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390600
     * @tc.name      : TestCase_3906
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3906(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3906 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390700
     * @tc.name      : TestCase_3907
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3907(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3907 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3907 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390800
     * @tc.name      : TestCase_3908
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3908(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3908 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3908 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_390900
     * @tc.name      : TestCase_3909
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3909(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3909 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3909 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391000
     * @tc.name      : TestCase_3910
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3910(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3910 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391100
     * @tc.name      : TestCase_3911
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3911(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3911 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391200
     * @tc.name      : TestCase_3912
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3912(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3912 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391300
     * @tc.name      : TestCase_3913
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3913(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3913 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391400
     * @tc.name      : TestCase_3914
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3914(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3914 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391500
     * @tc.name      : TestCase_3915
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3915(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3915 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391600
     * @tc.name      : TestCase_3916
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3916(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3916 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391700
     * @tc.name      : TestCase_3917
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3917(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3917 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391800
     * @tc.name      : TestCase_3918
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3918(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3918 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_391900
     * @tc.name      : TestCase_3919
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3919(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3919 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392000
     * @tc.name      : TestCase_3920
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "11", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3920(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3920 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("11", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392100
     * @tc.name      : TestCase_3921
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3921(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3921 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392200
     * @tc.name      : TestCase_3922
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3922(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3922 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392300
     * @tc.name      : TestCase_3923
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3923(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3923 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392400
     * @tc.name      : TestCase_3924
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3924(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3924 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392500
     * @tc.name      : TestCase_3925
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3925(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3925 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392600
     * @tc.name      : TestCase_3926
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3926(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3926 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392700
     * @tc.name      : TestCase_3927
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3927(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3927 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392800
     * @tc.name      : TestCase_3928
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3928(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3928 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_392900
     * @tc.name      : TestCase_3929
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3929(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3929 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393000
     * @tc.name      : TestCase_3930
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3930(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3930 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3930 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393100
     * @tc.name      : TestCase_3931
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3931(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3931 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393200
     * @tc.name      : TestCase_3932
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3932(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3932 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393300
     * @tc.name      : TestCase_3933
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3933(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3933 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393400
     * @tc.name      : TestCase_3934
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3934(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3934 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393500
     * @tc.name      : TestCase_3935
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3935(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3935 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393600
     * @tc.name      : TestCase_3936
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3936(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3936 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393700
     * @tc.name      : TestCase_3937
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3937(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3937 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393800
     * @tc.name      : TestCase_3938
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3938(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3938 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_393900
     * @tc.name      : TestCase_3939
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3939(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3939 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394000
     * @tc.name      : TestCase_3940
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3940(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3940 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394100
     * @tc.name      : TestCase_3941
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3941(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3941 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394200
     * @tc.name      : TestCase_3942
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3942(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3942 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394300
     * @tc.name      : TestCase_3943
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3943(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3943 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394400
     * @tc.name      : TestCase_3944
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3944(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3944 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394500
     * @tc.name      : TestCase_3945
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3945(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3945 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394600
     * @tc.name      : TestCase_3946
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3946(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3946 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394700
     * @tc.name      : TestCase_3947
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3947(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3947 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394800
     * @tc.name      : TestCase_3948
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3948(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3948 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_394900
     * @tc.name      : TestCase_3949
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3949(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3949 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395000
     * @tc.name      : TestCase_3950
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3950(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3950 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395100
     * @tc.name      : TestCase_3951
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3951(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3951 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395200
     * @tc.name      : TestCase_3952
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3952(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3952 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395300
     * @tc.name      : TestCase_3953
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3953(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3953 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395400
     * @tc.name      : TestCase_3954
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3954(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3954 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395500
     * @tc.name      : TestCase_3955
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3955(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3955 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395600
     * @tc.name      : TestCase_3956
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3956(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3956 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395700
     * @tc.name      : TestCase_3957
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3957(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3957 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395800
     * @tc.name      : TestCase_3958
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3958(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3958 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_395900
     * @tc.name      : TestCase_3959
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3959(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3959 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396000
     * @tc.name      : TestCase_3960
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3960(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3960 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3960 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396100
     * @tc.name      : TestCase_3961
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3961(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3961 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3961 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396200
     * @tc.name      : TestCase_3962
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3962(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3962 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3962 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396300
     * @tc.name      : TestCase_3963
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3963(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3963 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3963 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396400
     * @tc.name      : TestCase_3964
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3964(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3964 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3964 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396500
     * @tc.name      : TestCase_3965
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3965(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3965 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3965 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396600
     * @tc.name      : TestCase_3966
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3966(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3966 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3966 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396700
     * @tc.name      : TestCase_3967
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3967(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3967 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3967 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396800
     * @tc.name      : TestCase_3968
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3968(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3968 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3968 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_396900
     * @tc.name      : TestCase_3969
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3969(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3969 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3969 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397000
     * @tc.name      : TestCase_3970
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3970(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3970 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3970 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397100
     * @tc.name      : TestCase_3971
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3971(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3971 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3971 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397200
     * @tc.name      : TestCase_3972
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3972(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3972 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3972 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397300
     * @tc.name      : TestCase_3973
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3973(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3973 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3973 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397400
     * @tc.name      : TestCase_3974
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3974(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3974 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3974 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397500
     * @tc.name      : TestCase_3975
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3975(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3975 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3975 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397600
     * @tc.name      : TestCase_3976
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3976(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3976 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3976 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397700
     * @tc.name      : TestCase_3977
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3977(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3977 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3977 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397800
     * @tc.name      : TestCase_3978
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3978(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3978 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3978 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_397900
     * @tc.name      : TestCase_3979
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3979(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3979 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3979 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398000
     * @tc.name      : TestCase_3980
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3980(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3980 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3980 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398100
     * @tc.name      : TestCase_3981
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3981(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3981 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3981 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398200
     * @tc.name      : TestCase_3982
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3982(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3982 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3982 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398300
     * @tc.name      : TestCase_3983
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3983(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3983 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3983 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398400
     * @tc.name      : TestCase_3984
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3984(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3984 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3984 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398500
     * @tc.name      : TestCase_3985
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3985(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3985 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3985 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398600
     * @tc.name      : TestCase_3986
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3986(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3986 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3986 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398700
     * @tc.name      : TestCase_3987
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3987(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3987 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3987 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398800
     * @tc.name      : TestCase_3988
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3988(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3988 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3988 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_398900
     * @tc.name      : TestCase_3989
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3989(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3989 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3989 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399000
     * @tc.name      : TestCase_3990
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3990(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3990 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3990 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399100
     * @tc.name      : TestCase_3991
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3991(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3991 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399200
     * @tc.name      : TestCase_3992
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3992(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3992 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399300
     * @tc.name      : TestCase_3993
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3993(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3993 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399400
     * @tc.name      : TestCase_3994
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3994(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3994 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399500
     * @tc.name      : TestCase_3995
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3995(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3995 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399600
     * @tc.name      : TestCase_3996
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3996(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3996 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399700
     * @tc.name      : TestCase_3997
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3997(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3997 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399800
     * @tc.name      : TestCase_3998
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3998(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3998 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_399900
     * @tc.name      : TestCase_3999
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3999(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3999 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400000
     * @tc.name      : TestCase_4000
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4000(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4000 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4000 ends.")
    }
}
