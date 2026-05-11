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
import ohos.data.preferences.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.BusinessException
import ohos_app_cangjie_entry.Global

@Test
class TestDeletePreferencesByNameFailDueToInvalidName_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_deletePreferences_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : fail to delete preferences by name "" due to invalid name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest","fail to delete preferences.")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "")
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences deletePreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_deletePreferences_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : fail to delete preferences by name "\0" due to invalid name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","fail to delete preferences.")
        try {
            Preferences.deletePreferences(Global.getAbilityContext(), "\0")
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences deletePreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_deletePreferences_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : fail to delete preferences by name "x" due to invalid name.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest","delete preferences successfully.")
        try{
            Preferences.deletePreferences(Global.getAbilityContext(), "x" * 10000)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences deletePreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }
}
