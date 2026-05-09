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
class testFinishTrace_4 {
    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_301 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_302 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_303 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_304 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_305 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_306 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_307 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_308 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_309 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_310 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_311 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_312 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_313 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_314 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_315 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_316 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_317 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_318 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_319 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_320 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_321 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_322 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_323 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_324 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_325 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_326 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", -1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_327 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 0i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_328 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 1i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "2"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_329 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 2i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "3"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_330 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 3i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "4"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_331 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 4i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "5"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_332 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 5i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "6"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_333 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 6i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "7"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_334 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 7i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "8"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_335 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 8i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "9"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_336 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 9i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "10"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_337 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 10i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "11"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_338 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 11i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "12"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_339 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 12i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "13"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_340 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 13i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "14"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_341 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 14i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "15"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_342 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 15i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "16"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_343 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 16i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_343 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34400
     * @tc.name      : TestCase_344
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "17"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_344(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_344 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 17i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_344 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34500
     * @tc.name      : TestCase_345
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "18"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_345(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_345 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 18i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_345 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34600
     * @tc.name      : TestCase_346
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "19"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_346(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_346 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 19i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_346 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34700
     * @tc.name      : TestCase_347
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "20"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_347(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_347 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 20i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_347 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34800
     * @tc.name      : TestCase_348
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "21"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_348(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_348 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 21i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_348 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_34900
     * @tc.name      : TestCase_349
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "22"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_349(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_349 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 22i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_349 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35000
     * @tc.name      : TestCase_350
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "23"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_350(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_350 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 23i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_350 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35100
     * @tc.name      : TestCase_351
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "24"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_351(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_351 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 24i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_351 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35200
     * @tc.name      : TestCase_352
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_352(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_352 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_352 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35300
     * @tc.name      : TestCase_353
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_353(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_353 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_353 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35400
     * @tc.name      : TestCase_354
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_354(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_354 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_354 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35500
     * @tc.name      : TestCase_355
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_355(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_355 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_355 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35600
     * @tc.name      : TestCase_356
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_356(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_356 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_356 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35700
     * @tc.name      : TestCase_357
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_357(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_357 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_357 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35800
     * @tc.name      : TestCase_358
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "31"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_358(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_358 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 31i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_358 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_35900
     * @tc.name      : TestCase_359
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "32"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_359(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_359 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 32i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_359 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36000
     * @tc.name      : TestCase_360
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "33"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_360(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_360 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 33i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_360 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36100
     * @tc.name      : TestCase_361
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_361(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_361 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 100i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_361 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36200
     * @tc.name      : TestCase_362
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "101"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_362(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_362 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 101i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_362 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36300
     * @tc.name      : TestCase_363
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "102"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_363(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_363 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 102i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_363 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36400
     * @tc.name      : TestCase_364
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "103"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_364(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_364 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 103i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_364 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36500
     * @tc.name      : TestCase_365
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "104"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_365(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_365 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 104i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_365 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36600
     * @tc.name      : TestCase_366
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "105"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_366(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_366 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 105i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_366 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36700
     * @tc.name      : TestCase_367
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "106"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_367(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_367 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 106i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_367 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36800
     * @tc.name      : TestCase_368
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "107"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_368(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_368 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 107i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_368 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_36900
     * @tc.name      : TestCase_369
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "108"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_369(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_369 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 108i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_369 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37000
     * @tc.name      : TestCase_370
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "109"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_370(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_370 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 109i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_370 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37100
     * @tc.name      : TestCase_371
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "110"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_371(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_371 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 110i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_371 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37200
     * @tc.name      : TestCase_372
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "111"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_372(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_372 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 111i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_372 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37300
     * @tc.name      : TestCase_373
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "112"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_373(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_373 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 112i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_373 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37400
     * @tc.name      : TestCase_374
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "113"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_374(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_374 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 113i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_374 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37500
     * @tc.name      : TestCase_375
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "114"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_375(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_375 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 114i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_375 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37600
     * @tc.name      : TestCase_376
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "115"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_376(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_376 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 115i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_376 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37700
     * @tc.name      : TestCase_377
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "116"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_377(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_377 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 116i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_377 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37800
     * @tc.name      : TestCase_378
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "117"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_378(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_378 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 117i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_378 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_37900
     * @tc.name      : TestCase_379
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "118"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_379(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_379 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 118i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_379 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38000
     * @tc.name      : TestCase_380
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "119"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_380(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_380 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 119i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_380 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38100
     * @tc.name      : TestCase_381
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "120"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_381(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_381 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 120i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_381 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38200
     * @tc.name      : TestCase_382
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "121"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_382(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_382 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 121i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_382 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38300
     * @tc.name      : TestCase_383
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "122"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_383(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_383 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 122i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_383 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38400
     * @tc.name      : TestCase_384
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "123"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_384(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_384 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 123i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_384 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38500
     * @tc.name      : TestCase_385
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "124"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_385(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_385 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 124i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_385 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38600
     * @tc.name      : TestCase_386
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "125"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_386(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_386 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 125i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_386 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38700
     * @tc.name      : TestCase_387
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "126"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_387(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_387 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 126i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_387 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38800
     * @tc.name      : TestCase_388
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "127"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_388(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_388 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 127i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_388 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_38900
     * @tc.name      : TestCase_389
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "128"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_389(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_389 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 128i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_389 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39000
     * @tc.name      : TestCase_390
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "129"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_390(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_390 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 129i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_390 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39100
     * @tc.name      : TestCase_391
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_391(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_391 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_391 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39200
     * @tc.name      : TestCase_392
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "a", taskId:  "2147483647"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_392(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_392 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("a", 2147483647i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_392 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39300
     * @tc.name      : TestCase_393
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-2147483648"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_393(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_393 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -2147483648i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_393 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39400
     * @tc.name      : TestCase_394
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-114514"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_394(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_394 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -114514i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_394 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39500
     * @tc.name      : TestCase_395
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-30"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_395(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_395 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -30i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_395 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39600
     * @tc.name      : TestCase_396
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-29"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_396(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_396 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -29i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_396 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39700
     * @tc.name      : TestCase_397
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-28"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_397(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_397 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -28i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_397 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39800
     * @tc.name      : TestCase_398
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-27"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_398(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_398 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -27i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_398 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_39900
     * @tc.name      : TestCase_399
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-26"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_399(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_399 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -26i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_399 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testFinishTrace_finishTrace_40000
     * @tc.name      : TestCase_400
     * @tc.desc      : Mark the end of a pre-tracked time-consuming task. name: "b", taskId:  "-25"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_400(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase TestCase_400 begins.")
        Hilog.info(0u32, "cangjietest", "finishTrace")
        HiTraceMeter.finishTrace("b", -25i32)
        @Assert(true)
        Hilog.info(0u32, "cangjietest", "testcase TestCase_400 ends.")
    }
}
