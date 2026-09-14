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
class TestHiAppEventGetUserProperty {
    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserProperty_0100
     * @tc.name      : test_hi_app_event_get_user_property_01
     * @tc.desc      : test Hiappevent test_hi_app_event_get_user_property_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hi_app_event_get_user_property_01(): Unit {
        try {
            let test_userID_name = "test_getUserProperty_01"
            HiAppEvent.setUserProperty(test_userID_name, "aaaaaaa")
            let userIdName = HiAppEvent.getUserProperty(test_userID_name)
            @Expect(userIdName,"aaaaaaa")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserProperty_0200
     * @tc.name      : test_hi_app_event_get_user_property_02
     * @tc.desc      : test Hiappevent test_hi_app_event_get_user_property_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hi_app_event_get_user_property_02(): Unit {
        try {
            let test_userID_name = ""
            let userIdName = HiAppEvent.getUserProperty(test_userID_name)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserProperty_0300
     * @tc.name      : test_hi_app_event_get_user_property_03
     * @tc.desc      : test Hiappevent test_hi_app_event_get_user_property_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hi_app_event_get_user_property_03(): Unit {
        try {
            let userIdName = HiAppEvent.getUserProperty("test_getUserProperty_03")
            @Expect(userIdName,"")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserProperty_0500
     * @tc.name      : test_hi_app_event_get_user_property_05
     * @tc.desc      : test Hiappevent test_hi_app_event_get_user_property_05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hi_app_event_get_user_property_05(): Unit {
        try {
            let userIdName = HiAppEvent.getUserProperty(" ")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
        }
    }
}
