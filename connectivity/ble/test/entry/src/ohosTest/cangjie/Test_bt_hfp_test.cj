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
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException
import ohos.bluetooth.hfp.createHfpAgProfile
import ohos.bluetooth.hfp.HandsFreeAudioGatewayProfile
import ohos.bluetooth.base_profile.ProfileCallbackType
import ohos.bluetooth.base_profile.StateChangeParam
import ohos.bluetooth.constant.ProfileConnectionState
import ohos.callback_invoke.Callback1Argument
import ohos.callback_invoke.CallbackObject

class HfpStateChangeCb <: Callback1Argument<StateChangeParam> {
    public func invoke(err: ?BusinessException, arg: StateChangeParam): Unit {}
}

class EmptyCallbackObj <: CallbackObject {}

@Test
class Test_bt_hfp {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_hfp_createHfpAgProfile_293001
     * @tc.name      : test_bt_hfp_createHfpAgProfile
     * @tc.desc      : Test createHfpAgProfile factory function returns a profile instance
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_hfp_createHfpAgProfile(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_createHfpAgProfile begins.")
        let profile: HandsFreeAudioGatewayProfile = createHfpAgProfile()
        try {
            let devices: Array<String> = profile.getConnectedDevices()
            @Expect(devices.size == 0)
        } catch (e: BusinessException) {
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_createHfpAgProfile ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_hfp_getConnectedDevices_293002
     * @tc.name      : test_bt_hfp_getConnectedDevices
     * @tc.desc      : Test getConnectedDevices throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_hfp_getConnectedDevices(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_getConnectedDevices begins.")
        let profile = createHfpAgProfile()
        try {
            let _: Array<String> = profile.getConnectedDevices()
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_getConnectedDevices ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_hfp_getConnectionState_293003
     * @tc.name      : test_bt_hfp_getConnectionState
     * @tc.desc      : Test getConnectionState throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_hfp_getConnectionState(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_getConnectionState begins.")
        let profile = createHfpAgProfile()
        try {
            let _: ProfileConnectionState = profile.getConnectionState("00:11:22:33:AA:BB:FF")
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 2900099i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_getConnectionState ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_hfp_on_293004
     * @tc.name      : test_bt_hfp_on
     * @tc.desc      : Test on(eventType, callback) throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_hfp_on(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_on begins.")
        let profile = createHfpAgProfile()
        let cb = HfpStateChangeCb()
        try {
            profile.on(ProfileCallbackType.ConnectionStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_on ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_hfp_off_with_callback_293005
     * @tc.name      : test_bt_hfp_off_with_callback
     * @tc.desc      : Test off(eventType, callback) throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_hfp_off_with_callback(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_off_with_callback begins.")
        let profile = createHfpAgProfile()
        let cb = EmptyCallbackObj()
        try {
            profile.off(ProfileCallbackType.ConnectionStateChange, cb)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_off_with_callback ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_hfp_off_no_callback_293006
     * @tc.name      : test_bt_hfp_off_no_callback
     * @tc.desc      : Test off(eventType) throws 201 without ACCESS_BLUETOOTH permission
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_hfp_off_no_callback(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_off_no_callback begins.")
        let profile = createHfpAgProfile()
        try {
            profile.off(ProfileCallbackType.ConnectionStateChange)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_hfp_off_no_callback ends.")
    }
}
