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
class testWrite_2 {
    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10100
     * @tc.name      : TestCase_101
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key301", EventValueType.IntValue(1i32)), ("key302", EventValueType.IntValue(-1i32)), ("key303", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_101 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key301", EventValueType.IntValue(1i32)), ("key302", EventValueType.IntValue(-1i32)),
                            ("key303", EventValueType.IntValue(1i32))])))
            @Expect("assertion#98: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_101 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10200
     * @tc.name      : TestCase_102
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key304", EventValueType.IntValue(1i32)), ("key305", EventValueType.IntValue(-1i32)), ("key306", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_102 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key304", EventValueType.IntValue(1i32)), ("key305", EventValueType.IntValue(-1i32)),
                            ("key306", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#99: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_102 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10300
     * @tc.name      : TestCase_103
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key307", EventValueType.IntValue(1i32)), ("key308", EventValueType.IntValue(-1i32)), ("key309", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_103 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key307", EventValueType.IntValue(1i32)), ("key308", EventValueType.IntValue(-1i32)),
                            ("key309", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#100: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_103 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10400
     * @tc.name      : TestCase_104
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key310", EventValueType.IntValue(1i32)), ("key311", EventValueType.IntValue(-1i32)), ("key312", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_104 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key310", EventValueType.IntValue(1i32)), ("key311", EventValueType.IntValue(-1i32)),
                            ("key312", EventValueType.BoolValue(true))])))
            @Expect("assertion#101: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_104 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10500
     * @tc.name      : TestCase_105
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key313", EventValueType.IntValue(1i32)), ("key314", EventValueType.IntValue(-1i32)), ("key315", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_105 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key313", EventValueType.IntValue(1i32)), ("key314", EventValueType.IntValue(-1i32)),
                            ("key315", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#102: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_105 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10600
     * @tc.name      : TestCase_106
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key316", EventValueType.IntValue(1i32)), ("key317", EventValueType.IntValue(0i32)), ("key318", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_106 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key316", EventValueType.IntValue(1i32)), ("key317", EventValueType.IntValue(0i32)),
                            ("key318", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#103: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_106 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10700
     * @tc.name      : TestCase_107
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key319", EventValueType.IntValue(1i32)), ("key320", EventValueType.IntValue(0i32)), ("key321", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_107 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key319", EventValueType.IntValue(1i32)), ("key320", EventValueType.IntValue(0i32)),
                            ("key321", EventValueType.IntValue(0i32))])))
            @Expect("assertion#104: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_107 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10800
     * @tc.name      : TestCase_108
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key322", EventValueType.IntValue(1i32)), ("key323", EventValueType.IntValue(0i32)), ("key324", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_108 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key322", EventValueType.IntValue(1i32)), ("key323", EventValueType.IntValue(0i32)),
                            ("key324", EventValueType.IntValue(1i32))])))
            @Expect("assertion#105: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_108 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10900
     * @tc.name      : TestCase_109
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key325", EventValueType.IntValue(1i32)), ("key326", EventValueType.IntValue(0i32)), ("key327", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_109 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key325", EventValueType.IntValue(1i32)), ("key326", EventValueType.IntValue(0i32)),
                            ("key327", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#106: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_109 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11000
     * @tc.name      : TestCase_110
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key328", EventValueType.IntValue(1i32)), ("key329", EventValueType.IntValue(0i32)), ("key330", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_110 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key328", EventValueType.IntValue(1i32)), ("key329", EventValueType.IntValue(0i32)),
                            ("key330", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#107: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_110 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11100
     * @tc.name      : TestCase_111
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key331", EventValueType.IntValue(1i32)), ("key332", EventValueType.IntValue(0i32)), ("key333", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_111 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key331", EventValueType.IntValue(1i32)), ("key332", EventValueType.IntValue(0i32)),
                            ("key333", EventValueType.BoolValue(true))])))
            @Expect("assertion#108: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_111 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11200
     * @tc.name      : TestCase_112
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key334", EventValueType.IntValue(1i32)), ("key335", EventValueType.IntValue(0i32)), ("key336", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_112 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key334", EventValueType.IntValue(1i32)), ("key335", EventValueType.IntValue(0i32)),
                            ("key336", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#109: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11300
     * @tc.name      : TestCase_113
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key337", EventValueType.IntValue(1i32)), ("key338", EventValueType.IntValue(1i32)), ("key339", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_113 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key337", EventValueType.IntValue(1i32)), ("key338", EventValueType.IntValue(1i32)),
                            ("key339", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#110: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_113 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11400
     * @tc.name      : TestCase_114
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key340", EventValueType.IntValue(1i32)), ("key341", EventValueType.IntValue(1i32)), ("key342", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_114(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_114 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key340", EventValueType.IntValue(1i32)), ("key341", EventValueType.IntValue(1i32)),
                            ("key342", EventValueType.IntValue(0i32))])))
            @Expect("assertion#111: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_114 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11500
     * @tc.name      : TestCase_115
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key343", EventValueType.IntValue(1i32)), ("key344", EventValueType.IntValue(1i32)), ("key345", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_115(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_115 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key343", EventValueType.IntValue(1i32)), ("key344", EventValueType.IntValue(1i32)),
                            ("key345", EventValueType.IntValue(1i32))])))
            @Expect("assertion#112: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_115 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11600
     * @tc.name      : TestCase_116
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key346", EventValueType.IntValue(1i32)), ("key347", EventValueType.IntValue(1i32)), ("key348", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_116(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_116 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key346", EventValueType.IntValue(1i32)), ("key347", EventValueType.IntValue(1i32)),
                            ("key348", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#113: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_116 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11700
     * @tc.name      : TestCase_117
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key349", EventValueType.IntValue(1i32)), ("key350", EventValueType.IntValue(1i32)), ("key351", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_117(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_117 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key349", EventValueType.IntValue(1i32)), ("key350", EventValueType.IntValue(1i32)),
                            ("key351", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#114: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_117 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11800
     * @tc.name      : TestCase_118
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key352", EventValueType.IntValue(1i32)), ("key353", EventValueType.IntValue(1i32)), ("key354", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_118(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_118 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key352", EventValueType.IntValue(1i32)), ("key353", EventValueType.IntValue(1i32)),
                            ("key354", EventValueType.BoolValue(true))])))
            @Expect("assertion#115: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_118 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_11900
     * @tc.name      : TestCase_119
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key355", EventValueType.IntValue(1i32)), ("key356", EventValueType.IntValue(1i32)), ("key357", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_119(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_119 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key355", EventValueType.IntValue(1i32)), ("key356", EventValueType.IntValue(1i32)),
                            ("key357", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#116: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_119 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12000
     * @tc.name      : TestCase_120
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key358", EventValueType.IntValue(1i32)), ("key359", EventValueType.FloatValue(-1.000000f64)), ("key360", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_120(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_120 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key358", EventValueType.IntValue(1i32)), ("key359", EventValueType.FloatValue(-1.000000f64)),
                            ("key360", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#117: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_120 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12100
     * @tc.name      : TestCase_121
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key361", EventValueType.IntValue(1i32)), ("key362", EventValueType.FloatValue(-1.000000f64)), ("key363", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_121(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_121 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key361", EventValueType.IntValue(1i32)), ("key362", EventValueType.FloatValue(-1.000000f64)),
                            ("key363", EventValueType.IntValue(0i32))])))
            @Expect("assertion#118: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_121 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12200
     * @tc.name      : TestCase_122
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key364", EventValueType.IntValue(1i32)), ("key365", EventValueType.FloatValue(-1.000000f64)), ("key366", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_122(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_122 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key364", EventValueType.IntValue(1i32)), ("key365", EventValueType.FloatValue(-1.000000f64)),
                            ("key366", EventValueType.IntValue(1i32))])))
            @Expect("assertion#119: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_122 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12300
     * @tc.name      : TestCase_123
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key367", EventValueType.IntValue(1i32)), ("key368", EventValueType.FloatValue(-1.000000f64)), ("key369", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_123(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_123 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key367", EventValueType.IntValue(1i32)), ("key368", EventValueType.FloatValue(-1.000000f64)),
                            ("key369", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#120: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_123 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12400
     * @tc.name      : TestCase_124
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key370", EventValueType.IntValue(1i32)), ("key371", EventValueType.FloatValue(-1.000000f64)), ("key372", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_124(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_124 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key370", EventValueType.IntValue(1i32)), ("key371", EventValueType.FloatValue(-1.000000f64)),
                            ("key372", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#121: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_124 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12500
     * @tc.name      : TestCase_125
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key373", EventValueType.IntValue(1i32)), ("key374", EventValueType.FloatValue(-1.000000f64)), ("key375", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_125(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_125 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key373", EventValueType.IntValue(1i32)), ("key374", EventValueType.FloatValue(-1.000000f64)),
                            ("key375", EventValueType.BoolValue(true))])))
            @Expect("assertion#122: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_125 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12600
     * @tc.name      : TestCase_126
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key376", EventValueType.IntValue(1i32)), ("key377", EventValueType.FloatValue(-1.000000f64)), ("key378", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_126(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_126 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key376", EventValueType.IntValue(1i32)), ("key377", EventValueType.FloatValue(-1.000000f64)),
                            ("key378", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#123: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_126 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12700
     * @tc.name      : TestCase_127
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key379", EventValueType.IntValue(1i32)), ("key380", EventValueType.StringValue("hello world")), ("key381", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_127(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_127 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key379", EventValueType.IntValue(1i32)), ("key380", EventValueType.StringValue("hello world")),
                            ("key381", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#124: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_127 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12800
     * @tc.name      : TestCase_128
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key382", EventValueType.IntValue(1i32)), ("key383", EventValueType.StringValue("hello world")), ("key384", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_128(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_128 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key382", EventValueType.IntValue(1i32)), ("key383", EventValueType.StringValue("hello world")),
                            ("key384", EventValueType.IntValue(0i32))])))
            @Expect("assertion#125: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_128 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_12900
     * @tc.name      : TestCase_129
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key385", EventValueType.IntValue(1i32)), ("key386", EventValueType.StringValue("hello world")), ("key387", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_129(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_129 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key385", EventValueType.IntValue(1i32)), ("key386", EventValueType.StringValue("hello world")),
                            ("key387", EventValueType.IntValue(1i32))])))
            @Expect("assertion#126: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_129 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13000
     * @tc.name      : TestCase_130
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key388", EventValueType.IntValue(1i32)), ("key389", EventValueType.StringValue("hello world")), ("key390", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_130(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_130 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key388", EventValueType.IntValue(1i32)), ("key389", EventValueType.StringValue("hello world")),
                            ("key390", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#127: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_130 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13100
     * @tc.name      : TestCase_131
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key391", EventValueType.IntValue(1i32)), ("key392", EventValueType.StringValue("hello world")), ("key393", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_131(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_131 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key391", EventValueType.IntValue(1i32)), ("key392", EventValueType.StringValue("hello world")),
                            ("key393", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#128: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_131 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13200
     * @tc.name      : TestCase_132
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key394", EventValueType.IntValue(1i32)), ("key395", EventValueType.StringValue("hello world")), ("key396", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_132(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_132 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key394", EventValueType.IntValue(1i32)), ("key395", EventValueType.StringValue("hello world")),
                            ("key396", EventValueType.BoolValue(true))])))
            @Expect("assertion#129: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_132 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13300
     * @tc.name      : TestCase_133
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key397", EventValueType.IntValue(1i32)), ("key398", EventValueType.StringValue("hello world")), ("key399", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_133(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_133 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key397", EventValueType.IntValue(1i32)), ("key398", EventValueType.StringValue("hello world")),
                            ("key399", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#130: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_133 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13400
     * @tc.name      : TestCase_134
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key400", EventValueType.IntValue(1i32)), ("key401", EventValueType.BoolValue(true)), ("key402", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_134(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_134 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key400", EventValueType.IntValue(1i32)), ("key401", EventValueType.BoolValue(true)),
                            ("key402", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#131: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_134 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13500
     * @tc.name      : TestCase_135
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key403", EventValueType.IntValue(1i32)), ("key404", EventValueType.BoolValue(true)), ("key405", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_135(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_135 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key403", EventValueType.IntValue(1i32)), ("key404", EventValueType.BoolValue(true)),
                            ("key405", EventValueType.IntValue(0i32))])))
            @Expect("assertion#132: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_135 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13600
     * @tc.name      : TestCase_136
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key406", EventValueType.IntValue(1i32)), ("key407", EventValueType.BoolValue(true)), ("key408", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_136(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_136 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key406", EventValueType.IntValue(1i32)), ("key407", EventValueType.BoolValue(true)),
                            ("key408", EventValueType.IntValue(1i32))])))
            @Expect("assertion#133: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_136 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13700
     * @tc.name      : TestCase_137
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key409", EventValueType.IntValue(1i32)), ("key410", EventValueType.BoolValue(true)), ("key411", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_137(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_137 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key409", EventValueType.IntValue(1i32)), ("key410", EventValueType.BoolValue(true)),
                            ("key411", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#134: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_137 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13800
     * @tc.name      : TestCase_138
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key412", EventValueType.IntValue(1i32)), ("key413", EventValueType.BoolValue(true)), ("key414", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_138(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_138 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key412", EventValueType.IntValue(1i32)), ("key413", EventValueType.BoolValue(true)),
                            ("key414", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#135: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_138 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_13900
     * @tc.name      : TestCase_139
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key415", EventValueType.IntValue(1i32)), ("key416", EventValueType.BoolValue(true)), ("key417", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_139(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_139 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key415", EventValueType.IntValue(1i32)), ("key416", EventValueType.BoolValue(true)),
                            ("key417", EventValueType.BoolValue(true))])))
            @Expect("assertion#136: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_139 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14000
     * @tc.name      : TestCase_140
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key418", EventValueType.IntValue(1i32)), ("key419", EventValueType.BoolValue(true)), ("key420", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_140(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_140 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key418", EventValueType.IntValue(1i32)), ("key419", EventValueType.BoolValue(true)),
                            ("key420", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#137: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_140 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14100
     * @tc.name      : TestCase_141
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key421", EventValueType.IntValue(1i32)), ("key422", EventValueType.ArrString(["", "aaaa", " "])), ("key423", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_141(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_141 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key421", EventValueType.IntValue(1i32)), ("key422", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key423", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#138: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_141 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14200
     * @tc.name      : TestCase_142
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key424", EventValueType.IntValue(1i32)), ("key425", EventValueType.ArrString(["", "aaaa", " "])), ("key426", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_142(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_142 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key424", EventValueType.IntValue(1i32)), ("key425", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key426", EventValueType.IntValue(0i32))])))
            @Expect("assertion#139: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_142 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14300
     * @tc.name      : TestCase_143
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key427", EventValueType.IntValue(1i32)), ("key428", EventValueType.ArrString(["", "aaaa", " "])), ("key429", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_143(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_143 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key427", EventValueType.IntValue(1i32)), ("key428", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key429", EventValueType.IntValue(1i32))])))
            @Expect("assertion#140: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_143 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14400
     * @tc.name      : TestCase_144
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key430", EventValueType.IntValue(1i32)), ("key431", EventValueType.ArrString(["", "aaaa", " "])), ("key432", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_144(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_144 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key430", EventValueType.IntValue(1i32)), ("key431", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key432", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#141: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_144 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14500
     * @tc.name      : TestCase_145
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key433", EventValueType.IntValue(1i32)), ("key434", EventValueType.ArrString(["", "aaaa", " "])), ("key435", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_145(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_145 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key433", EventValueType.IntValue(1i32)), ("key434", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key435", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#142: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_145 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14600
     * @tc.name      : TestCase_146
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key436", EventValueType.IntValue(1i32)), ("key437", EventValueType.ArrString(["", "aaaa", " "])), ("key438", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_146(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_146 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key436", EventValueType.IntValue(1i32)), ("key437", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key438", EventValueType.BoolValue(true))])))
            @Expect("assertion#143: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_146 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14700
     * @tc.name      : TestCase_147
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key439", EventValueType.IntValue(1i32)), ("key440", EventValueType.ArrString(["", "aaaa", " "])), ("key441", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_147(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_147 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key439", EventValueType.IntValue(1i32)), ("key440", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key441", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#144: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_147 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14800
     * @tc.name      : TestCase_148
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key442", EventValueType.FloatValue(-1.000000f64)), ("key443", EventValueType.IntValue(-1i32)), ("key444", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_148(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_148 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key442", EventValueType.FloatValue(-1.000000f64)), ("key443", EventValueType.IntValue(-1i32)),
                            ("key444", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#145: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_148 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_14900
     * @tc.name      : TestCase_149
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key445", EventValueType.FloatValue(-1.000000f64)), ("key446", EventValueType.IntValue(-1i32)), ("key447", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_149(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_149 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key445", EventValueType.FloatValue(-1.000000f64)), ("key446", EventValueType.IntValue(-1i32)),
                            ("key447", EventValueType.IntValue(0i32))])))
            @Expect("assertion#146: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_149 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15000
     * @tc.name      : TestCase_150
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key448", EventValueType.FloatValue(-1.000000f64)), ("key449", EventValueType.IntValue(-1i32)), ("key450", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_150(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_150 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key448", EventValueType.FloatValue(-1.000000f64)), ("key449", EventValueType.IntValue(-1i32)),
                            ("key450", EventValueType.IntValue(1i32))])))
            @Expect("assertion#147: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_150 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15100
     * @tc.name      : TestCase_151
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key451", EventValueType.FloatValue(-1.000000f64)), ("key452", EventValueType.IntValue(-1i32)), ("key453", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_151(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_151 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key451", EventValueType.FloatValue(-1.000000f64)), ("key452", EventValueType.IntValue(-1i32)),
                            ("key453", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#148: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_151 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15200
     * @tc.name      : TestCase_152
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key454", EventValueType.FloatValue(-1.000000f64)), ("key455", EventValueType.IntValue(-1i32)), ("key456", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_152(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_152 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key454", EventValueType.FloatValue(-1.000000f64)), ("key455", EventValueType.IntValue(-1i32)),
                            ("key456", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#149: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_152 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15300
     * @tc.name      : TestCase_153
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key457", EventValueType.FloatValue(-1.000000f64)), ("key458", EventValueType.IntValue(-1i32)), ("key459", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_153(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_153 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key457", EventValueType.FloatValue(-1.000000f64)), ("key458", EventValueType.IntValue(-1i32)),
                            ("key459", EventValueType.BoolValue(true))])))
            @Expect("assertion#150: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_153 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15400
     * @tc.name      : TestCase_154
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key460", EventValueType.FloatValue(-1.000000f64)), ("key461", EventValueType.IntValue(-1i32)), ("key462", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_154(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_154 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key460", EventValueType.FloatValue(-1.000000f64)), ("key461", EventValueType.IntValue(-1i32)),
                            ("key462", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#151: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_154 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15500
     * @tc.name      : TestCase_155
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key463", EventValueType.FloatValue(-1.000000f64)), ("key464", EventValueType.IntValue(0i32)), ("key465", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_155(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_155 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key463", EventValueType.FloatValue(-1.000000f64)), ("key464", EventValueType.IntValue(0i32)),
                            ("key465", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#152: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_155 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15600
     * @tc.name      : TestCase_156
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key466", EventValueType.FloatValue(-1.000000f64)), ("key467", EventValueType.IntValue(0i32)), ("key468", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_156(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_156 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key466", EventValueType.FloatValue(-1.000000f64)), ("key467", EventValueType.IntValue(0i32)),
                            ("key468", EventValueType.IntValue(0i32))])))
            @Expect("assertion#153: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_156 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15700
     * @tc.name      : TestCase_157
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key469", EventValueType.FloatValue(-1.000000f64)), ("key470", EventValueType.IntValue(0i32)), ("key471", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_157(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_157 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key469", EventValueType.FloatValue(-1.000000f64)), ("key470", EventValueType.IntValue(0i32)),
                            ("key471", EventValueType.IntValue(1i32))])))
            @Expect("assertion#154: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_157 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15800
     * @tc.name      : TestCase_158
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key472", EventValueType.FloatValue(-1.000000f64)), ("key473", EventValueType.IntValue(0i32)), ("key474", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_158(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_158 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key472", EventValueType.FloatValue(-1.000000f64)), ("key473", EventValueType.IntValue(0i32)),
                            ("key474", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#155: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_158 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_15900
     * @tc.name      : TestCase_159
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key475", EventValueType.FloatValue(-1.000000f64)), ("key476", EventValueType.IntValue(0i32)), ("key477", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_159(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_159 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key475", EventValueType.FloatValue(-1.000000f64)), ("key476", EventValueType.IntValue(0i32)),
                            ("key477", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#156: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_159 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16000
     * @tc.name      : TestCase_160
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key478", EventValueType.FloatValue(-1.000000f64)), ("key479", EventValueType.IntValue(0i32)), ("key480", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_160(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_160 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key478", EventValueType.FloatValue(-1.000000f64)), ("key479", EventValueType.IntValue(0i32)),
                            ("key480", EventValueType.BoolValue(true))])))
            @Expect("assertion#157: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_160 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16100
     * @tc.name      : TestCase_161
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key481", EventValueType.FloatValue(-1.000000f64)), ("key482", EventValueType.IntValue(0i32)), ("key483", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_161(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_161 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key481", EventValueType.FloatValue(-1.000000f64)), ("key482", EventValueType.IntValue(0i32)),
                            ("key483", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#158: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_161 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16200
     * @tc.name      : TestCase_162
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key484", EventValueType.FloatValue(-1.000000f64)), ("key485", EventValueType.IntValue(1i32)), ("key486", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_162(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_162 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key484", EventValueType.FloatValue(-1.000000f64)), ("key485", EventValueType.IntValue(1i32)),
                            ("key486", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#159: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_162 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16300
     * @tc.name      : TestCase_163
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key487", EventValueType.FloatValue(-1.000000f64)), ("key488", EventValueType.IntValue(1i32)), ("key489", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_163(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_163 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key487", EventValueType.FloatValue(-1.000000f64)), ("key488", EventValueType.IntValue(1i32)),
                            ("key489", EventValueType.IntValue(0i32))])))
            @Expect("assertion#160: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_163 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16400
     * @tc.name      : TestCase_164
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key490", EventValueType.FloatValue(-1.000000f64)), ("key491", EventValueType.IntValue(1i32)), ("key492", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_164(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_164 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key490", EventValueType.FloatValue(-1.000000f64)), ("key491", EventValueType.IntValue(1i32)),
                            ("key492", EventValueType.IntValue(1i32))])))
            @Expect("assertion#161: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_164 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16500
     * @tc.name      : TestCase_165
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key493", EventValueType.FloatValue(-1.000000f64)), ("key494", EventValueType.IntValue(1i32)), ("key495", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_165(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_165 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key493", EventValueType.FloatValue(-1.000000f64)), ("key494", EventValueType.IntValue(1i32)),
                            ("key495", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#162: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_165 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16600
     * @tc.name      : TestCase_166
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key496", EventValueType.FloatValue(-1.000000f64)), ("key497", EventValueType.IntValue(1i32)), ("key498", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_166(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_166 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key496", EventValueType.FloatValue(-1.000000f64)), ("key497", EventValueType.IntValue(1i32)),
                            ("key498", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#163: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_166 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16700
     * @tc.name      : TestCase_167
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key499", EventValueType.FloatValue(-1.000000f64)), ("key500", EventValueType.IntValue(1i32)), ("key501", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_167(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_167 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key499", EventValueType.FloatValue(-1.000000f64)), ("key500", EventValueType.IntValue(1i32)),
                            ("key501", EventValueType.BoolValue(true))])))
            @Expect("assertion#164: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_167 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16800
     * @tc.name      : TestCase_168
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key502", EventValueType.FloatValue(-1.000000f64)), ("key503", EventValueType.IntValue(1i32)), ("key504", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_168(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_168 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key502", EventValueType.FloatValue(-1.000000f64)), ("key503", EventValueType.IntValue(1i32)),
                            ("key504", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#165: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_168 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_16900
     * @tc.name      : TestCase_169
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key505", EventValueType.FloatValue(-1.000000f64)), ("key506", EventValueType.FloatValue(-1.000000f64)), ("key507", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_169(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_169 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key505", EventValueType.FloatValue(-1.000000f64)),
                            ("key506", EventValueType.FloatValue(-1.000000f64)),
                            ("key507", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#166: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_169 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17000
     * @tc.name      : TestCase_170
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key508", EventValueType.FloatValue(-1.000000f64)), ("key509", EventValueType.FloatValue(-1.000000f64)), ("key510", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_170(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_170 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key508", EventValueType.FloatValue(-1.000000f64)),
                            ("key509", EventValueType.FloatValue(-1.000000f64)),
                            ("key510", EventValueType.IntValue(0i32))])))
            @Expect("assertion#167: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_170 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17100
     * @tc.name      : TestCase_171
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key511", EventValueType.FloatValue(-1.000000f64)), ("key512", EventValueType.FloatValue(-1.000000f64)), ("key513", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_171(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_171 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key511", EventValueType.FloatValue(-1.000000f64)),
                            ("key512", EventValueType.FloatValue(-1.000000f64)),
                            ("key513", EventValueType.IntValue(1i32))])))
            @Expect("assertion#168: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_171 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17200
     * @tc.name      : TestCase_172
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key514", EventValueType.FloatValue(-1.000000f64)), ("key515", EventValueType.FloatValue(-1.000000f64)), ("key516", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_172(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_172 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key514", EventValueType.FloatValue(-1.000000f64)),
                            ("key515", EventValueType.FloatValue(-1.000000f64)),
                            ("key516", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#169: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_172 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17300
     * @tc.name      : TestCase_173
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key517", EventValueType.FloatValue(-1.000000f64)), ("key518", EventValueType.FloatValue(-1.000000f64)), ("key519", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_173(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_173 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key517", EventValueType.FloatValue(-1.000000f64)),
                            ("key518", EventValueType.FloatValue(-1.000000f64)),
                            ("key519", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#170: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_173 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17400
     * @tc.name      : TestCase_174
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key520", EventValueType.FloatValue(-1.000000f64)), ("key521", EventValueType.FloatValue(-1.000000f64)), ("key522", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_174(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_174 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key520", EventValueType.FloatValue(-1.000000f64)),
                            ("key521", EventValueType.FloatValue(-1.000000f64)),
                            ("key522", EventValueType.BoolValue(true))])))
            @Expect("assertion#171: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_174 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17500
     * @tc.name      : TestCase_175
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key523", EventValueType.FloatValue(-1.000000f64)), ("key524", EventValueType.FloatValue(-1.000000f64)), ("key525", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_175(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_175 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key523", EventValueType.FloatValue(-1.000000f64)),
                            ("key524", EventValueType.FloatValue(-1.000000f64)),
                            ("key525", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#172: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_175 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17600
     * @tc.name      : TestCase_176
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key526", EventValueType.FloatValue(-1.000000f64)), ("key527", EventValueType.StringValue("hello world")), ("key528", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_176(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_176 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key526", EventValueType.FloatValue(-1.000000f64)),
                            ("key527", EventValueType.StringValue("hello world")),
                            ("key528", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#173: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_176 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17700
     * @tc.name      : TestCase_177
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key529", EventValueType.FloatValue(-1.000000f64)), ("key530", EventValueType.StringValue("hello world")), ("key531", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_177(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_177 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key529", EventValueType.FloatValue(-1.000000f64)),
                            ("key530", EventValueType.StringValue("hello world")),
                            ("key531", EventValueType.IntValue(0i32))])))
            @Expect("assertion#174: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_177 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17800
     * @tc.name      : TestCase_178
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key532", EventValueType.FloatValue(-1.000000f64)), ("key533", EventValueType.StringValue("hello world")), ("key534", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_178(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_178 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key532", EventValueType.FloatValue(-1.000000f64)),
                            ("key533", EventValueType.StringValue("hello world")),
                            ("key534", EventValueType.IntValue(1i32))])))
            @Expect("assertion#175: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_178 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_17900
     * @tc.name      : TestCase_179
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key535", EventValueType.FloatValue(-1.000000f64)), ("key536", EventValueType.StringValue("hello world")), ("key537", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_179(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_179 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key535", EventValueType.FloatValue(-1.000000f64)),
                            ("key536", EventValueType.StringValue("hello world")),
                            ("key537", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#176: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_179 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18000
     * @tc.name      : TestCase_180
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key538", EventValueType.FloatValue(-1.000000f64)), ("key539", EventValueType.StringValue("hello world")), ("key540", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_180(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_180 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key538", EventValueType.FloatValue(-1.000000f64)),
                            ("key539", EventValueType.StringValue("hello world")),
                            ("key540", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#177: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_180 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18100
     * @tc.name      : TestCase_181
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key541", EventValueType.FloatValue(-1.000000f64)), ("key542", EventValueType.StringValue("hello world")), ("key543", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_181(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_181 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key541", EventValueType.FloatValue(-1.000000f64)),
                            ("key542", EventValueType.StringValue("hello world")),
                            ("key543", EventValueType.BoolValue(true))])))
            @Expect("assertion#178: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_181 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18200
     * @tc.name      : TestCase_182
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key544", EventValueType.FloatValue(-1.000000f64)), ("key545", EventValueType.StringValue("hello world")), ("key546", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_182(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_182 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key544", EventValueType.FloatValue(-1.000000f64)),
                            ("key545", EventValueType.StringValue("hello world")),
                            ("key546", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#179: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_182 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18300
     * @tc.name      : TestCase_183
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key547", EventValueType.FloatValue(-1.000000f64)), ("key548", EventValueType.BoolValue(true)), ("key549", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_183(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_183 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key547", EventValueType.FloatValue(-1.000000f64)), ("key548", EventValueType.BoolValue(true)),
                            ("key549", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#180: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_183 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18400
     * @tc.name      : TestCase_184
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key550", EventValueType.FloatValue(-1.000000f64)), ("key551", EventValueType.BoolValue(true)), ("key552", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_184(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_184 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key550", EventValueType.FloatValue(-1.000000f64)), ("key551", EventValueType.BoolValue(true)),
                            ("key552", EventValueType.IntValue(0i32))])))
            @Expect("assertion#181: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_184 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18500
     * @tc.name      : TestCase_185
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key553", EventValueType.FloatValue(-1.000000f64)), ("key554", EventValueType.BoolValue(true)), ("key555", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_185(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_185 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key553", EventValueType.FloatValue(-1.000000f64)), ("key554", EventValueType.BoolValue(true)),
                            ("key555", EventValueType.IntValue(1i32))])))
            @Expect("assertion#182: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_185 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18600
     * @tc.name      : TestCase_186
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key556", EventValueType.FloatValue(-1.000000f64)), ("key557", EventValueType.BoolValue(true)), ("key558", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_186(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_186 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key556", EventValueType.FloatValue(-1.000000f64)), ("key557", EventValueType.BoolValue(true)),
                            ("key558", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#183: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_186 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18700
     * @tc.name      : TestCase_187
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key559", EventValueType.FloatValue(-1.000000f64)), ("key560", EventValueType.BoolValue(true)), ("key561", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_187(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_187 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key559", EventValueType.FloatValue(-1.000000f64)), ("key560", EventValueType.BoolValue(true)),
                            ("key561", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#184: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_187 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18800
     * @tc.name      : TestCase_188
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key562", EventValueType.FloatValue(-1.000000f64)), ("key563", EventValueType.BoolValue(true)), ("key564", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_188(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_188 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key562", EventValueType.FloatValue(-1.000000f64)), ("key563", EventValueType.BoolValue(true)),
                            ("key564", EventValueType.BoolValue(true))])))
            @Expect("assertion#185: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_188 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_18900
     * @tc.name      : TestCase_189
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key565", EventValueType.FloatValue(-1.000000f64)), ("key566", EventValueType.BoolValue(true)), ("key567", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_189(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_189 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key565", EventValueType.FloatValue(-1.000000f64)), ("key566", EventValueType.BoolValue(true)),
                            ("key567", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#186: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_189 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19000
     * @tc.name      : TestCase_190
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key568", EventValueType.FloatValue(-1.000000f64)), ("key569", EventValueType.ArrString(["", "aaaa", " "])), ("key570", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_190(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_190 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key568", EventValueType.FloatValue(-1.000000f64)),
                            ("key569", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key570", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#187: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_190 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19100
     * @tc.name      : TestCase_191
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key571", EventValueType.FloatValue(-1.000000f64)), ("key572", EventValueType.ArrString(["", "aaaa", " "])), ("key573", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_191(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_191 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key571", EventValueType.FloatValue(-1.000000f64)),
                            ("key572", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key573", EventValueType.IntValue(0i32))])))
            @Expect("assertion#188: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_191 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19200
     * @tc.name      : TestCase_192
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key574", EventValueType.FloatValue(-1.000000f64)), ("key575", EventValueType.ArrString(["", "aaaa", " "])), ("key576", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_192(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_192 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key574", EventValueType.FloatValue(-1.000000f64)),
                            ("key575", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key576", EventValueType.IntValue(1i32))])))
            @Expect("assertion#189: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_192 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19300
     * @tc.name      : TestCase_193
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key577", EventValueType.FloatValue(-1.000000f64)), ("key578", EventValueType.ArrString(["", "aaaa", " "])), ("key579", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_193(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_193 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key577", EventValueType.FloatValue(-1.000000f64)),
                            ("key578", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key579", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#190: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_193 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19400
     * @tc.name      : TestCase_194
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key580", EventValueType.FloatValue(-1.000000f64)), ("key581", EventValueType.ArrString(["", "aaaa", " "])), ("key582", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_194(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_194 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key580", EventValueType.FloatValue(-1.000000f64)),
                            ("key581", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key582", EventValueType.StringValue("hello world"))])))
            @Expect("assertion#191: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_194 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19500
     * @tc.name      : TestCase_195
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key583", EventValueType.FloatValue(-1.000000f64)), ("key584", EventValueType.ArrString(["", "aaaa", " "])), ("key585", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_195(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_195 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key583", EventValueType.FloatValue(-1.000000f64)),
                            ("key584", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key585", EventValueType.BoolValue(true))])))
            @Expect("assertion#192: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_195 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19600
     * @tc.name      : TestCase_196
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key586", EventValueType.FloatValue(-1.000000f64)), ("key587", EventValueType.ArrString(["", "aaaa", " "])), ("key588", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_196(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_196 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key586", EventValueType.FloatValue(-1.000000f64)),
                            ("key587", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key588", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect("assertion#193: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_196 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19700
     * @tc.name      : TestCase_197
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key589", EventValueType.StringValue("hello world")), ("key590", EventValueType.IntValue(-1i32)), ("key591", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_197(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_197 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key589", EventValueType.StringValue("hello world")),
                            ("key590", EventValueType.IntValue(-1i32)), ("key591", EventValueType.IntValue(-1i32))])))
            @Expect("assertion#194: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_197 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19800
     * @tc.name      : TestCase_198
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key592", EventValueType.StringValue("hello world")), ("key593", EventValueType.IntValue(-1i32)), ("key594", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_198(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_198 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key592", EventValueType.StringValue("hello world")),
                            ("key593", EventValueType.IntValue(-1i32)), ("key594", EventValueType.IntValue(0i32))])))
            @Expect("assertion#195: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_198 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_19900
     * @tc.name      : TestCase_199
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key595", EventValueType.StringValue("hello world")), ("key596", EventValueType.IntValue(-1i32)), ("key597", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_199(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_199 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key595", EventValueType.StringValue("hello world")),
                            ("key596", EventValueType.IntValue(-1i32)), ("key597", EventValueType.IntValue(1i32))])))
            @Expect("assertion#196: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_199 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_20000
     * @tc.name      : TestCase_200
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key598", EventValueType.StringValue("hello world")), ("key599", EventValueType.IntValue(-1i32)), ("key600", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_200(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_200 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key598", EventValueType.StringValue("hello world")),
                            ("key599", EventValueType.IntValue(-1i32)),
                            ("key600", EventValueType.FloatValue(-1.000000f64))])))
            @Expect("assertion#197: not throw", "Check write")
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_200 ends.")
    }
}
