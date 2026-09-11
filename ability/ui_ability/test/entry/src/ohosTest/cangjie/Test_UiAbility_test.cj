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
import std.time.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos_app_cangjie_entry.Global

class LifecycleTrackingAbility <: UIAbility {
    var foregroundCount = 0
    var backgroundCount = 0

    public override func onForeground(): Unit {
        foregroundCount += 1
    }

    public override func onBackground(): Unit {
        backgroundCount += 1
    }
}

@Test
class Test_UiAbility {
    private func waitAbilityContext(): UIAbilityContext {
        let maxAttempts = 30i64
        var attempts = 0i64
        while (attempts < maxAttempts) {
            try {
                let ctx = Global.abilityContext
                return ctx
            } catch (e: Exception) {
                attempts += 1
                sleep(Duration.second)
            }
        }
        throw Exception("Global.abilityContext not initialized after waiting")
    }
    
    /*
     * @tc.number    : Sub_Cangjie_UIAbilityContext_props_0100
     * @tc.name      : Test_context_props
     * @tc.desc      : Reads Context props (stageModel, area, resourceManager) and UIAbilityContext isTerminating.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_context_props(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_context_props begins.")
        let ctx: UIAbilityContext = waitAbilityContext()
        @Expect(ctx.stageModel, true)
        let originalArea = ctx.area
        ctx.area = El2
        @Expect(ctx.area, El2)
        ctx.area = originalArea
        @Expect(ctx.area, originalArea)
        let rm = ctx.resourceManager
        let config = rm.getConfiguration()
        let isTerminating = ctx.isTerminating()
        @Expect(isTerminating, false)
        @Expect(El2 == El2)
        @Expect(El2 != El1)
        Hilog.info(0u32, "cangjietest", "testcase Test_context_props ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_UIAbility_lifecycle_0200
     * @tc.name      : Test_ability_lifecycle_noArg
     * @tc.desc      : Invokes UIAbility callbacks that do not require framework-created parameters.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_ability_lifecycle_noArg(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_ability_lifecycle_noArg begins.")
        let ability = LifecycleTrackingAbility()
        @Expect(ability.foregroundCount, 0)
        @Expect(ability.backgroundCount, 0)
        ability.onForeground()
        @Expect(ability.foregroundCount, 1)
        @Expect(ability.backgroundCount, 0)
        ability.onBackground()
        @Expect(ability.foregroundCount, 1)
        @Expect(ability.backgroundCount, 1)
        Hilog.info(0u32, "cangjietest", "testcase Test_ability_lifecycle_noArg ends.")
    }
}