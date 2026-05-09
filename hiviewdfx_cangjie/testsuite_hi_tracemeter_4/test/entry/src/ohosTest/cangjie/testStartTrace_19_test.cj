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
class testStartTrace_19 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180100
     * @tc.name      : TestCase_1801
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1801(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1801 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1801 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180200
     * @tc.name      : TestCase_1802
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1802(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1802 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1802 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180300
     * @tc.name      : TestCase_1803
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1803(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1803 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1803 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180400
     * @tc.name      : TestCase_1804
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1804(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1804 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1804 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180500
     * @tc.name      : TestCase_1805
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1805(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1805 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1805 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180600
     * @tc.name      : TestCase_1806
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1806(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1806 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1806 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180700
     * @tc.name      : TestCase_1807
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1807(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1807 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1807 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180800
     * @tc.name      : TestCase_1808
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1808(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1808 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1808 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_180900
     * @tc.name      : TestCase_1809
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1809(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1809 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1809 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181000
     * @tc.name      : TestCase_1810
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1810(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1810 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1810 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181100
     * @tc.name      : TestCase_1811
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1811(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1811 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1811 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181200
     * @tc.name      : TestCase_1812
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1812(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1812 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1812 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181300
     * @tc.name      : TestCase_1813
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1813(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1813 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1813 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181400
     * @tc.name      : TestCase_1814
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1814(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1814 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1814 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181500
     * @tc.name      : TestCase_1815
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1815(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1815 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1815 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181600
     * @tc.name      : TestCase_1816
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1816(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1816 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1816 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181700
     * @tc.name      : TestCase_1817
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1817(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1817 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1817 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181800
     * @tc.name      : TestCase_1818
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1818(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1818 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1818 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_181900
     * @tc.name      : TestCase_1819
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1819(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1819 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1819 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182000
     * @tc.name      : TestCase_1820
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1820(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1820 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1820 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182100
     * @tc.name      : TestCase_1821
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1821(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1821 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1821 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182200
     * @tc.name      : TestCase_1822
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1822(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1822 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1822 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182300
     * @tc.name      : TestCase_1823
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1823(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1823 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1823 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182400
     * @tc.name      : TestCase_1824
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1824(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1824 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1824 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182500
     * @tc.name      : TestCase_1825
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1825(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1825 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1825 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182600
     * @tc.name      : TestCase_1826
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1826(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1826 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1826 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182700
     * @tc.name      : TestCase_1827
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1827(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1827 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1827 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182800
     * @tc.name      : TestCase_1828
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1828(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1828 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1828 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_182900
     * @tc.name      : TestCase_1829
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1829(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1829 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1829 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183000
     * @tc.name      : TestCase_1830
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1830(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1830 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1830 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183100
     * @tc.name      : TestCase_1831
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1831(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1831 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1831 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183200
     * @tc.name      : TestCase_1832
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1832(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1832 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1832 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183300
     * @tc.name      : TestCase_1833
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1833(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1833 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1833 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183400
     * @tc.name      : TestCase_1834
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1834(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1834 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1834 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183500
     * @tc.name      : TestCase_1835
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1835(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1835 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1835 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183600
     * @tc.name      : TestCase_1836
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1836(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1836 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1836 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183700
     * @tc.name      : TestCase_1837
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1837(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1837 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1837 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183800
     * @tc.name      : TestCase_1838
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1838(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1838 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1838 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_183900
     * @tc.name      : TestCase_1839
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1839(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1839 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1839 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184000
     * @tc.name      : TestCase_1840
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1840(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1840 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1840 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184100
     * @tc.name      : TestCase_1841
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1841(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1841 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1841 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184200
     * @tc.name      : TestCase_1842
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1842(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1842 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1842 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184300
     * @tc.name      : TestCase_1843
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1843(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1843 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1843 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184400
     * @tc.name      : TestCase_1844
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1844(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1844 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1844 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184500
     * @tc.name      : TestCase_1845
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1845(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1845 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1845 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184600
     * @tc.name      : TestCase_1846
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1846(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1846 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1846 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184700
     * @tc.name      : TestCase_1847
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1847(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1847 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1847 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184800
     * @tc.name      : TestCase_1848
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1848(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1848 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1848 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_184900
     * @tc.name      : TestCase_1849
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1849(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1849 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1849 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185000
     * @tc.name      : TestCase_1850
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1850(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1850 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1850 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185100
     * @tc.name      : TestCase_1851
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1851(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1851 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1851 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185200
     * @tc.name      : TestCase_1852
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1852(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1852 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1852 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185300
     * @tc.name      : TestCase_1853
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1853(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1853 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1853 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185400
     * @tc.name      : TestCase_1854
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1854(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1854 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1854 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185500
     * @tc.name      : TestCase_1855
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1855(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1855 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1855 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185600
     * @tc.name      : TestCase_1856
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1856(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1856 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1856 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185700
     * @tc.name      : TestCase_1857
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1857(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1857 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1857 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185800
     * @tc.name      : TestCase_1858
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1858(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1858 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1858 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_185900
     * @tc.name      : TestCase_1859
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1859(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1859 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1859 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186000
     * @tc.name      : TestCase_1860
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1860(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1860 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1860 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186100
     * @tc.name      : TestCase_1861
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1861(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1861 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1861 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186200
     * @tc.name      : TestCase_1862
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "p", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1862(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1862 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("p", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1862 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186300
     * @tc.name      : TestCase_1863
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1863(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1863 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1863 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186400
     * @tc.name      : TestCase_1864
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1864(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1864 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1864 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186500
     * @tc.name      : TestCase_1865
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1865(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1865 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1865 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186600
     * @tc.name      : TestCase_1866
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1866(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1866 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1866 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186700
     * @tc.name      : TestCase_1867
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1867(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1867 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1867 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186800
     * @tc.name      : TestCase_1868
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1868(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1868 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1868 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_186900
     * @tc.name      : TestCase_1869
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1869(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1869 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1869 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187000
     * @tc.name      : TestCase_1870
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1870(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1870 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1870 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187100
     * @tc.name      : TestCase_1871
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1871(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1871 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1871 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187200
     * @tc.name      : TestCase_1872
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1872(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1872 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1872 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187300
     * @tc.name      : TestCase_1873
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1873(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1873 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1873 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187400
     * @tc.name      : TestCase_1874
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1874(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1874 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1874 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187500
     * @tc.name      : TestCase_1875
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1875(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1875 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1875 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187600
     * @tc.name      : TestCase_1876
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1876(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1876 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1876 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187700
     * @tc.name      : TestCase_1877
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1877(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1877 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1877 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187800
     * @tc.name      : TestCase_1878
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1878(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1878 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1878 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_187900
     * @tc.name      : TestCase_1879
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1879(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1879 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1879 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188000
     * @tc.name      : TestCase_1880
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1880(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1880 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1880 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188100
     * @tc.name      : TestCase_1881
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1881(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1881 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1881 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188200
     * @tc.name      : TestCase_1882
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1882(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1882 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1882 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188300
     * @tc.name      : TestCase_1883
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1883(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1883 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1883 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188400
     * @tc.name      : TestCase_1884
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1884(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1884 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1884 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188500
     * @tc.name      : TestCase_1885
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1885(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1885 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1885 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188600
     * @tc.name      : TestCase_1886
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1886(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1886 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1886 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188700
     * @tc.name      : TestCase_1887
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1887(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1887 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1887 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188800
     * @tc.name      : TestCase_1888
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1888(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1888 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1888 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_188900
     * @tc.name      : TestCase_1889
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1889(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1889 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1889 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189000
     * @tc.name      : TestCase_1890
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1890(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1890 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1890 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189100
     * @tc.name      : TestCase_1891
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1891(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1891 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1891 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189200
     * @tc.name      : TestCase_1892
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1892(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1892 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1892 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189300
     * @tc.name      : TestCase_1893
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1893(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1893 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1893 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189400
     * @tc.name      : TestCase_1894
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1894(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1894 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1894 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189500
     * @tc.name      : TestCase_1895
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1895(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1895 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1895 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189600
     * @tc.name      : TestCase_1896
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1896(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1896 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1896 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189700
     * @tc.name      : TestCase_1897
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1897(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1897 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1897 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189800
     * @tc.name      : TestCase_1898
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1898(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1898 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1898 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_189900
     * @tc.name      : TestCase_1899
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1899(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1899 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1899 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190000
     * @tc.name      : TestCase_1900
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1900(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1900 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1900 ends.")
    }
}
