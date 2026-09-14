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
import kit.ArkData.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.business_exception.{BusinessException}
import ohos.callback_invoke.Callback1Argument

@Test
class test_Preferences_ErrorCodes {
    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_15501002
     * @tc.name      : test_getPreferences_15501002
     * @tc.desc      : getPreferences 传入非法 dataGroupId，触发 15501002
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getPreferences_15501002(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_getPreferences_15501002 begins.")
        try {
            let options = PreferencesOptions("test_invalid_groupid", dataGroupId: "invalid_data_group_id_12345")
            Preferences.getPreferences(getAbilityContext(), options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15501002i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_getPreferences_15501002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_deletePreferences_15501002
     * @tc.name      : test_deletePreferences_15501002
     * @tc.desc      : deletePreferences 传入非法 dataGroupId，触发 15501002
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_deletePreferences_15501002(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_deletePreferences_15501002 begins.")
        try {
            let options = PreferencesOptions("test_invalid_groupid_del", dataGroupId: "invalid_data_group_id_12345")
            Preferences.deletePreferences(getAbilityContext(), options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15501002i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_deletePreferences_15501002 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_removePreferencesFromCache_15501002
     * @tc.name      : test_removePreferencesFromCache_15501002
     * @tc.desc      : removePreferencesFromCache 传入非法 dataGroupId，触发 15501002
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_removePreferencesFromCache_15501002(): Unit {
        Hilog.info(0, "cangjietest", "testcase test_removePreferencesFromCache_15501002 begins.")
        try {
            let options = PreferencesOptions("test_invalid_groupid_rm", dataGroupId: "invalid_data_group_id_12345")
            Preferences.removePreferencesFromCache(getAbilityContext(), options)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 15501002i32)
        }
        Hilog.info(0, "cangjietest", "testcase test_removePreferencesFromCache_15501002 ends.")
    }
}
