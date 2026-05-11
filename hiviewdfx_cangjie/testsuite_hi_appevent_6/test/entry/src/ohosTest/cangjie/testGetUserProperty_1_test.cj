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
class testGetUserProperty_1 {
    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4100
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name1", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name1")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4200
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name1", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name1")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4300
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name1", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name1")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4400
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name1", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name1")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4500
     * @tc.name      : TestCase_5
     * @tc.desc      : setUserProperty name_2.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name_2", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name_2")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4600
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name_2", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name_2")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4700
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name_2", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name_2")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4800
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name_2", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name_2")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_4900
     * @tc.name      : TestCase_9
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5000
     * @tc.name      : TestCase_10
     * @tc.desc      : setUserProperty name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_10 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5100
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5200
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5300
     * @tc.name      : TestCase_13
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_13 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name4", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name4")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5400
     * @tc.name      : TestCase_14
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_14 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name4", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name4")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5500
     * @tc.name      : TestCase_15
     * @tc.desc      : setUserProperty _name4.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_15 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name4", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name4")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5600
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
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name4", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name4")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5700
     * @tc.name      : TestCase_17
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_17 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5800
     * @tc.name      : TestCase_18
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_18 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_5900
     * @tc.name      : TestCase_19
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_19 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6000
     * @tc.name      : TestCase_20
     * @tc.desc      : setUserProperty _name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_20 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("_name", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("_name")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6100
     * @tc.name      : TestCase_21
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_21 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name6$", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name6$")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6200
     * @tc.name      : TestCase_22
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_22 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name6$", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name6$")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6300
     * @tc.name      : TestCase_23
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_23 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name6$", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name6$")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6400
     * @tc.name      : TestCase_24
     * @tc.desc      : setUserProperty name6$.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_24 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("name6$", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("name6$")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6500
     * @tc.name      : TestCase_25
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_25 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("Name7", "value1")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("Name7")
        @Assert(getUserProperty, "value1")
        Hilog.info(0, "cangjietest","testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6600
     * @tc.name      : TestCase_26
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_26 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("Name7", "2")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("Name7")
        @Assert(getUserProperty, "2")
        Hilog.info(0, "cangjietest","testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6700
     * @tc.name      : TestCase_27
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_27 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("Name7", "VALUE")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("Name7")
        @Assert(getUserProperty, "VALUE")
        Hilog.info(0, "cangjietest","testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_setproperty_setproperty_6800
     * @tc.name      : TestCase_28
     * @tc.desc      : setUserProperty Name7.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_28 begins.")
        Hilog.info(0, "cangjietest","define local variable setUserProperty")
        let setUserProperty = HiAppEvent.setUserProperty("Name7", "value")
        Hilog.info(0, "cangjietest","define local variable getUserProperty")
        let getUserProperty = HiAppEvent.getUserProperty("Name7")
        @Assert(getUserProperty, "value")
        Hilog.info(0, "cangjietest","testcase TestCase_28 ends.")
    }
}
