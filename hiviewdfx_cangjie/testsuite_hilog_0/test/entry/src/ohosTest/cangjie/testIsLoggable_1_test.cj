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
import ohos.hilog.*
import kit.PerformanceAnalysisKit.Hilog

@Test
class testIsLoggable_1 {
    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "xxx", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(0u32, "0", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "xxx", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "xxx", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "xxx", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "xxx", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "xxx", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "0", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "0", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "0", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "0", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(1u32, "0", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_51 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "xxx", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_52 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "xxx", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_53 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "xxx", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_54 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "xxx", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_55 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "xxx", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_56 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "0", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_57 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "0", LogLevel.Info)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_58 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "0", LogLevel.Warning)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_59 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "0", LogLevel.Error)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_60 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(114514u32, "0", LogLevel.Fatal)
        @Assert(true, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_61 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_62 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "", LogLevel.Info)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_63 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "", LogLevel.Warning)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_64 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "", LogLevel.Error)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_65 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "", LogLevel.Fatal)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_66 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "xxx", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_67 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "xxx", LogLevel.Info)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_68 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "xxx", LogLevel.Warning)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_69 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "xxx", LogLevel.Error)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_70 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "xxx", LogLevel.Fatal)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Debug"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_71 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "0", LogLevel.Debug)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Info"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_72 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "0", LogLevel.Info)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Warning"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_73 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "0", LogLevel.Warning)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Error"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_74 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "0", LogLevel.Error)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testIsLoggable_isLoggable_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : Check whether the log can be printed. level: "LogLevel.Fatal"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0, "cangjietest", "testcase TestCase_75 begins.")
        Hilog.info(0, "cangjietest", "define local variable isLog")
        let isLog = Hilog.isLoggable(4294967295u32, "0", LogLevel.Fatal)
        @Assert(false, isLog)
        Hilog.info(0, "cangjietest", "testcase TestCase_75 ends.")
    }
}
