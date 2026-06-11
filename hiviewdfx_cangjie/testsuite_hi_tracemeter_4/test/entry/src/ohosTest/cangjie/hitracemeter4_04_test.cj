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
class testStartTrace_21 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200100
     * @tc.name      : TestCase_2001
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2001(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2001 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2001 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200200
     * @tc.name      : TestCase_2002
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2002(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2002 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200300
     * @tc.name      : TestCase_2003
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2003(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2003 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2003 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200400
     * @tc.name      : TestCase_2004
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2004(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2004 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2004 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200500
     * @tc.name      : TestCase_2005
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2005(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2005 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2005 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200600
     * @tc.name      : TestCase_2006
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2006(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2006 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2006 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200700
     * @tc.name      : TestCase_2007
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2007(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2007 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2007 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200800
     * @tc.name      : TestCase_2008
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2008(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2008 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2008 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_200900
     * @tc.name      : TestCase_2009
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2009(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2009 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2009 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201000
     * @tc.name      : TestCase_2010
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2010(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2010 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2010 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201100
     * @tc.name      : TestCase_2011
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2011(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2011 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2011 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201200
     * @tc.name      : TestCase_2012
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2012(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2012 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2012 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201300
     * @tc.name      : TestCase_2013
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2013(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2013 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2013 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201400
     * @tc.name      : TestCase_2014
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2014(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2014 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2014 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201500
     * @tc.name      : TestCase_2015
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2015(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2015 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2015 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201600
     * @tc.name      : TestCase_2016
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2016(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2016 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2016 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201700
     * @tc.name      : TestCase_2017
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2017(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2017 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2017 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201800
     * @tc.name      : TestCase_2018
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2018(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2018 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2018 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_201900
     * @tc.name      : TestCase_2019
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2019(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2019 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2019 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202000
     * @tc.name      : TestCase_2020
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2020(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2020 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2020 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202100
     * @tc.name      : TestCase_2021
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2021(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2021 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2021 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202200
     * @tc.name      : TestCase_2022
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2022(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2022 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2022 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202300
     * @tc.name      : TestCase_2023
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2023(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2023 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2023 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202400
     * @tc.name      : TestCase_2024
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2024(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2024 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2024 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202500
     * @tc.name      : TestCase_2025
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2025(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2025 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2025 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202600
     * @tc.name      : TestCase_2026
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2026(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2026 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2026 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202700
     * @tc.name      : TestCase_2027
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2027(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2027 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2027 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202800
     * @tc.name      : TestCase_2028
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2028(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2028 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2028 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_202900
     * @tc.name      : TestCase_2029
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2029(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2029 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2029 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203000
     * @tc.name      : TestCase_2030
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2030(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2030 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2030 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203100
     * @tc.name      : TestCase_2031
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2031(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2031 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2031 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203200
     * @tc.name      : TestCase_2032
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2032(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2032 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2032 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203300
     * @tc.name      : TestCase_2033
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2033(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2033 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2033 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203400
     * @tc.name      : TestCase_2034
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2034(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2034 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2034 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203500
     * @tc.name      : TestCase_2035
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2035(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2035 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2035 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203600
     * @tc.name      : TestCase_2036
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2036(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2036 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2036 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203700
     * @tc.name      : TestCase_2037
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2037(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2037 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2037 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203800
     * @tc.name      : TestCase_2038
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2038(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2038 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2038 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_203900
     * @tc.name      : TestCase_2039
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2039(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2039 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2039 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204000
     * @tc.name      : TestCase_2040
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2040(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2040 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2040 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204100
     * @tc.name      : TestCase_2041
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2041(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2041 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2041 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204200
     * @tc.name      : TestCase_2042
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2042(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2042 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2042 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204300
     * @tc.name      : TestCase_2043
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2043(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2043 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2043 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204400
     * @tc.name      : TestCase_2044
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2044(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2044 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2044 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204500
     * @tc.name      : TestCase_2045
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2045(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2045 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2045 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204600
     * @tc.name      : TestCase_2046
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2046(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2046 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2046 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204700
     * @tc.name      : TestCase_2047
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2047(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2047 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2047 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204800
     * @tc.name      : TestCase_2048
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2048(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2048 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2048 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_204900
     * @tc.name      : TestCase_2049
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2049(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2049 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2049 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205000
     * @tc.name      : TestCase_2050
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2050(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2050 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2050 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205100
     * @tc.name      : TestCase_2051
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2051(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2051 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2051 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205200
     * @tc.name      : TestCase_2052
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2052(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2052 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2052 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205300
     * @tc.name      : TestCase_2053
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2053(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2053 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2053 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205400
     * @tc.name      : TestCase_2054
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2054(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2054 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2054 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205500
     * @tc.name      : TestCase_2055
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2055(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2055 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2055 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205600
     * @tc.name      : TestCase_2056
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2056(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2056 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2056 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205700
     * @tc.name      : TestCase_2057
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2057(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2057 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2057 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205800
     * @tc.name      : TestCase_2058
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "r", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2058(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2058 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("r", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2058 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_205900
     * @tc.name      : TestCase_2059
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2059(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2059 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2059 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206000
     * @tc.name      : TestCase_2060
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2060(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2060 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2060 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206100
     * @tc.name      : TestCase_2061
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2061(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2061 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2061 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206200
     * @tc.name      : TestCase_2062
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2062(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2062 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2062 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206300
     * @tc.name      : TestCase_2063
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2063(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2063 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2063 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206400
     * @tc.name      : TestCase_2064
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2064(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2064 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2064 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206500
     * @tc.name      : TestCase_2065
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2065(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2065 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2065 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206600
     * @tc.name      : TestCase_2066
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2066(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2066 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2066 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206700
     * @tc.name      : TestCase_2067
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2067(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2067 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2067 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206800
     * @tc.name      : TestCase_2068
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2068(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2068 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2068 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_206900
     * @tc.name      : TestCase_2069
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2069(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2069 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2069 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207000
     * @tc.name      : TestCase_2070
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2070(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2070 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2070 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207100
     * @tc.name      : TestCase_2071
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2071(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2071 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2071 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207200
     * @tc.name      : TestCase_2072
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2072(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2072 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2072 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207300
     * @tc.name      : TestCase_2073
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2073(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2073 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2073 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207400
     * @tc.name      : TestCase_2074
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2074(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2074 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2074 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207500
     * @tc.name      : TestCase_2075
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2075(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2075 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2075 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207600
     * @tc.name      : TestCase_2076
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2076(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2076 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2076 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207700
     * @tc.name      : TestCase_2077
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2077(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2077 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2077 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207800
     * @tc.name      : TestCase_2078
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2078(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2078 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2078 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_207900
     * @tc.name      : TestCase_2079
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2079(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2079 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2079 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208000
     * @tc.name      : TestCase_2080
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2080(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2080 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2080 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208100
     * @tc.name      : TestCase_2081
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2081(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2081 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2081 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208200
     * @tc.name      : TestCase_2082
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2082(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2082 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2082 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208300
     * @tc.name      : TestCase_2083
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2083(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2083 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2083 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208400
     * @tc.name      : TestCase_2084
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2084(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2084 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2084 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208500
     * @tc.name      : TestCase_2085
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2085(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2085 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2085 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208600
     * @tc.name      : TestCase_2086
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2086(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2086 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2086 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208700
     * @tc.name      : TestCase_2087
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2087(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2087 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2087 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208800
     * @tc.name      : TestCase_2088
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2088(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2088 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2088 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_208900
     * @tc.name      : TestCase_2089
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2089(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2089 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2089 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209000
     * @tc.name      : TestCase_2090
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2090(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2090 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2090 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209100
     * @tc.name      : TestCase_2091
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2091(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2091 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2091 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209200
     * @tc.name      : TestCase_2092
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2092(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2092 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2092 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209300
     * @tc.name      : TestCase_2093
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2093(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2093 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2093 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209400
     * @tc.name      : TestCase_2094
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2094(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2094 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2094 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209500
     * @tc.name      : TestCase_2095
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2095(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2095 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2095 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209600
     * @tc.name      : TestCase_2096
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2096(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2096 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2096 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209700
     * @tc.name      : TestCase_2097
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2097(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2097 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2097 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209800
     * @tc.name      : TestCase_2098
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2098(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2098 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2098 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_209900
     * @tc.name      : TestCase_2099
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2099(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2099 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2099 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_210000
     * @tc.name      : TestCase_2100
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "s", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2100(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2100 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("s", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2100 ends.")
    }
}
