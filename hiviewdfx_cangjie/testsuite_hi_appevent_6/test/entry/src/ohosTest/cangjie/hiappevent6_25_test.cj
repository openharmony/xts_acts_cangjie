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
class testSetUserProperty_1 {
    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : setUserProperty name1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name1", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : setUserProperty name1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name1", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : setUserProperty name1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("name1", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : setUserProperty name1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name1", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : setUserProperty name1.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name1", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : setUserProperty name_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name_2", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : setUserProperty name_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name_2", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : setUserProperty name_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("name_2", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : setUserProperty name_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name_2", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : setUserProperty name_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name_2", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_11 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_12 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("name", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_16 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name4", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name4", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("_name4", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name4", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name4", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("_name", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("_name", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name6$", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name6$", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("name6$", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_29 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name6$", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_30 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("name6$", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_30 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_31 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("Name7", "value1")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_32 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("Name7", "2")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_33 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("Name7", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_34 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("Name7", "VALUE")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_35 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("Name7", "value")
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : setUserProperty .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_36 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("", "value1")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : setUserProperty .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_37 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("", "2")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : setUserProperty .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_38 begins.")
        Hilog.info(0, "cangjietest","Check setUserProperty")
        try {
            HiAppEvent.setUserProperty("", "")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Parameter error. Parameter verification failed.")
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : setUserProperty .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_39 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("", "VALUE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : setUserProperty .
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_40 begins.")
        Hilog.info(0, "cangjietest","case start")
        try {
            HiAppEvent.setUserProperty("", "value")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_40 ends.")
    }
}
