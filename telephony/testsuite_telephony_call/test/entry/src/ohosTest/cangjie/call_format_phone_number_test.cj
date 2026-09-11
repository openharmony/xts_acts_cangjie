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

import std.unittest.testmacro.*
import ohos.telephony.call.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import std.math.*
import ohos.arkui.state_macro_manage.r

@Test
class TestCallFormatPhoneNumber {
    /*
     * @tc.number    : Sub_Cangjie_TelephoneCall_Test_call_formatPhoneNumber_0100
     * @tc.name      : test_call_format_phone_number_01
     * @tc.desc      : test TelephoneCall test_call_format_phone_number_01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_call_format_phone_number_01(): Unit {
        let result = Call.formatPhoneNumber("12345678910")
        @Expect(result,"12345678910")
    }

    /*
     * @tc.number    : Sub_Cangjie_TelephoneCall_Test_call_formatPhoneNumber_0200
     * @tc.name      : test_call_format_phone_number_02
     * @tc.desc      : test TelephoneCall test_call_format_phone_number_02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_call_format_phone_number_02(): Unit {
        let cases_1322 = [
            ("CN", "12345678910"),
            ("us", "1 234-567-8910")
        ]
        for ((parameter_0, parameter_1) in cases_1322) {
            let result = Call.formatPhoneNumber("12345678910", options: NumberFormatOptions(countryCode: parameter_0))
            @Expect(result,parameter_1)

        }
    }
}
