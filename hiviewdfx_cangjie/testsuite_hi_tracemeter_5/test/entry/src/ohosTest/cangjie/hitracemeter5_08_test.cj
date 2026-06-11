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
class testStartTrace_42 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410100
     * @tc.name      : TestCase_4101
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4101(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4101 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410200
     * @tc.name      : TestCase_4102
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4102(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4102 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410300
     * @tc.name      : TestCase_4103
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4103(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4103 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410400
     * @tc.name      : TestCase_4104
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4104(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4104 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410500
     * @tc.name      : TestCase_4105
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4105(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4105 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410600
     * @tc.name      : TestCase_4106
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4106(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4106 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410700
     * @tc.name      : TestCase_4107
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4107(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4107 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410800
     * @tc.name      : TestCase_4108
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4108(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4108 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_410900
     * @tc.name      : TestCase_4109
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4109(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4109 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411000
     * @tc.name      : TestCase_4110
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4110(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4110 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411100
     * @tc.name      : TestCase_4111
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4111(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4111 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411200
     * @tc.name      : TestCase_4112
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4112(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4112 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411300
     * @tc.name      : TestCase_4113
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4113(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4113 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411400
     * @tc.name      : TestCase_4114
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4114(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4114 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411500
     * @tc.name      : TestCase_4115
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4115(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4115 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411600
     * @tc.name      : TestCase_4116
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "13", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4116(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4116 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("13", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411700
     * @tc.name      : TestCase_4117
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4117(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4117 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411800
     * @tc.name      : TestCase_4118
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4118(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4118 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_411900
     * @tc.name      : TestCase_4119
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4119(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4119 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412000
     * @tc.name      : TestCase_4120
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4120(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4120 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412100
     * @tc.name      : TestCase_4121
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4121(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4121 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412200
     * @tc.name      : TestCase_4122
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4122(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4122 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412300
     * @tc.name      : TestCase_4123
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4123(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4123 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412400
     * @tc.name      : TestCase_4124
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4124(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4124 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412500
     * @tc.name      : TestCase_4125
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4125(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4125 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412600
     * @tc.name      : TestCase_4126
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4126(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4126 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412700
     * @tc.name      : TestCase_4127
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4127(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4127 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412800
     * @tc.name      : TestCase_4128
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4128(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4128 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_412900
     * @tc.name      : TestCase_4129
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4129(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4129 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413000
     * @tc.name      : TestCase_4130
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4130(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4130 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413100
     * @tc.name      : TestCase_4131
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4131(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4131 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413200
     * @tc.name      : TestCase_4132
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4132(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4132 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413300
     * @tc.name      : TestCase_4133
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4133(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4133 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413400
     * @tc.name      : TestCase_4134
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4134(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4134 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413500
     * @tc.name      : TestCase_4135
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4135(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4135 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413600
     * @tc.name      : TestCase_4136
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4136(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4136 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413700
     * @tc.name      : TestCase_4137
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4137(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4137 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413800
     * @tc.name      : TestCase_4138
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4138(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4138 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_413900
     * @tc.name      : TestCase_4139
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4139(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4139 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414000
     * @tc.name      : TestCase_4140
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4140(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4140 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414100
     * @tc.name      : TestCase_4141
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4141(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4141 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414200
     * @tc.name      : TestCase_4142
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4142(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4142 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414300
     * @tc.name      : TestCase_4143
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4143(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4143 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414400
     * @tc.name      : TestCase_4144
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4144(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4144 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414500
     * @tc.name      : TestCase_4145
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4145(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4145 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414600
     * @tc.name      : TestCase_4146
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4146(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4146 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414700
     * @tc.name      : TestCase_4147
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4147(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4147 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414800
     * @tc.name      : TestCase_4148
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4148(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4148 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_414900
     * @tc.name      : TestCase_4149
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4149(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4149 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415000
     * @tc.name      : TestCase_4150
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4150(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4150 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415100
     * @tc.name      : TestCase_4151
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4151(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4151 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415200
     * @tc.name      : TestCase_4152
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4152(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4152 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415300
     * @tc.name      : TestCase_4153
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4153(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4153 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415400
     * @tc.name      : TestCase_4154
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4154(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4154 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415500
     * @tc.name      : TestCase_4155
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4155(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4155 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415600
     * @tc.name      : TestCase_4156
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4156(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4156 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415700
     * @tc.name      : TestCase_4157
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4157(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4157 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415800
     * @tc.name      : TestCase_4158
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4158(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4158 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_415900
     * @tc.name      : TestCase_4159
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4159(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4159 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416000
     * @tc.name      : TestCase_4160
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4160(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4160 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416100
     * @tc.name      : TestCase_4161
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4161(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4161 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416200
     * @tc.name      : TestCase_4162
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4162(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4162 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416300
     * @tc.name      : TestCase_4163
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4163(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4163 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416400
     * @tc.name      : TestCase_4164
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4164(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4164 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416500
     * @tc.name      : TestCase_4165
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4165(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4165 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416600
     * @tc.name      : TestCase_4166
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4166(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4166 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416700
     * @tc.name      : TestCase_4167
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4167(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4167 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416800
     * @tc.name      : TestCase_4168
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4168(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4168 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_416900
     * @tc.name      : TestCase_4169
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4169(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4169 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417000
     * @tc.name      : TestCase_4170
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4170(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4170 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417100
     * @tc.name      : TestCase_4171
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4171(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4171 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417200
     * @tc.name      : TestCase_4172
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4172(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4172 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417300
     * @tc.name      : TestCase_4173
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4173(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4173 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417400
     * @tc.name      : TestCase_4174
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4174(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4174 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417500
     * @tc.name      : TestCase_4175
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4175(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4175 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417600
     * @tc.name      : TestCase_4176
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4176(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4176 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417700
     * @tc.name      : TestCase_4177
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4177(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4177 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417800
     * @tc.name      : TestCase_4178
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4178(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4178 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_417900
     * @tc.name      : TestCase_4179
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4179(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4179 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418000
     * @tc.name      : TestCase_4180
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4180(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4180 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418100
     * @tc.name      : TestCase_4181
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4181(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4181 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418200
     * @tc.name      : TestCase_4182
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4182(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4182 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418300
     * @tc.name      : TestCase_4183
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4183(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4183 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418400
     * @tc.name      : TestCase_4184
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4184(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4184 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418500
     * @tc.name      : TestCase_4185
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4185(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4185 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418600
     * @tc.name      : TestCase_4186
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4186(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4186 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418700
     * @tc.name      : TestCase_4187
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4187(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4187 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418800
     * @tc.name      : TestCase_4188
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4188(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4188 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_418900
     * @tc.name      : TestCase_4189
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4189(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4189 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419000
     * @tc.name      : TestCase_4190
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4190(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4190 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419100
     * @tc.name      : TestCase_4191
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4191(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4191 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419200
     * @tc.name      : TestCase_4192
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4192(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4192 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419300
     * @tc.name      : TestCase_4193
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4193(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4193 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419400
     * @tc.name      : TestCase_4194
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4194(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4194 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419500
     * @tc.name      : TestCase_4195
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4195(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4195 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419600
     * @tc.name      : TestCase_4196
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4196(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4196 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419700
     * @tc.name      : TestCase_4197
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4197(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4197 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419800
     * @tc.name      : TestCase_4198
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4198(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4198 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_419900
     * @tc.name      : TestCase_4199
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4199(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4199 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_420000
     * @tc.name      : TestCase_4200
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "14", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4200(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4200 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("14", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_4200 ends.")
    }
}
