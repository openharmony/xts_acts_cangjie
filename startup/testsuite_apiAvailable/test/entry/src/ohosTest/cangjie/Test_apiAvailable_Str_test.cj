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
import ohos.hilog.Hilog
import ohos.device_info.*

@Test
class Test_apiAvailable_Str {
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : start test with Str Param: "1.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : start test with Str Param: "2.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("2.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : start test with Str Param: "3.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("3.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : start test with Str Param: "4.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("4.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : start test with Str Param: "5.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("5.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : start test with Str Param: "6.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("6.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : start test with Str Param: "7.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("7.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : start test with Str Param: "8.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("8.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : start test with Str Param: "9.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("9.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : start test with Str Param: "10.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("10.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : start test with Str Param: "11.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("11.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0012
     * @tc.name      : TestCase_12
     * @tc.desc      : start test with Str Param: "12.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("12.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0013
     * @tc.name      : TestCase_13
     * @tc.desc      : start test with Str Param: "13.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("13.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0014
     * @tc.name      : TestCase_14
     * @tc.desc      : start test with Str Param: "14.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("14.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0015
     * @tc.name      : TestCase_15
     * @tc.desc      : start test with Str Param: "15.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("15.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0016
     * @tc.name      : TestCase_16
     * @tc.desc      : start test with Str Param: "16.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("16.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0017
     * @tc.name      : TestCase_17
     * @tc.desc      : start test with Str Param: "17.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("17.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0018
     * @tc.name      : TestCase_18
     * @tc.desc      : start test with Str Param: "18.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("18.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0019
     * @tc.name      : TestCase_19
     * @tc.desc      : start test with Str Param: "19.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("19.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0020
     * @tc.name      : TestCase_20
     * @tc.desc      : start test with Str Param: "20.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("20.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0021
     * @tc.name      : TestCase_21
     * @tc.desc      : start test with Str Param: "21.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("21.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0022
     * @tc.name      : TestCase_22
     * @tc.desc      : start test with Str Param: "22.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("22.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0023
     * @tc.name      : TestCase_23
     * @tc.desc      : start test with Str Param: "23.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("23.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0024
     * @tc.name      : TestCase_24
     * @tc.desc      : start test with Str Param: "24.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("24.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0025
     * @tc.name      : TestCase_25
     * @tc.desc      : start test with Str Param: "25.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("25.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0026
     * @tc.name      : TestCase_26
     * @tc.desc      : start test with Str Param: "26.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0027
     * @tc.name      : TestCase_27
     * @tc.desc      : start test with Str Param: "6.1.1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("6.1.1"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0028
     * @tc.name      : TestCase_28
     * @tc.desc      : future version of the current major ("<major>.99.99") is not available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        let major = DeviceInfo.sdkApiVersion
        @Expect(apiAvailable("${major}.99.99"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0029
     * @tc.name      : TestCase_29
     * @tc.desc      : branch floor "26.0.0" (independent anchor, always <= any device running XTS_26) is available; the DeviceInfo-anchored current version is available (equality side of >=) while the next patch is not (strict side)
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        @Expect(apiAvailable("26.0.0"), true)
        let major = DeviceInfo.sdkApiVersion
        let minor = DeviceInfo.sdkMinorApiVersion
        let patch = DeviceInfo.sdkPatchApiVersion
        @Expect(apiAvailable("${major}.${minor}.${patch}"), true)
        @Expect(apiAvailable("${major}.${minor}.${patch + 1}"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0030
     * @tc.name      : TestCase_30
     * @tc.desc      : start test with Str Param: "25.99.99"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("25.99.99"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0031
     * @tc.name      : TestCase_31
     * @tc.desc      : start test with Str Param: "1.0.1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.1"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0032
     * @tc.name      : TestCase_32
     * @tc.desc      : start test with Str Param: "99.99.99"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("99.99.99"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0033
     * @tc.name      : TestCase_33
     * @tc.desc      : start test with Str Param: "0.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0034
     * @tc.name      : TestCase_34
     * @tc.desc      : start test with Str Param: "0.1.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.1.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_34 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0035
     * @tc.name      : TestCase_35
     * @tc.desc      : start test with Str Param: "0.0.1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.0.1"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_35 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0036
     * @tc.name      : TestCase_36
     * @tc.desc      : start test with Str Param: "26.100.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.100.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_36 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0037
     * @tc.name      : TestCase_37
     * @tc.desc      : start test with Str Param: "5.0.100"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("5.0.100"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_37 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0038
     * @tc.name      : TestCase_38
     * @tc.desc      : start test with Str Param: "-1.1.1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("-1.1.1"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_38 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0039
     * @tc.name      : TestCase_39
     * @tc.desc      : start test with Str Param: "9.-1.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("9.-1.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_39 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0040
     * @tc.name      : TestCase_40
     * @tc.desc      : start test with Str Param: "11.0.-1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("11.0.-1"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_40 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0041
     * @tc.name      : TestCase_41
     * @tc.desc      : the next major version ("<major+1>.0.0") is not available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 begins.")
        let major = DeviceInfo.sdkApiVersion
        @Expect(apiAvailable("${major + 1}.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_41 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0042
     * @tc.name      : TestCase_42
     * @tc.desc      : start test with Str Param: "100.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("100.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_42 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0043
     * @tc.name      : TestCase_43
     * @tc.desc      : start test with Str Param: "0.99.99"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.99.99"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_43 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0044
     * @tc.name      : TestCase_44
     * @tc.desc      : start test with Str Param: "1.0.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0(0)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_44 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0045
     * @tc.name      : TestCase_45
     * @tc.desc      : start test with Str Param: "2.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("2.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_45 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0046
     * @tc.name      : TestCase_46
     * @tc.desc      : start test with Str Param: "3.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("3.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_46 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0047
     * @tc.name      : TestCase_47
     * @tc.desc      : start test with Str Param: "4.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("4.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_47 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0048
     * @tc.name      : TestCase_48
     * @tc.desc      : start test with Str Param: "5.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("5.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_48 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0049
     * @tc.name      : TestCase_49
     * @tc.desc      : start test with Str Param: "6.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("6.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_49 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0050
     * @tc.name      : TestCase_50
     * @tc.desc      : start test with Str Param: "7.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("7.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_50 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0051
     * @tc.name      : TestCase_51
     * @tc.desc      : start test with Str Param: "8.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("8.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_51 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0052
     * @tc.name      : TestCase_52
     * @tc.desc      : start test with Str Param: "9.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("9.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_52 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0053
     * @tc.name      : TestCase_53
     * @tc.desc      : start test with Str Param: "10.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("10.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_53 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0054
     * @tc.name      : TestCase_54
     * @tc.desc      : start test with Str Param: "11.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("11.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_54 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0055
     * @tc.name      : TestCase_55
     * @tc.desc      : start test with Str Param: "12.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("12.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_55 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0056
     * @tc.name      : TestCase_56
     * @tc.desc      : start test with Str Param: "13.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("13.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_56 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0057
     * @tc.name      : TestCase_57
     * @tc.desc      : start test with Str Param: "14.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("14.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_57 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0058
     * @tc.name      : TestCase_58
     * @tc.desc      : start test with Str Param: "15.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("15.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_58 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0059
     * @tc.name      : TestCase_59
     * @tc.desc      : start test with Str Param: "16.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("16.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_59 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0060
     * @tc.name      : TestCase_60
     * @tc.desc      : start test with Str Param: "17.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("17.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_60 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0061
     * @tc.name      : TestCase_61
     * @tc.desc      : start test with Str Param: "18.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_61(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("18.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_61 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0062
     * @tc.name      : TestCase_62
     * @tc.desc      : start test with Str Param: "19.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_62(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("19.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_62 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0063
     * @tc.name      : TestCase_63
     * @tc.desc      : start test with Str Param: "20.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_63(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("20.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_63 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0064
     * @tc.name      : TestCase_64
     * @tc.desc      : start test with Str Param: "21.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_64(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("21.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_64 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0065
     * @tc.name      : TestCase_65
     * @tc.desc      : start test with Str Param: "22.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_65(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("22.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_65 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0066
     * @tc.name      : TestCase_66
     * @tc.desc      : start test with Str Param: "23.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_66(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("23.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_66 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0067
     * @tc.name      : TestCase_67
     * @tc.desc      : start test with Str Param: "24.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_67(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("24.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_67 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0068
     * @tc.name      : TestCase_68
     * @tc.desc      : start test with Str Param: "25.0.0(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_68(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("25.0.0(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_68 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0069
     * @tc.name      : TestCase_69
     * @tc.desc      : start test with Str Param: "26.0.0(99)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_69(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0(99)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_69 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0070
     * @tc.name      : TestCase_70
     * @tc.desc      : start test with Str Param: "6.1.1(2)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_70(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("6.1.1(2)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_70 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0071
     * @tc.name      : TestCase_71
     * @tc.desc      : future version of the current major with beta 0 ("<major>.99.99(0)") is not available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_71(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 begins.")
        let major = DeviceInfo.sdkApiVersion
        @Expect(apiAvailable("${major}.99.99(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_71 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0072
     * @tc.name      : TestCase_72
     * @tc.desc      : start test with Str Param: "26.0.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_72(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0(0)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_72 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0073
     * @tc.name      : TestCase_73
     * @tc.desc      : start test with Str Param: "1.0.0(99)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_73(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0(99)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_73 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0074
     * @tc.name      : TestCase_74
     * @tc.desc      : start test with Str Param: "25.99.99(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_74(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("25.99.99(1)"), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_74 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0075
     * @tc.name      : TestCase_75
     * @tc.desc      : start test with Str Param: "99.99.99(1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_75(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("99.99.99(1)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_75 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0076
     * @tc.name      : TestCase_76
     * @tc.desc      : start test with Str Param: "0.0.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_76(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.0.0(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_76 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0077
     * @tc.name      : TestCase_77
     * @tc.desc      : start test with Str Param: "0.1.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_77(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.1.0(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_77 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0078
     * @tc.name      : TestCase_78
     * @tc.desc      : start test with Str Param: "0.0.1(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_78(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("0.0.1(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_78 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0079
     * @tc.name      : TestCase_79
     * @tc.desc      : start test with Str Param: "26.100.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_79(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.100.0(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_79 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0080
     * @tc.name      : TestCase_80
     * @tc.desc      : start test with Str Param: "5.0.100(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_80(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("5.0.100(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_80 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0081
     * @tc.name      : TestCase_81
     * @tc.desc      : start test with Str Param: "-1.1.1(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_81(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("-1.1.1(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_81 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0082
     * @tc.name      : TestCase_82
     * @tc.desc      : start test with Str Param: "9.-1.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_82(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("9.-1.0(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_82 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0083
     * @tc.name      : TestCase_83
     * @tc.desc      : start test with Str Param: "11.0.-1(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_83(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("11.0.-1(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_83 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0084
     * @tc.name      : TestCase_84
     * @tc.desc      : start test with Str Param: "6.1.1(100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_84(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("6.1.1(100)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_84 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0085
     * @tc.name      : TestCase_85
     * @tc.desc      : start test with Str Param: "26.99.99(-1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_85(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.99.99(-1)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_85 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0086
     * @tc.name      : TestCase_86
     * @tc.desc      : start test with Str Param: "1.0.0(-1)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_86(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0(-1)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_86 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0087
     * @tc.name      : TestCase_87
     * @tc.desc      : the next major version with beta 0 ("<major+1>.0.0(0)") is not available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_87(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 begins.")
        let major = DeviceInfo.sdkApiVersion
        @Expect(apiAvailable("${major + 1}.0.0(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_87 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0088
     * @tc.name      : TestCase_88
     * @tc.desc      : start test with Str Param: "5.0.0(100)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_88(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("5.0.0(100)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_88 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0089
     * @tc.name      : TestCase_89
     * @tc.desc      : start test with Str Param: empty string
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_89(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(""), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_89 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0090
     * @tc.name      : TestCase_90
     * @tc.desc      : start test with Str Param: "a.b.c"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_90(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("a.b.c"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_90 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0091
     * @tc.name      : TestCase_91
     * @tc.desc      : start test with Str Param: "1.0.0(a)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_91(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0(a)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_91 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0092
     * @tc.name      : TestCase_92
     * @tc.desc      : start test with Str Param: "aa"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_92(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("aa"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_92 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0093
     * @tc.name      : TestCase_93
     * @tc.desc      : start test with Str Param: "1.0.0\0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_93(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0\0"), true) // 检查点在IfAvailable宏处
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_93 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0094
     * @tc.name      : TestCase_94
     * @tc.desc      : start test with Str Param: "26.0.0a"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_94(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0a"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_94 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0095
     * @tc.name      : TestCase_95
     * @tc.desc      : start test with Str Param: "26.0.00"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_95(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.00"), true)  // 检查点在IfAvailable宏处
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_95 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0096
     * @tc.name      : TestCase_96
     * @tc.desc      : start test with Str Param: "a1.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_96(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("a1.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_96 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0097
     * @tc.name      : TestCase_97
     * @tc.desc      : start test with Str Param: "1.0.0仓"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_97(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0仓"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_97 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0098
     * @tc.name      : TestCase_98
     * @tc.desc      : start test with Str Param: "1.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_98(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_98 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0099
     * @tc.name      : TestCase_99
     * @tc.desc      : start test with Str Param: "1.0."
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_99(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0."), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_99 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0100
     * @tc.name      : TestCase_100
     * @tc.desc      : start test with Str Param: "1..0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_100(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1..0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_100 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0101
     * @tc.name      : TestCase_101
     * @tc.desc      : start test with Str Param: ".1.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_101(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(".1.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_101 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0102
     * @tc.name      : TestCase_102
     * @tc.desc      : start test with Str Param: ".."
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_102(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(".."), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_102 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0103
     * @tc.name      : TestCase_103
     * @tc.desc      : start test with Str Param: "1.0.0(1"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_103(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0(1"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_103 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0104
     * @tc.name      : TestCase_104
     * @tc.desc      : start test with Str Param: "26.0.0()"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_104(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0()"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_104 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0105
     * @tc.name      : TestCase_105
     * @tc.desc      : start test with Str Param: "26.0.0((1))"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_105(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0((1))"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_105 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0106
     * @tc.name      : TestCase_106
     * @tc.desc      : start test with Str Param: "1.0.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_106(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_106 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0107
     * @tc.name      : TestCase_107
     * @tc.desc      : start test with Str Param: "1.0.0.0(0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_107(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0.0(0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_107 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0108
     * @tc.name      : TestCase_108
     * @tc.desc      : start test with Str Param: "(1)1.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_108(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("(1)1.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_108 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0109
     * @tc.name      : TestCase_109
     * @tc.desc      : start test with Str Param: "26.0.0)"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_109(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("26.0.0)"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_109 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0110
     * @tc.name      : TestCase_110
     * @tc.desc      : start test with Str Param: " 1.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_110(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(" 1.0.0"), true)  // 检查点在IfAvailable宏处
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_110 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0111
     * @tc.name      : TestCase_111
     * @tc.desc      : start test with Str Param: "1.0.0 "
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_111(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0 "), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_111 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0112
     * @tc.name      : TestCase_112
     * @tc.desc      : start test with Str Param: "1.0.0.0.0"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_112(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("1.0.0.0.0"), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_112 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Str_0113
     * @tc.name      : TestCase_113
     * @tc.desc      : start test with Str Param: "00026.0000.0000"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_113(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable("00026.0000.0000"), true)  // 检查点在IfAvailable宏处
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_113 ends.")
    }
}
