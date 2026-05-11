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
class Test_telephony_call {

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0100
     * @tc.name      : test_hasCall
     * @tc.desc      : test TelephonyKit hasCall
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hasCall() {
        Call.hasCall()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0200
     * @tc.name      : test_getCallState
     * @tc.desc      : test TelephonyKit getCallState
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getCallState() {
        Call.getCallState()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0300
     * @tc.name      : test_hasVoiceCapability
     * @tc.desc      : test TelephonyKit hasVoiceCapability
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_hasVoiceCapability() {
        Call.hasVoiceCapability()
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0400
     * @tc.name      : test_isEmergencyPhoneNumber
     * @tc.desc      : test TelephonyKit isEmergencyPhoneNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_isEmergencyPhoneNumber() {
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
     * @tc.name      : test_formatPhoneNumber
     * @tc.desc      : test TelephonyKit formatPhoneNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_formatPhoneNumber() {
        Call.formatPhoneNumber("1xxxxxxxxxx", options: NumberFormatOptions(countryCode: "CN"))
        Call.formatPhoneNumberToE164("1xxxxxxxxxx", "CN")
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0700
     * @tc.name      : test_formatPhoneNumber_error
     * @tc.desc      : test TelephonyKit formatPhoneNumber
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_formatPhoneNumber_error() {
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
     * @tc.name      : test_makeCall_func
     * @tc.desc      : test TelephonyKit makeCall
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_makeCall_func() {
        Call.makeCall(getAbilityContext(), "")
        @Expect(true)
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephonyKit_Test_telephony_call_0900
     * @tc.name      : test_EmergencyNumberOptions_getValue
     * @tc.desc      : test TelephonyKit EmergencyNumberOptions
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_EmergencyNumberOptions_getValue() {
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
     * @tc.name      : test_CallState_getValue
     * @tc.desc      : test TelephonyKit test_CallState_getValue
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_CallState_getValue() {
        @Expect(CallState.CallStateUnknown.toString(), "CallState.CallStateUnknown")
        @Expect(CallState.CallStateIdle.toString(), "CallState.CallStateIdle")
        @Expect(CallState.CallStateRinging.toString(), "CallState.CallStateRinging")
        @Expect(CallState.CallStateOffhook.toString(), "CallState.CallStateOffhook")
        @Expect(CallState.CallStateAnswered.toString(), "CallState.CallStateAnswered")
    }
}
