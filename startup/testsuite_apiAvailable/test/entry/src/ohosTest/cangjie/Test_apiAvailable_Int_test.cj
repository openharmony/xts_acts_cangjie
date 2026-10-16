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
class Test_apiAvailable_Int {
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0001
     * @tc.name      : TestCase_1
     * @tc.desc      : start test with Int Param: 26
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(26), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0002
     * @tc.name      : TestCase_2
     * @tc.desc      : start test with Int Param: 1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(1), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0003
     * @tc.name      : TestCase_3
     * @tc.desc      : start test with Int Param: 2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(2), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0004
     * @tc.name      : TestCase_4
     * @tc.desc      : start test with Int Param: 3
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(3), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0005
     * @tc.name      : TestCase_5
     * @tc.desc      : start test with Int Param: 4
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(4), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_5 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0006
     * @tc.name      : TestCase_6
     * @tc.desc      : start test with Int Param: 5
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(5), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_6 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0007
     * @tc.name      : TestCase_7
     * @tc.desc      : start test with Int Param: 6
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(6), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_7 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0008
     * @tc.name      : TestCase_8
     * @tc.desc      : start test with Int Param: 7
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(7), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_8 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0009
     * @tc.name      : TestCase_9
     * @tc.desc      : start test with Int Param: 8
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(8), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_9 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0010
     * @tc.name      : TestCase_10
     * @tc.desc      : start test with Int Param: 9
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(9), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_10 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0011
     * @tc.name      : TestCase_11
     * @tc.desc      : start test with Int Param: 10
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(10), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_11 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0012
     * @tc.name      : TestCase_12
     * @tc.desc      : start test with Int Param: 11
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(11), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_12 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0013
     * @tc.name      : TestCase_13
     * @tc.desc      : start test with Int Param: 12
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(12), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_13 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0014
     * @tc.name      : TestCase_14
     * @tc.desc      : start test with Int Param: 13
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(13), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_14 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0015
     * @tc.name      : TestCase_15
     * @tc.desc      : start test with Int Param: 14
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(14), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_15 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0016
     * @tc.name      : TestCase_16
     * @tc.desc      : start test with Int Param: 15
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(15), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_16 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0017
     * @tc.name      : TestCase_17
     * @tc.desc      : start test with Int Param: 16
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(16), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_17 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0018
     * @tc.name      : TestCase_18
     * @tc.desc      : start test with Int Param: 17
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(17), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_18 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0019
     * @tc.name      : TestCase_19
     * @tc.desc      : start test with Int Param: 18
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(18), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_19 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0020
     * @tc.name      : TestCase_20
     * @tc.desc      : start test with Int Param: 19
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(19), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_20 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0021
     * @tc.name      : TestCase_21
     * @tc.desc      : start test with Int Param: 20
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(20), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_21 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0022
     * @tc.name      : TestCase_22
     * @tc.desc      : start test with Int Param: 21
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(21), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_22 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0023
     * @tc.name      : TestCase_23
     * @tc.desc      : start test with Int Param: 22
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(22), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_23 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0024
     * @tc.name      : TestCase_24
     * @tc.desc      : start test with Int Param: 23
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(23), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_24 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0025
     * @tc.name      : TestCase_25
     * @tc.desc      : start test with Int Param: 24
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(24), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_25 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0026
     * @tc.name      : TestCase_26
     * @tc.desc      : start test with Int Param: 25
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(25), true)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_26 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0027
     * @tc.name      : TestCase_27
     * @tc.desc      : start test with Int Param: 0
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(0), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_27 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0028
     * @tc.name      : TestCase_28
     * @tc.desc      : start test with Int Param: -1
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(-1), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_28 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0029
     * @tc.name      : TestCase_29
     * @tc.desc      : start test with Int Param: -99
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(-99), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_29 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0030
     * @tc.name      : TestCase_30
     * @tc.desc      : start test with Int Param: 100
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(100), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_30 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0031
     * @tc.name      : TestCase_31
     * @tc.desc      : start test with Int Param: -2
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(-2), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_31 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0032
     * @tc.name      : TestCase_32
     * @tc.desc      : the next major version (sdkApiVersion + 1) is not available
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 begins.")
        let major = DeviceInfo.sdkApiVersion
        @Expect(apiAvailable(major + 1), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_32 ends.")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_apiAvailable_Int_0033
     * @tc.name      : TestCase_33
     * @tc.desc      : start test with Int Param: 50
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel26, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 begins.")
        Hilog.info(0u32, "CangjieTest", "fail to start test.")
        @Expect(apiAvailable(50), false)
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_33 ends.")
    }
}
