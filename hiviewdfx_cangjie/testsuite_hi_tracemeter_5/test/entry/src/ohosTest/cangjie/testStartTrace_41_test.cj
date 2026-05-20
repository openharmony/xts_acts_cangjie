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
class testStartTrace_41 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400100
     * @tc.name      : TestCase_4001
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4001 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400200
     * @tc.name      : TestCase_4002
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4002 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400300
     * @tc.name      : TestCase_4003
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4003(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4003 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400400
     * @tc.name      : TestCase_4004
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4004(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4004 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400500
     * @tc.name      : TestCase_4005
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4005(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4005 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400600
     * @tc.name      : TestCase_4006
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4006(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4006 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400700
     * @tc.name      : TestCase_4007
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4007(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4007 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400800
     * @tc.name      : TestCase_4008
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4008(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4008 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_400900
     * @tc.name      : TestCase_4009
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4009(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4009 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401000
     * @tc.name      : TestCase_4010
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4010(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4010 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401100
     * @tc.name      : TestCase_4011
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4011(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4011 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401200
     * @tc.name      : TestCase_4012
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4012(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4012 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401300
     * @tc.name      : TestCase_4013
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4013(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4013 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401400
     * @tc.name      : TestCase_4014
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4014(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4014 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401500
     * @tc.name      : TestCase_4015
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4015(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4015 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401600
     * @tc.name      : TestCase_4016
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4016(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4016 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401700
     * @tc.name      : TestCase_4017
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4017(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4017 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401800
     * @tc.name      : TestCase_4018
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "12", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4018(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4018 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("12", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_401900
     * @tc.name      : TestCase_4019
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4019(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4019 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402000
     * @tc.name      : TestCase_4020
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4020(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4020 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4020 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402100
     * @tc.name      : TestCase_4021
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4021(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4021 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402200
     * @tc.name      : TestCase_4022
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4022(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4022 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4022 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402300
     * @tc.name      : TestCase_4023
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4023(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4023 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4023 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402400
     * @tc.name      : TestCase_4024
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4024(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4024 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4024 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402500
     * @tc.name      : TestCase_4025
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4025(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4025 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4025 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402600
     * @tc.name      : TestCase_4026
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4026(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4026 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4026 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402700
     * @tc.name      : TestCase_4027
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4027(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4027 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4027 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402800
     * @tc.name      : TestCase_4028
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4028(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4028 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4028 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_402900
     * @tc.name      : TestCase_4029
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4029(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4029 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4029 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403000
     * @tc.name      : TestCase_4030
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4030(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4030 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4030 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403100
     * @tc.name      : TestCase_4031
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4031(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4031 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403200
     * @tc.name      : TestCase_4032
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4032(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4032 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4032 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403300
     * @tc.name      : TestCase_4033
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4033(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4033 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4033 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403400
     * @tc.name      : TestCase_4034
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4034(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4034 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4034 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403500
     * @tc.name      : TestCase_4035
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4035(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4035 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4035 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403600
     * @tc.name      : TestCase_4036
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4036(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4036 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4036 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403700
     * @tc.name      : TestCase_4037
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4037(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4037 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4037 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403800
     * @tc.name      : TestCase_4038
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4038(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4038 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4038 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_403900
     * @tc.name      : TestCase_4039
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4039(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4039 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4039 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404000
     * @tc.name      : TestCase_4040
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4040(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4040 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4040 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404100
     * @tc.name      : TestCase_4041
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4041(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4041 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4041 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404200
     * @tc.name      : TestCase_4042
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4042(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4042 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4042 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404300
     * @tc.name      : TestCase_4043
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4043(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4043 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4043 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404400
     * @tc.name      : TestCase_4044
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4044(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4044 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4044 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404500
     * @tc.name      : TestCase_4045
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4045(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4045 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4045 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404600
     * @tc.name      : TestCase_4046
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4046(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4046 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4046 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404700
     * @tc.name      : TestCase_4047
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4047(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4047 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404800
     * @tc.name      : TestCase_4048
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4048(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4048 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4048 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_404900
     * @tc.name      : TestCase_4049
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4049(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4049 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4049 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405000
     * @tc.name      : TestCase_4050
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4050(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4050 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4050 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405100
     * @tc.name      : TestCase_4051
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4051(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4051 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4051 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405200
     * @tc.name      : TestCase_4052
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4052(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4052 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4052 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405300
     * @tc.name      : TestCase_4053
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4053(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4053 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4053 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405400
     * @tc.name      : TestCase_4054
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4054(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4054 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4054 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405500
     * @tc.name      : TestCase_4055
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4055(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4055 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4055 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405600
     * @tc.name      : TestCase_4056
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4056(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4056 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4056 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405700
     * @tc.name      : TestCase_4057
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4057(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4057 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4057 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405800
     * @tc.name      : TestCase_4058
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4058(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4058 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4058 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_405900
     * @tc.name      : TestCase_4059
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4059(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4059 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4059 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406000
     * @tc.name      : TestCase_4060
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4060(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4060 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4060 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406100
     * @tc.name      : TestCase_4061
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4061(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4061 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4061 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406200
     * @tc.name      : TestCase_4062
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4062(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4062 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4062 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406300
     * @tc.name      : TestCase_4063
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4063(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4063 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4063 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406400
     * @tc.name      : TestCase_4064
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4064(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4064 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4064 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406500
     * @tc.name      : TestCase_4065
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4065(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4065 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4065 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406600
     * @tc.name      : TestCase_4066
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4066(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4066 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4066 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406700
     * @tc.name      : TestCase_4067
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4067(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4067 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4067 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406800
     * @tc.name      : TestCase_4068
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4068(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4068 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4068 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_406900
     * @tc.name      : TestCase_4069
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4069(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4069 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4069 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407000
     * @tc.name      : TestCase_4070
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4070(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4070 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4070 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407100
     * @tc.name      : TestCase_4071
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4071(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4071 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4071 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407200
     * @tc.name      : TestCase_4072
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4072(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4072 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4072 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407300
     * @tc.name      : TestCase_4073
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4073(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4073 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4073 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407400
     * @tc.name      : TestCase_4074
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4074(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4074 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4074 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407500
     * @tc.name      : TestCase_4075
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4075(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4075 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4075 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407600
     * @tc.name      : TestCase_4076
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4076(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4076 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4076 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407700
     * @tc.name      : TestCase_4077
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4077(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4077 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4077 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407800
     * @tc.name      : TestCase_4078
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4078(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4078 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4078 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_407900
     * @tc.name      : TestCase_4079
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4079(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4079 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4079 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408000
     * @tc.name      : TestCase_4080
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4080(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4080 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4080 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408100
     * @tc.name      : TestCase_4081
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4081(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4081 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4081 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408200
     * @tc.name      : TestCase_4082
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4082(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4082 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4082 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408300
     * @tc.name      : TestCase_4083
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4083(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4083 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4083 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408400
     * @tc.name      : TestCase_4084
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4084(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4084 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4084 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408500
     * @tc.name      : TestCase_4085
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4085(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4085 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4085 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408600
     * @tc.name      : TestCase_4086
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4086(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4086 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4086 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408700
     * @tc.name      : TestCase_4087
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4087(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4087 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4087 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408800
     * @tc.name      : TestCase_4088
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4088(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4088 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4088 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_408900
     * @tc.name      : TestCase_4089
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4089(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4089 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4089 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409000
     * @tc.name      : TestCase_4090
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4090(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4090 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4090 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409100
     * @tc.name      : TestCase_4091
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4091(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4091 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4091 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409200
     * @tc.name      : TestCase_4092
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4092(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4092 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4092 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409300
     * @tc.name      : TestCase_4093
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4093(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4093 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4093 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409400
     * @tc.name      : TestCase_4094
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4094(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4094 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4094 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409500
     * @tc.name      : TestCase_4095
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4095(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4095 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4095 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409600
     * @tc.name      : TestCase_4096
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4096(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4096 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4096 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409700
     * @tc.name      : TestCase_4097
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4097(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4097 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4097 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409800
     * @tc.name      : TestCase_4098
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4098(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4098 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4098 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_409900
     * @tc.name      : TestCase_4099
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4099(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4099 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4099 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410000
     * @tc.name      : TestCase_4100
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4100(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4100 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4100 ends.")
    }
}
