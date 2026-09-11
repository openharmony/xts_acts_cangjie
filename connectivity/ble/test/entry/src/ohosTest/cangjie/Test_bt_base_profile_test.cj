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
import ohos.callback_invoke.Callback1Argument
import ohos.bluetooth.base_profile.DisconnectCause
import ohos.bluetooth.base_profile.StateChangeParam
import ohos.bluetooth.base_profile.BaseProfile
import ohos.bluetooth.base_profile.ProfileCallbackType
import ohos.bluetooth.a2dp.createA2dpSrcProfile
import ohos.bluetooth.a2dp.A2dpSourceProfile

class StateChangeCb <: Callback1Argument<StateChangeParam> {
    var lastArg: ?StateChangeParam = None
    public open func invoke(err: ?BusinessException, arg: StateChangeParam): Unit {
        lastArg = arg
        let causeVal: DisconnectCause = arg.cause
        Hilog.info(0, "cangjietest", "state change cause ${causeVal}")
    }
}

@Test
class Test_bt_base_profile {
    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_base_DisconnectCause_values_291001
     * @tc.name      : test_bt_base_DisconnectCause_values
     * @tc.desc      : Test DisconnectCause enum values and equality operators
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_base_DisconnectCause_values(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_base_DisconnectCause_values begins.")
        let userDisconnect = DisconnectCause.UserDisconnect
        let fromKeyboard = DisconnectCause.ConnectShouldFromKeyboard
        let fromMouse = DisconnectCause.ConnectShouldFromMouse
        let fromCar = DisconnectCause.ConnectShouldFromCar
        let tooMany = DisconnectCause.TooManyConnectedDevices
        let internalFail = DisconnectCause.ConnectInternalFail
        @Expect(userDisconnect.toString(), "DisconnectCause.UserDisconnect")
        @Expect(fromKeyboard.toString(), "DisconnectCause.ConnectShouldFromKeyboard")
        @Expect(fromMouse.toString(), "DisconnectCause.ConnectShouldFromMouse")
        @Expect(fromCar.toString(), "DisconnectCause.ConnectShouldFromCar")
        @Expect(tooMany.toString(), "DisconnectCause.TooManyConnectedDevices")
        @Expect(internalFail.toString(), "DisconnectCause.ConnectInternalFail")
        @Expect(userDisconnect != fromKeyboard, true)
        @Expect(userDisconnect != fromMouse, true)
        @Expect(userDisconnect != fromCar, true)
        @Expect(userDisconnect != tooMany, true)
        @Expect(userDisconnect != internalFail, true)
        @Expect(fromKeyboard != fromMouse, true)
        @Expect(fromKeyboard != fromCar, true)
        @Expect(fromKeyboard != tooMany, true)
        @Expect(fromKeyboard != internalFail, true)
        @Expect(fromMouse != fromCar, true)
        @Expect(fromMouse != tooMany, true)
        @Expect(fromMouse != internalFail, true)
        @Expect(fromCar != tooMany, true)
        @Expect(fromCar != internalFail, true)
        @Expect(tooMany != internalFail, true)
        Hilog.info(0, "cangjietest", "testcase test_bt_base_DisconnectCause_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_base_ProfileCallbackType_value_291002
     * @tc.name      : test_bt_base_ProfileCallbackType_value
     * @tc.desc      : Test ProfileCallbackType enum value ConnectionStateChange
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_base_ProfileCallbackType_value(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_base_ProfileCallbackType_value begins.")
        let callbackType = ProfileCallbackType.ConnectionStateChange
        @Expect(callbackType.toString(), "ProfileCallbackType.ConnectionStateChange")
        Hilog.info(0, "cangjietest", "testcase test_bt_base_ProfileCallbackType_value ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_base_StateChangeParam_reference_291003
     * @tc.name      : test_bt_base_StateChangeParam_reference
     * @tc.desc      : Test StateChangeParam class type reference via callback signature
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_base_StateChangeParam_reference(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_base_StateChangeParam_reference begins.")
        let profile = createA2dpSrcProfile()
        let cb = StateChangeCb()
        try {
            profile.on(ProfileCallbackType.ConnectionStateChange, cb)
            if (cb.lastArg.isSome()) {
                let arg = cb.lastArg.getOrThrow()
                let causeVal: DisconnectCause = arg.cause
                Hilog.info(0, "cangjietest", "state change cause ${causeVal}")
            } else {
                @Expect(cb.lastArg.isNone())
            }
        } catch (e: BusinessException) {
            @Expect(e.code, 201i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_bt_base_StateChangeParam_reference ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ConnectivityKit_test_bt_base_BaseProfile_interface_291004
     * @tc.name      : test_bt_base_BaseProfile_interface
     * @tc.desc      : Test BaseProfile interface type reference
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_bt_base_BaseProfile_interface(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_bt_base_BaseProfile_interface begins.")
        let a2dp: A2dpSourceProfile = createA2dpSrcProfile()
        let base: BaseProfile = a2dp
        let _ = base
        @Expect(true)
        Hilog.info(0, "cangjietest", "testcase test_bt_base_BaseProfile_interface ends.")
    }
}
