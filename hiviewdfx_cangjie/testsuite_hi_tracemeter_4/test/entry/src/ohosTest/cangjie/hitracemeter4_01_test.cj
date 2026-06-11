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
class testStartTrace_18 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170100
     * @tc.name      : TestCase_1701
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1701(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1701 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1701 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170200
     * @tc.name      : TestCase_1702
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1702(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1702 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1702 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170300
     * @tc.name      : TestCase_1703
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1703(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1703 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1703 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170400
     * @tc.name      : TestCase_1704
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1704(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1704 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1704 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170500
     * @tc.name      : TestCase_1705
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1705(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1705 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1705 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170600
     * @tc.name      : TestCase_1706
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1706(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1706 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1706 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170700
     * @tc.name      : TestCase_1707
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1707(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1707 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1707 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170800
     * @tc.name      : TestCase_1708
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1708(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1708 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1708 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_170900
     * @tc.name      : TestCase_1709
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1709(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1709 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1709 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171000
     * @tc.name      : TestCase_1710
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1710(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1710 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1710 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171100
     * @tc.name      : TestCase_1711
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1711(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1711 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1711 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171200
     * @tc.name      : TestCase_1712
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1712(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1712 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1712 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171300
     * @tc.name      : TestCase_1713
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1713(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1713 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1713 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171400
     * @tc.name      : TestCase_1714
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1714(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1714 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1714 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171500
     * @tc.name      : TestCase_1715
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1715(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1715 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1715 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171600
     * @tc.name      : TestCase_1716
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1716(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1716 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1716 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171700
     * @tc.name      : TestCase_1717
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1717(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1717 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1717 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171800
     * @tc.name      : TestCase_1718
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1718(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1718 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1718 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_171900
     * @tc.name      : TestCase_1719
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1719(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1719 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1719 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172000
     * @tc.name      : TestCase_1720
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1720(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1720 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1720 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172100
     * @tc.name      : TestCase_1721
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1721(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1721 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1721 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172200
     * @tc.name      : TestCase_1722
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1722(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1722 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1722 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172300
     * @tc.name      : TestCase_1723
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1723(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1723 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1723 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172400
     * @tc.name      : TestCase_1724
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1724(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1724 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1724 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172500
     * @tc.name      : TestCase_1725
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1725(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1725 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1725 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172600
     * @tc.name      : TestCase_1726
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1726(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1726 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1726 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172700
     * @tc.name      : TestCase_1727
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1727(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1727 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1727 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172800
     * @tc.name      : TestCase_1728
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1728(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1728 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1728 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_172900
     * @tc.name      : TestCase_1729
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1729(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1729 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1729 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173000
     * @tc.name      : TestCase_1730
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1730(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1730 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1730 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173100
     * @tc.name      : TestCase_1731
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1731(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1731 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1731 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173200
     * @tc.name      : TestCase_1732
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1732(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1732 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1732 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173300
     * @tc.name      : TestCase_1733
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1733(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1733 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1733 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173400
     * @tc.name      : TestCase_1734
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1734(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1734 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1734 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173500
     * @tc.name      : TestCase_1735
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1735(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1735 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1735 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173600
     * @tc.name      : TestCase_1736
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1736(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1736 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1736 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173700
     * @tc.name      : TestCase_1737
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1737(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1737 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1737 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173800
     * @tc.name      : TestCase_1738
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1738(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1738 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1738 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_173900
     * @tc.name      : TestCase_1739
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1739(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1739 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1739 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174000
     * @tc.name      : TestCase_1740
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1740(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1740 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1740 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174100
     * @tc.name      : TestCase_1741
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1741(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1741 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1741 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174200
     * @tc.name      : TestCase_1742
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1742(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1742 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1742 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174300
     * @tc.name      : TestCase_1743
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1743(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1743 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1743 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174400
     * @tc.name      : TestCase_1744
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1744(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1744 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1744 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174500
     * @tc.name      : TestCase_1745
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1745(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1745 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1745 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174600
     * @tc.name      : TestCase_1746
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1746(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1746 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1746 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174700
     * @tc.name      : TestCase_1747
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1747(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1747 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1747 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174800
     * @tc.name      : TestCase_1748
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1748(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1748 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1748 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_174900
     * @tc.name      : TestCase_1749
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1749(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1749 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1749 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175000
     * @tc.name      : TestCase_1750
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1750(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1750 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1750 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175100
     * @tc.name      : TestCase_1751
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1751(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1751 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1751 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175200
     * @tc.name      : TestCase_1752
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1752(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1752 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1752 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175300
     * @tc.name      : TestCase_1753
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1753(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1753 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1753 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175400
     * @tc.name      : TestCase_1754
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1754(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1754 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1754 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175500
     * @tc.name      : TestCase_1755
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1755(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1755 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1755 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175600
     * @tc.name      : TestCase_1756
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1756(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1756 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1756 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175700
     * @tc.name      : TestCase_1757
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1757(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1757 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1757 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175800
     * @tc.name      : TestCase_1758
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1758(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1758 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1758 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_175900
     * @tc.name      : TestCase_1759
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1759(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1759 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1759 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176000
     * @tc.name      : TestCase_1760
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1760(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1760 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1760 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176100
     * @tc.name      : TestCase_1761
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1761(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1761 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1761 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176200
     * @tc.name      : TestCase_1762
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1762(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1762 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1762 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176300
     * @tc.name      : TestCase_1763
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1763(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1763 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1763 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176400
     * @tc.name      : TestCase_1764
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "o", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1764(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1764 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("o", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1764 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176500
     * @tc.name      : TestCase_1765
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1765(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1765 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1765 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176600
     * @tc.name      : TestCase_1766
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1766(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1766 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1766 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176700
     * @tc.name      : TestCase_1767
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1767(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1767 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1767 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176800
     * @tc.name      : TestCase_1768
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1768(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1768 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1768 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_176900
     * @tc.name      : TestCase_1769
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1769(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1769 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1769 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177000
     * @tc.name      : TestCase_1770
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1770(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1770 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1770 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177100
     * @tc.name      : TestCase_1771
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1771(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1771 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1771 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177200
     * @tc.name      : TestCase_1772
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1772(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1772 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1772 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177300
     * @tc.name      : TestCase_1773
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1773(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1773 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1773 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177400
     * @tc.name      : TestCase_1774
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1774(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1774 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1774 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177500
     * @tc.name      : TestCase_1775
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1775(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1775 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1775 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177600
     * @tc.name      : TestCase_1776
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1776(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1776 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1776 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177700
     * @tc.name      : TestCase_1777
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1777(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1777 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1777 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177800
     * @tc.name      : TestCase_1778
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1778(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1778 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1778 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_177900
     * @tc.name      : TestCase_1779
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1779(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1779 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1779 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178000
     * @tc.name      : TestCase_1780
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1780(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1780 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1780 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178100
     * @tc.name      : TestCase_1781
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1781(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1781 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1781 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178200
     * @tc.name      : TestCase_1782
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1782(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1782 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1782 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178300
     * @tc.name      : TestCase_1783
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1783(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1783 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1783 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178400
     * @tc.name      : TestCase_1784
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1784(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1784 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1784 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178500
     * @tc.name      : TestCase_1785
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1785(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1785 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1785 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178600
     * @tc.name      : TestCase_1786
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1786(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1786 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1786 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178700
     * @tc.name      : TestCase_1787
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1787(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1787 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1787 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178800
     * @tc.name      : TestCase_1788
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1788(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1788 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1788 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_178900
     * @tc.name      : TestCase_1789
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1789(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1789 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1789 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179000
     * @tc.name      : TestCase_1790
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1790(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1790 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1790 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179100
     * @tc.name      : TestCase_1791
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1791(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1791 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1791 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179200
     * @tc.name      : TestCase_1792
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1792(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1792 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1792 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179300
     * @tc.name      : TestCase_1793
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1793(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1793 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1793 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179400
     * @tc.name      : TestCase_1794
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1794(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1794 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1794 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179500
     * @tc.name      : TestCase_1795
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1795(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1795 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1795 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179600
     * @tc.name      : TestCase_1796
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1796(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1796 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1796 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179700
     * @tc.name      : TestCase_1797
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1797(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1797 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1797 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179800
     * @tc.name      : TestCase_1798
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1798(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1798 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1798 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_179900
     * @tc.name      : TestCase_1799
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1799(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1799 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1799 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180000
     * @tc.name      : TestCase_1800
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1800(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1800 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1800 ends.")
    }
}
