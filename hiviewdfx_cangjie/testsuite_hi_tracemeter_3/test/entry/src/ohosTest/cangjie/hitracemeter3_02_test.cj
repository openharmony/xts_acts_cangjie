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
class testStartTrace_11 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100100
     * @tc.name      : TestCase_1001
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1001 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100200
     * @tc.name      : TestCase_1002
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1002 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100300
     * @tc.name      : TestCase_1003
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1003(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1003 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100400
     * @tc.name      : TestCase_1004
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1004(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1004 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100500
     * @tc.name      : TestCase_1005
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1005(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1005 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100600
     * @tc.name      : TestCase_1006
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1006(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1006 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100700
     * @tc.name      : TestCase_1007
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1007(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1007 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100800
     * @tc.name      : TestCase_1008
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1008(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1008 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_100900
     * @tc.name      : TestCase_1009
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1009(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1009 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101000
     * @tc.name      : TestCase_1010
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1010(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1010 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101100
     * @tc.name      : TestCase_1011
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1011(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1011 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101200
     * @tc.name      : TestCase_1012
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1012(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1012 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101300
     * @tc.name      : TestCase_1013
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1013(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1013 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101400
     * @tc.name      : TestCase_1014
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1014(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1014 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101500
     * @tc.name      : TestCase_1015
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1015(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1015 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101600
     * @tc.name      : TestCase_1016
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1016(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1016 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101700
     * @tc.name      : TestCase_1017
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1017(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1017 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101800
     * @tc.name      : TestCase_1018
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1018(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1018 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_101900
     * @tc.name      : TestCase_1019
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1019(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1019 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102000
     * @tc.name      : TestCase_1020
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1020(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1020 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1020 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102100
     * @tc.name      : TestCase_1021
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1021(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1021 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102200
     * @tc.name      : TestCase_1022
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1022(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1022 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1022 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102300
     * @tc.name      : TestCase_1023
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1023(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1023 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1023 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102400
     * @tc.name      : TestCase_1024
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1024(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1024 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1024 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102500
     * @tc.name      : TestCase_1025
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1025(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1025 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1025 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102600
     * @tc.name      : TestCase_1026
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1026(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1026 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1026 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102700
     * @tc.name      : TestCase_1027
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1027(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1027 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1027 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102800
     * @tc.name      : TestCase_1028
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1028(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1028 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1028 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_102900
     * @tc.name      : TestCase_1029
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1029(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1029 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1029 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103000
     * @tc.name      : TestCase_1030
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1030(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1030 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1030 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103100
     * @tc.name      : TestCase_1031
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1031(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1031 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103200
     * @tc.name      : TestCase_1032
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1032(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1032 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1032 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103300
     * @tc.name      : TestCase_1033
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1033(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1033 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1033 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103400
     * @tc.name      : TestCase_1034
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1034(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1034 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1034 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103500
     * @tc.name      : TestCase_1035
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1035(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1035 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1035 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103600
     * @tc.name      : TestCase_1036
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1036(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1036 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1036 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103700
     * @tc.name      : TestCase_1037
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1037(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1037 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1037 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103800
     * @tc.name      : TestCase_1038
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1038(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1038 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1038 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_103900
     * @tc.name      : TestCase_1039
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1039(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1039 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1039 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104000
     * @tc.name      : TestCase_1040
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1040(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1040 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1040 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104100
     * @tc.name      : TestCase_1041
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1041(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1041 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1041 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104200
     * @tc.name      : TestCase_1042
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1042(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1042 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1042 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104300
     * @tc.name      : TestCase_1043
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1043(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1043 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1043 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104400
     * @tc.name      : TestCase_1044
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1044(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1044 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1044 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104500
     * @tc.name      : TestCase_1045
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1045(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1045 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1045 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104600
     * @tc.name      : TestCase_1046
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1046(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1046 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1046 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104700
     * @tc.name      : TestCase_1047
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1047(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1047 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104800
     * @tc.name      : TestCase_1048
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1048(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1048 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1048 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_104900
     * @tc.name      : TestCase_1049
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1049(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1049 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1049 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105000
     * @tc.name      : TestCase_1050
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1050(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1050 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1050 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105100
     * @tc.name      : TestCase_1051
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1051(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1051 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1051 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105200
     * @tc.name      : TestCase_1052
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1052(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1052 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1052 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105300
     * @tc.name      : TestCase_1053
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1053(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1053 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1053 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105400
     * @tc.name      : TestCase_1054
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1054(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1054 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1054 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105500
     * @tc.name      : TestCase_1055
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1055(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1055 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1055 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105600
     * @tc.name      : TestCase_1056
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1056(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1056 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1056 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105700
     * @tc.name      : TestCase_1057
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1057(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1057 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1057 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105800
     * @tc.name      : TestCase_1058
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1058(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1058 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1058 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_105900
     * @tc.name      : TestCase_1059
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1059(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1059 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1059 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106000
     * @tc.name      : TestCase_1060
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1060(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1060 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1060 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106100
     * @tc.name      : TestCase_1061
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1061(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1061 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1061 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106200
     * @tc.name      : TestCase_1062
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1062(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1062 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1062 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106300
     * @tc.name      : TestCase_1063
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1063(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1063 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1063 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106400
     * @tc.name      : TestCase_1064
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1064(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1064 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1064 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106500
     * @tc.name      : TestCase_1065
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1065(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1065 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1065 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106600
     * @tc.name      : TestCase_1066
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1066(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1066 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1066 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106700
     * @tc.name      : TestCase_1067
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1067(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1067 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1067 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106800
     * @tc.name      : TestCase_1068
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1068(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1068 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1068 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_106900
     * @tc.name      : TestCase_1069
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1069(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1069 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1069 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107000
     * @tc.name      : TestCase_1070
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1070(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1070 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1070 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107100
     * @tc.name      : TestCase_1071
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1071(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1071 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1071 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107200
     * @tc.name      : TestCase_1072
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1072(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1072 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1072 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107300
     * @tc.name      : TestCase_1073
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1073(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1073 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1073 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107400
     * @tc.name      : TestCase_1074
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1074(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1074 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1074 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107500
     * @tc.name      : TestCase_1075
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1075(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1075 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1075 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107600
     * @tc.name      : TestCase_1076
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1076(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1076 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1076 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107700
     * @tc.name      : TestCase_1077
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1077(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1077 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1077 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107800
     * @tc.name      : TestCase_1078
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "h", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1078(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1078 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("h", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1078 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_107900
     * @tc.name      : TestCase_1079
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1079(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1079 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1079 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108000
     * @tc.name      : TestCase_1080
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1080(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1080 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1080 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108100
     * @tc.name      : TestCase_1081
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1081(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1081 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1081 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108200
     * @tc.name      : TestCase_1082
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1082(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1082 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1082 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108300
     * @tc.name      : TestCase_1083
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1083(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1083 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1083 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108400
     * @tc.name      : TestCase_1084
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1084(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1084 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1084 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108500
     * @tc.name      : TestCase_1085
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1085(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1085 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1085 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108600
     * @tc.name      : TestCase_1086
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1086(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1086 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1086 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108700
     * @tc.name      : TestCase_1087
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1087(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1087 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1087 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108800
     * @tc.name      : TestCase_1088
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1088(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1088 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1088 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_108900
     * @tc.name      : TestCase_1089
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1089(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1089 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1089 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109000
     * @tc.name      : TestCase_1090
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1090(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1090 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1090 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109100
     * @tc.name      : TestCase_1091
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1091(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1091 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1091 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109200
     * @tc.name      : TestCase_1092
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1092(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1092 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1092 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109300
     * @tc.name      : TestCase_1093
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1093(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1093 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1093 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109400
     * @tc.name      : TestCase_1094
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1094(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1094 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1094 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109500
     * @tc.name      : TestCase_1095
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1095(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1095 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1095 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109600
     * @tc.name      : TestCase_1096
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1096(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1096 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1096 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109700
     * @tc.name      : TestCase_1097
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1097(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1097 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1097 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109800
     * @tc.name      : TestCase_1098
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1098(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1098 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1098 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_109900
     * @tc.name      : TestCase_1099
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1099(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1099 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1099 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_110000
     * @tc.name      : TestCase_1100
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "i", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1100(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1100 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("i", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1100 ends.")
    }
}
