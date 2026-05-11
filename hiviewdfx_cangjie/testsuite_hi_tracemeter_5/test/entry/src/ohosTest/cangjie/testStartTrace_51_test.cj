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
class testStartTrace_51 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500100
     * @tc.name      : TestCase_5001
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5001 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500200
     * @tc.name      : TestCase_5002
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5002 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500300
     * @tc.name      : TestCase_5003
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5003(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5003 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500400
     * @tc.name      : TestCase_5004
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5004(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5004 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500500
     * @tc.name      : TestCase_5005
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5005(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5005 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500600
     * @tc.name      : TestCase_5006
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5006(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5006 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500700
     * @tc.name      : TestCase_5007
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5007(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5007 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500800
     * @tc.name      : TestCase_5008
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5008(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5008 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_500900
     * @tc.name      : TestCase_5009
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5009(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5009 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501000
     * @tc.name      : TestCase_5010
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5010(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5010 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501100
     * @tc.name      : TestCase_5011
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5011(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5011 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501200
     * @tc.name      : TestCase_5012
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5012(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5012 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501300
     * @tc.name      : TestCase_5013
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5013(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5013 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501400
     * @tc.name      : TestCase_5014
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5014(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5014 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501500
     * @tc.name      : TestCase_5015
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5015(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5015 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501600
     * @tc.name      : TestCase_5016
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5016(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5016 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501700
     * @tc.name      : TestCase_5017
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5017(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5017 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501800
     * @tc.name      : TestCase_5018
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5018(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5018 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_501900
     * @tc.name      : TestCase_5019
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5019(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5019 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502000
     * @tc.name      : TestCase_5020
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5020(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5020 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5020 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502100
     * @tc.name      : TestCase_5021
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5021(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5021 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502200
     * @tc.name      : TestCase_5022
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5022(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5022 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5022 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502300
     * @tc.name      : TestCase_5023
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5023(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5023 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5023 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502400
     * @tc.name      : TestCase_5024
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5024(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5024 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5024 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502500
     * @tc.name      : TestCase_5025
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5025(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5025 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5025 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502600
     * @tc.name      : TestCase_5026
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5026(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5026 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5026 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502700
     * @tc.name      : TestCase_5027
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5027(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5027 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5027 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502800
     * @tc.name      : TestCase_5028
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5028(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5028 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5028 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_502900
     * @tc.name      : TestCase_5029
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5029(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5029 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5029 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503000
     * @tc.name      : TestCase_5030
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5030(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5030 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5030 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503100
     * @tc.name      : TestCase_5031
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5031(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5031 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503200
     * @tc.name      : TestCase_5032
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5032(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5032 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5032 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503300
     * @tc.name      : TestCase_5033
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5033(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5033 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5033 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503400
     * @tc.name      : TestCase_5034
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5034(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5034 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5034 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503500
     * @tc.name      : TestCase_5035
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5035(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5035 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5035 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503600
     * @tc.name      : TestCase_5036
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5036(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5036 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5036 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503700
     * @tc.name      : TestCase_5037
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5037(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5037 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5037 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503800
     * @tc.name      : TestCase_5038
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5038(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5038 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5038 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_503900
     * @tc.name      : TestCase_5039
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5039(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5039 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5039 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504000
     * @tc.name      : TestCase_5040
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5040(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5040 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5040 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504100
     * @tc.name      : TestCase_5041
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5041(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5041 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5041 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504200
     * @tc.name      : TestCase_5042
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5042(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5042 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5042 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504300
     * @tc.name      : TestCase_5043
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5043(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5043 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5043 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504400
     * @tc.name      : TestCase_5044
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5044(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5044 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5044 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504500
     * @tc.name      : TestCase_5045
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5045(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5045 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5045 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504600
     * @tc.name      : TestCase_5046
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5046(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5046 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5046 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504700
     * @tc.name      : TestCase_5047
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5047(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5047 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504800
     * @tc.name      : TestCase_5048
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5048(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5048 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5048 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_504900
     * @tc.name      : TestCase_5049
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5049(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5049 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5049 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505000
     * @tc.name      : TestCase_5050
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5050(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5050 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5050 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505100
     * @tc.name      : TestCase_5051
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5051(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5051 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5051 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505200
     * @tc.name      : TestCase_5052
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5052(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5052 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5052 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505300
     * @tc.name      : TestCase_5053
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5053(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5053 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5053 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505400
     * @tc.name      : TestCase_5054
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5054(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5054 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5054 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505500
     * @tc.name      : TestCase_5055
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5055(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5055 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5055 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505600
     * @tc.name      : TestCase_5056
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5056(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5056 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5056 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505700
     * @tc.name      : TestCase_5057
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5057(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5057 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5057 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505800
     * @tc.name      : TestCase_5058
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5058(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5058 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5058 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_505900
     * @tc.name      : TestCase_5059
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5059(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5059 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5059 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506000
     * @tc.name      : TestCase_5060
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5060(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5060 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5060 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506100
     * @tc.name      : TestCase_5061
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5061(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5061 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5061 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506200
     * @tc.name      : TestCase_5062
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5062(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5062 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5062 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506300
     * @tc.name      : TestCase_5063
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5063(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5063 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5063 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506400
     * @tc.name      : TestCase_5064
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5064(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5064 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5064 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506500
     * @tc.name      : TestCase_5065
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5065(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5065 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5065 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506600
     * @tc.name      : TestCase_5066
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5066(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5066 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5066 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506700
     * @tc.name      : TestCase_5067
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5067(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5067 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5067 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506800
     * @tc.name      : TestCase_5068
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5068(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5068 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5068 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_506900
     * @tc.name      : TestCase_5069
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5069(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5069 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5069 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507000
     * @tc.name      : TestCase_5070
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5070(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5070 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5070 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507100
     * @tc.name      : TestCase_5071
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5071(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5071 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5071 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507200
     * @tc.name      : TestCase_5072
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5072(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5072 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5072 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507300
     * @tc.name      : TestCase_5073
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5073(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5073 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5073 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507400
     * @tc.name      : TestCase_5074
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5074(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5074 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5074 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507500
     * @tc.name      : TestCase_5075
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5075(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5075 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5075 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507600
     * @tc.name      : TestCase_5076
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5076(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5076 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5076 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507700
     * @tc.name      : TestCase_5077
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5077(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5077 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5077 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507800
     * @tc.name      : TestCase_5078
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5078(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5078 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5078 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_507900
     * @tc.name      : TestCase_5079
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5079(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5079 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5079 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508000
     * @tc.name      : TestCase_5080
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5080(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5080 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5080 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508100
     * @tc.name      : TestCase_5081
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5081(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5081 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5081 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508200
     * @tc.name      : TestCase_5082
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5082(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5082 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5082 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508300
     * @tc.name      : TestCase_5083
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5083(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5083 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5083 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508400
     * @tc.name      : TestCase_5084
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5084(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5084 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5084 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508500
     * @tc.name      : TestCase_5085
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5085(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5085 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5085 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508600
     * @tc.name      : TestCase_5086
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5086(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5086 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5086 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508700
     * @tc.name      : TestCase_5087
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5087(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5087 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5087 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508800
     * @tc.name      : TestCase_5088
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5088(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5088 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5088 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_508900
     * @tc.name      : TestCase_5089
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5089(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5089 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5089 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509000
     * @tc.name      : TestCase_5090
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5090(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5090 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5090 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509100
     * @tc.name      : TestCase_5091
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5091(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5091 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5091 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509200
     * @tc.name      : TestCase_5092
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5092(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5092 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5092 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509300
     * @tc.name      : TestCase_5093
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5093(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5093 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5093 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509400
     * @tc.name      : TestCase_5094
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5094(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5094 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5094 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509500
     * @tc.name      : TestCase_5095
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5095(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5095 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5095 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509600
     * @tc.name      : TestCase_5096
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "23", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5096(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5096 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("23", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5096 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509700
     * @tc.name      : TestCase_5097
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "24", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5097(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5097 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("24", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5097 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509800
     * @tc.name      : TestCase_5098
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "24", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5098(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5098 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("24", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5098 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_509900
     * @tc.name      : TestCase_5099
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "24", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5099(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5099 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("24", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5099 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_510000
     * @tc.name      : TestCase_5100
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "24", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5100(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5100 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("24", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_5100 ends.")
    }
}
