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
import kit.PerformanceAnalysisKit.Hilog
import std.unittest.common.*
import std.unittest.testmacro.*
import std.collection.*
import ohos.base.*
import kit.PerformanceAnalysisKit.*

@Test
class testWrite_3 {
    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20100
     * @tc.name      : TestCase_201
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key601", EventValueType.StringValue("hello world")), ("key602", EventValueType.IntValue(-1i32)), ("key603", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_201(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_201 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key601", EventValueType.StringValue("hello world")),
                            ("key602", EventValueType.IntValue(-1i32)),
                            ("key603", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_201 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20200
     * @tc.name      : TestCase_202
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key604", EventValueType.StringValue("hello world")), ("key605", EventValueType.IntValue(-1i32)), ("key606", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_202(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_202 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key604", EventValueType.StringValue("hello world")),
                            ("key605", EventValueType.IntValue(-1i32)), ("key606", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_202 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20300
     * @tc.name      : TestCase_203
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key607", EventValueType.StringValue("hello world")), ("key608", EventValueType.IntValue(-1i32)), ("key609", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_203(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_203 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key607", EventValueType.StringValue("hello world")),
                            ("key608", EventValueType.IntValue(-1i32)),
                            ("key609", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_203 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20400
     * @tc.name      : TestCase_204
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key610", EventValueType.StringValue("hello world")), ("key611", EventValueType.IntValue(0i32)), ("key612", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_204(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_204 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key610", EventValueType.StringValue("hello world")), ("key611", EventValueType.IntValue(0i32)),
                            ("key612", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_204 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20500
     * @tc.name      : TestCase_205
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key613", EventValueType.StringValue("hello world")), ("key614", EventValueType.IntValue(0i32)), ("key615", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_205(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_205 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key613", EventValueType.StringValue("hello world")), ("key614", EventValueType.IntValue(0i32)),
                            ("key615", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_205 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20600
     * @tc.name      : TestCase_206
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key616", EventValueType.StringValue("hello world")), ("key617", EventValueType.IntValue(0i32)), ("key618", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_206(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_206 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key616", EventValueType.StringValue("hello world")), ("key617", EventValueType.IntValue(0i32)),
                            ("key618", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_206 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20700
     * @tc.name      : TestCase_207
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key619", EventValueType.StringValue("hello world")), ("key620", EventValueType.IntValue(0i32)), ("key621", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_207(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_207 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key619", EventValueType.StringValue("hello world")), ("key620", EventValueType.IntValue(0i32)),
                            ("key621", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_207 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20800
     * @tc.name      : TestCase_208
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key622", EventValueType.StringValue("hello world")), ("key623", EventValueType.IntValue(0i32)), ("key624", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_208(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_208 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key622", EventValueType.StringValue("hello world")), ("key623", EventValueType.IntValue(0i32)),
                            ("key624", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_208 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20900
     * @tc.name      : TestCase_209
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key625", EventValueType.StringValue("hello world")), ("key626", EventValueType.IntValue(0i32)), ("key627", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_209(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_209 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key625", EventValueType.StringValue("hello world")), ("key626", EventValueType.IntValue(0i32)),
                            ("key627", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_209 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21000
     * @tc.name      : TestCase_210
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key628", EventValueType.StringValue("hello world")), ("key629", EventValueType.IntValue(0i32)), ("key630", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_210(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_210 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key628", EventValueType.StringValue("hello world")), ("key629", EventValueType.IntValue(0i32)),
                            ("key630", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_210 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21100
     * @tc.name      : TestCase_211
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key631", EventValueType.StringValue("hello world")), ("key632", EventValueType.IntValue(1i32)), ("key633", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_211(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_211 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key631", EventValueType.StringValue("hello world")), ("key632", EventValueType.IntValue(1i32)),
                            ("key633", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_211 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21200
     * @tc.name      : TestCase_212
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key634", EventValueType.StringValue("hello world")), ("key635", EventValueType.IntValue(1i32)), ("key636", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_212(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_212 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key634", EventValueType.StringValue("hello world")), ("key635", EventValueType.IntValue(1i32)),
                            ("key636", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_212 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21300
     * @tc.name      : TestCase_213
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key637", EventValueType.StringValue("hello world")), ("key638", EventValueType.IntValue(1i32)), ("key639", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_213(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_213 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key637", EventValueType.StringValue("hello world")), ("key638", EventValueType.IntValue(1i32)),
                            ("key639", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_213 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21400
     * @tc.name      : TestCase_214
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key640", EventValueType.StringValue("hello world")), ("key641", EventValueType.IntValue(1i32)), ("key642", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_214(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_214 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key640", EventValueType.StringValue("hello world")), ("key641", EventValueType.IntValue(1i32)),
                            ("key642", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_214 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21500
     * @tc.name      : TestCase_215
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key643", EventValueType.StringValue("hello world")), ("key644", EventValueType.IntValue(1i32)), ("key645", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_215(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_215 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key643", EventValueType.StringValue("hello world")), ("key644", EventValueType.IntValue(1i32)),
                            ("key645", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_215 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21600
     * @tc.name      : TestCase_216
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key646", EventValueType.StringValue("hello world")), ("key647", EventValueType.IntValue(1i32)), ("key648", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_216(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_216 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key646", EventValueType.StringValue("hello world")), ("key647", EventValueType.IntValue(1i32)),
                            ("key648", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_216 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21700
     * @tc.name      : TestCase_217
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key649", EventValueType.StringValue("hello world")), ("key650", EventValueType.IntValue(1i32)), ("key651", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_217(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_217 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key649", EventValueType.StringValue("hello world")), ("key650", EventValueType.IntValue(1i32)),
                            ("key651", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_217 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21800
     * @tc.name      : TestCase_218
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key652", EventValueType.StringValue("hello world")), ("key653", EventValueType.FloatValue(-1.000000f64)), ("key654", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_218(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_218 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key652", EventValueType.StringValue("hello world")),
                            ("key653", EventValueType.FloatValue(-1.000000f64)),
                            ("key654", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_218 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_21900
     * @tc.name      : TestCase_219
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key655", EventValueType.StringValue("hello world")), ("key656", EventValueType.FloatValue(-1.000000f64)), ("key657", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_219(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_219 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key655", EventValueType.StringValue("hello world")),
                            ("key656", EventValueType.FloatValue(-1.000000f64)),
                            ("key657", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_219 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22000
     * @tc.name      : TestCase_220
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key658", EventValueType.StringValue("hello world")), ("key659", EventValueType.FloatValue(-1.000000f64)), ("key660", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_220(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_220 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key658", EventValueType.StringValue("hello world")),
                            ("key659", EventValueType.FloatValue(-1.000000f64)),
                            ("key660", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_220 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22100
     * @tc.name      : TestCase_221
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key661", EventValueType.StringValue("hello world")), ("key662", EventValueType.FloatValue(-1.000000f64)), ("key663", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_221(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_221 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key661", EventValueType.StringValue("hello world")),
                            ("key662", EventValueType.FloatValue(-1.000000f64)),
                            ("key663", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_221 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22200
     * @tc.name      : TestCase_222
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key664", EventValueType.StringValue("hello world")), ("key665", EventValueType.FloatValue(-1.000000f64)), ("key666", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_222(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_222 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key664", EventValueType.StringValue("hello world")),
                            ("key665", EventValueType.FloatValue(-1.000000f64)),
                            ("key666", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_222 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22300
     * @tc.name      : TestCase_223
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key667", EventValueType.StringValue("hello world")), ("key668", EventValueType.FloatValue(-1.000000f64)), ("key669", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_223(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_223 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key667", EventValueType.StringValue("hello world")),
                            ("key668", EventValueType.FloatValue(-1.000000f64)),
                            ("key669", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_223 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22400
     * @tc.name      : TestCase_224
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key670", EventValueType.StringValue("hello world")), ("key671", EventValueType.FloatValue(-1.000000f64)), ("key672", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_224(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_224 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key670", EventValueType.StringValue("hello world")),
                            ("key671", EventValueType.FloatValue(-1.000000f64)),
                            ("key672", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_224 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22500
     * @tc.name      : TestCase_225
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key673", EventValueType.StringValue("hello world")), ("key674", EventValueType.StringValue("hello world")), ("key675", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_225(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_225 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key673", EventValueType.StringValue("hello world")),
                            ("key674", EventValueType.StringValue("hello world")),
                            ("key675", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_225 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22600
     * @tc.name      : TestCase_226
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key676", EventValueType.StringValue("hello world")), ("key677", EventValueType.StringValue("hello world")), ("key678", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_226(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_226 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key676", EventValueType.StringValue("hello world")),
                            ("key677", EventValueType.StringValue("hello world")),
                            ("key678", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_226 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22700
     * @tc.name      : TestCase_227
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key679", EventValueType.StringValue("hello world")), ("key680", EventValueType.StringValue("hello world")), ("key681", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_227(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_227 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key679", EventValueType.StringValue("hello world")),
                            ("key680", EventValueType.StringValue("hello world")),
                            ("key681", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_227 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22800
     * @tc.name      : TestCase_228
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key682", EventValueType.StringValue("hello world")), ("key683", EventValueType.StringValue("hello world")), ("key684", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_228(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_228 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key682", EventValueType.StringValue("hello world")),
                            ("key683", EventValueType.StringValue("hello world")),
                            ("key684", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_228 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_22900
     * @tc.name      : TestCase_229
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key685", EventValueType.StringValue("hello world")), ("key686", EventValueType.StringValue("hello world")), ("key687", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_229(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_229 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key685", EventValueType.StringValue("hello world")),
                            ("key686", EventValueType.StringValue("hello world")),
                            ("key687", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_229 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23000
     * @tc.name      : TestCase_230
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key688", EventValueType.StringValue("hello world")), ("key689", EventValueType.StringValue("hello world")), ("key690", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_230(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_230 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key688", EventValueType.StringValue("hello world")),
                            ("key689", EventValueType.StringValue("hello world")),
                            ("key690", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_230 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23100
     * @tc.name      : TestCase_231
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key691", EventValueType.StringValue("hello world")), ("key692", EventValueType.StringValue("hello world")), ("key693", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_231(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_231 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key691", EventValueType.StringValue("hello world")),
                            ("key692", EventValueType.StringValue("hello world")),
                            ("key693", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_231 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23200
     * @tc.name      : TestCase_232
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key694", EventValueType.StringValue("hello world")), ("key695", EventValueType.BoolValue(true)), ("key696", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_232(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_232 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key694", EventValueType.StringValue("hello world")),
                            ("key695", EventValueType.BoolValue(true)), ("key696", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_232 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23300
     * @tc.name      : TestCase_233
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key697", EventValueType.StringValue("hello world")), ("key698", EventValueType.BoolValue(true)), ("key699", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_233(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_233 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key697", EventValueType.StringValue("hello world")),
                            ("key698", EventValueType.BoolValue(true)), ("key699", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_233 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23400
     * @tc.name      : TestCase_234
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key700", EventValueType.StringValue("hello world")), ("key701", EventValueType.BoolValue(true)), ("key702", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_234(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_234 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key700", EventValueType.StringValue("hello world")),
                            ("key701", EventValueType.BoolValue(true)), ("key702", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_234 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23500
     * @tc.name      : TestCase_235
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key703", EventValueType.StringValue("hello world")), ("key704", EventValueType.BoolValue(true)), ("key705", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_235(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_235 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key703", EventValueType.StringValue("hello world")),
                            ("key704", EventValueType.BoolValue(true)),
                            ("key705", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_235 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23600
     * @tc.name      : TestCase_236
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key706", EventValueType.StringValue("hello world")), ("key707", EventValueType.BoolValue(true)), ("key708", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_236(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_236 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key706", EventValueType.StringValue("hello world")),
                            ("key707", EventValueType.BoolValue(true)),
                            ("key708", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_236 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23700
     * @tc.name      : TestCase_237
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key709", EventValueType.StringValue("hello world")), ("key710", EventValueType.BoolValue(true)), ("key711", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_237(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_237 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key709", EventValueType.StringValue("hello world")),
                            ("key710", EventValueType.BoolValue(true)), ("key711", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_237 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23800
     * @tc.name      : TestCase_238
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key712", EventValueType.StringValue("hello world")), ("key713", EventValueType.BoolValue(true)), ("key714", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_238(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_238 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key712", EventValueType.StringValue("hello world")),
                            ("key713", EventValueType.BoolValue(true)),
                            ("key714", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_238 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_23900
     * @tc.name      : TestCase_239
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key715", EventValueType.StringValue("hello world")), ("key716", EventValueType.ArrString(["", "aaaa", " "])), ("key717", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_239(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_239 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key715", EventValueType.StringValue("hello world")),
                            ("key716", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key717", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_239 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24000
     * @tc.name      : TestCase_240
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key718", EventValueType.StringValue("hello world")), ("key719", EventValueType.ArrString(["", "aaaa", " "])), ("key720", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_240(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_240 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key718", EventValueType.StringValue("hello world")),
                            ("key719", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key720", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_240 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24100
     * @tc.name      : TestCase_241
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key721", EventValueType.StringValue("hello world")), ("key722", EventValueType.ArrString(["", "aaaa", " "])), ("key723", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_241(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_241 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key721", EventValueType.StringValue("hello world")),
                            ("key722", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key723", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_241 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24200
     * @tc.name      : TestCase_242
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key724", EventValueType.StringValue("hello world")), ("key725", EventValueType.ArrString(["", "aaaa", " "])), ("key726", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_242(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_242 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key724", EventValueType.StringValue("hello world")),
                            ("key725", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key726", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_242 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24300
     * @tc.name      : TestCase_243
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key727", EventValueType.StringValue("hello world")), ("key728", EventValueType.ArrString(["", "aaaa", " "])), ("key729", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_243(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_243 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key727", EventValueType.StringValue("hello world")),
                            ("key728", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key729", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_243 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24400
     * @tc.name      : TestCase_244
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key730", EventValueType.StringValue("hello world")), ("key731", EventValueType.ArrString(["", "aaaa", " "])), ("key732", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_244(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_244 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key730", EventValueType.StringValue("hello world")),
                            ("key731", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key732", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_244 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24500
     * @tc.name      : TestCase_245
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key733", EventValueType.StringValue("hello world")), ("key734", EventValueType.ArrString(["", "aaaa", " "])), ("key735", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_245(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_245 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key733", EventValueType.StringValue("hello world")),
                            ("key734", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key735", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_245 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24600
     * @tc.name      : TestCase_246
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key736", EventValueType.BoolValue(true)), ("key737", EventValueType.IntValue(-1i32)), ("key738", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_246(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_246 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key736", EventValueType.BoolValue(true)), ("key737", EventValueType.IntValue(-1i32)),
                            ("key738", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_246 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24700
     * @tc.name      : TestCase_247
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key739", EventValueType.BoolValue(true)), ("key740", EventValueType.IntValue(-1i32)), ("key741", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_247(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_247 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key739", EventValueType.BoolValue(true)), ("key740", EventValueType.IntValue(-1i32)),
                            ("key741", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_247 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24800
     * @tc.name      : TestCase_248
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key742", EventValueType.BoolValue(true)), ("key743", EventValueType.IntValue(-1i32)), ("key744", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_248(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_248 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key742", EventValueType.BoolValue(true)), ("key743", EventValueType.IntValue(-1i32)),
                            ("key744", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_248 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_24900
     * @tc.name      : TestCase_249
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key745", EventValueType.BoolValue(true)), ("key746", EventValueType.IntValue(-1i32)), ("key747", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_249(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_249 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key745", EventValueType.BoolValue(true)), ("key746", EventValueType.IntValue(-1i32)),
                            ("key747", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_249 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25000
     * @tc.name      : TestCase_250
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key748", EventValueType.BoolValue(true)), ("key749", EventValueType.IntValue(-1i32)), ("key750", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_250(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_250 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key748", EventValueType.BoolValue(true)), ("key749", EventValueType.IntValue(-1i32)),
                            ("key750", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_250 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25100
     * @tc.name      : TestCase_251
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key751", EventValueType.BoolValue(true)), ("key752", EventValueType.IntValue(-1i32)), ("key753", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_251(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_251 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key751", EventValueType.BoolValue(true)), ("key752", EventValueType.IntValue(-1i32)),
                            ("key753", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_251 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25200
     * @tc.name      : TestCase_252
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key754", EventValueType.BoolValue(true)), ("key755", EventValueType.IntValue(-1i32)), ("key756", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_252(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_252 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key754", EventValueType.BoolValue(true)), ("key755", EventValueType.IntValue(-1i32)),
                            ("key756", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_252 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25300
     * @tc.name      : TestCase_253
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key757", EventValueType.BoolValue(true)), ("key758", EventValueType.IntValue(0i32)), ("key759", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_253(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_253 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key757", EventValueType.BoolValue(true)), ("key758", EventValueType.IntValue(0i32)),
                            ("key759", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_253 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25400
     * @tc.name      : TestCase_254
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key760", EventValueType.BoolValue(true)), ("key761", EventValueType.IntValue(0i32)), ("key762", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_254(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_254 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key760", EventValueType.BoolValue(true)), ("key761", EventValueType.IntValue(0i32)),
                            ("key762", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_254 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25500
     * @tc.name      : TestCase_255
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key763", EventValueType.BoolValue(true)), ("key764", EventValueType.IntValue(0i32)), ("key765", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_255(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_255 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key763", EventValueType.BoolValue(true)), ("key764", EventValueType.IntValue(0i32)),
                            ("key765", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_255 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25600
     * @tc.name      : TestCase_256
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key766", EventValueType.BoolValue(true)), ("key767", EventValueType.IntValue(0i32)), ("key768", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_256(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_256 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key766", EventValueType.BoolValue(true)), ("key767", EventValueType.IntValue(0i32)),
                            ("key768", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_256 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25700
     * @tc.name      : TestCase_257
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key769", EventValueType.BoolValue(true)), ("key770", EventValueType.IntValue(0i32)), ("key771", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_257(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_257 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key769", EventValueType.BoolValue(true)), ("key770", EventValueType.IntValue(0i32)),
                            ("key771", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_257 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25800
     * @tc.name      : TestCase_258
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key772", EventValueType.BoolValue(true)), ("key773", EventValueType.IntValue(0i32)), ("key774", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_258(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_258 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key772", EventValueType.BoolValue(true)), ("key773", EventValueType.IntValue(0i32)),
                            ("key774", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_258 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_25900
     * @tc.name      : TestCase_259
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key775", EventValueType.BoolValue(true)), ("key776", EventValueType.IntValue(0i32)), ("key777", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_259(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_259 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key775", EventValueType.BoolValue(true)), ("key776", EventValueType.IntValue(0i32)),
                            ("key777", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_259 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26000
     * @tc.name      : TestCase_260
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key778", EventValueType.BoolValue(true)), ("key779", EventValueType.IntValue(1i32)), ("key780", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_260(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_260 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key778", EventValueType.BoolValue(true)), ("key779", EventValueType.IntValue(1i32)),
                            ("key780", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_260 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26100
     * @tc.name      : TestCase_261
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key781", EventValueType.BoolValue(true)), ("key782", EventValueType.IntValue(1i32)), ("key783", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_261(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_261 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key781", EventValueType.BoolValue(true)), ("key782", EventValueType.IntValue(1i32)),
                            ("key783", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_261 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26200
     * @tc.name      : TestCase_262
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key784", EventValueType.BoolValue(true)), ("key785", EventValueType.IntValue(1i32)), ("key786", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_262(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_262 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key784", EventValueType.BoolValue(true)), ("key785", EventValueType.IntValue(1i32)),
                            ("key786", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_262 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26300
     * @tc.name      : TestCase_263
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key787", EventValueType.BoolValue(true)), ("key788", EventValueType.IntValue(1i32)), ("key789", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_263(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_263 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key787", EventValueType.BoolValue(true)), ("key788", EventValueType.IntValue(1i32)),
                            ("key789", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_263 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26400
     * @tc.name      : TestCase_264
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key790", EventValueType.BoolValue(true)), ("key791", EventValueType.IntValue(1i32)), ("key792", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_264(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_264 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key790", EventValueType.BoolValue(true)), ("key791", EventValueType.IntValue(1i32)),
                            ("key792", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_264 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26500
     * @tc.name      : TestCase_265
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key793", EventValueType.BoolValue(true)), ("key794", EventValueType.IntValue(1i32)), ("key795", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_265(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_265 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key793", EventValueType.BoolValue(true)), ("key794", EventValueType.IntValue(1i32)),
                            ("key795", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_265 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26600
     * @tc.name      : TestCase_266
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key796", EventValueType.BoolValue(true)), ("key797", EventValueType.IntValue(1i32)), ("key798", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_266(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_266 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key796", EventValueType.BoolValue(true)), ("key797", EventValueType.IntValue(1i32)),
                            ("key798", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_266 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26700
     * @tc.name      : TestCase_267
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key799", EventValueType.BoolValue(true)), ("key800", EventValueType.FloatValue(-1.000000f64)), ("key801", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_267(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_267 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key799", EventValueType.BoolValue(true)), ("key800", EventValueType.FloatValue(-1.000000f64)),
                            ("key801", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_267 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26800
     * @tc.name      : TestCase_268
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key802", EventValueType.BoolValue(true)), ("key803", EventValueType.FloatValue(-1.000000f64)), ("key804", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_268(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_268 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key802", EventValueType.BoolValue(true)), ("key803", EventValueType.FloatValue(-1.000000f64)),
                            ("key804", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_268 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_26900
     * @tc.name      : TestCase_269
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key805", EventValueType.BoolValue(true)), ("key806", EventValueType.FloatValue(-1.000000f64)), ("key807", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_269(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_269 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key805", EventValueType.BoolValue(true)), ("key806", EventValueType.FloatValue(-1.000000f64)),
                            ("key807", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_269 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27000
     * @tc.name      : TestCase_270
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key808", EventValueType.BoolValue(true)), ("key809", EventValueType.FloatValue(-1.000000f64)), ("key810", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_270(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_270 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key808", EventValueType.BoolValue(true)), ("key809", EventValueType.FloatValue(-1.000000f64)),
                            ("key810", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_270 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27100
     * @tc.name      : TestCase_271
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key811", EventValueType.BoolValue(true)), ("key812", EventValueType.FloatValue(-1.000000f64)), ("key813", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_271(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_271 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key811", EventValueType.BoolValue(true)), ("key812", EventValueType.FloatValue(-1.000000f64)),
                            ("key813", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_271 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27200
     * @tc.name      : TestCase_272
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key814", EventValueType.BoolValue(true)), ("key815", EventValueType.FloatValue(-1.000000f64)), ("key816", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_272(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_272 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key814", EventValueType.BoolValue(true)), ("key815", EventValueType.FloatValue(-1.000000f64)),
                            ("key816", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_272 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27300
     * @tc.name      : TestCase_273
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key817", EventValueType.BoolValue(true)), ("key818", EventValueType.FloatValue(-1.000000f64)), ("key819", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_273(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_273 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key817", EventValueType.BoolValue(true)), ("key818", EventValueType.FloatValue(-1.000000f64)),
                            ("key819", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_273 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27400
     * @tc.name      : TestCase_274
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key820", EventValueType.BoolValue(true)), ("key821", EventValueType.StringValue("hello world")), ("key822", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_274(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_274 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key820", EventValueType.BoolValue(true)),
                            ("key821", EventValueType.StringValue("hello world")),
                            ("key822", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_274 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27500
     * @tc.name      : TestCase_275
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key823", EventValueType.BoolValue(true)), ("key824", EventValueType.StringValue("hello world")), ("key825", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_275(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_275 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key823", EventValueType.BoolValue(true)),
                            ("key824", EventValueType.StringValue("hello world")),
                            ("key825", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_275 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27600
     * @tc.name      : TestCase_276
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key826", EventValueType.BoolValue(true)), ("key827", EventValueType.StringValue("hello world")), ("key828", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_276(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_276 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key826", EventValueType.BoolValue(true)),
                            ("key827", EventValueType.StringValue("hello world")),
                            ("key828", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_276 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27700
     * @tc.name      : TestCase_277
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key829", EventValueType.BoolValue(true)), ("key830", EventValueType.StringValue("hello world")), ("key831", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_277(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_277 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key829", EventValueType.BoolValue(true)),
                            ("key830", EventValueType.StringValue("hello world")),
                            ("key831", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_277 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27800
     * @tc.name      : TestCase_278
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key832", EventValueType.BoolValue(true)), ("key833", EventValueType.StringValue("hello world")), ("key834", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_278(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_278 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key832", EventValueType.BoolValue(true)),
                            ("key833", EventValueType.StringValue("hello world")),
                            ("key834", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_278 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_27900
     * @tc.name      : TestCase_279
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key835", EventValueType.BoolValue(true)), ("key836", EventValueType.StringValue("hello world")), ("key837", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_279(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_279 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key835", EventValueType.BoolValue(true)),
                            ("key836", EventValueType.StringValue("hello world")),
                            ("key837", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_279 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28000
     * @tc.name      : TestCase_280
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key838", EventValueType.BoolValue(true)), ("key839", EventValueType.StringValue("hello world")), ("key840", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_280(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_280 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key838", EventValueType.BoolValue(true)),
                            ("key839", EventValueType.StringValue("hello world")),
                            ("key840", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_280 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28100
     * @tc.name      : TestCase_281
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key841", EventValueType.BoolValue(true)), ("key842", EventValueType.BoolValue(true)), ("key843", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_281(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_281 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key841", EventValueType.BoolValue(true)), ("key842", EventValueType.BoolValue(true)),
                            ("key843", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_281 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28200
     * @tc.name      : TestCase_282
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key844", EventValueType.BoolValue(true)), ("key845", EventValueType.BoolValue(true)), ("key846", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_282(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_282 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key844", EventValueType.BoolValue(true)), ("key845", EventValueType.BoolValue(true)),
                            ("key846", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_282 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28300
     * @tc.name      : TestCase_283
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key847", EventValueType.BoolValue(true)), ("key848", EventValueType.BoolValue(true)), ("key849", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_283(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_283 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key847", EventValueType.BoolValue(true)), ("key848", EventValueType.BoolValue(true)),
                            ("key849", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_283 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28400
     * @tc.name      : TestCase_284
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key850", EventValueType.BoolValue(true)), ("key851", EventValueType.BoolValue(true)), ("key852", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_284(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_284 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key850", EventValueType.BoolValue(true)), ("key851", EventValueType.BoolValue(true)),
                            ("key852", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_284 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28500
     * @tc.name      : TestCase_285
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key853", EventValueType.BoolValue(true)), ("key854", EventValueType.BoolValue(true)), ("key855", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_285(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_285 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key853", EventValueType.BoolValue(true)), ("key854", EventValueType.BoolValue(true)),
                            ("key855", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_285 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28600
     * @tc.name      : TestCase_286
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key856", EventValueType.BoolValue(true)), ("key857", EventValueType.BoolValue(true)), ("key858", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_286(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_286 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key856", EventValueType.BoolValue(true)), ("key857", EventValueType.BoolValue(true)),
                            ("key858", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_286 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28700
     * @tc.name      : TestCase_287
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key859", EventValueType.BoolValue(true)), ("key860", EventValueType.BoolValue(true)), ("key861", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_287(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_287 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key859", EventValueType.BoolValue(true)), ("key860", EventValueType.BoolValue(true)),
                            ("key861", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_287 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28800
     * @tc.name      : TestCase_288
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key862", EventValueType.BoolValue(true)), ("key863", EventValueType.ArrString(["", "aaaa", " "])), ("key864", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_288(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_288 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key862", EventValueType.BoolValue(true)),
                            ("key863", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key864", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_288 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_28900
     * @tc.name      : TestCase_289
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key865", EventValueType.BoolValue(true)), ("key866", EventValueType.ArrString(["", "aaaa", " "])), ("key867", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_289(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_289 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key865", EventValueType.BoolValue(true)),
                            ("key866", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key867", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_289 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29000
     * @tc.name      : TestCase_290
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key868", EventValueType.BoolValue(true)), ("key869", EventValueType.ArrString(["", "aaaa", " "])), ("key870", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_290(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_290 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key868", EventValueType.BoolValue(true)),
                            ("key869", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key870", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_290 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29100
     * @tc.name      : TestCase_291
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key871", EventValueType.BoolValue(true)), ("key872", EventValueType.ArrString(["", "aaaa", " "])), ("key873", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_291(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_291 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key871", EventValueType.BoolValue(true)),
                            ("key872", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key873", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_291 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29200
     * @tc.name      : TestCase_292
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key874", EventValueType.BoolValue(true)), ("key875", EventValueType.ArrString(["", "aaaa", " "])), ("key876", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_292(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_292 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key874", EventValueType.BoolValue(true)),
                            ("key875", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key876", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_292 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29300
     * @tc.name      : TestCase_293
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key877", EventValueType.BoolValue(true)), ("key878", EventValueType.ArrString(["", "aaaa", " "])), ("key879", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_293(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_293 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key877", EventValueType.BoolValue(true)),
                            ("key878", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key879", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_293 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29400
     * @tc.name      : TestCase_294
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key880", EventValueType.BoolValue(true)), ("key881", EventValueType.ArrString(["", "aaaa", " "])), ("key882", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_294(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_294 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key880", EventValueType.BoolValue(true)),
                            ("key881", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key882", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_294 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29500
     * @tc.name      : TestCase_295
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key883", EventValueType.ArrString(["", "aaaa", " "])), ("key884", EventValueType.IntValue(-1i32)), ("key885", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_295(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_295 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key883", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key884", EventValueType.IntValue(-1i32)), ("key885", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_295 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29600
     * @tc.name      : TestCase_296
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key886", EventValueType.ArrString(["", "aaaa", " "])), ("key887", EventValueType.IntValue(-1i32)), ("key888", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_296(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_296 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key886", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key887", EventValueType.IntValue(-1i32)), ("key888", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_296 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29700
     * @tc.name      : TestCase_297
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key889", EventValueType.ArrString(["", "aaaa", " "])), ("key890", EventValueType.IntValue(-1i32)), ("key891", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_297(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_297 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key889", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key890", EventValueType.IntValue(-1i32)), ("key891", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_297 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29800
     * @tc.name      : TestCase_298
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key892", EventValueType.ArrString(["", "aaaa", " "])), ("key893", EventValueType.IntValue(-1i32)), ("key894", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_298(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_298 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key892", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key893", EventValueType.IntValue(-1i32)),
                            ("key894", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_298 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_29900
     * @tc.name      : TestCase_299
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key895", EventValueType.ArrString(["", "aaaa", " "])), ("key896", EventValueType.IntValue(-1i32)), ("key897", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_299(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_299 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key895", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key896", EventValueType.IntValue(-1i32)),
                            ("key897", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_299 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_30000
     * @tc.name      : TestCase_300
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key898", EventValueType.ArrString(["", "aaaa", " "])), ("key899", EventValueType.IntValue(-1i32)), ("key900", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_300(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_300 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key898", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key899", EventValueType.IntValue(-1i32)), ("key900", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_300 ends.")
    }
}
