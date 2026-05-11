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

import ohos.common_event_manager.*
import ohos.ui_test.*
import std.collection.HashMap
import std.unittest.testmacro.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.common_event_manager
import ohos.business_exception.{BusinessException}

@Test
class Test_CommonEvent_Publish {

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Publish_0100
     * @tc.name      : Test_CommonEvent_Pulish_00
     * @tc.desc      : test CommonEvent Test_CommonEvent_Pulish_00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Pulish_00() {
        CommonEventManager.publish(Support.COMMON_EVENT_SCREEN_ON.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Publish_0200
     * @tc.name      : Test_CommonEvent_Pulish_01
     * @tc.desc      : test CommonEvent Test_CommonEvent_Pulish_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Pulish_01() {
        CommonEventManager.publish(Support.COMMON_EVENT_SCREEN_OFF.toString())
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Publish_0300
     * @tc.name      : Test_CommonEvent_Pulish_02
     * @tc.desc      : test CommonEvent Test_CommonEvent_Pulish_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Pulish_02() {
        let parameters = HashMap<String, CommonEventValueType>()
        parameters.add("1", CommonEventValueType.Int32Value(1))
        parameters.add("2", CommonEventValueType.Float64Value(1.1))
        parameters.add("3", CommonEventValueType.StringValue("111"))
        parameters.add("4", CommonEventValueType.BoolValue(true))
        parameters.add("5", CommonEventValueType.FD(1))
        parameters.add("6", CommonEventValueType.ArrayString(["123"]))
        parameters.add("7", CommonEventValueType.ArrayInt32([1, 2]))
        parameters.add("8", CommonEventValueType.ArrayInt64([1, 2]))
        parameters.add("9", CommonEventValueType.ArrayBool([true, false]))
        parameters.add("10", CommonEventValueType.ArrayFloat64([1.1, 2.1]))
        parameters.add("11", CommonEventValueType.ArrayFD([1, 2]))
        let commonEventPublishData = CommonEventPublishData(bundleName: "com.example.myapplication", data: "newbee",
            code: 123321, subscriberPermissions: ["123321"], isOrdered: false, isSticky: false, parameters: parameters)
        CommonEventManager.publish(Support.COMMON_EVENT_SCREEN_ON.toString(), options: commonEventPublishData)
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Publish_0400
     * @tc.name      : Test_CommonEvent_Pulish_03
     * @tc.desc      : test CommonEvent Test_CommonEvent_Pulish_03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Pulish_03() {
        try {
            let commonEventPublishData = CommonEventPublishData(bundleName: "com.example.myapplication",
                data: "sw65^6&^$%$", code: 123321i32, subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
                parameters: HashMap<String, CommonEventValueType>())
            CommonEventManager.publish(Support.COMMON_EVENT_SCREEN_ON.toString(), options: commonEventPublishData)
            @Expect(true)
        } catch (e: Exception) {
            @Expect(false)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Publish_0500
     * @tc.name      : Test_CommonEvent_Pulish_04
     * @tc.desc      : test CommonEvent Test_CommonEvent_Pulish_04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Pulish_04() {
        let commonEventPublishData = CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$",
            code: -1i32, subscriberPermissions: ["Data"], isOrdered: false, isSticky: true,
            parameters: HashMap<String, CommonEventValueType>())
        CommonEventManager.publish(Support.COMMON_EVENT_SCREEN_ON.toString(), options: commonEventPublishData)
    }
}
