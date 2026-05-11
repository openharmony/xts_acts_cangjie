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
class testStartTrace_16 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150100
     * @tc.name      : TestCase_1501
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1501(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1501 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1501 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150200
     * @tc.name      : TestCase_1502
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1502(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1502 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1502 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150300
     * @tc.name      : TestCase_1503
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1503(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1503 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1503 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150400
     * @tc.name      : TestCase_1504
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1504(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1504 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1504 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150500
     * @tc.name      : TestCase_1505
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1505(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1505 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1505 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150600
     * @tc.name      : TestCase_1506
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1506(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1506 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1506 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150700
     * @tc.name      : TestCase_1507
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1507(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1507 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1507 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150800
     * @tc.name      : TestCase_1508
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1508(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1508 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1508 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_150900
     * @tc.name      : TestCase_1509
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1509(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1509 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1509 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151000
     * @tc.name      : TestCase_1510
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1510(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1510 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1510 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151100
     * @tc.name      : TestCase_1511
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1511(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1511 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1511 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151200
     * @tc.name      : TestCase_1512
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1512(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1512 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1512 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151300
     * @tc.name      : TestCase_1513
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1513(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1513 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1513 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151400
     * @tc.name      : TestCase_1514
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1514(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1514 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1514 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151500
     * @tc.name      : TestCase_1515
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1515(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1515 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1515 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151600
     * @tc.name      : TestCase_1516
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1516(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1516 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1516 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151700
     * @tc.name      : TestCase_1517
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1517(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1517 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1517 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151800
     * @tc.name      : TestCase_1518
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1518(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1518 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1518 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_151900
     * @tc.name      : TestCase_1519
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1519(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1519 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1519 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152000
     * @tc.name      : TestCase_1520
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1520(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1520 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1520 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152100
     * @tc.name      : TestCase_1521
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1521(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1521 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1521 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152200
     * @tc.name      : TestCase_1522
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1522(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1522 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1522 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152300
     * @tc.name      : TestCase_1523
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1523(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1523 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1523 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152400
     * @tc.name      : TestCase_1524
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1524(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1524 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1524 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152500
     * @tc.name      : TestCase_1525
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1525(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1525 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1525 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152600
     * @tc.name      : TestCase_1526
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1526(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1526 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1526 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152700
     * @tc.name      : TestCase_1527
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1527(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1527 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1527 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152800
     * @tc.name      : TestCase_1528
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1528(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1528 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1528 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_152900
     * @tc.name      : TestCase_1529
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1529(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1529 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1529 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153000
     * @tc.name      : TestCase_1530
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1530(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1530 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1530 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153100
     * @tc.name      : TestCase_1531
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1531(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1531 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1531 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153200
     * @tc.name      : TestCase_1532
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1532(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1532 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1532 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153300
     * @tc.name      : TestCase_1533
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1533(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1533 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1533 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153400
     * @tc.name      : TestCase_1534
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1534(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1534 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1534 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153500
     * @tc.name      : TestCase_1535
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1535(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1535 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1535 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153600
     * @tc.name      : TestCase_1536
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1536(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1536 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1536 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153700
     * @tc.name      : TestCase_1537
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1537(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1537 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1537 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153800
     * @tc.name      : TestCase_1538
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1538(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1538 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1538 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_153900
     * @tc.name      : TestCase_1539
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1539(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1539 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1539 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154000
     * @tc.name      : TestCase_1540
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1540(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1540 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1540 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154100
     * @tc.name      : TestCase_1541
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1541(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1541 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1541 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154200
     * @tc.name      : TestCase_1542
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1542(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1542 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1542 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154300
     * @tc.name      : TestCase_1543
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1543(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1543 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1543 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154400
     * @tc.name      : TestCase_1544
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1544(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1544 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1544 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154500
     * @tc.name      : TestCase_1545
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1545(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1545 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1545 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154600
     * @tc.name      : TestCase_1546
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1546(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1546 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1546 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154700
     * @tc.name      : TestCase_1547
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1547(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1547 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1547 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154800
     * @tc.name      : TestCase_1548
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1548(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1548 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1548 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_154900
     * @tc.name      : TestCase_1549
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1549(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1549 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1549 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155000
     * @tc.name      : TestCase_1550
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1550(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1550 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1550 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155100
     * @tc.name      : TestCase_1551
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1551(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1551 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1551 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155200
     * @tc.name      : TestCase_1552
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1552(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1552 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1552 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155300
     * @tc.name      : TestCase_1553
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1553(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1553 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1553 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155400
     * @tc.name      : TestCase_1554
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1554(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1554 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1554 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155500
     * @tc.name      : TestCase_1555
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1555(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1555 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1555 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155600
     * @tc.name      : TestCase_1556
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1556(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1556 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1556 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155700
     * @tc.name      : TestCase_1557
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1557(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1557 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1557 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155800
     * @tc.name      : TestCase_1558
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1558(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1558 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1558 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_155900
     * @tc.name      : TestCase_1559
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1559(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1559 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1559 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156000
     * @tc.name      : TestCase_1560
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1560(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1560 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1560 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156100
     * @tc.name      : TestCase_1561
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1561(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1561 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1561 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156200
     * @tc.name      : TestCase_1562
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1562(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1562 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1562 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156300
     * @tc.name      : TestCase_1563
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1563(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1563 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1563 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156400
     * @tc.name      : TestCase_1564
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1564(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1564 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1564 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156500
     * @tc.name      : TestCase_1565
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1565(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1565 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1565 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156600
     * @tc.name      : TestCase_1566
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1566(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1566 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1566 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156700
     * @tc.name      : TestCase_1567
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1567(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1567 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1567 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156800
     * @tc.name      : TestCase_1568
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "m", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1568(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1568 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("m", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1568 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_156900
     * @tc.name      : TestCase_1569
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1569(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1569 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1569 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157000
     * @tc.name      : TestCase_1570
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1570(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1570 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1570 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157100
     * @tc.name      : TestCase_1571
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1571(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1571 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1571 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157200
     * @tc.name      : TestCase_1572
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1572(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1572 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1572 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157300
     * @tc.name      : TestCase_1573
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1573(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1573 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1573 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157400
     * @tc.name      : TestCase_1574
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1574(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1574 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1574 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157500
     * @tc.name      : TestCase_1575
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1575(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1575 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1575 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157600
     * @tc.name      : TestCase_1576
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1576(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1576 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1576 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157700
     * @tc.name      : TestCase_1577
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1577(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1577 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1577 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157800
     * @tc.name      : TestCase_1578
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1578(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1578 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1578 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_157900
     * @tc.name      : TestCase_1579
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1579(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1579 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1579 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158000
     * @tc.name      : TestCase_1580
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1580(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1580 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1580 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158100
     * @tc.name      : TestCase_1581
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1581(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1581 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1581 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158200
     * @tc.name      : TestCase_1582
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1582(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1582 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1582 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158300
     * @tc.name      : TestCase_1583
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1583(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1583 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1583 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158400
     * @tc.name      : TestCase_1584
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1584(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1584 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1584 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158500
     * @tc.name      : TestCase_1585
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1585(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1585 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1585 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158600
     * @tc.name      : TestCase_1586
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1586(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1586 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1586 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158700
     * @tc.name      : TestCase_1587
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1587(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1587 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1587 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158800
     * @tc.name      : TestCase_1588
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1588(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1588 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1588 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_158900
     * @tc.name      : TestCase_1589
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1589(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1589 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1589 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159000
     * @tc.name      : TestCase_1590
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1590(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1590 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1590 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159100
     * @tc.name      : TestCase_1591
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1591(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1591 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1591 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159200
     * @tc.name      : TestCase_1592
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1592(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1592 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1592 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159300
     * @tc.name      : TestCase_1593
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1593(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1593 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1593 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159400
     * @tc.name      : TestCase_1594
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1594(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1594 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1594 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159500
     * @tc.name      : TestCase_1595
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1595(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1595 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1595 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159600
     * @tc.name      : TestCase_1596
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1596(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1596 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1596 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159700
     * @tc.name      : TestCase_1597
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1597(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1597 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1597 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159800
     * @tc.name      : TestCase_1598
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1598(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1598 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1598 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_159900
     * @tc.name      : TestCase_1599
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1599(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1599 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1599 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_160000
     * @tc.name      : TestCase_1600
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "n", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1600(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1600 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("n", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1600 ends.")
    }
}
