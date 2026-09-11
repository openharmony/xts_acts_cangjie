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
import kit.BasicServicesKit.*
import kit.PerformanceAnalysisKit.Hilog
import std.collection.HashMap
import ohos.business_exception.BusinessException

struct PublishDataParam {
    let eventName: String
    let bundleName: String
    let data: String
    let code: Int32
    let subscriberPermissions: Array<String>
    let isOrdered: Bool
    let isSticky: Bool

    public init(eventName: String, bundleName: String, data: String,
        code: Int32, subscriberPermissions: Array<String>, isOrdered: Bool,
        isSticky: Bool) {
        this.eventName = eventName
        this.bundleName = bundleName
        this.data = data
        this.code = code
        this.subscriberPermissions = subscriberPermissions
        this.isOrdered = isOrdered
        this.isSticky = isSticky
    }
}

let publishDataCases: Array<PublishDataParam> = [
    PublishDataParam("common.event.DISTRIBUTED_ACCOUNT_LOGIN", "com.example.myapplication", "DATA", 0i32, ["Data"], false, false),
    PublishDataParam("common.event.DISTRIBUTED_ACCOUNT_LOGOFF", "com.example.myapplication", "DATA", 1i32, ["Data"], true, true),
    PublishDataParam("common.event.DISTRIBUTED_ACCOUNT_LOGOUT", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["subscriberPermissions"], true, false),
    PublishDataParam("common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID", "com.example.myapplication", "sw65^6&^$%$", 1i32, ["subscriberPermissions"], false, true),
    PublishDataParam("common.event.DRIVE_MODE", "com.example.myapplication", "DATA", 0i32, ["Data"], false, false),
    PublishDataParam("common.event.FOUNDATION_READY", "com.example.myapplication", "DATA", 1i32, ["Data"], true, true),
    PublishDataParam("common.event.HOME_MODE", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["subscriberPermissions"], true, false),
    PublishDataParam("common.event.IVI_ACTIVE", "com.example.myapplication", "DATA", 1i32, ["Data"], false, true),
    PublishDataParam("common.event.IVI_EXTREME_TEMPERATURE", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["subscriberPermissions"], false, false),
    PublishDataParam("common.event.IVI_HIGH_TEMPERATURE", "com.example.myapplication", "DATA", 1i32, ["Data"], true, true),
    PublishDataParam("common.event.IVI_LASTMODE_SAVE", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["Data"], true, false),
    PublishDataParam("common.event.IVI_PAUSE", "com.example.myapplication", "DATA", 1i32, ["subscriberPermissions"], false, true),
    PublishDataParam("common.event.IVI_SLEEP", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["Data"], false, false),
    PublishDataParam("common.event.IVI_STANDBY", "com.example.myapplication", "DATA", 1i32, ["subscriberPermissions"], true, true),
    PublishDataParam("common.event.IVI_TEMPERATURE_ABNORMAL", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["Data"], true, false),
    PublishDataParam("common.event.IVI_TEMPERATURE_RECOVERY", "com.example.myapplication", "DATA", 1i32, ["subscriberPermissions"], false, true),
    PublishDataParam("common.event.IVI_VOLTAGE_ABNORMAL", "com.example.myapplication", "sw65^6&^$%$", 0i32, ["Data"], false, false),
    PublishDataParam("common.event.IVI_VOLTAGE_RECOVERY", "com.example.myapplication", "DATA", 1i32, ["subscriberPermissions"], true, true),
    PublishDataParam("errorString", "com.example.myapplication", "DATA", 0i32, ["Data"], false, false),
    PublishDataParam("errorString", "!#$@%^&*", "sw65^6&^$%$", 1i32, ["subscriberPermissions"], true, true),
]

@Test
class testPublishData {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "cangjietest", "get user granted permission ohos.permission.COMMONEVENT_STICKY")
        try {
            getRequiredPermissions(["ohos.permission.COMMONEVENT_STICKY"])
            sleep(Duration.second * 1i64)
            click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0u32, "cangjietest", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublishData_publish_00100
     * @tc.name      : TestCase_publishAllParams
     * @tc.desc      : Calls CommonEventManager.publish with all event name × bundle name × parameter combinations. Verifies publish succeeds without exception.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_publishAllParams(): Unit {
        Hilog.info(0u32, "cangjietest", "TestCase_publishAllParams start")
        for (param in publishDataCases) {
            try {
                CommonEventManager.publish(param.eventName,
                    options: CommonEventPublishData(bundleName: param.bundleName, data: param.data, code: param.code,
                        subscriberPermissions: param.subscriberPermissions, isOrdered: param.isOrdered,
                        isSticky: param.isSticky, parameters: HashMap<String, CommonEventValueType>()))
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
                Hilog.error(0u32, "cangjietest", "TestCase_publishAllParams" + e.toString())
            }
        }
        Hilog.info(0u32, "cangjietest", "TestCase_publishAllParams end")
    }
}
