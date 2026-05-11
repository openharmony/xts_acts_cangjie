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
class Test_hiAppEvent_getUserId {

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserId_0100
     * @tc.name      : test_hiAppEvent_getUserId_01
     * @tc.desc      : test Hiappevent test_hiAppEvent_getUserId_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserId_01() {
        try {
            let test_userID_name = "test_getUserId_01"
            HiAppEvent.setUserId(test_userID_name, "123456")
            let userIdName = HiAppEvent.getUserId(test_userID_name)
            @Expect(userIdName,"123456")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserId_0200
     * @tc.name      : test_hiAppEvent_getUserId_02
     * @tc.desc      : test Hiappevent test_hiAppEvent_getUserId_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserId_02() {
        try {
            let test_userID_name = ""
            let userIdName = HiAppEvent.getUserId(test_userID_name)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter error. Parameter verification failed.") // Parameter error. Parameter verification failed.
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserId_0300
     * @tc.name      : test_hiAppEvent_getUserId_03
     * @tc.desc      : test Hiappevent test_hiAppEvent_getUserId_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserId_03() {
        try {
            let userIdName = HiAppEvent.getUserId("test_getUserId_03")
            @Expect(userIdName,"")
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_Hiappevent_Test_hiAppEvent_getUserId_0400
     * @tc.name      : test_hiAppEvent_getUserId_04
     * @tc.desc      : test Hiappevent test_hiAppEvent_getUserId_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hiAppEvent_getUserId_04() {
        try {
            let userIdName = HiAppEvent.getUserId(" ")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            @Expect(e.message, "Parameter error. Parameter verification failed.")
        }
    }

   

    
}
