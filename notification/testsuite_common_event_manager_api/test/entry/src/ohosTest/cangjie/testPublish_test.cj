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
import ohos.business_exception.BusinessException

let publishSuccessCases: Array<String> = [
    "usual.event.data.DISK_UNMOUNTED",
    "usual.event.data.DISK_REMOVED",
    "usual.event.DEVICE_IDLE_MODE_CHANGED",
    "usual.event.DISCHARGING",
    "common.event.DISTRIBUTED_ACCOUNT_LOGOFF",
    "common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID",
    "common.event.DISTRIBUTED_ACCOUNT_LOGOUT",
    "common.event.DISTRIBUTED_ACCOUNT_LOGIN",
    "common.event.DRIVE_MODE",
    "usual.event.DATE_CHANGED",
    "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE",
    "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE",
    "common.event.FOUNDATION_READY",
    "common.event.HOME_MODE",
    "usual.event.HTTP_PROXY_CHANGE",
    "common.event.IVI_SLEEP",
    "common.event.IVI_PAUSE",
    "common.event.IVI_STANDBY",
    "common.event.IVI_LASTMODE_SAVE",
    "common.event.IVI_VOLTAGE_ABNORMAL",
    "common.event.IVI_HIGH_TEMPERATURE",
    "common.event.IVI_EXTREME_TEMPERATURE",
    "common.event.IVI_TEMPERATURE_ABNORMAL",
    "common.event.IVI_VOLTAGE_RECOVERY",
    "common.event.IVI_TEMPERATURE_RECOVERY",
    "common.event.IVI_ACTIVE",
    "usual.event.INCOMING_CALL_MISSED",
    "event",
    "@#!@$%^^&*"
]

@Test
class testPublish {
    @BeforeAll
    func beforeAll() {
        Hilog.info(0u32, "cangjietest", "", "get user granted permission ohos.permission.LISTEN_BUNDLE_CHANGE")
        try {
            getRequiredPermissions(["ohos.permission.LISTEN_BUNDLE_CHANGE"])
            sleep(Duration.second * 1i64)
            click(at: Screen.getTheOnlyUiComponentWhoseTextEqualsTo("允许").centerPoint)
            sleep(Duration.second * 1i64)
        } catch (_: Exception) {
            Hilog.info(0u32, "cangjietest", "", "get user granted permission fail")
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : test publish with various event name strings including system events (usual.event.*, common.event.*), empty string, generic string and special characters, expect success
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        for (eventName in publishSuccessCases) {
            Hilog.info(0u32, "cangjietest", "", "case start")
            try {
                CommonEventManager.publish(eventName)
                @Expect(true)
            } catch (e: BusinessException) {
                @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test publish with empty string, expect BusinessException 401
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 401)
            Hilog.error(0, "", "TestCase_2" + e.toString())
        }

        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : test publish parameter use string "1234567890"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("1234567890")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : test publish parameter use string "errorString"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("errorString")
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 ends.")
    }
}