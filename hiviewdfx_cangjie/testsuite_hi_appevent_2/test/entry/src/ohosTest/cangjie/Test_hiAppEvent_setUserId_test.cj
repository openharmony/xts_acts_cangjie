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

import std.unittest.testmacro.*
import std.collection.*
import ohos.hiviewdfx.hi_app_event.*
import ohos.hilog.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.base.*

@Test
class Test_hiAppEvent_setUserId {
    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_0100
    * @tc.name      : test_hiAppEvent_setUserId_01
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_01
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_01() {
        try {
            let test_userID_name = "test_setUserId_01"
            let test_userID_value = "123456"
            HiAppEvent.setUserId(test_userID_name, test_userID_value)
            let userIdName = HiAppEvent.getUserId(test_userID_name)
            @Expect(userIdName,"123456")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    
    
    
    
   
    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_0500
    * @tc.name      : test_hiAppEvent_setUserId_05
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_05
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_05() {
        try {
            let test_userID_name = ""
            let test_userID_value = "123456"
            HiAppEvent.setUserId(test_userID_name, test_userID_value)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter error. Parameter verification failed.")
        }
    }

    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_0600
    * @tc.name      : test_hiAppEvent_setUserId_06
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_06
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_06() {
        try {
            let test_userID_name = " "
            let test_userID_value = "123456"
            HiAppEvent.setUserId(test_userID_name, test_userID_value)
            let userIdName = HiAppEvent.getUserId(test_userID_name)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter error. Parameter verification failed.")
        }
    }
    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_0700
    * @tc.name      : test_hiAppEvent_setUserId_07
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_07
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_07() {
        try {
            let test_userID_name = "daidohaiofjaiofjaiojfiafjaofskjashfiahfusafhjsahfsuiasfhjfkuaifhsjkslakdpafoapfhioahwfuwiahfjshfaifhwuiahfkshfaiowehafowiaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa6666666611"
            let test_userID_value = " "
            HiAppEvent.setUserId(test_userID_name, test_userID_value)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter error. Parameter verification failed.")
        }
    }
    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_0800
    * @tc.name      : test_hiAppEvent_setUserId_08
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_08
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_08() {
        try {
            let test_userID_name = "test_setUserId_08"
            let test_userID_value = "123456"
            HiAppEvent.setUserId(test_userID_name, test_userID_value)
            let test_userID_name_01 = "test_setUserId_08"
            let test_userID_value_01 = "1234567"
            HiAppEvent.setUserId(test_userID_name_01, test_userID_value_01)
            let userIdName = HiAppEvent.getUserId(test_userID_name)
            @Expect(userIdName,"1234567")
            let userIdName_01 = HiAppEvent.getUserId(test_userID_name_01)
            @Expect(userIdName_01,"1234567")
        } catch (e: Exception) {
            @Expect(false)
        }
    }
    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_0900
    * @tc.name      : test_hiAppEvent_setUserId_09
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_09
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_09() {
        try {
            let test_userID_name = "test_setUserId_09"
            let test_userID_value = "daidohaiofjaiofjaiojfiafjaofskjashfiahfusafhjsahfsuiafhjfkuaifhsjkslakdpafoapfhioahwfuwiahfjshfaifhwuiahfkshfaiowehafowiaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa6666666611"
            HiAppEvent.setUserId(test_userID_name, test_userID_value)
            let userIdName = HiAppEvent.getUserId(test_userID_name)
            @Expect(userIdName,"daidohaiofjaiofjaiojfiafjaofskjashfiahfusafhjsahfsuiafhjfkuaifhsjkslakdpafoapfhioahwfuwiahfjshfaifhwuiahfkshfaiowehafowiaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa6666666611")
        } catch (e: Exception) {
            @Expect(false)
        }
    }
    
   
    
    /*
    * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_setUserId_1100
    * @tc.name      : test_hiAppEvent_setUserId_11
    * @tc.desc      : test Hiappevent test_hiAppEvent_setUserId_11
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 0
    */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_setUserId_11() {
        try {
            let test_userID_name = "test_setUserId_11"
            HiAppEvent.setUserId(test_userID_name, "")
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter error. Parameter verification failed.")
        }
    }
}
