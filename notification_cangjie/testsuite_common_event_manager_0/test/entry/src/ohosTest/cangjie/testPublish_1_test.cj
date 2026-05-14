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

@Test
class testPublish_1 {
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
     * @tc.desc      : test publish parameter use string "usual.event.data.DISK_UNMOUNTED"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.data.DISK_UNMOUNTED")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : test publish parameter use string "usual.event.data.DISK_REMOVED"
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
            CommonEventManager.publish("usual.event.data.DISK_REMOVED")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : test publish parameter use string "usual.event.DEVICE_IDLE_MODE_CHANGED"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DEVICE_IDLE_MODE_CHANGED")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : test publish parameter use string "usual.event.DISCHARGING"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DISCHARGING")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0500
     * @tc.name      : TestCase_5
     * @tc.desc      : test publish parameter use string "common.event.DISTRIBUTED_ACCOUNT_LOGOFF"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOFF")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0600
     * @tc.name      : TestCase_6
     * @tc.desc      : test publish parameter use string "common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_TOKEN_INVALID")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0700
     * @tc.name      : TestCase_7
     * @tc.desc      : test publish parameter use string "common.event.DISTRIBUTED_ACCOUNT_LOGOUT"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGOUT")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0800
     * @tc.name      : TestCase_8
     * @tc.desc      : test publish parameter use string "common.event.DISTRIBUTED_ACCOUNT_LOGIN"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DISTRIBUTED_ACCOUNT_LOGIN")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_0900
     * @tc.name      : TestCase_9
     * @tc.desc      : test publish parameter use string "common.event.DRIVE_MODE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.DRIVE_MODE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_9 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1000
     * @tc.name      : TestCase_10
     * @tc.desc      : test publish parameter use string "usual.event.DATE_CHANGED"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_10(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.DATE_CHANGED")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_10 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1100
     * @tc.name      : TestCase_11
     * @tc.desc      : test publish parameter use string "usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_11(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_UNAVAILABLE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_11 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1200
     * @tc.name      : TestCase_12
     * @tc.desc      : test publish parameter use string "usual.event.EXTERNAL_APPLICATIONS_AVAILABLE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_12(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.EXTERNAL_APPLICATIONS_AVAILABLE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_12 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1300
     * @tc.name      : TestCase_13
     * @tc.desc      : test publish parameter use string "common.event.FOUNDATION_READY"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_13(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.FOUNDATION_READY")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_13 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1400
     * @tc.name      : TestCase_14
     * @tc.desc      : test publish parameter use string "common.event.HOME_MODE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_14(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.HOME_MODE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_14 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1500
     * @tc.name      : TestCase_15
     * @tc.desc      : test publish parameter use string "usual.event.HTTP_PROXY_CHANGE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_15(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_15 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.HTTP_PROXY_CHANGE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_15 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1600
     * @tc.name      : TestCase_16
     * @tc.desc      : test publish parameter use string "common.event.IVI_SLEEP"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_16(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_SLEEP")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_16 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1700
     * @tc.name      : TestCase_17
     * @tc.desc      : test publish parameter use string "common.event.IVI_PAUSE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_17(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_PAUSE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_17 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1800
     * @tc.name      : TestCase_18
     * @tc.desc      : test publish parameter use string "common.event.IVI_STANDBY"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_18(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_18 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_STANDBY")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_18 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_1900
     * @tc.name      : TestCase_19
     * @tc.desc      : test publish parameter use string "common.event.IVI_LASTMODE_SAVE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_19(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_19 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_LASTMODE_SAVE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_19 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2000
     * @tc.name      : TestCase_20
     * @tc.desc      : test publish parameter use string "common.event.IVI_VOLTAGE_ABNORMAL"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_20(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_ABNORMAL")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_20 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2100
     * @tc.name      : TestCase_21
     * @tc.desc      : test publish parameter use string "common.event.IVI_HIGH_TEMPERATURE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_21(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_HIGH_TEMPERATURE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_21 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2200
     * @tc.name      : TestCase_22
     * @tc.desc      : test publish parameter use string "common.event.IVI_EXTREME_TEMPERATURE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_22(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_EXTREME_TEMPERATURE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_22 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2300
     * @tc.name      : TestCase_23
     * @tc.desc      : test publish parameter use string "common.event.IVI_TEMPERATURE_ABNORMAL"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_23(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_ABNORMAL")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_23 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2400
     * @tc.name      : TestCase_24
     * @tc.desc      : test publish parameter use string "common.event.IVI_VOLTAGE_RECOVERY"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_24(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_VOLTAGE_RECOVERY")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_24 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2500
     * @tc.name      : TestCase_25
     * @tc.desc      : test publish parameter use string "common.event.IVI_TEMPERATURE_RECOVERY"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_25(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_TEMPERATURE_RECOVERY")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_25 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2600
     * @tc.name      : TestCase_26
     * @tc.desc      : test publish parameter use string "common.event.IVI_ACTIVE"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_26(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("common.event.IVI_ACTIVE")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_26 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2700
     * @tc.name      : TestCase_27
     * @tc.desc      : test publish parameter use string "usual.event.INCOMING_CALL_MISSED"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_27(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("usual.event.INCOMING_CALL_MISSED")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_27 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2800
     * @tc.name      : TestCase_28
     * @tc.desc      : test publish parameter use string ""
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_28(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(true)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_28 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_2900
     * @tc.name      : TestCase_29
     * @tc.desc      : test publish parameter use string "event"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_29(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("event")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_29 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_testPublish_publish_3000
     * @tc.name      : TestCase_30
     * @tc.desc      : test publish parameter use string "@#!@$%^^&*"
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_30(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 begins.")
        Hilog.info(0u32, "cangjietest", "", "case start")
        try {
            CommonEventManager.publish("@#!@$%^^&*")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_30 ends.")
    }
}
