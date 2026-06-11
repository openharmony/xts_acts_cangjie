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
import ohos.data.preferences.MAX_KEY_LENGTH
import ohos.data.preferences.MAX_VALUE_LENGTH
import kit.PerformanceAnalysisKit.Hilog

@Test
class TestPreferencesContext_1 {
    /*
     * @tc.number    : Sub_Cangjie_preferences_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : preferences context.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0, "cangjietest","testcase TestCase_1 begins.")
        @Expect(MAX_KEY_LENGTH, 1024u32)
        @Expect(MAX_VALUE_LENGTH, 16777216u32)
        Hilog.info(0, "cangjietest","testcase TestCase_1 ends.")
    }
}
