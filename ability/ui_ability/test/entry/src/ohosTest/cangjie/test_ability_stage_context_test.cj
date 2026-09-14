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

import ohos.arkui.state_macro_manage.r
import ohos.base.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import ohos.ui_test.*
import ohos.resource_manager.AppResource
internal import ohos.resource.__GenerateResource__
import kit.AbilityKit.AbilityStageContext
import std.time.*

@Test
class TestAbilityStageContext {

    private func waitForAbilityStageContext(timeoutSecs!: Int64 = 30): AbilityStageContext {
        var attempts = 0i64
        while (attempts < timeoutSecs) {
            try {
                return getAbilityStageContext()
            } catch (e: Exception) {
                attempts += 1
                sleepFor(1.second)
            }
        }
        return getAbilityStageContext()
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityStageContext_0100
     * @tc.name      : test00
     * @tc.desc      : test AbilityStage test00
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test00() {
        let abilityStageContext = waitForAbilityStageContext()
        let hapModuleInfo = abilityStageContext
            .currentHapModuleInfo
        @Expect(hapModuleInfo.name, "entry")
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityStageContext_0200
     * @tc.name      : test01
     * @tc.desc      : test AbilityStage test01
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test01() {
        let abilityStageContext = getAbilityStageContext()
        let hapModuleInfo = abilityStageContext
            .currentHapModuleInfo
        @Expect(hapModuleInfo.icon, "$media:layered_image")
        let resourceId = @r(app.media.layered_image).id
        @Expect(hapModuleInfo.iconId,  Int32 (resourceId))
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityStageContext_0300
     * @tc.name      : test02
     * @tc.desc      : test AbilityStage test02
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test02() {
        let abilityStageContext = getAbilityStageContext()
        let hapModuleInfo = abilityStageContext
            .currentHapModuleInfo
        @Expect(hapModuleInfo.label, "$string:EntryAbility_label")
        @Expect(hapModuleInfo.labelId, Int32 ( @r(app.string.EntryAbility_label).id))
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityStageContext_0400
     * @tc.name      : test03
     * @tc.desc      : test AbilityStage test03
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test03() {
        let abilityStageContext = getAbilityStageContext()
        let hapModuleInfo = abilityStageContext
            .currentHapModuleInfo
        @Expect(hapModuleInfo.description, "$string:module_desc")
        @Expect(hapModuleInfo.descriptionId, Int32 ( @r(app.string.module_desc).id))
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityStageContext_0500
     * @tc.name      : test04
     * @tc.desc      : test AbilityStage test04
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test04() {
        let abilityStageContext = getAbilityStageContext()
        let hapModuleInfo = abilityStageContext
            .currentHapModuleInfo
        @Expect(hapModuleInfo.mainElementName, "EntryAbility")
    }

    /*
     * @tc.number    : Sub_Cangjie_AbilityStage_TestAbilityStageContext_0600
     * @tc.name      : test05
     * @tc.desc      : test AbilityStage test05
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test05() {
        let abilityStageContext = getAbilityStageContext()
        let hapModuleInfo = abilityStageContext
            .currentHapModuleInfo
        @Expect(hapModuleInfo.hashValue, "")
    }
}
