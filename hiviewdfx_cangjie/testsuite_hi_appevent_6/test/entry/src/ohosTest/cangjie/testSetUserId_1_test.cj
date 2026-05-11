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
internal import ohos.business_exception.*
@Test
class testSetUserId_1 {
    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("Aa", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("Aa1", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("Aa1", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("A11_", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_41(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_41 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_42(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_42 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A11_", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_43(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_43 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("A1_$", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_44(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_44 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_45(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_45 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_46(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_46 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_47(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_47 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_48(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_48 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_49(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_49 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_50(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_50 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_51(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_51 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_52(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_52 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_53(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_53 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_54(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_54 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_55(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_55 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_56(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_56 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_$", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_57(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_57 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("A1_1", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_58(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_58 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_59(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_59 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_60(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_60 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_60 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6100
     * @tc.name      : TestCase_61
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_61(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_61 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_61 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6200
     * @tc.name      : TestCase_62
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_62(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_62 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_62 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6300
     * @tc.name      : TestCase_63
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_63(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_63 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_63 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6400
     * @tc.name      : TestCase_64
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_64(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_64 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_64 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6500
     * @tc.name      : TestCase_65
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_65(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_65 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_65 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6600
     * @tc.name      : TestCase_66
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_66(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_66 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_66 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6700
     * @tc.name      : TestCase_67
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_67(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_67 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_67 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6800
     * @tc.name      : TestCase_68
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_68(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_68 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_68 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_6900
     * @tc.name      : TestCase_69
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_69(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_69 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_69 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7000
     * @tc.name      : TestCase_70
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_70(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_70 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("A1_1", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_70 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7100
     * @tc.name      : TestCase_71
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_71(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_71 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("$A_", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_71 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7200
     * @tc.name      : TestCase_72
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_72(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_72 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_72 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7300
     * @tc.name      : TestCase_73
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_73(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_73 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_73 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7400
     * @tc.name      : TestCase_74
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_74(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_74 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_74 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7500
     * @tc.name      : TestCase_75
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_75(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_75 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_75 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7600
     * @tc.name      : TestCase_76
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_76(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_76 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_76 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7700
     * @tc.name      : TestCase_77
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_77(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_77 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_77 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7800
     * @tc.name      : TestCase_78
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_78(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_78 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_78 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_7900
     * @tc.name      : TestCase_79
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_79(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_79 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_79 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8000
     * @tc.name      : TestCase_80
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_80(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_80 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_80 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8100
     * @tc.name      : TestCase_81
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_81(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_81 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_81 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8200
     * @tc.name      : TestCase_82
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_82(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_82 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_82 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8300
     * @tc.name      : TestCase_83
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_83(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_83 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_83 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8400
     * @tc.name      : TestCase_84
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_84(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_84 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A_", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_84 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8500
     * @tc.name      : TestCase_85
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_85(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_85 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("$a1", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_85 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8600
     * @tc.name      : TestCase_86
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_86(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_86 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_86 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8700
     * @tc.name      : TestCase_87
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_87(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_87 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "Aa1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_87 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8800
     * @tc.name      : TestCase_88
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_88(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_88 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "A11_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_88 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_8900
     * @tc.name      : TestCase_89
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_89(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_89 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "A1_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_89 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9000
     * @tc.name      : TestCase_90
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_90(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_90 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "A1_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_90 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9100
     * @tc.name      : TestCase_91
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_91(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_91 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "$A_")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_91 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9200
     * @tc.name      : TestCase_92
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_92(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_92 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "$a1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_92 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9300
     * @tc.name      : TestCase_93
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_93(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_93 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "$A1_b")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_93 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9400
     * @tc.name      : TestCase_94
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_94(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_94 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "$_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_94 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9500
     * @tc.name      : TestCase_95
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_95(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_95 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "__")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_95 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9600
     * @tc.name      : TestCase_96
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_96(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_96 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "_A")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_96 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9700
     * @tc.name      : TestCase_97
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_97(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_97 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "_1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_97 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9800
     * @tc.name      : TestCase_98
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_98(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_98 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$a1", "_a_$")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_98 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_9900
     * @tc.name      : TestCase_99
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_99(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_99 begins.")
        Hilog.info(0, "cangjietest","Check setUserId")
        try {
            HiAppEvent.setUserId("$A1_b", "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_99 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_hiappevent_setUserId_10000
     * @tc.name      : TestCase_100
     * @tc.desc      : Module: kit.PerformanceAnalysisKit.setUserId
     * @tc.size      : MediumTest
     * @tc.type      : Class
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel21, TestLevel1]
    func TestCase_100(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_100 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserId("$A1_b", "Aa")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_100 ends.")
    }
}
