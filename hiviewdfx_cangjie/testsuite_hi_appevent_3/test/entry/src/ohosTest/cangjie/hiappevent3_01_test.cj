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
internal import ohos.business_exception.BusinessException

@Test
class testWrite_1 {
    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key1", EventValueType.IntValue(-1i32)), ("key2", EventValueType.IntValue(-1i32)), ("key3", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_1 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key1", EventValueType.IntValue(-1i32)), ("key2", EventValueType.IntValue(-1i32)),
                            ("key3", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : setUserProperty AppEventInfo("domain2", "Event1", EventType.Statistic , HashMap([("key4", EventValueType.IntValue(-1i32)), ("key5", EventValueType.IntValue(-1i32)), ("key6", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_2 begins.")
        Hilog.info(0u32, "cangjietest", "","case start")
        try {
            HiAppEvent.write(
                AppEventInfo("domain2", "Event1", EventType.Statistic,
                    HashMap(
                        [("key4", EventValueType.IntValue(-1i32)), ("key5", EventValueType.IntValue(-1i32)),
                            ("key6", EventValueType.IntValue(0i32))])))
                            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "Event2", EventType.Security , HashMap([("key7", EventValueType.IntValue(-1i32)), ("key8", EventValueType.IntValue(-1i32)), ("key9", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_3 begins.")
        Hilog.info(0u32, "cangjietest", "","case start")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "Event2", EventType.Security,
                    HashMap(
                        [("key7", EventValueType.IntValue(-1i32)), ("key8", EventValueType.IntValue(-1i32)),
                            ("key9", EventValueType.IntValue(1i32))])))
                            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Behavior, HashMap([("key10", EventValueType.IntValue(-1i32)), ("key11", EventValueType.IntValue(-1i32)), ("key12", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Behavior,
                    HashMap(
                        [("key10", EventValueType.IntValue(-1i32)), ("key11", EventValueType.IntValue(-1i32)),
                            ("key12", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key13", EventValueType.IntValue(-1i32)), ("key14", EventValueType.IntValue(-1i32)), ("key15", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_5 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key13", EventValueType.IntValue(-1i32)), ("key14", EventValueType.IntValue(-1i32)),
                            ("key15", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key16", EventValueType.IntValue(-1i32)), ("key17", EventValueType.IntValue(-1i32)), ("key18", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_6 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key16", EventValueType.IntValue(-1i32)), ("key17", EventValueType.IntValue(-1i32)),
                            ("key18", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key19", EventValueType.IntValue(-1i32)), ("key20", EventValueType.IntValue(-1i32)), ("key21", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_7 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key19", EventValueType.IntValue(-1i32)), ("key20", EventValueType.IntValue(-1i32)),
                            ("key21", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key22", EventValueType.IntValue(-1i32)), ("key23", EventValueType.IntValue(0i32)), ("key24", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_8 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key22", EventValueType.IntValue(-1i32)), ("key23", EventValueType.IntValue(0i32)),
                            ("key24", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key25", EventValueType.IntValue(-1i32)), ("key26", EventValueType.IntValue(0i32)), ("key27", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_9 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key25", EventValueType.IntValue(-1i32)), ("key26", EventValueType.IntValue(0i32)),
                            ("key27", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key28", EventValueType.IntValue(-1i32)), ("key29", EventValueType.IntValue(0i32)), ("key30", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_10 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key28", EventValueType.IntValue(-1i32)), ("key29", EventValueType.IntValue(0i32)),
                            ("key30", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key31", EventValueType.IntValue(-1i32)), ("key32", EventValueType.IntValue(0i32)), ("key33", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_11 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key31", EventValueType.IntValue(-1i32)), ("key32", EventValueType.IntValue(0i32)),
                            ("key33", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key34", EventValueType.IntValue(-1i32)), ("key35", EventValueType.IntValue(0i32)), ("key36", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_12 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key34", EventValueType.IntValue(-1i32)), ("key35", EventValueType.IntValue(0i32)),
                            ("key36", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key37", EventValueType.IntValue(-1i32)), ("key38", EventValueType.IntValue(0i32)), ("key39", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_13 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key37", EventValueType.IntValue(-1i32)), ("key38", EventValueType.IntValue(0i32)),
                            ("key39", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key40", EventValueType.IntValue(-1i32)), ("key41", EventValueType.IntValue(0i32)), ("key42", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_14 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key40", EventValueType.IntValue(-1i32)), ("key41", EventValueType.IntValue(0i32)),
                            ("key42", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key43", EventValueType.IntValue(-1i32)), ("key44", EventValueType.IntValue(1i32)), ("key45", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_15 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key43", EventValueType.IntValue(-1i32)), ("key44", EventValueType.IntValue(1i32)),
                            ("key45", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key46", EventValueType.IntValue(-1i32)), ("key47", EventValueType.IntValue(1i32)), ("key48", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_16 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key46", EventValueType.IntValue(-1i32)), ("key47", EventValueType.IntValue(1i32)),
                            ("key48", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key49", EventValueType.IntValue(-1i32)), ("key50", EventValueType.IntValue(1i32)), ("key51", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_17 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key49", EventValueType.IntValue(-1i32)), ("key50", EventValueType.IntValue(1i32)),
                            ("key51", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key52", EventValueType.IntValue(-1i32)), ("key53", EventValueType.IntValue(1i32)), ("key54", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_18 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key52", EventValueType.IntValue(-1i32)), ("key53", EventValueType.IntValue(1i32)),
                            ("key54", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key55", EventValueType.IntValue(-1i32)), ("key56", EventValueType.IntValue(1i32)), ("key57", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_19 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key55", EventValueType.IntValue(-1i32)), ("key56", EventValueType.IntValue(1i32)),
                            ("key57", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key58", EventValueType.IntValue(-1i32)), ("key59", EventValueType.IntValue(1i32)), ("key60", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_20 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key58", EventValueType.IntValue(-1i32)), ("key59", EventValueType.IntValue(1i32)),
                            ("key60", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key61", EventValueType.IntValue(-1i32)), ("key62", EventValueType.IntValue(1i32)), ("key63", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_21 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key61", EventValueType.IntValue(-1i32)), ("key62", EventValueType.IntValue(1i32)),
                            ("key63", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key64", EventValueType.IntValue(-1i32)), ("key65", EventValueType.FloatValue(-1.000000f64)), ("key66", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_22 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key64", EventValueType.IntValue(-1i32)), ("key65", EventValueType.FloatValue(-1.000000f64)),
                            ("key66", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key67", EventValueType.IntValue(-1i32)), ("key68", EventValueType.FloatValue(-1.000000f64)), ("key69", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_23 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key67", EventValueType.IntValue(-1i32)), ("key68", EventValueType.FloatValue(-1.000000f64)),
                            ("key69", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key70", EventValueType.IntValue(-1i32)), ("key71", EventValueType.FloatValue(-1.000000f64)), ("key72", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_24 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key70", EventValueType.IntValue(-1i32)), ("key71", EventValueType.FloatValue(-1.000000f64)),
                            ("key72", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key73", EventValueType.IntValue(-1i32)), ("key74", EventValueType.FloatValue(-1.000000f64)), ("key75", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_25 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key73", EventValueType.IntValue(-1i32)), ("key74", EventValueType.FloatValue(-1.000000f64)),
                            ("key75", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key76", EventValueType.IntValue(-1i32)), ("key77", EventValueType.FloatValue(-1.000000f64)), ("key78", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_26 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key76", EventValueType.IntValue(-1i32)), ("key77", EventValueType.FloatValue(-1.000000f64)),
                            ("key78", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key79", EventValueType.IntValue(-1i32)), ("key80", EventValueType.FloatValue(-1.000000f64)), ("key81", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_27 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key79", EventValueType.IntValue(-1i32)), ("key80", EventValueType.FloatValue(-1.000000f64)),
                            ("key81", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key82", EventValueType.IntValue(-1i32)), ("key83", EventValueType.FloatValue(-1.000000f64)), ("key84", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_28 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key82", EventValueType.IntValue(-1i32)), ("key83", EventValueType.FloatValue(-1.000000f64)),
                            ("key84", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key85", EventValueType.IntValue(-1i32)), ("key86", EventValueType.StringValue("hello world")), ("key87", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_29 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key85", EventValueType.IntValue(-1i32)), ("key86", EventValueType.StringValue("hello world")),
                            ("key87", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key88", EventValueType.IntValue(-1i32)), ("key89", EventValueType.StringValue("hello world")), ("key90", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_30 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key88", EventValueType.IntValue(-1i32)), ("key89", EventValueType.StringValue("hello world")),
                            ("key90", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key91", EventValueType.IntValue(-1i32)), ("key92", EventValueType.StringValue("hello world")), ("key93", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_31 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key91", EventValueType.IntValue(-1i32)), ("key92", EventValueType.StringValue("hello world")),
                            ("key93", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key94", EventValueType.IntValue(-1i32)), ("key95", EventValueType.StringValue("hello world")), ("key96", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_32 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key94", EventValueType.IntValue(-1i32)), ("key95", EventValueType.StringValue("hello world")),
                            ("key96", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key97", EventValueType.IntValue(-1i32)), ("key98", EventValueType.StringValue("hello world")), ("key99", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_33 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key97", EventValueType.IntValue(-1i32)), ("key98", EventValueType.StringValue("hello world")),
                            ("key99", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key100", EventValueType.IntValue(-1i32)), ("key101", EventValueType.StringValue("hello world")), ("key102", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_34 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key100", EventValueType.IntValue(-1i32)),
                            ("key101", EventValueType.StringValue("hello world")),
                            ("key102", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key103", EventValueType.IntValue(-1i32)), ("key104", EventValueType.StringValue("hello world")), ("key105", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_35 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key103", EventValueType.IntValue(-1i32)),
                            ("key104", EventValueType.StringValue("hello world")),
                            ("key105", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key106", EventValueType.IntValue(-1i32)), ("key107", EventValueType.BoolValue(true)), ("key108", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_36 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key106", EventValueType.IntValue(-1i32)), ("key107", EventValueType.BoolValue(true)),
                            ("key108", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key109", EventValueType.IntValue(-1i32)), ("key110", EventValueType.BoolValue(true)), ("key111", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_37 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key109", EventValueType.IntValue(-1i32)), ("key110", EventValueType.BoolValue(true)),
                            ("key111", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key112", EventValueType.IntValue(-1i32)), ("key113", EventValueType.BoolValue(true)), ("key114", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_38 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key112", EventValueType.IntValue(-1i32)), ("key113", EventValueType.BoolValue(true)),
                            ("key114", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key115", EventValueType.IntValue(-1i32)), ("key116", EventValueType.BoolValue(true)), ("key117", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_39 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key115", EventValueType.IntValue(-1i32)), ("key116", EventValueType.BoolValue(true)),
                            ("key117", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key118", EventValueType.IntValue(-1i32)), ("key119", EventValueType.BoolValue(true)), ("key120", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_40 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key118", EventValueType.IntValue(-1i32)), ("key119", EventValueType.BoolValue(true)),
                            ("key120", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key121", EventValueType.IntValue(-1i32)), ("key122", EventValueType.BoolValue(true)), ("key123", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_41 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key121", EventValueType.IntValue(-1i32)), ("key122", EventValueType.BoolValue(true)),
                            ("key123", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key124", EventValueType.IntValue(-1i32)), ("key125", EventValueType.BoolValue(true)), ("key126", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_42 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key124", EventValueType.IntValue(-1i32)), ("key125", EventValueType.BoolValue(true)),
                            ("key126", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key127", EventValueType.IntValue(-1i32)), ("key128", EventValueType.ArrString(["", "aaaa", " "])), ("key129", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_43 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key127", EventValueType.IntValue(-1i32)),
                            ("key128", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key129", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key130", EventValueType.IntValue(-1i32)), ("key131", EventValueType.ArrString(["", "aaaa", " "])), ("key132", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_44 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key130", EventValueType.IntValue(-1i32)),
                            ("key131", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key132", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key133", EventValueType.IntValue(-1i32)), ("key134", EventValueType.ArrString(["", "aaaa", " "])), ("key135", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_45 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key133", EventValueType.IntValue(-1i32)),
                            ("key134", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key135", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key136", EventValueType.IntValue(-1i32)), ("key137", EventValueType.ArrString(["", "aaaa", " "])), ("key138", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_46 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key136", EventValueType.IntValue(-1i32)),
                            ("key137", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key138", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key139", EventValueType.IntValue(-1i32)), ("key140", EventValueType.ArrString(["", "aaaa", " "])), ("key141", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_47 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key139", EventValueType.IntValue(-1i32)),
                            ("key140", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key141", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key142", EventValueType.IntValue(-1i32)), ("key143", EventValueType.ArrString(["", "aaaa", " "])), ("key144", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_48 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key142", EventValueType.IntValue(-1i32)),
                            ("key143", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key144", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key145", EventValueType.IntValue(-1i32)), ("key146", EventValueType.ArrString(["", "aaaa", " "])), ("key147", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_49 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key145", EventValueType.IntValue(-1i32)),
                            ("key146", EventValueType.ArrString(["", "aaaa", " "])),
                            ("key147", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key148", EventValueType.IntValue(0i32)), ("key149", EventValueType.IntValue(-1i32)), ("key150", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_50 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key148", EventValueType.IntValue(0i32)), ("key149", EventValueType.IntValue(-1i32)),
                            ("key150", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key151", EventValueType.IntValue(0i32)), ("key152", EventValueType.IntValue(-1i32)), ("key153", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_51 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key151", EventValueType.IntValue(0i32)), ("key152", EventValueType.IntValue(-1i32)),
                            ("key153", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key154", EventValueType.IntValue(0i32)), ("key155", EventValueType.IntValue(-1i32)), ("key156", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_52 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key154", EventValueType.IntValue(0i32)), ("key155", EventValueType.IntValue(-1i32)),
                            ("key156", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key157", EventValueType.IntValue(0i32)), ("key158", EventValueType.IntValue(-1i32)), ("key159", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_53 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key157", EventValueType.IntValue(0i32)), ("key158", EventValueType.IntValue(-1i32)),
                            ("key159", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key160", EventValueType.IntValue(0i32)), ("key161", EventValueType.IntValue(-1i32)), ("key162", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_54 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key160", EventValueType.IntValue(0i32)), ("key161", EventValueType.IntValue(-1i32)),
                            ("key162", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key163", EventValueType.IntValue(0i32)), ("key164", EventValueType.IntValue(-1i32)), ("key165", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_55 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key163", EventValueType.IntValue(0i32)), ("key164", EventValueType.IntValue(-1i32)),
                            ("key165", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key166", EventValueType.IntValue(0i32)), ("key167", EventValueType.IntValue(-1i32)), ("key168", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_56 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key166", EventValueType.IntValue(0i32)), ("key167", EventValueType.IntValue(-1i32)),
                            ("key168", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key169", EventValueType.IntValue(0i32)), ("key170", EventValueType.IntValue(0i32)), ("key171", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_57 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key169", EventValueType.IntValue(0i32)), ("key170", EventValueType.IntValue(0i32)),
                            ("key171", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key172", EventValueType.IntValue(0i32)), ("key173", EventValueType.IntValue(0i32)), ("key174", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_58 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key172", EventValueType.IntValue(0i32)), ("key173", EventValueType.IntValue(0i32)),
                            ("key174", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key175", EventValueType.IntValue(0i32)), ("key176", EventValueType.IntValue(0i32)), ("key177", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_59 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key175", EventValueType.IntValue(0i32)), ("key176", EventValueType.IntValue(0i32)),
                            ("key177", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key178", EventValueType.IntValue(0i32)), ("key179", EventValueType.IntValue(0i32)), ("key180", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_60 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key178", EventValueType.IntValue(0i32)), ("key179", EventValueType.IntValue(0i32)),
                            ("key180", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key181", EventValueType.IntValue(0i32)), ("key182", EventValueType.IntValue(0i32)), ("key183", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_61 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key181", EventValueType.IntValue(0i32)), ("key182", EventValueType.IntValue(0i32)),
                            ("key183", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key184", EventValueType.IntValue(0i32)), ("key185", EventValueType.IntValue(0i32)), ("key186", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_62 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key184", EventValueType.IntValue(0i32)), ("key185", EventValueType.IntValue(0i32)),
                            ("key186", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key187", EventValueType.IntValue(0i32)), ("key188", EventValueType.IntValue(0i32)), ("key189", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_63 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key187", EventValueType.IntValue(0i32)), ("key188", EventValueType.IntValue(0i32)),
                            ("key189", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key190", EventValueType.IntValue(0i32)), ("key191", EventValueType.IntValue(1i32)), ("key192", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_64 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key190", EventValueType.IntValue(0i32)), ("key191", EventValueType.IntValue(1i32)),
                            ("key192", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key193", EventValueType.IntValue(0i32)), ("key194", EventValueType.IntValue(1i32)), ("key195", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_65 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key193", EventValueType.IntValue(0i32)), ("key194", EventValueType.IntValue(1i32)),
                            ("key195", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key196", EventValueType.IntValue(0i32)), ("key197", EventValueType.IntValue(1i32)), ("key198", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_66 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key196", EventValueType.IntValue(0i32)), ("key197", EventValueType.IntValue(1i32)),
                            ("key198", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key199", EventValueType.IntValue(0i32)), ("key200", EventValueType.IntValue(1i32)), ("key201", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_67 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key199", EventValueType.IntValue(0i32)), ("key200", EventValueType.IntValue(1i32)),
                            ("key201", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key202", EventValueType.IntValue(0i32)), ("key203", EventValueType.IntValue(1i32)), ("key204", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_68 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key202", EventValueType.IntValue(0i32)), ("key203", EventValueType.IntValue(1i32)),
                            ("key204", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key205", EventValueType.IntValue(0i32)), ("key206", EventValueType.IntValue(1i32)), ("key207", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_69 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key205", EventValueType.IntValue(0i32)), ("key206", EventValueType.IntValue(1i32)),
                            ("key207", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key208", EventValueType.IntValue(0i32)), ("key209", EventValueType.IntValue(1i32)), ("key210", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_70 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key208", EventValueType.IntValue(0i32)), ("key209", EventValueType.IntValue(1i32)),
                            ("key210", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key211", EventValueType.IntValue(0i32)), ("key212", EventValueType.FloatValue(-1.000000f64)), ("key213", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_71 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key211", EventValueType.IntValue(0i32)), ("key212", EventValueType.FloatValue(-1.000000f64)),
                            ("key213", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key214", EventValueType.IntValue(0i32)), ("key215", EventValueType.FloatValue(-1.000000f64)), ("key216", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_72 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key214", EventValueType.IntValue(0i32)), ("key215", EventValueType.FloatValue(-1.000000f64)),
                            ("key216", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key217", EventValueType.IntValue(0i32)), ("key218", EventValueType.FloatValue(-1.000000f64)), ("key219", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_73 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key217", EventValueType.IntValue(0i32)), ("key218", EventValueType.FloatValue(-1.000000f64)),
                            ("key219", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key220", EventValueType.IntValue(0i32)), ("key221", EventValueType.FloatValue(-1.000000f64)), ("key222", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_74 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key220", EventValueType.IntValue(0i32)), ("key221", EventValueType.FloatValue(-1.000000f64)),
                            ("key222", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key223", EventValueType.IntValue(0i32)), ("key224", EventValueType.FloatValue(-1.000000f64)), ("key225", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_75 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key223", EventValueType.IntValue(0i32)), ("key224", EventValueType.FloatValue(-1.000000f64)),
                            ("key225", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key226", EventValueType.IntValue(0i32)), ("key227", EventValueType.FloatValue(-1.000000f64)), ("key228", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_76 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key226", EventValueType.IntValue(0i32)), ("key227", EventValueType.FloatValue(-1.000000f64)),
                            ("key228", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key229", EventValueType.IntValue(0i32)), ("key230", EventValueType.FloatValue(-1.000000f64)), ("key231", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_77 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key229", EventValueType.IntValue(0i32)), ("key230", EventValueType.FloatValue(-1.000000f64)),
                            ("key231", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key232", EventValueType.IntValue(0i32)), ("key233", EventValueType.StringValue("hello world")), ("key234", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_78 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key232", EventValueType.IntValue(0i32)), ("key233", EventValueType.StringValue("hello world")),
                            ("key234", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key235", EventValueType.IntValue(0i32)), ("key236", EventValueType.StringValue("hello world")), ("key237", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_79 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key235", EventValueType.IntValue(0i32)), ("key236", EventValueType.StringValue("hello world")),
                            ("key237", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key238", EventValueType.IntValue(0i32)), ("key239", EventValueType.StringValue("hello world")), ("key240", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_80 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key238", EventValueType.IntValue(0i32)), ("key239", EventValueType.StringValue("hello world")),
                            ("key240", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key241", EventValueType.IntValue(0i32)), ("key242", EventValueType.StringValue("hello world")), ("key243", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_81 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key241", EventValueType.IntValue(0i32)), ("key242", EventValueType.StringValue("hello world")),
                            ("key243", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key244", EventValueType.IntValue(0i32)), ("key245", EventValueType.StringValue("hello world")), ("key246", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_82 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key244", EventValueType.IntValue(0i32)), ("key245", EventValueType.StringValue("hello world")),
                            ("key246", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key247", EventValueType.IntValue(0i32)), ("key248", EventValueType.StringValue("hello world")), ("key249", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_83 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key247", EventValueType.IntValue(0i32)), ("key248", EventValueType.StringValue("hello world")),
                            ("key249", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key250", EventValueType.IntValue(0i32)), ("key251", EventValueType.StringValue("hello world")), ("key252", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_84 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key250", EventValueType.IntValue(0i32)), ("key251", EventValueType.StringValue("hello world")),
                            ("key252", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key253", EventValueType.IntValue(0i32)), ("key254", EventValueType.BoolValue(true)), ("key255", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_85 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key253", EventValueType.IntValue(0i32)), ("key254", EventValueType.BoolValue(true)),
                            ("key255", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key256", EventValueType.IntValue(0i32)), ("key257", EventValueType.BoolValue(true)), ("key258", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_86 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key256", EventValueType.IntValue(0i32)), ("key257", EventValueType.BoolValue(true)),
                            ("key258", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key259", EventValueType.IntValue(0i32)), ("key260", EventValueType.BoolValue(true)), ("key261", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_87 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key259", EventValueType.IntValue(0i32)), ("key260", EventValueType.BoolValue(true)),
                            ("key261", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key262", EventValueType.IntValue(0i32)), ("key263", EventValueType.BoolValue(true)), ("key264", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_88 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key262", EventValueType.IntValue(0i32)), ("key263", EventValueType.BoolValue(true)),
                            ("key264", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key265", EventValueType.IntValue(0i32)), ("key266", EventValueType.BoolValue(true)), ("key267", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_89 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key265", EventValueType.IntValue(0i32)), ("key266", EventValueType.BoolValue(true)),
                            ("key267", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key268", EventValueType.IntValue(0i32)), ("key269", EventValueType.BoolValue(true)), ("key270", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_90 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key268", EventValueType.IntValue(0i32)), ("key269", EventValueType.BoolValue(true)),
                            ("key270", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key271", EventValueType.IntValue(0i32)), ("key272", EventValueType.BoolValue(true)), ("key273", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_91 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key271", EventValueType.IntValue(0i32)), ("key272", EventValueType.BoolValue(true)),
                            ("key273", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key274", EventValueType.IntValue(0i32)), ("key275", EventValueType.ArrString(["", "aaaa", " "])), ("key276", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_92 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key274", EventValueType.IntValue(0i32)), ("key275", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key276", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key277", EventValueType.IntValue(0i32)), ("key278", EventValueType.ArrString(["", "aaaa", " "])), ("key279", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_93 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key277", EventValueType.IntValue(0i32)), ("key278", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key279", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key280", EventValueType.IntValue(0i32)), ("key281", EventValueType.ArrString(["", "aaaa", " "])), ("key282", EventValueType.IntValue(1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_94 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key280", EventValueType.IntValue(0i32)), ("key281", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key282", EventValueType.IntValue(1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key283", EventValueType.IntValue(0i32)), ("key284", EventValueType.ArrString(["", "aaaa", " "])), ("key285", EventValueType.FloatValue(-1.000000f64))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_95 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key283", EventValueType.IntValue(0i32)), ("key284", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key285", EventValueType.FloatValue(-1.000000f64))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key286", EventValueType.IntValue(0i32)), ("key287", EventValueType.ArrString(["", "aaaa", " "])), ("key288", EventValueType.StringValue("hello world"))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_96 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key286", EventValueType.IntValue(0i32)), ("key287", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key288", EventValueType.StringValue("hello world"))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key289", EventValueType.IntValue(0i32)), ("key290", EventValueType.ArrString(["", "aaaa", " "])), ("key291", EventValueType.BoolValue(true))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_97 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key289", EventValueType.IntValue(0i32)), ("key290", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key291", EventValueType.BoolValue(true))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key292", EventValueType.IntValue(0i32)), ("key293", EventValueType.ArrString(["", "aaaa", " "])), ("key294", EventValueType.ArrString(["", "aaaa", " "]))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_98 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key292", EventValueType.IntValue(0i32)), ("key293", EventValueType.ArrString(["", "aaaa", " "]
                            )), ("key294", EventValueType.ArrString(["", "aaaa", " "]))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key295", EventValueType.IntValue(1i32)), ("key296", EventValueType.IntValue(-1i32)), ("key297", EventValueType.IntValue(-1i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_99 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key295", EventValueType.IntValue(1i32)), ("key296", EventValueType.IntValue(-1i32)),
                            ("key297", EventValueType.IntValue(-1i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : setUserProperty AppEventInfo("domain1", "", EventType.Fault, HashMap([("key298", EventValueType.IntValue(1i32)), ("key299", EventValueType.IntValue(-1i32)), ("key300", EventValueType.IntValue(0i32))])).
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_100 begins.")
        Hilog.info(0u32, "cangjietest", "","Check write")
        try {
            HiAppEvent.write(
                AppEventInfo("domain1", "", EventType.Fault,
                    HashMap(
                        [("key298", EventValueType.IntValue(1i32)), ("key299", EventValueType.IntValue(-1i32)),
                            ("key300", EventValueType.IntValue(0i32))])))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Invalid event name.")
            @Expect(e.code, 11101002i32)
        }
        Hilog.info(0u32, "cangjietest", "","testcase TestCase_100 ends.")
    }
}
