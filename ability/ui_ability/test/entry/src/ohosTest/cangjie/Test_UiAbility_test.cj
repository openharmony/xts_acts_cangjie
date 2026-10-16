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

import ohos.business_exception.*
import std.sync.AtomicInt64
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import std.time.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import kit.TestKit.{AbilityDelegatorRegistry, AbilityMonitor}
import ohos_app_cangjie_entry.Global
import ohos_app_cangjie_entry.Global
import ohos_app_cangjie_entry.secondAbilityNewWantCount
import ohos_app_cangjie_entry.secondAbilityCreateCount
import ohos_app_cangjie_entry.secondAbilityWindowStageCreateCount
import ohos_app_cangjie_entry.secondAbilityWindowStageDestroyCount
import ohos_app_cangjie_entry.secondAbilityDestroyCount

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

    /*
     * @tc.number    : Sub_Cangjie_UIAbility_SecondAbility_0100
     * @tc.name      : test_secondAbilityLaunch
     * @tc.desc      : Starts the registered second UIAbility, observes it through AbilityMonitor, checks its Want, and terminates it.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_secondAbilityLaunch(): Unit {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let destroyed = AtomicInt64(0)
        let monitor = AbilityMonitor("SecondAbility", moduleName: "entry",
            onAbilityDestroy: { ability => destroyed.store(1) })
        try {
            delegator.addAbilityMonitor(monitor)
            delegator.startAbility(Want(bundleName: "com.example.ui_ability",
                abilityName: "SecondAbility", moduleName: "entry"))
            let ability = delegator.waitAbilityMonitor(monitor, timeout: 10000)
            @Expect(ability.launchWant.abilityName, "SecondAbility")
            @Expect(ability.launchWant.bundleName, "com.example.ui_ability")
            ability.context.terminateSelf()
            var attempts = 0i64
            while (destroyed.load() == 0i64 && attempts < 50i64) {
                sleep(Duration.millisecond * 100)
                attempts += 1
            }
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            delegator.removeAbilityMonitor(monitor)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UIAbility_SecondAbility_Lifecycle_0200
     * @tc.name      : test_secondAbilityLifecycle
     * @tc.desc      : Uses a real second Ability to observe create, window-stage-create, and destroy callbacks.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_secondAbilityLifecycle(): Unit {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        secondAbilityCreateCount = 0
        secondAbilityWindowStageCreateCount = 0
        secondAbilityWindowStageDestroyCount = 0
        secondAbilityDestroyCount = 0
        let created = AtomicInt64(0)
        let stageCreated = AtomicInt64(0)
        let stageDestroyed = AtomicInt64(0)
        let destroyed = AtomicInt64(0)
        let monitor = AbilityMonitor("SecondAbility", moduleName: "entry",
            onAbilityCreate: { ability => created.store(1) },
            onWindowStageCreate: { ability => stageCreated.store(1) },
            onWindowStageDestroy: { ability => stageDestroyed.store(1) },
            onAbilityDestroy: { ability => destroyed.store(1) })
        try {
            delegator.addAbilityMonitor(monitor)
            delegator.startAbility(Want(bundleName: "com.example.ui_ability",
                abilityName: "SecondAbility", moduleName: "entry", uri: "lifecycle"))
            let ability = delegator.waitAbilityMonitor(monitor, timeout: 10000)
            @Expect(ability.launchWant.abilityName, "SecondAbility")
            var attempts = 0i64
            while ((created.load() == 0i64 || stageCreated.load() == 0i64) && attempts < 50i64) {
                sleep(Duration.millisecond * 100)
                attempts += 1
            }
            @Expect(created.load(), 1i64)
            @Expect(stageCreated.load(), 1i64)
            ability.context.terminateSelf()
            attempts = 0
            while (destroyed.load() == 0i64 && attempts < 50) {
                sleep(Duration.millisecond * 100)
                attempts += 1
            }
            @Expect(stageDestroyed.load(), 1i64)
            @Expect(destroyed.load(), 1i64)
            @Expect(secondAbilityCreateCount > 0, true)
            @Expect(secondAbilityWindowStageCreateCount > 0, true)
            @Expect(secondAbilityWindowStageDestroyCount > 0, true)
            @Expect(secondAbilityDestroyCount > 0, true)
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            delegator.removeAbilityMonitor(monitor)
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_UIAbility_SecondAbility_Result_0300
     * @tc.name      : test_secondAbilityResult
     * @tc.desc      : Starts the second Ability for result and verifies terminateSelfWithResult returns resultCode 42.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_secondAbilityResult(): Unit {
        let ctx = waitAbilityContext()
        @Expect(waitSecondAbilityResult(ctx, 3i64), true)
    }

    private func waitSecondAbilityResult(ctx: UIAbilityContext, maxAttempts: Int64): Bool {
        let resultCode = AtomicInt64(-1)
        let received = AtomicInt64(0)
        var attempts = 0i64
        while (attempts < maxAttempts) {
            resultCode.store(-1)
            received.store(0)
            var launched = false
            try {
                ctx.startAbilityForResult(Want(bundleName: "com.example.ui_ability",
                    abilityName: "SecondAbility", moduleName: "entry", uri: "result")) { error, result =>
                    if (error.isNone() && result.isSome()) {
                        resultCode.store(Int64(result.getOrThrow().resultCode))
                    }
                    received.store(1)
                }
                launched = true
            } catch (e: BusinessException) {
                Hilog.error(0u32, "cangjietest", "testcase test_secondAbilityResult attempt code=${e.code}")
                sleep(Duration.second)
            }
            if (launched) {
                var waited = 0i64
                while (received.load() == 0i64 && waited < 50i64) {
                    sleep(Duration.millisecond * 100)
                    waited += 1
                }
            }
            if (received.load() == 1i64 && resultCode.load() == 42i64) {
                return true
            }
            attempts += 1
        }
        false
    }
    /*
     * @tc.number    : Sub_Cangjie_UIAbility_SecondAbility_NewWant_0400
     * @tc.name      : test_secondAbilityNewWant
     * @tc.desc      : Starts the singleton second Ability twice and waits for its onNewWant callback to update the counter.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_secondAbilityNewWant(): Unit {
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        secondAbilityNewWantCount = 0
        let destroyed = AtomicInt64(0)
        let monitor = AbilityMonitor("SecondAbility", moduleName: "entry",
            onAbilityDestroy: { ability => destroyed.store(1) })
        try {
            delegator.addAbilityMonitor(monitor)
            delegator.startAbility(Want(bundleName: "com.example.ui_ability",
                abilityName: "SecondAbility", moduleName: "entry", uri: "initial"))
            let ability = delegator.waitAbilityMonitor(monitor, timeout: 10000)
            @Expect(ability.launchWant.abilityName, "SecondAbility")
            delegator.startAbility(Want(bundleName: "com.example.ui_ability",
                abilityName: "SecondAbility", moduleName: "entry", uri: "second-launch"))
            var attempts = 0i64
            while (secondAbilityNewWantCount == 0 && attempts < 50i64) {
                sleep(Duration.millisecond * 100)
                attempts += 1
            }
            @Expect(secondAbilityNewWantCount > 0, true)
            ability.context.terminateSelf()
            attempts = 0
            while (destroyed.load() == 0i64 && attempts < 50i64) {
                sleep(Duration.millisecond * 100)
                attempts += 1
            }
        } catch (e: BusinessException) {
            @Expect(false)
        } finally {
            delegator.removeAbilityMonitor(monitor)
        }
    }

}
