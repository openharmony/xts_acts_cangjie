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
import kit.PerformanceAnalysisKit.*
import kit.PerformanceAnalysisKit.Hilog
@Test
class testWrite_4 {
    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30100
     * @tc.name      : TestCase_301
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key901", EventValueType.ArrString(["", "aaaa", " "])), ("key902", EventValueType.IntValue(-1i32)), ("key903", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_301(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_301 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key901", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key902", EventValueType.IntValue(-1i32)),
                            ("key903", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_301 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30200
     * @tc.name      : TestCase_302
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key904", EventValueType.ArrString(["", "aaaa", " "])), ("key905", EventValueType.IntValue(0i32)), ("key906", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_302(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_302 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key904", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key905", EventValueType.IntValue(0i32)), ("key906", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_302 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30300
     * @tc.name      : TestCase_303
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key907", EventValueType.ArrString(["", "aaaa", " "])), ("key908", EventValueType.IntValue(0i32)), ("key909", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_303(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_303 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key907", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key908", EventValueType.IntValue(0i32)), ("key909", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_303 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30400
     * @tc.name      : TestCase_304
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key910", EventValueType.ArrString(["", "aaaa", " "])), ("key911", EventValueType.IntValue(0i32)), ("key912", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_304(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_304 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key910", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key911", EventValueType.IntValue(0i32)), ("key912", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_304 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30500
     * @tc.name      : TestCase_305
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key913", EventValueType.ArrString(["", "aaaa", " "])), ("key914", EventValueType.IntValue(0i32)), ("key915", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_305(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_305 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key913", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key914", EventValueType.IntValue(0i32)),
                            ("key915", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_305 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30600
     * @tc.name      : TestCase_306
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key916", EventValueType.ArrString(["", "aaaa", " "])), ("key917", EventValueType.IntValue(0i32)), ("key918", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_306(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_306 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key916", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key917", EventValueType.IntValue(0i32)),
                            ("key918", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_306 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30700
     * @tc.name      : TestCase_307
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key919", EventValueType.ArrString(["", "aaaa", " "])), ("key920", EventValueType.IntValue(0i32)), ("key921", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_307(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_307 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key919", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key920", EventValueType.IntValue(0i32)), ("key921", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_307 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30800
     * @tc.name      : TestCase_308
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key922", EventValueType.ArrString(["", "aaaa", " "])), ("key923", EventValueType.IntValue(0i32)), ("key924", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_308(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_308 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key922", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key923", EventValueType.IntValue(0i32)),
                            ("key924", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_308 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30900
     * @tc.name      : TestCase_309
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key925", EventValueType.ArrString(["", "aaaa", " "])), ("key926", EventValueType.IntValue(1i32)), ("key927", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_309(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_309 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key925", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key926", EventValueType.IntValue(1i32)), ("key927", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_309 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31000
     * @tc.name      : TestCase_310
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key928", EventValueType.ArrString(["", "aaaa", " "])), ("key929", EventValueType.IntValue(1i32)), ("key930", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_310(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_310 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key928", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key929", EventValueType.IntValue(1i32)), ("key930", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_310 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31100
     * @tc.name      : TestCase_311
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key931", EventValueType.ArrString(["", "aaaa", " "])), ("key932", EventValueType.IntValue(1i32)), ("key933", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_311(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_311 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key931", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key932", EventValueType.IntValue(1i32)), ("key933", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_311 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31200
     * @tc.name      : TestCase_312
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key934", EventValueType.ArrString(["", "aaaa", " "])), ("key935", EventValueType.IntValue(1i32)), ("key936", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_312(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_312 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key934", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key935", EventValueType.IntValue(1i32)),
                            ("key936", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_312 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31300
     * @tc.name      : TestCase_313
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key937", EventValueType.ArrString(["", "aaaa", " "])), ("key938", EventValueType.IntValue(1i32)), ("key939", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_313(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_313 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key937", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key938", EventValueType.IntValue(1i32)),
                            ("key939", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_313 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31400
     * @tc.name      : TestCase_314
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key940", EventValueType.ArrString(["", "aaaa", " "])), ("key941", EventValueType.IntValue(1i32)), ("key942", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_314(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_314 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key940", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key941", EventValueType.IntValue(1i32)), ("key942", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_314 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31500
     * @tc.name      : TestCase_315
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key943", EventValueType.ArrString(["", "aaaa", " "])), ("key944", EventValueType.IntValue(1i32)), ("key945", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_315(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_315 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key943", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key944", EventValueType.IntValue(1i32)),
                            ("key945", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_315 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31600
     * @tc.name      : TestCase_316
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key946", EventValueType.ArrString(["", "aaaa", " "])), ("key947", EventValueType.FloatValue(-1.000000f64)), ("key948", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_316(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_316 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key946", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key947", EventValueType.FloatValue(-1.000000f64)),
                            ("key948", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_316 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31700
     * @tc.name      : TestCase_317
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key949", EventValueType.ArrString(["", "aaaa", " "])), ("key950", EventValueType.FloatValue(-1.000000f64)), ("key951", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_317(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_317 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key949", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key950", EventValueType.FloatValue(-1.000000f64)),
                            ("key951", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_317 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31800
     * @tc.name      : TestCase_318
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key952", EventValueType.ArrString(["", "aaaa", " "])), ("key953", EventValueType.FloatValue(-1.000000f64)), ("key954", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_318(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_318 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key952", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key953", EventValueType.FloatValue(-1.000000f64)),
                            ("key954", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_318 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_31900
     * @tc.name      : TestCase_319
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key955", EventValueType.ArrString(["", "aaaa", " "])), ("key956", EventValueType.FloatValue(-1.000000f64)), ("key957", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_319(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_319 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key955", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key956", EventValueType.FloatValue(-1.000000f64)),
                            ("key957", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_319 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32000
     * @tc.name      : TestCase_320
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key958", EventValueType.ArrString(["", "aaaa", " "])), ("key959", EventValueType.FloatValue(-1.000000f64)), ("key960", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_320(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_320 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key958", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key959", EventValueType.FloatValue(-1.000000f64)),
                            ("key960", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_320 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32100
     * @tc.name      : TestCase_321
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key961", EventValueType.ArrString(["", "aaaa", " "])), ("key962", EventValueType.FloatValue(-1.000000f64)), ("key963", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_321(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_321 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key961", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key962", EventValueType.FloatValue(-1.000000f64)),
                            ("key963", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_321 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32200
     * @tc.name      : TestCase_322
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key964", EventValueType.ArrString(["", "aaaa", " "])), ("key965", EventValueType.FloatValue(-1.000000f64)), ("key966", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_322(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_322 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key964", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key965", EventValueType.FloatValue(-1.000000f64)),
                            ("key966", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_322 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32300
     * @tc.name      : TestCase_323
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key967", EventValueType.ArrString(["", "aaaa", " "])), ("key968", EventValueType.StringValue("hello world")), ("key969", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_323(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_323 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key967", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key968", EventValueType.StringValue("hello world")),
                            ("key969", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_323 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32400
     * @tc.name      : TestCase_324
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key970", EventValueType.ArrString(["", "aaaa", " "])), ("key971", EventValueType.StringValue("hello world")), ("key972", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_324(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_324 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key970", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key971", EventValueType.StringValue("hello world")),
                            ("key972", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_324 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32500
     * @tc.name      : TestCase_325
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key973", EventValueType.ArrString(["", "aaaa", " "])), ("key974", EventValueType.StringValue("hello world")), ("key975", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_325(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_325 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key973", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key974", EventValueType.StringValue("hello world")),
                            ("key975", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_325 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32600
     * @tc.name      : TestCase_326
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key976", EventValueType.ArrString(["", "aaaa", " "])), ("key977", EventValueType.StringValue("hello world")), ("key978", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_326(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_326 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key976", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key977", EventValueType.StringValue("hello world")),
                            ("key978", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_326 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32700
     * @tc.name      : TestCase_327
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key979", EventValueType.ArrString(["", "aaaa", " "])), ("key980", EventValueType.StringValue("hello world")), ("key981", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_327(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_327 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key979", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key980", EventValueType.StringValue("hello world")),
                            ("key981", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_327 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32800
     * @tc.name      : TestCase_328
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key982", EventValueType.ArrString(["", "aaaa", " "])), ("key983", EventValueType.StringValue("hello world")), ("key984", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_328(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_328 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key982", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key983", EventValueType.StringValue("hello world")),
                            ("key984", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_328 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_32900
     * @tc.name      : TestCase_329
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key985", EventValueType.ArrString(["", "aaaa", " "])), ("key986", EventValueType.StringValue("hello world")), ("key987", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_329(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_329 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key985", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key986", EventValueType.StringValue("hello world")),
                            ("key987", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_329 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33000
     * @tc.name      : TestCase_330
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key988", EventValueType.ArrString(["", "aaaa", " "])), ("key989", EventValueType.BoolValue(true)), ("key990", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_330(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_330 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key988", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key989", EventValueType.BoolValue(true)), ("key990", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_330 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33100
     * @tc.name      : TestCase_331
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key991", EventValueType.ArrString(["", "aaaa", " "])), ("key992", EventValueType.BoolValue(true)), ("key993", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_331(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_331 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key991", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key992", EventValueType.BoolValue(true)), ("key993", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_331 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33200
     * @tc.name      : TestCase_332
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key994", EventValueType.ArrString(["", "aaaa", " "])), ("key995", EventValueType.BoolValue(true)), ("key996", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_332(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_332 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key994", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key995", EventValueType.BoolValue(true)), ("key996", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_332 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33300
     * @tc.name      : TestCase_333
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key997", EventValueType.ArrString(["", "aaaa", " "])), ("key998", EventValueType.BoolValue(true)), ("key999", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_333(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_333 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key997", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key998", EventValueType.BoolValue(true)),
                            ("key999", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_333 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33400
     * @tc.name      : TestCase_334
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1000", EventValueType.ArrString(["", "aaaa", " "])), ("key1001", EventValueType.BoolValue(true)), ("key1002", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_334(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_334 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1000", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1001", EventValueType.BoolValue(true)),
                            ("key1002", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_334 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33500
     * @tc.name      : TestCase_335
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1003", EventValueType.ArrString(["", "aaaa", " "])), ("key1004", EventValueType.BoolValue(true)), ("key1005", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_335(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_335 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1003", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1004", EventValueType.BoolValue(true)), ("key1005", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_335 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33600
     * @tc.name      : TestCase_336
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1006", EventValueType.ArrString(["", "aaaa", " "])), ("key1007", EventValueType.BoolValue(true)), ("key1008", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_336(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_336 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1006", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1007", EventValueType.BoolValue(true)),
                            ("key1008", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_336 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33700
     * @tc.name      : TestCase_337
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1009", EventValueType.ArrString(["", "aaaa", " "])), ("key1010", EventValueType.ArrString(["", "aaaa", " "])), ("key1011", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_337(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_337 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1009", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1010", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1011", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_337 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33800
     * @tc.name      : TestCase_338
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1012", EventValueType.ArrString(["", "aaaa", " "])), ("key1013", EventValueType.ArrString(["", "aaaa", " "])), ("key1014", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_338(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_338 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1012", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1013", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1014", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_338 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_33900
     * @tc.name      : TestCase_339
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1015", EventValueType.ArrString(["", "aaaa", " "])), ("key1016", EventValueType.ArrString(["", "aaaa", " "])), ("key1017", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_339(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_339 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1015", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1016", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1017", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_339 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_34000
     * @tc.name      : TestCase_340
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1018", EventValueType.ArrString(["", "aaaa", " "])), ("key1019", EventValueType.ArrString(["", "aaaa", " "])), ("key1020", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_340(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_340 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1018", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1019", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1020", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_340 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_34100
     * @tc.name      : TestCase_341
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1021", EventValueType.ArrString(["", "aaaa", " "])), ("key1022", EventValueType.ArrString(["", "aaaa", " "])), ("key1023", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_341(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_341 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1021", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1022", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1023", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_341 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_34200
     * @tc.name      : TestCase_342
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1024", EventValueType.ArrString(["", "aaaa", " "])), ("key1025", EventValueType.ArrString(["", "aaaa", " "])), ("key1026", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_342(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_342 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1024", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1025", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1026", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_342 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_34300
     * @tc.name      : TestCase_343
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1027", EventValueType.ArrString(["", "aaaa", " "])), ("key1028", EventValueType.ArrString(["", "aaaa", " "])), ("key1029", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_343(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_343 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1027", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1028", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key1029", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_343 ends.")
    }
}
