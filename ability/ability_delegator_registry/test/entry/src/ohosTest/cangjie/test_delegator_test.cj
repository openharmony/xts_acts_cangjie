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
import std.convert.*
import kit.AbilityKit.*
import kit.TestKit.*
import std.runtime.gc
import ohos.app.ability.ability_delegator_registry.*
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.{Context, AreaMode, ApplicationInfo, AbilityStageContext, WantValueType}
import kit.AbilityKit.*
import kit.TestKit.{AbilityDelegator, AbilityDelegatorRegistry}
import ohos.business_exception.*
import ohos_app_cangjie_entry.Global
import std.time.*



@Test
class test_delegator {
    var sawCreate: Bool = false
    var sawDestroy: Bool = false
    var sawForeground: Bool = false
    var sawBackground: Bool = false

    private func waitForCurrentTopAbility(delegator: AbilityDelegator, timeoutSecs!: Int64 = 30): UIAbility {
        var attempts = 0i64
        while (attempts < timeoutSecs) {
            try {
                return delegator.getCurrentTopAbility()
            } catch (_: Exception) {
                attempts += 1
                sleepFor(1.second)
            }
        }
        return delegator.getCurrentTopAbility()
    }

    private func waitForAbilityState(delegator: AbilityDelegator, ability: UIAbility, expected: AbilityLifecycleState, timeoutSecs!: Int64 = 10) {
        var attempts = 0i64
        while (attempts < timeoutSecs) {
            sleepFor(1.second)
            try {
                if (delegator.getAbilityState(ability) == expected) {
                    return
                }
            } catch (_: Exception) {}
            attempts += 1
        }
        @Expect(delegator.getAbilityState(ability), expected)
    }

    override func afterAll(): Unit {
        gc(heavy: true)
    }
    /*
     * @tc.number    : Sub_AbilityDelegator_addAbilityMonitor_0100
     * @tc.name      : test_delegator_changeAbilityState
     * @tc.desc      : 添加AbilityMonitor实例成功
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_delegator_changeAbilityState() {
        let delegator:AbilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let monitor = AbilityMonitor(
            "EntryAbility",
            onAbilityForeground: {
                ability => delegator.print("call onAbilityForeground success!")
            }
        )
        delegator.addAbilityMonitor(monitor)
        let ability = waitForCurrentTopAbility(delegator)
        @Expect(ability.launchWant.abilityName, "EntryAbility")
        delegator.doAbilityBackground(ability)
        waitForAbilityState(delegator, ability, AbilityLifecycleState.Background)
        delegator.removeAbilityMonitor(monitor)
        delegator.doAbilityForeground(ability)
        waitForAbilityState(delegator, ability, AbilityLifecycleState.Foreground)
        let result = delegator.executeShellCommand("echo test", timeoutSecs: 1)
        @Expect(result.exitCode, 0)
    }
    /*
     * @tc.number    : Sub_AbilityDelegator_addAbilityStageMonitor_0100
     * @tc.name      : test_enum_AbilityLifecycleState
     * @tc.desc      : 通过 doAbilityBackground/doAbilityForeground 驱动后读取 getAbilityState 验证 AbilityLifecycleState 值
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_AbilityLifecycleState() {
        let delegator: AbilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let monitor = AbilityMonitor(
            "EntryAbility",
            onAbilityForeground: { ability => delegator.print("call onAbilityForeground success!") }
        )
        delegator.addAbilityMonitor(monitor)
        let ability = waitForCurrentTopAbility(delegator)
        delegator.doAbilityBackground(ability)
        waitForAbilityState(delegator, ability, AbilityLifecycleState.Background)
        @Expect(delegator.getAbilityState(ability), AbilityLifecycleState.Background)
        delegator.doAbilityForeground(ability)
        waitForAbilityState(delegator, ability, AbilityLifecycleState.Foreground)
        @Expect(delegator.getAbilityState(ability), AbilityLifecycleState.Foreground)
        delegator.removeAbilityMonitor(monitor)
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_AbilityLifecycleState_Extended_0300
     * @tc.name      : test_enum_AbilityLifecycleState_extended
     * @tc.desc      : Registers all lifecycle callbacks to capture Create/Destroy/Foreground/Background states via getAbilityState, references all documented members and calls delegator.print.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_AbilityLifecycleState_extended() {
        Hilog.info(0u32, "cangjietest", "testcase test_enum_AbilityLifecycleState_extended begins.")
        let delegator: AbilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator()
        sawCreate = false
        sawDestroy = false
        sawForeground = false
        sawBackground = false
        let monitor = AbilityMonitor(
            "EntryAbility",
            onAbilityCreate: { ability =>
                let st = delegator.getAbilityState(ability)
                delegator.print("onAbilityCreate state observed")
                match (st) {
                    case Create => sawCreate = true
                    case _ => ()
                }
            },
            onAbilityDestroy: { ability =>
                let st = delegator.getAbilityState(ability)
                delegator.print("onAbilityDestroy state observed")
                match (st) {
                    case Destroy => sawDestroy = true
                    case _ => ()
                }
            },
            onAbilityForeground: { ability =>
                let st = delegator.getAbilityState(ability)
                delegator.print("onAbilityForeground state observed")
                match (st) {
                    case Foreground => sawForeground = true
                    case _ => ()
                }
            },
            onAbilityBackground: { ability =>
                let st = delegator.getAbilityState(ability)
                delegator.print("onAbilityBackground state observed")
                match (st) {
                    case Background => sawBackground = true
                    case _ => ()
                }
            }
        )
        delegator.addAbilityMonitor(monitor)
        let ability = waitForCurrentTopAbility(delegator)
        let lastWant = ability.lastRequestWant
        Hilog.info(0u32, "cangjietest", "ability lastRequestWant abilityName=${lastWant.abilityName}")
        delegator.doAbilityBackground(ability)
        waitForAbilityState(delegator, ability, AbilityLifecycleState.Background)
        delegator.doAbilityForeground(ability)
        waitForAbilityState(delegator, ability, AbilityLifecycleState.Foreground)
        @Expect(sawForeground)
        @Expect(sawBackground)
        Hilog.info(0u32, "cangjietest",
            "lifecycle capture: Create=${sawCreate} Destroy=${sawDestroy} Foreground=${sawForeground} Background=${sawBackground}")
        let allStates: Array<AbilityLifecycleState> = [
            AbilityLifecycleState.Uninitialized,
            AbilityLifecycleState.Create,
            AbilityLifecycleState.Foreground,
            AbilityLifecycleState.Background,
            AbilityLifecycleState.Destroy
        ]
        for (s in allStates) {
            delegator.print("documented AbilityLifecycleState member: ${s}")
        }
        delegator.removeAbilityMonitor(monitor)
        Hilog.info(0u32, "cangjietest", "testcase test_enum_AbilityLifecycleState_extended ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_AbilityStageMonitor_0200
     * @tc.name      : test_abilityStageMonitor_lifecycle
     * @tc.desc      : Constructs an AbilityStageMonitor and registers then removes it from the delegator.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_abilityStageMonitor_lifecycle(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_abilityStageMonitor_lifecycle begins.")
        let monitor = AbilityStageMonitor("entry", "ohos_app_cangjie_entry.MyAbilityStage")
        @Expect(monitor.moduleName, "entry")
        @Expect(monitor.srcEntrance, "ohos_app_cangjie_entry.MyAbilityStage")
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        try {
            delegator.addAbilityStageMonitor(monitor)
            delegator.removeAbilityStageMonitor(monitor)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0u32, "cangjietest", "testcase test_aabilityStageMonitor_lifecycle: ${e.code}" + e.message)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_abilityStageMonitor_lifecycle ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_getArguments_0200
     * @tc.name      : test_getArguments
     * @tc.desc      : Obtains the registered AbilityDelegatorArgs for the active test process.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_getArguments(): Unit {
            Hilog.info(0u32, "cangjietest", "testcase test_getArguments begins.")
            let args: AbilityDelegatorArgs = AbilityDelegatorRegistry.getArguments()
            @Expect(args.bundleName, "com.example.ability_delegator_registry")
            Hilog.info(0u32, "cangjietest", "testcase test_getArguments ends.")
        }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_AbilityMonitor_fields_0500
     * @tc.name      : test_abilityMonitor_allCallbacks
     * @tc.desc      : Constructs an AbilityMonitor with every optional lifecycle callback to reference its fields.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_abilityMonitor_allCallbacks(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_abilityMonitor_allCallbacks begins.")
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let monitor = AbilityMonitor(
            "EntryAbility",
            moduleName: "entry",
            onAbilityCreate: { ability => delegator.print("onAbilityCreate") },
            onAbilityForeground: { ability => delegator.print("onAbilityForeground") },
            onAbilityBackground: { ability => delegator.print("onAbilityBackground") },
            onAbilityDestroy: { ability => delegator.print("onAbilityDestroy") },
            onWindowStageCreate: { ability => delegator.print("onWindowStageCreate") },
            onWindowStageRestore: { ability => delegator.print("onWindowStageRestore") },
            onWindowStageDestroy: { ability => delegator.print("onWindowStageDestroy") }
        )
        @Expect(monitor.abilityName, "EntryAbility")
        @Expect(monitor.moduleName, "entry")
        try {
            delegator.addAbilityMonitor(monitor)
            delegator.removeAbilityMonitor(monitor)
            @Expect(true)
        } catch (e: BusinessException) {
            @Expect(false)
            Hilog.error(0u32, "cangjietest", "testcase test_abilityMonitor_allCallbacks: ${e.code}" + e.message)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_abilityMonitor_allCallbacks ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_delegator_registry_waitMonitors_0400
     * @tc.name      : test_waitAbilityMonitors
     * @tc.desc      : Invokes waitAbilityMonitor and waitAbilityStageMonitor on registered monitors.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_waitAbilityMonitors(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase test_waitAbilityMonitors begins.")
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        let monitor = AbilityMonitor("EntryAbility", onAbilityForeground: {
            ability => delegator.print("coverage monitor foreground")
        })
        let stageMonitor = AbilityStageMonitor("entry", "com.ohos.example")
        try {
            delegator.addAbilityMonitor(monitor)
            let matched = delegator.waitAbilityMonitor(monitor, timeout: 1000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16000100i32)
        } finally {
            delegator.removeAbilityMonitor(monitor)
        }
        try {
            delegator.addAbilityStageMonitor(stageMonitor)
            let matchedStage = delegator.waitAbilityStageMonitor(stageMonitor, timeout: 1000)
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16000100i32)
        } finally {
            delegator.removeAbilityStageMonitor(stageMonitor)
        }
        Hilog.info(0u32, "cangjietest", "testcase test_waitAbilityMonitors ends.")
    }

}
