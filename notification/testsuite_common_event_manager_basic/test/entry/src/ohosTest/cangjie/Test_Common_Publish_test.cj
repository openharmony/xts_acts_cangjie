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
import std.unittest.*
import std.unittest.common.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.common_event_manager
import ohos.business_exception.{BusinessException}

struct PublishParam {
    let eventName: String
    let hasOptions: Bool
    let bundleName: String
    let data: String
    let code: Int32
    let subscriberPermissions: Array<String>
    let isOrdered: Bool
    let isSticky: Bool
    let useRichParams: Bool

    public init(eventName: String, hasOptions: Bool, bundleName: String, data: String,
        code: Int32, subscriberPermissions: Array<String>, isOrdered: Bool, isSticky: Bool,
        useRichParams: Bool) {
        this.eventName = eventName
        this.hasOptions = hasOptions
        this.bundleName = bundleName
        this.data = data
        this.code = code
        this.subscriberPermissions = subscriberPermissions
        this.isOrdered = isOrdered
        this.isSticky = isSticky
        this.useRichParams = useRichParams
    }
}

let publishCases: Array<PublishParam> = [
    PublishParam("usual.event.SCREEN_ON", false, "", "", 0i32, [], false, false, false),
    PublishParam("usual.event.SCREEN_OFF", false, "", "", 0i32, [], false, false, false),
    PublishParam("usual.event.SCREEN_ON", true, "com.example.myapplication", "newbee", 123321i32, ["123321"], false, false, true),
    PublishParam("usual.event.SCREEN_ON", true, "com.example.myapplication", "sw65^6&^$%$", 123321i32, ["Data"], false, true, false),
    PublishParam("usual.event.SCREEN_ON", true, "com.example.myapplication", "sw65^6&^$%$", -1i32, ["Data"], false, true, false)
]

@Test
class Test_CommonEvent_Publish {

    /*
     * @tc.number    : Sub_Cangjie_CommonEvent_Test_CommonEvent_Publish_0100
     * @tc.name      : Test_CommonEvent_Pulish_00
     * @tc.desc      : test CommonEvent publish with various event names and CommonEventPublishData parameter combinations (with/without options, rich/empty parameters), expect success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_CommonEvent_Pulish_00() {
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CommonEvent_Pulish_00 begins.")
        for (param in publishCases) {
            try {
                if (param.hasOptions) {
                    let parameters = HashMap<String, CommonEventValueType>()
                    if (param.useRichParams) {
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
                    }
                    let commonEventPublishData = CommonEventPublishData(bundleName: param.bundleName,
                        data: param.data, code: param.code, subscriberPermissions: param.subscriberPermissions,
                        isOrdered: param.isOrdered, isSticky: param.isSticky, parameters: parameters)
                    CommonEventManager.publish(param.eventName, options: commonEventPublishData)
                } else {
                    CommonEventManager.publish(param.eventName)
                }
                @Expect(true)
            } catch (e: Exception) {
                @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase Test_CommonEvent_Pulish_00 ends.")
    }
}
