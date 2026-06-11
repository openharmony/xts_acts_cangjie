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
class testFinishTrace_10 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90100
     * @tc.name      : TestCase_901
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_901(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_901 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_901 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90200
     * @tc.name      : TestCase_902
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_902(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_902 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_902 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90300
     * @tc.name      : TestCase_903
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_903(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_903 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_903 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90400
     * @tc.name      : TestCase_904
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_904(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_904 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_904 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90500
     * @tc.name      : TestCase_905
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_905(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_905 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_905 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90600
     * @tc.name      : TestCase_906
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_906(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_906 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_906 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90700
     * @tc.name      : TestCase_907
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_907(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_907 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_907 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90800
     * @tc.name      : TestCase_908
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_908(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_908 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_908 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_90900
     * @tc.name      : TestCase_909
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_909(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_909 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_909 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91000
     * @tc.name      : TestCase_910
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_910(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_910 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_910 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91100
     * @tc.name      : TestCase_911
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_911(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_911 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_911 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91200
     * @tc.name      : TestCase_912
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_912(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_912 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_912 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91300
     * @tc.name      : TestCase_913
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_913(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_913 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_913 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91400
     * @tc.name      : TestCase_914
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_914(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_914 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", -1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_914 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91500
     * @tc.name      : TestCase_915
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_915(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_915 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 0i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_915 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91600
     * @tc.name      : TestCase_916
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_916(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_916 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 1i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_916 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91700
     * @tc.name      : TestCase_917
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_917(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_917 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 2i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_917 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91800
     * @tc.name      : TestCase_918
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_918(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_918 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 3i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_918 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_91900
     * @tc.name      : TestCase_919
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_919(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_919 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 4i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_919 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92000
     * @tc.name      : TestCase_920
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_920(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_920 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 5i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_920 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92100
     * @tc.name      : TestCase_921
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_921(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_921 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 6i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_921 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92200
     * @tc.name      : TestCase_922
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_922(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_922 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 7i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_922 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92300
     * @tc.name      : TestCase_923
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_923(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_923 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 8i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_923 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92400
     * @tc.name      : TestCase_924
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_924(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_924 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 9i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_924 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92500
     * @tc.name      : TestCase_925
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_925(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_925 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 10i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_925 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92600
     * @tc.name      : TestCase_926
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_926(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_926 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 11i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_926 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92700
     * @tc.name      : TestCase_927
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_927(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_927 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 12i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_927 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92800
     * @tc.name      : TestCase_928
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_928(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_928 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_928 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_92900
     * @tc.name      : TestCase_929
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_929(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_929 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_929 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93000
     * @tc.name      : TestCase_930
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_930(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_930 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_930 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93100
     * @tc.name      : TestCase_931
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_931(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_931 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_931 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93200
     * @tc.name      : TestCase_932
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_932(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_932 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_932 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93300
     * @tc.name      : TestCase_933
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_933(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_933 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_933 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93400
     * @tc.name      : TestCase_934
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_934(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_934 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_934 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93500
     * @tc.name      : TestCase_935
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_935(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_935 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_935 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93600
     * @tc.name      : TestCase_936
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_936(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_936 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_936 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93700
     * @tc.name      : TestCase_937
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_937(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_937 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_937 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93800
     * @tc.name      : TestCase_938
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_938(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_938 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_938 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_93900
     * @tc.name      : TestCase_939
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_939(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_939 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_939 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94000
     * @tc.name      : TestCase_940
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_940(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_940 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_940 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94100
     * @tc.name      : TestCase_941
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_941(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_941 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_941 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94200
     * @tc.name      : TestCase_942
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_942(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_942 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_942 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94300
     * @tc.name      : TestCase_943
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_943(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_943 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_943 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94400
     * @tc.name      : TestCase_944
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_944(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_944 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_944 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94500
     * @tc.name      : TestCase_945
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_945(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_945 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_945 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94600
     * @tc.name      : TestCase_946
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_946(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_946 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 31i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_946 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94700
     * @tc.name      : TestCase_947
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_947(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_947 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 32i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_947 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94800
     * @tc.name      : TestCase_948
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_948(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_948 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 33i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_948 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_94900
     * @tc.name      : TestCase_949
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_949(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_949 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 100i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_949 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95000
     * @tc.name      : TestCase_950
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_950(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_950 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 101i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_950 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95100
     * @tc.name      : TestCase_951
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_951(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_951 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 102i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_951 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95200
     * @tc.name      : TestCase_952
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_952(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_952 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 103i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_952 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95300
     * @tc.name      : TestCase_953
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_953(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_953 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 104i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_953 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95400
     * @tc.name      : TestCase_954
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_954(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_954 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 105i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_954 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95500
     * @tc.name      : TestCase_955
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_955(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_955 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 106i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_955 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95600
     * @tc.name      : TestCase_956
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_956(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_956 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 107i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_956 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95700
     * @tc.name      : TestCase_957
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_957(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_957 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 108i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_957 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95800
     * @tc.name      : TestCase_958
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_958(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_958 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 109i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_958 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_95900
     * @tc.name      : TestCase_959
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_959(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_959 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 110i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_959 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96000
     * @tc.name      : TestCase_960
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_960(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_960 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 111i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_960 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96100
     * @tc.name      : TestCase_961
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_961(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_961 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 112i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_961 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96200
     * @tc.name      : TestCase_962
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_962(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_962 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 113i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_962 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96300
     * @tc.name      : TestCase_963
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_963(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_963 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 114i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_963 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96400
     * @tc.name      : TestCase_964
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_964(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_964 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 115i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_964 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96500
     * @tc.name      : TestCase_965
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_965(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_965 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 116i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_965 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96600
     * @tc.name      : TestCase_966
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_966(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_966 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 117i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_966 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96700
     * @tc.name      : TestCase_967
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_967(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_967 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 118i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_967 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96800
     * @tc.name      : TestCase_968
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_968(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_968 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 119i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_968 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_96900
     * @tc.name      : TestCase_969
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_969(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_969 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 120i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_969 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97000
     * @tc.name      : TestCase_970
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_970(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_970 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 121i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_970 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97100
     * @tc.name      : TestCase_971
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_971(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_971 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 122i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_971 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97200
     * @tc.name      : TestCase_972
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_972(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_972 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 123i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_972 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97300
     * @tc.name      : TestCase_973
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_973(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_973 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 124i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_973 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97400
     * @tc.name      : TestCase_974
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_974(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_974 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 125i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_974 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97500
     * @tc.name      : TestCase_975
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_975(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_975 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 126i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_975 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97600
     * @tc.name      : TestCase_976
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_976(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_976 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 127i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_976 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97700
     * @tc.name      : TestCase_977
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_977(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_977 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 128i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_977 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97800
     * @tc.name      : TestCase_978
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_978(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_978 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 129i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_978 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_97900
     * @tc.name      : TestCase_979
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_979(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_979 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_979 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98000
     * @tc.name      : TestCase_980
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "g", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_980(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_980 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("g", 2147483647i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_980 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98100
     * @tc.name      : TestCase_981
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_981(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_981 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -2147483648i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_981 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98200
     * @tc.name      : TestCase_982
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_982(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_982 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -114514i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_982 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98300
     * @tc.name      : TestCase_983
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_983(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_983 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -30i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_983 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98400
     * @tc.name      : TestCase_984
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_984(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_984 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -29i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_984 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98500
     * @tc.name      : TestCase_985
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_985(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_985 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -28i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_985 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98600
     * @tc.name      : TestCase_986
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_986(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_986 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -27i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_986 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98700
     * @tc.name      : TestCase_987
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_987(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_987 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -26i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_987 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98800
     * @tc.name      : TestCase_988
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_988(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_988 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -25i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_988 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_98900
     * @tc.name      : TestCase_989
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_989(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_989 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -24i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_989 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99000
     * @tc.name      : TestCase_990
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_990(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_990 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -23i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_990 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99100
     * @tc.name      : TestCase_991
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_991(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_991 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -22i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_991 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99200
     * @tc.name      : TestCase_992
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_992(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_992 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -21i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_992 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99300
     * @tc.name      : TestCase_993
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_993(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_993 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -20i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_993 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99400
     * @tc.name      : TestCase_994
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_994(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_994 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -19i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_994 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99500
     * @tc.name      : TestCase_995
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_995(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_995 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -18i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_995 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99600
     * @tc.name      : TestCase_996
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_996(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_996 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -17i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_996 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99700
     * @tc.name      : TestCase_997
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_997(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_997 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -16i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_997 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99800
     * @tc.name      : TestCase_998
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_998(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_998 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -15i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_998 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_99900
     * @tc.name      : TestCase_999
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_999(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_999 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -14i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_999 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_100000
     * @tc.name      : TestCase_1000
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "h", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1000(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1000 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("h", -13i32)
        @Expect(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_1000 ends.")
    }
}
