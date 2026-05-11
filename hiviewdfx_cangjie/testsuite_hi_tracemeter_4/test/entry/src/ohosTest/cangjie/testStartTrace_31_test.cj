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
class testStartTrace_31 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300100
     * @tc.name      : TestCase_3001
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3001 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300200
     * @tc.name      : TestCase_3002
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3002 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300300
     * @tc.name      : TestCase_3003
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3003(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3003 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300400
     * @tc.name      : TestCase_3004
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3004(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3004 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300500
     * @tc.name      : TestCase_3005
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3005(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3005 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300600
     * @tc.name      : TestCase_3006
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3006(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3006 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300700
     * @tc.name      : TestCase_3007
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3007(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3007 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300800
     * @tc.name      : TestCase_3008
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3008(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3008 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300900
     * @tc.name      : TestCase_3009
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3009(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3009 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301000
     * @tc.name      : TestCase_3010
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3010(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3010 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301100
     * @tc.name      : TestCase_3011
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3011(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3011 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301200
     * @tc.name      : TestCase_3012
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3012(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3012 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301300
     * @tc.name      : TestCase_3013
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3013(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3013 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301400
     * @tc.name      : TestCase_3014
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3014(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3014 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301500
     * @tc.name      : TestCase_3015
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3015(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3015 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301600
     * @tc.name      : TestCase_3016
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3016(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3016 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301700
     * @tc.name      : TestCase_3017
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3017(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3017 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301800
     * @tc.name      : TestCase_3018
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3018(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3018 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_301900
     * @tc.name      : TestCase_3019
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3019(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3019 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302000
     * @tc.name      : TestCase_3020
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3020(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3020 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3020 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302100
     * @tc.name      : TestCase_3021
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3021(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3021 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302200
     * @tc.name      : TestCase_3022
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3022(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3022 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3022 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302300
     * @tc.name      : TestCase_3023
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3023(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3023 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3023 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302400
     * @tc.name      : TestCase_3024
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3024(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3024 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3024 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302500
     * @tc.name      : TestCase_3025
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3025(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3025 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3025 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302600
     * @tc.name      : TestCase_3026
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3026(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3026 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3026 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302700
     * @tc.name      : TestCase_3027
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3027(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3027 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3027 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302800
     * @tc.name      : TestCase_3028
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3028(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3028 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3028 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_302900
     * @tc.name      : TestCase_3029
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3029(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3029 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3029 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303000
     * @tc.name      : TestCase_3030
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3030(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3030 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3030 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303100
     * @tc.name      : TestCase_3031
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3031(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3031 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303200
     * @tc.name      : TestCase_3032
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3032(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3032 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3032 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303300
     * @tc.name      : TestCase_3033
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3033(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3033 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3033 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303400
     * @tc.name      : TestCase_3034
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3034(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3034 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3034 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303500
     * @tc.name      : TestCase_3035
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3035(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3035 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3035 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303600
     * @tc.name      : TestCase_3036
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3036(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3036 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3036 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303700
     * @tc.name      : TestCase_3037
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3037(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3037 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3037 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303800
     * @tc.name      : TestCase_3038
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3038(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3038 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3038 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_303900
     * @tc.name      : TestCase_3039
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3039(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3039 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3039 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304000
     * @tc.name      : TestCase_3040
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3040(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3040 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3040 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304100
     * @tc.name      : TestCase_3041
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3041(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3041 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3041 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304200
     * @tc.name      : TestCase_3042
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3042(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3042 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3042 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304300
     * @tc.name      : TestCase_3043
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3043(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3043 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3043 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304400
     * @tc.name      : TestCase_3044
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3044(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3044 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3044 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304500
     * @tc.name      : TestCase_3045
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3045(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3045 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3045 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304600
     * @tc.name      : TestCase_3046
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3046(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3046 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3046 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304700
     * @tc.name      : TestCase_3047
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3047(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3047 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304800
     * @tc.name      : TestCase_3048
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3048(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3048 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3048 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_304900
     * @tc.name      : TestCase_3049
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3049(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3049 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3049 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305000
     * @tc.name      : TestCase_3050
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3050(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3050 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3050 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305100
     * @tc.name      : TestCase_3051
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3051(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3051 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3051 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305200
     * @tc.name      : TestCase_3052
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3052(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3052 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3052 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305300
     * @tc.name      : TestCase_3053
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3053(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3053 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3053 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305400
     * @tc.name      : TestCase_3054
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3054(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3054 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3054 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305500
     * @tc.name      : TestCase_3055
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3055(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3055 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3055 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305600
     * @tc.name      : TestCase_3056
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3056(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3056 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3056 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305700
     * @tc.name      : TestCase_3057
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3057(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3057 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3057 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305800
     * @tc.name      : TestCase_3058
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3058(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3058 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3058 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_305900
     * @tc.name      : TestCase_3059
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3059(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3059 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3059 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306000
     * @tc.name      : TestCase_3060
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3060(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3060 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3060 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306100
     * @tc.name      : TestCase_3061
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3061(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3061 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3061 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306200
     * @tc.name      : TestCase_3062
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3062(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3062 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3062 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306300
     * @tc.name      : TestCase_3063
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3063(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3063 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3063 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306400
     * @tc.name      : TestCase_3064
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3064(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3064 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3064 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306500
     * @tc.name      : TestCase_3065
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3065(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3065 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3065 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306600
     * @tc.name      : TestCase_3066
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3066(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3066 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3066 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306700
     * @tc.name      : TestCase_3067
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3067(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3067 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3067 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306800
     * @tc.name      : TestCase_3068
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3068(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3068 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3068 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_306900
     * @tc.name      : TestCase_3069
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3069(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3069 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3069 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307000
     * @tc.name      : TestCase_3070
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3070(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3070 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3070 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307100
     * @tc.name      : TestCase_3071
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3071(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3071 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3071 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307200
     * @tc.name      : TestCase_3072
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3072(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3072 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3072 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307300
     * @tc.name      : TestCase_3073
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3073(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3073 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3073 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307400
     * @tc.name      : TestCase_3074
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3074(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3074 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3074 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307500
     * @tc.name      : TestCase_3075
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3075(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3075 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3075 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307600
     * @tc.name      : TestCase_3076
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3076(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3076 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3076 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307700
     * @tc.name      : TestCase_3077
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3077(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3077 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3077 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307800
     * @tc.name      : TestCase_3078
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3078(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3078 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3078 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_307900
     * @tc.name      : TestCase_3079
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3079(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3079 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3079 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308000
     * @tc.name      : TestCase_3080
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3080(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3080 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3080 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308100
     * @tc.name      : TestCase_3081
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3081(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3081 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3081 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308200
     * @tc.name      : TestCase_3082
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3082(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3082 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3082 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308300
     * @tc.name      : TestCase_3083
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3083(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3083 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3083 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308400
     * @tc.name      : TestCase_3084
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3084(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3084 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3084 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308500
     * @tc.name      : TestCase_3085
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3085(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3085 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3085 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308600
     * @tc.name      : TestCase_3086
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3086(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3086 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3086 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308700
     * @tc.name      : TestCase_3087
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3087(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3087 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3087 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308800
     * @tc.name      : TestCase_3088
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3088(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3088 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3088 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_308900
     * @tc.name      : TestCase_3089
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3089(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3089 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3089 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309000
     * @tc.name      : TestCase_3090
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3090(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3090 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3090 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309100
     * @tc.name      : TestCase_3091
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3091(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3091 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3091 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309200
     * @tc.name      : TestCase_3092
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3092(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3092 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3092 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309300
     * @tc.name      : TestCase_3093
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3093(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3093 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3093 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309400
     * @tc.name      : TestCase_3094
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3094(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3094 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3094 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309500
     * @tc.name      : TestCase_3095
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3095(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3095 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3095 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309600
     * @tc.name      : TestCase_3096
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3096(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3096 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3096 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309700
     * @tc.name      : TestCase_3097
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3097(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3097 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3097 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309800
     * @tc.name      : TestCase_3098
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3098(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3098 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3098 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_309900
     * @tc.name      : TestCase_3099
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3099(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3099 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3099 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_310000
     * @tc.name      : TestCase_3100
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "3", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3100(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3100 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("3", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3100 ends.")
    }
}
