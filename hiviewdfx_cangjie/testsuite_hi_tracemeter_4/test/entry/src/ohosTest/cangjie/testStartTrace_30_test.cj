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
class testStartTrace_30 {
    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290100
     * @tc.name      : TestCase_2901
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2901(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2901 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290200
     * @tc.name      : TestCase_2902
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2902(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2902 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290300
     * @tc.name      : TestCase_2903
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2903(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2903 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290400
     * @tc.name      : TestCase_2904
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2904(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2904 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290500
     * @tc.name      : TestCase_2905
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2905(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2905 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290600
     * @tc.name      : TestCase_2906
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2906(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2906 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290700
     * @tc.name      : TestCase_2907
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2907(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2907 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2907 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290800
     * @tc.name      : TestCase_2908
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2908(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2908 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2908 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_290900
     * @tc.name      : TestCase_2909
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2909(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2909 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2909 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291000
     * @tc.name      : TestCase_2910
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2910(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2910 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291100
     * @tc.name      : TestCase_2911
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2911(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2911 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291200
     * @tc.name      : TestCase_2912
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2912(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2912 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291300
     * @tc.name      : TestCase_2913
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2913(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2913 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291400
     * @tc.name      : TestCase_2914
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2914(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2914 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291500
     * @tc.name      : TestCase_2915
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2915(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2915 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291600
     * @tc.name      : TestCase_2916
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2916(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2916 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291700
     * @tc.name      : TestCase_2917
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2917(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2917 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291800
     * @tc.name      : TestCase_2918
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2918(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2918 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_291900
     * @tc.name      : TestCase_2919
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2919(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2919 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292000
     * @tc.name      : TestCase_2920
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2920(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2920 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292100
     * @tc.name      : TestCase_2921
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2921(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2921 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292200
     * @tc.name      : TestCase_2922
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2922(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2922 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292300
     * @tc.name      : TestCase_2923
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2923(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2923 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292400
     * @tc.name      : TestCase_2924
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2924(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2924 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292500
     * @tc.name      : TestCase_2925
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2925(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2925 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292600
     * @tc.name      : TestCase_2926
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2926(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2926 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292700
     * @tc.name      : TestCase_2927
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2927(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2927 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292800
     * @tc.name      : TestCase_2928
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2928(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2928 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_292900
     * @tc.name      : TestCase_2929
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2929(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2929 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293000
     * @tc.name      : TestCase_2930
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2930(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2930 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2930 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293100
     * @tc.name      : TestCase_2931
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2931(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2931 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293200
     * @tc.name      : TestCase_2932
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2932(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2932 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293300
     * @tc.name      : TestCase_2933
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2933(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2933 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293400
     * @tc.name      : TestCase_2934
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2934(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2934 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293500
     * @tc.name      : TestCase_2935
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2935(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2935 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293600
     * @tc.name      : TestCase_2936
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2936(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2936 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293700
     * @tc.name      : TestCase_2937
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2937(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2937 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293800
     * @tc.name      : TestCase_2938
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2938(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2938 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_293900
     * @tc.name      : TestCase_2939
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2939(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2939 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294000
     * @tc.name      : TestCase_2940
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "1", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2940(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2940 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("1", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294100
     * @tc.name      : TestCase_2941
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2941(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2941 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294200
     * @tc.name      : TestCase_2942
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2942(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2942 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294300
     * @tc.name      : TestCase_2943
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2943(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2943 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294400
     * @tc.name      : TestCase_2944
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2944(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2944 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294500
     * @tc.name      : TestCase_2945
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2945(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2945 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294600
     * @tc.name      : TestCase_2946
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2946(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2946 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294700
     * @tc.name      : TestCase_2947
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2947(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2947 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294800
     * @tc.name      : TestCase_2948
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2948(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2948 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_294900
     * @tc.name      : TestCase_2949
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2949(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2949 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295000
     * @tc.name      : TestCase_2950
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2950(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2950 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295100
     * @tc.name      : TestCase_2951
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2951(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2951 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295200
     * @tc.name      : TestCase_2952
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2952(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2952 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295300
     * @tc.name      : TestCase_2953
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2953(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2953 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295400
     * @tc.name      : TestCase_2954
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2954(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2954 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295500
     * @tc.name      : TestCase_2955
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2955(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2955 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295600
     * @tc.name      : TestCase_2956
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2956(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2956 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295700
     * @tc.name      : TestCase_2957
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2957(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2957 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295800
     * @tc.name      : TestCase_2958
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2958(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2958 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_295900
     * @tc.name      : TestCase_2959
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2959(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2959 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296000
     * @tc.name      : TestCase_2960
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2960(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2960 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2960 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296100
     * @tc.name      : TestCase_2961
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2961(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2961 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2961 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296200
     * @tc.name      : TestCase_2962
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2962(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2962 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2962 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296300
     * @tc.name      : TestCase_2963
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2963(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2963 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2963 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296400
     * @tc.name      : TestCase_2964
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2964(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2964 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2964 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296500
     * @tc.name      : TestCase_2965
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2965(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2965 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2965 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296600
     * @tc.name      : TestCase_2966
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2966(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2966 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2966 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296700
     * @tc.name      : TestCase_2967
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2967(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2967 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2967 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296800
     * @tc.name      : TestCase_2968
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2968(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2968 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2968 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_296900
     * @tc.name      : TestCase_2969
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2969(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2969 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2969 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297000
     * @tc.name      : TestCase_2970
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2970(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2970 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2970 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297100
     * @tc.name      : TestCase_2971
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2971(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2971 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2971 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297200
     * @tc.name      : TestCase_2972
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2972(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2972 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2972 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297300
     * @tc.name      : TestCase_2973
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2973(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2973 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2973 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297400
     * @tc.name      : TestCase_2974
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2974(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2974 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2974 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297500
     * @tc.name      : TestCase_2975
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2975(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2975 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2975 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297600
     * @tc.name      : TestCase_2976
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2976(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2976 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2976 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297700
     * @tc.name      : TestCase_2977
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2977(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2977 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2977 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297800
     * @tc.name      : TestCase_2978
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2978(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2978 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2978 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_297900
     * @tc.name      : TestCase_2979
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2979(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2979 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2979 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298000
     * @tc.name      : TestCase_2980
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2980(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2980 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2980 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298100
     * @tc.name      : TestCase_2981
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2981(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2981 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2981 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298200
     * @tc.name      : TestCase_2982
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2982(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2982 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2982 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298300
     * @tc.name      : TestCase_2983
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2983(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2983 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2983 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298400
     * @tc.name      : TestCase_2984
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2984(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2984 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2984 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298500
     * @tc.name      : TestCase_2985
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2985(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2985 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2985 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298600
     * @tc.name      : TestCase_2986
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2986(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2986 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2986 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298700
     * @tc.name      : TestCase_2987
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2987(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2987 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2987 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298800
     * @tc.name      : TestCase_2988
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2988(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2988 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2988 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_298900
     * @tc.name      : TestCase_2989
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2989(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2989 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2989 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299000
     * @tc.name      : TestCase_2990
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2990(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2990 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2990 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299100
     * @tc.name      : TestCase_2991
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2991(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2991 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299200
     * @tc.name      : TestCase_2992
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2992(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2992 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299300
     * @tc.name      : TestCase_2993
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2993(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2993 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299400
     * @tc.name      : TestCase_2994
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2994(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2994 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299500
     * @tc.name      : TestCase_2995
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2995(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2995 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299600
     * @tc.name      : TestCase_2996
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2996(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2996 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299700
     * @tc.name      : TestCase_2997
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2997(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2997 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299800
     * @tc.name      : TestCase_2998
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2998(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2998 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_299900
     * @tc.name      : TestCase_2999
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2999(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2999 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_2999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testStartTrace_startTrace_300000
     * @tc.name      : TestCase_3000
     * @tc.desc      : Mark the start of a pre-tracked time-consuming task. name: "2", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3000(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3000 begins.")
        Hilog.info(0u32, "cangjietest", "startTrace")
        HiTraceMeter.startTrace("2", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_3000 ends.")
    }
}
