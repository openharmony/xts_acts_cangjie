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

internal import kit.PerformanceAnalysisKit.*
internal import kit.TelephonyKit.*
internal import ohos.base.*
internal import std.collection.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import ohos.ui_test.*
internal import ohos.business_exception.*
import kit.TestKit.*

@Test
class TestTelephonyCall {

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0100
     * @tc.name      : test_has_call
     * @tc.desc      : test TelephonyKit hasCall
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_call(): Unit {
        Call.hasCall()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0200
     * @tc.name      : test_get_call_state
     * @tc.desc      : test TelephonyKit getCallState
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_get_call_state(): Unit {
        Call.getCallState()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0300
     * @tc.name      : test_has_voice_capability
     * @tc.desc      : test TelephonyKit hasVoiceCapability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_has_voice_capability(): Unit {
        Call.hasVoiceCapability()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0400
     * @tc.name      : test_is_emergency_phone_number
     * @tc.desc      : test TelephonyKit isEmergencyPhoneNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_is_emergency_phone_number(): Unit {
        try {
            Call.isEmergencyPhoneNumber("1xxxxxxxxxx")
            Call.isEmergencyPhoneNumber("1xxxxxxxxxx", options: EmergencyNumberOptions(slotId: 1))
            Call.isEmergencyPhoneNumber("", options: EmergencyNumberOptions(slotId: 1))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0500
     * @tc.name      : test_format_phone_number
     * @tc.desc      : test TelephonyKit formatPhoneNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_format_phone_number(): Unit {
        Call.formatPhoneNumber("1xxxxxxxxxx", options: NumberFormatOptions(countryCode: "CN"))
        Call.formatPhoneNumberToE164("1xxxxxxxxxx", "CN")
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0700
     * @tc.name      : test_format_phone_number_error
     * @tc.desc      : test TelephonyKit formatPhoneNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_format_phone_number_error(): Unit {
        try {
            Call.formatPhoneNumberToE164("", "CN")
            Call.formatPhoneNumber("", options: NumberFormatOptions(countryCode: "CN"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0800
     * @tc.name      : test_make_call_func
     * @tc.desc      : test TelephonyKit makeCall
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_make_call_func(): Unit {
        Call.makeCall(getAbilityContext(), "")
        let driver:Driver=Driver.create()
        //校验是否拉取拨号页
        @Expect(driver.waitForComponent(On().text("联系人"),3000).getOrThrow().getText(),"联系人")
        let window=driver.findWindow(WindowFilter(active:true)).getOrThrow()
        window.minimize()
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0900
     * @tc.name      : test_emergency_number_options_get_value
     * @tc.desc      : test TelephonyKit EmergencyNumberOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_emergency_number_options_get_value(): Unit {
        try {
            Call.isEmergencyPhoneNumber("11111111111", options: EmergencyNumberOptions(slotId: 1))
            Call.isEmergencyPhoneNumber("22222222222", options: EmergencyNumberOptions(slotId: 2))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 8300001)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_1000
     * @tc.name      : test_call_state_get_value
     * @tc.desc      : test TelephonyKit test_call_state_get_value
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_call_state_get_value(): Unit {
        @Expect(((CallState.CallStateUnknown.toString()) == ("CallState.CallStateUnknown")) &&
            ((CallState.CallStateIdle.toString()) == ("CallState.CallStateIdle")) &&
            ((CallState.CallStateRinging.toString()) == ("CallState.CallStateRinging")) &&
            ((CallState.CallStateOffhook.toString()) == ("CallState.CallStateOffhook")) &&
            ((CallState.CallStateAnswered.toString()) == ("CallState.CallStateAnswered")))
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_1000
     * @tc.name      : test_call_state_equal_operator
     * @tc.desc      : test CallState enum equality and inequality operators for all values
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_call_state_equal_operator(): Unit {
        let callStates = [
            CallState.CallStateUnknown,
            CallState.CallStateIdle,
            CallState.CallStateRinging,
            CallState.CallStateOffhook,
            CallState.CallStateAnswered
        ]
        for (left in callStates) {
            @Expect((left == left) && !(left != left))
            for (right in callStates) {
                if (left == right) {
                    @Expect(!(left != right))
                } else {
                    @Expect((left != right) && !(left == right))
                }
            }
        }
    }
}
