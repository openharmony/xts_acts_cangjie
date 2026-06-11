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
import ohos.business_exception.BusinessException
import ohos_app_cangjie_entry.Global

@Test
class TestGetPreferencesByOptionsNameAndGroupId_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_0700
     * @tc.name      : TestCase_1
     * @tc.desc      : get preferences by name "" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        Hilog.info(0, "cangjietest","fail to get preferences.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("", dataGroupId:""))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_0800
     * @tc.name      : TestCase_2
     * @tc.desc      : get preferences by name "" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_2 begins.")
        Hilog.info(0, "cangjietest","fail to get preferences.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("", dataGroupId:"\0"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_0900
     * @tc.name      : TestCase_3
     * @tc.desc      : get preferences by name "" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_3 begins.")
        Hilog.info(0, "cangjietest","fail to get preferences.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("", dataGroupId:"" * 10000))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_1000
     * @tc.name      : TestCase_4
     * @tc.desc      : get preferences by name "\0" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_4 begins.")
        Hilog.info(0, "cangjietest","fail to get preferences.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("\0", dataGroupId:""))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_1100
     * @tc.name      : TestCase_5
     * @tc.desc      : get preferences by name "\0" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_5 begins.")
        Hilog.info(0, "cangjietest","fail to get preferences.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("\0", dataGroupId:"\0"))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_5 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_1200
     * @tc.name      : TestCase_6
     * @tc.desc      : get preferences by name "\0" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_6(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_6 begins.")
        Hilog.info(0, "cangjietest","fail to get preferences.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("\0", dataGroupId:"" * 10000))
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_6 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_1300
     * @tc.name      : TestCase_7
     * @tc.desc      : get preferences by name "x" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_7(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_7 begins.")
        Hilog.info(0, "cangjietest","get preferences successfully.")
        try {
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("x" * 10000, dataGroupId:""))
            Hilog.info(0, "cangjietest","delete it.")
            Preferences.deletePreferences(Global.getAbilityContext(), "x" * 10000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_7 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_1400
     * @tc.name      : TestCase_8
     * @tc.desc      : get preferences by name "x" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_8(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_8 begins.")
        Hilog.info(0, "cangjietest","get preferences successfully.")
        try{
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("x" * 10000, dataGroupId:"\0"))
            Hilog.info(0, "cangjietest","delete it.")
            Preferences.deletePreferences(Global.getAbilityContext(), "x" * 10000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_8 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_preferences_getPreferences_1500
     * @tc.name      : TestCase_9
     * @tc.desc      : get preferences by name "x" with options and group id.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_9(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_9 begins.")
        Hilog.info(0, "cangjietest","get preferences successfully.")
        try{
            Preferences.getPreferences(Global.getAbilityContext(), PreferencesOptions("x" * 10000, dataGroupId:"" * 10000))
            Hilog.info(0, "cangjietest","delete it.")
            Preferences.deletePreferences(Global.getAbilityContext(), "x" * 10000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.message, "Preferences getPreferences failed: Inner error.")
            @Expect(e.code, 15500000i32)
        }
        Hilog.info(0, "cangjietest","testcase TestCase_9 ends.")
    }
}
