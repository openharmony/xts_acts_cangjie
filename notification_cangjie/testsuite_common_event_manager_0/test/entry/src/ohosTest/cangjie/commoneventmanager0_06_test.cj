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

@Test
class test_Support_2 {
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
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3100
     * @tc.name      : TestCase_31
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_31(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_CONNECT_STATE_UPDATE, "usual.event.bluetooth.handsfreeunit.CONNECT_STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_31 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3200
     * @tc.name      : TestCase_32
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_32(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AUDIO_STATE_UPDATE, "usual.event.bluetooth.handsfreeunit.AUDIO_STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_32 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3300
     * @tc.name      : TestCase_33
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_33(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_33 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_COMMON_EVENT, "usual.event.bluetooth.handsfreeunit.AG_COMMON_EVENT")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_33 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3400
     * @tc.name      : TestCase_34
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_34(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_34 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HANDSFREEUNIT_AG_CALL_STATE_UPDATE, "usual.event.bluetooth.handsfreeunit.AG_CALL_STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_34 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3500
     * @tc.name      : TestCase_35
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_35(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_35 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_STATE_UPDATE, "usual.event.bluetooth.host.STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_35 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3600
     * @tc.name      : TestCase_36
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_36(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_DISCOVERABLE, "usual.event.bluetooth.host.REQ_DISCOVERABLE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_36 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3700
     * @tc.name      : TestCase_37
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_37(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_ENABLE, "usual.event.bluetooth.host.REQ_ENABLE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_37 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3800
     * @tc.name      : TestCase_38
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_38(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_REQ_DISABLE, "usual.event.bluetooth.host.REQ_DISABLE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_38 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_3900
     * @tc.name      : TestCase_39
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_39(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_SCAN_MODE_UPDATE, "usual.event.bluetooth.host.SCAN_MODE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_39 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4000
     * @tc.name      : TestCase_40
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_40(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_STARTED, "usual.event.bluetooth.host.DISCOVERY_STARTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_40 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4100
     * @tc.name      : TestCase_41
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_41(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_DISCOVERY_FINISHED, "usual.event.bluetooth.host.DISCOVERY_FINISHED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_41 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4200
     * @tc.name      : TestCase_42
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_42(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_HOST_NAME_UPDATE, "usual.event.bluetooth.host.NAME_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_42 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4300
     * @tc.name      : TestCase_43
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_43(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_CONNECT_STATE_UPDATE, "usual.event.bluetooth.a2dpsink.CONNECT_STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_43 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4400
     * @tc.name      : TestCase_44
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_44(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_PLAYING_STATE_UPDATE, "usual.event.bluetooth.a2dpsink.PLAYING_STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_44 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4500
     * @tc.name      : TestCase_45
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_45(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 begins.")
        @Expect(Support.COMMON_EVENT_BLUETOOTH_A2DPSINK_AUDIO_STATE_UPDATE, "usual.event.bluetooth.a2dpsink.AUDIO_STATE_UPDATE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_45 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4600
     * @tc.name      : TestCase_46
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_46(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 begins.")
        @Expect(Support.COMMON_EVENT_BUNDLE_REMOVED, "usual.event.BUNDLE_REMOVED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_46 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4700
     * @tc.name      : TestCase_47
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_47(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_47 begins.")
        @Expect(Support.COMMON_EVENT_BOOT_COMPLETED, "usual.event.BOOT_COMPLETED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_47 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4800
     * @tc.name      : TestCase_48
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_48(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_48 begins.")
        @Expect(Support.COMMON_EVENT_CONNECTIVITY_CHANGE, "usual.event.CONNECTIVITY_CHANGE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_48 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_4900
     * @tc.name      : TestCase_49
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_49(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_49 begins.")
        @Expect(Support.COMMON_EVENT_CALL_STATE_CHANGED, "usual.event.CALL_STATE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_49 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5000
     * @tc.name      : TestCase_50
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_50(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_50 begins.")
        @Expect(Support.COMMON_EVENT_CHARGE_IDLE_MODE_CHANGED, "usual.event.CHARGE_IDLE_MODE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_50 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5100
     * @tc.name      : TestCase_51
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_51(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_51 begins.")
        @Expect(Support.COMMON_EVENT_CHARGING, "usual.event.CHARGING")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_51 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5200
     * @tc.name      : TestCase_52
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_52(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_52 begins.")
        @Expect(Support.COMMON_EVENT_CONFIGURATION_CHANGED, "usual.event.CONFIGURATION_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_52 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5300
     * @tc.name      : TestCase_53
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_53(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_53 begins.")
        @Expect(Support.COMMON_EVENT_CLOSE_SYSTEM_DIALOGS, "usual.event.CLOSE_SYSTEM_DIALOGS")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_53 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5400
     * @tc.name      : TestCase_54
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_54(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_54 begins.")
        @Expect(Support.COMMON_EVENT_DISK_EJECT, "usual.event.data.DISK_EJECT")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_54 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5500
     * @tc.name      : TestCase_55
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_55(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_55 begins.")
        @Expect(Support.COMMON_EVENT_DISK_UNMOUNTABLE, "usual.event.data.DISK_UNMOUNTABLE")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_55 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5600
     * @tc.name      : TestCase_56
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_56(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_56 begins.")
        @Expect(Support.COMMON_EVENT_DISK_BAD_REMOVAL, "usual.event.data.DISK_BAD_REMOVAL")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_56 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5700
     * @tc.name      : TestCase_57
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_57(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_57 begins.")
        @Expect(Support.COMMON_EVENT_DISK_MOUNTED, "usual.event.data.DISK_MOUNTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_57 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5800
     * @tc.name      : TestCase_58
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_58(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_58 begins.")
        @Expect(Support.COMMON_EVENT_DISK_UNMOUNTED, "usual.event.data.DISK_UNMOUNTED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_58 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_5900
     * @tc.name      : TestCase_59
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_59(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_59 begins.")
        @Expect(Support.COMMON_EVENT_DISK_REMOVED, "usual.event.data.DISK_REMOVED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_59 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_CommonEventSubscribeInfo_Support_6000
     * @tc.name      : TestCase_60
     * @tc.desc      : This structure provides the management capabilities for system public events.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_60(): Unit {
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_60 begins.")
        @Expect(Support.COMMON_EVENT_DEVICE_IDLE_MODE_CHANGED, "usual.event.DEVICE_IDLE_MODE_CHANGED")
        Hilog.info(0u32, "cangjietest", "", "testcase TestCase_60 ends.")
    }
}
