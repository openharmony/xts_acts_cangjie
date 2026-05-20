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
class testFinishTrace_22 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210100
     * @tc.name      : TestCase_2101
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2101(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2101 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210200
     * @tc.name      : TestCase_2102
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2102(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2102 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210300
     * @tc.name      : TestCase_2103
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2103(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2103 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210400
     * @tc.name      : TestCase_2104
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2104(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2104 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210500
     * @tc.name      : TestCase_2105
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2105(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2105 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210600
     * @tc.name      : TestCase_2106
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2106(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2106 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210700
     * @tc.name      : TestCase_2107
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2107(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2107 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210800
     * @tc.name      : TestCase_2108
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2108(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2108 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_210900
     * @tc.name      : TestCase_2109
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2109(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2109 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211000
     * @tc.name      : TestCase_2110
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2110(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2110 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211100
     * @tc.name      : TestCase_2111
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2111(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2111 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211200
     * @tc.name      : TestCase_2112
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2112(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2112 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211300
     * @tc.name      : TestCase_2113
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2113(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2113 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211400
     * @tc.name      : TestCase_2114
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2114(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2114 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211500
     * @tc.name      : TestCase_2115
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2115(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2115 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211600
     * @tc.name      : TestCase_2116
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2116(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2116 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211700
     * @tc.name      : TestCase_2117
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2117(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2117 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211800
     * @tc.name      : TestCase_2118
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2118(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2118 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_211900
     * @tc.name      : TestCase_2119
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2119(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2119 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212000
     * @tc.name      : TestCase_2120
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2120(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2120 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212100
     * @tc.name      : TestCase_2121
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2121(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2121 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212200
     * @tc.name      : TestCase_2122
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2122(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2122 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212300
     * @tc.name      : TestCase_2123
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2123(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2123 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212400
     * @tc.name      : TestCase_2124
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2124(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2124 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212500
     * @tc.name      : TestCase_2125
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2125(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2125 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212600
     * @tc.name      : TestCase_2126
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2126(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2126 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212700
     * @tc.name      : TestCase_2127
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2127(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2127 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212800
     * @tc.name      : TestCase_2128
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2128(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2128 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_212900
     * @tc.name      : TestCase_2129
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2129(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2129 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213000
     * @tc.name      : TestCase_2130
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2130(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2130 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213100
     * @tc.name      : TestCase_2131
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2131(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2131 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213200
     * @tc.name      : TestCase_2132
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2132(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2132 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213300
     * @tc.name      : TestCase_2133
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2133(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2133 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213400
     * @tc.name      : TestCase_2134
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2134(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2134 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213500
     * @tc.name      : TestCase_2135
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2135(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2135 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213600
     * @tc.name      : TestCase_2136
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2136(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2136 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213700
     * @tc.name      : TestCase_2137
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2137(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2137 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213800
     * @tc.name      : TestCase_2138
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2138(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2138 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_213900
     * @tc.name      : TestCase_2139
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2139(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2139 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214000
     * @tc.name      : TestCase_2140
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2140(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2140 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214100
     * @tc.name      : TestCase_2141
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2141(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2141 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214200
     * @tc.name      : TestCase_2142
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2142(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2142 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214300
     * @tc.name      : TestCase_2143
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2143(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2143 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214400
     * @tc.name      : TestCase_2144
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2144(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2144 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214500
     * @tc.name      : TestCase_2145
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2145(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2145 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214600
     * @tc.name      : TestCase_2146
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2146(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2146 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214700
     * @tc.name      : TestCase_2147
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2147(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2147 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214800
     * @tc.name      : TestCase_2148
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2148(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2148 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_214900
     * @tc.name      : TestCase_2149
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2149(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2149 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215000
     * @tc.name      : TestCase_2150
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2150(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2150 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215100
     * @tc.name      : TestCase_2151
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2151(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2151 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215200
     * @tc.name      : TestCase_2152
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2152(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2152 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215300
     * @tc.name      : TestCase_2153
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2153(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2153 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215400
     * @tc.name      : TestCase_2154
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2154(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2154 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215500
     * @tc.name      : TestCase_2155
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2155(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2155 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215600
     * @tc.name      : TestCase_2156
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "s", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2156(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2156 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("s", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215700
     * @tc.name      : TestCase_2157
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2157(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2157 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215800
     * @tc.name      : TestCase_2158
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2158(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2158 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_215900
     * @tc.name      : TestCase_2159
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2159(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2159 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216000
     * @tc.name      : TestCase_2160
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2160(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2160 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216100
     * @tc.name      : TestCase_2161
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2161(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2161 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216200
     * @tc.name      : TestCase_2162
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2162(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2162 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216300
     * @tc.name      : TestCase_2163
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2163(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2163 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216400
     * @tc.name      : TestCase_2164
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2164(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2164 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216500
     * @tc.name      : TestCase_2165
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2165(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2165 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216600
     * @tc.name      : TestCase_2166
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2166(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2166 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216700
     * @tc.name      : TestCase_2167
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2167(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2167 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216800
     * @tc.name      : TestCase_2168
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2168(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2168 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_216900
     * @tc.name      : TestCase_2169
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2169(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2169 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217000
     * @tc.name      : TestCase_2170
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2170(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2170 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217100
     * @tc.name      : TestCase_2171
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2171(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2171 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217200
     * @tc.name      : TestCase_2172
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2172(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2172 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217300
     * @tc.name      : TestCase_2173
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2173(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2173 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217400
     * @tc.name      : TestCase_2174
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2174(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2174 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217500
     * @tc.name      : TestCase_2175
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2175(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2175 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217600
     * @tc.name      : TestCase_2176
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2176(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2176 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217700
     * @tc.name      : TestCase_2177
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2177(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2177 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217800
     * @tc.name      : TestCase_2178
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2178(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2178 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_217900
     * @tc.name      : TestCase_2179
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2179(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2179 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218000
     * @tc.name      : TestCase_2180
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2180(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2180 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218100
     * @tc.name      : TestCase_2181
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2181(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2181 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218200
     * @tc.name      : TestCase_2182
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2182(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2182 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218300
     * @tc.name      : TestCase_2183
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2183(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2183 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218400
     * @tc.name      : TestCase_2184
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2184(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2184 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218500
     * @tc.name      : TestCase_2185
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2185(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2185 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218600
     * @tc.name      : TestCase_2186
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2186(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2186 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218700
     * @tc.name      : TestCase_2187
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2187(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2187 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218800
     * @tc.name      : TestCase_2188
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2188(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2188 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_218900
     * @tc.name      : TestCase_2189
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2189(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2189 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219000
     * @tc.name      : TestCase_2190
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2190(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2190 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219100
     * @tc.name      : TestCase_2191
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2191(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2191 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219200
     * @tc.name      : TestCase_2192
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2192(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2192 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219300
     * @tc.name      : TestCase_2193
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2193(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2193 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219400
     * @tc.name      : TestCase_2194
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2194(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2194 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219500
     * @tc.name      : TestCase_2195
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2195(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2195 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219600
     * @tc.name      : TestCase_2196
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2196(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2196 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219700
     * @tc.name      : TestCase_2197
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2197(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2197 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219800
     * @tc.name      : TestCase_2198
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2198(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2198 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_219900
     * @tc.name      : TestCase_2199
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2199(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2199 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_220000
     * @tc.name      : TestCase_2200
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "t", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2200(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2200 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("t", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2200 ends.")
    }
}
