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
class testStartTrace_20 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190100
     * @tc.name      : TestCase_1901
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1901(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1901 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190200
     * @tc.name      : TestCase_1902
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1902(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1902 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190300
     * @tc.name      : TestCase_1903
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1903(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1903 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190400
     * @tc.name      : TestCase_1904
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1904(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1904 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190500
     * @tc.name      : TestCase_1905
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1905(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1905 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190600
     * @tc.name      : TestCase_1906
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1906(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1906 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190700
     * @tc.name      : TestCase_1907
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1907(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1907 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1907 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190800
     * @tc.name      : TestCase_1908
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1908(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1908 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1908 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_190900
     * @tc.name      : TestCase_1909
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1909(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1909 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1909 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191000
     * @tc.name      : TestCase_1910
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1910(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1910 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191100
     * @tc.name      : TestCase_1911
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1911(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1911 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191200
     * @tc.name      : TestCase_1912
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1912(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1912 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191300
     * @tc.name      : TestCase_1913
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1913(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1913 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191400
     * @tc.name      : TestCase_1914
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1914(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1914 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191500
     * @tc.name      : TestCase_1915
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1915(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1915 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191600
     * @tc.name      : TestCase_1916
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1916(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1916 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191700
     * @tc.name      : TestCase_1917
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1917(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1917 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191800
     * @tc.name      : TestCase_1918
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1918(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1918 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_191900
     * @tc.name      : TestCase_1919
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1919(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1919 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192000
     * @tc.name      : TestCase_1920
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1920(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1920 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192100
     * @tc.name      : TestCase_1921
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1921(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1921 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192200
     * @tc.name      : TestCase_1922
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1922(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1922 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192300
     * @tc.name      : TestCase_1923
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1923(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1923 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192400
     * @tc.name      : TestCase_1924
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1924(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1924 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192500
     * @tc.name      : TestCase_1925
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1925(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1925 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192600
     * @tc.name      : TestCase_1926
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1926(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1926 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192700
     * @tc.name      : TestCase_1927
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1927(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1927 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192800
     * @tc.name      : TestCase_1928
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1928(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1928 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_192900
     * @tc.name      : TestCase_1929
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1929(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1929 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193000
     * @tc.name      : TestCase_1930
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1930(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1930 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1930 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193100
     * @tc.name      : TestCase_1931
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1931(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1931 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193200
     * @tc.name      : TestCase_1932
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1932(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1932 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193300
     * @tc.name      : TestCase_1933
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1933(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1933 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193400
     * @tc.name      : TestCase_1934
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1934(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1934 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193500
     * @tc.name      : TestCase_1935
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1935(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1935 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193600
     * @tc.name      : TestCase_1936
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1936(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1936 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193700
     * @tc.name      : TestCase_1937
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1937(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1937 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193800
     * @tc.name      : TestCase_1938
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1938(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1938 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_193900
     * @tc.name      : TestCase_1939
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1939(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1939 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194000
     * @tc.name      : TestCase_1940
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1940(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1940 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194100
     * @tc.name      : TestCase_1941
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1941(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1941 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194200
     * @tc.name      : TestCase_1942
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1942(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1942 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194300
     * @tc.name      : TestCase_1943
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1943(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1943 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194400
     * @tc.name      : TestCase_1944
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1944(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1944 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194500
     * @tc.name      : TestCase_1945
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1945(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1945 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194600
     * @tc.name      : TestCase_1946
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1946(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1946 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194700
     * @tc.name      : TestCase_1947
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1947(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1947 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194800
     * @tc.name      : TestCase_1948
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1948(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1948 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_194900
     * @tc.name      : TestCase_1949
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1949(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1949 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195000
     * @tc.name      : TestCase_1950
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1950(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1950 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195100
     * @tc.name      : TestCase_1951
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1951(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1951 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195200
     * @tc.name      : TestCase_1952
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1952(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1952 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195300
     * @tc.name      : TestCase_1953
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1953(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1953 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195400
     * @tc.name      : TestCase_1954
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1954(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1954 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195500
     * @tc.name      : TestCase_1955
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1955(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1955 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195600
     * @tc.name      : TestCase_1956
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1956(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1956 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195700
     * @tc.name      : TestCase_1957
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1957(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1957 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195800
     * @tc.name      : TestCase_1958
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1958(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1958 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_195900
     * @tc.name      : TestCase_1959
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1959(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1959 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196000
     * @tc.name      : TestCase_1960
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "q", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1960(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1960 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("q", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1960 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196100
     * @tc.name      : TestCase_1961
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1961(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1961 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1961 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196200
     * @tc.name      : TestCase_1962
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1962(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1962 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1962 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196300
     * @tc.name      : TestCase_1963
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1963(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1963 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1963 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196400
     * @tc.name      : TestCase_1964
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1964(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1964 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1964 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196500
     * @tc.name      : TestCase_1965
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1965(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1965 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1965 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196600
     * @tc.name      : TestCase_1966
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1966(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1966 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1966 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196700
     * @tc.name      : TestCase_1967
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1967(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1967 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1967 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196800
     * @tc.name      : TestCase_1968
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1968(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1968 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1968 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_196900
     * @tc.name      : TestCase_1969
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1969(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1969 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1969 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197000
     * @tc.name      : TestCase_1970
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1970(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1970 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1970 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197100
     * @tc.name      : TestCase_1971
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1971(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1971 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1971 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197200
     * @tc.name      : TestCase_1972
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1972(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1972 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1972 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197300
     * @tc.name      : TestCase_1973
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1973(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1973 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1973 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197400
     * @tc.name      : TestCase_1974
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1974(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1974 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1974 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197500
     * @tc.name      : TestCase_1975
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1975(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1975 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1975 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197600
     * @tc.name      : TestCase_1976
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1976(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1976 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1976 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197700
     * @tc.name      : TestCase_1977
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1977(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1977 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1977 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197800
     * @tc.name      : TestCase_1978
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1978(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1978 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1978 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_197900
     * @tc.name      : TestCase_1979
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1979(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1979 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1979 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198000
     * @tc.name      : TestCase_1980
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1980(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1980 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1980 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198100
     * @tc.name      : TestCase_1981
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1981(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1981 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1981 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198200
     * @tc.name      : TestCase_1982
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1982(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1982 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1982 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198300
     * @tc.name      : TestCase_1983
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1983(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1983 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1983 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198400
     * @tc.name      : TestCase_1984
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1984(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1984 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1984 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198500
     * @tc.name      : TestCase_1985
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1985(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1985 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1985 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198600
     * @tc.name      : TestCase_1986
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1986(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1986 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1986 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198700
     * @tc.name      : TestCase_1987
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1987(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1987 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1987 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198800
     * @tc.name      : TestCase_1988
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1988(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1988 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1988 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_198900
     * @tc.name      : TestCase_1989
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1989(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1989 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1989 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199000
     * @tc.name      : TestCase_1990
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1990(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1990 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1990 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199100
     * @tc.name      : TestCase_1991
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1991(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1991 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199200
     * @tc.name      : TestCase_1992
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1992(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1992 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199300
     * @tc.name      : TestCase_1993
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1993(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1993 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199400
     * @tc.name      : TestCase_1994
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1994(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1994 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199500
     * @tc.name      : TestCase_1995
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1995(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1995 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199600
     * @tc.name      : TestCase_1996
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1996(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1996 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199700
     * @tc.name      : TestCase_1997
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1997(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1997 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199800
     * @tc.name      : TestCase_1998
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1998(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1998 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_199900
     * @tc.name      : TestCase_1999
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1999(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1999 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200000
     * @tc.name      : TestCase_2000
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2000(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2000 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2000 ends.")
    }
}
