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



@Test
class test_delegator {
    override func afterAll(): Unit {
        gc(heavy: true)
        sleepFor(Duration.second)
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
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        sleepFor(1.second)
        let monitor = AbilityMonitor(
            "EntryAbility",
            onAbilityForeground: {
                ability => delegator.print("call onAbilityForeground success!")
            }
        )
        delegator.addAbilityMonitor(monitor)
        let ability = delegator.getCurrentTopAbility()
        @Expect(ability.launchWant.abilityName, "EntryAbility")
        delegator.doAbilityBackground(ability)
        sleepFor(1.second)
        var state = delegator.getAbilityState(ability)
        delegator.removeAbilityMonitor(monitor)
        @Expect(state, AbilityLifecycleState.Background)
        delegator.doAbilityForeground(ability)
        sleepFor(1.second)
        state = delegator.getAbilityState(ability)
        @Expect(state, AbilityLifecycleState.Foreground)
        let result = delegator.executeShellCommand("ls", timeoutSecs: 1)
        delegator.print(result.stdResult)
        sleepFor(1.second)
    }
    /*
     * @tc.number    : Sub_AbilityDelegator_addAbilityStageMonitor_0100
     * @tc.name      : test_enum_AbilityLifecycleState
     * @tc.desc      : 添加AbilityStageMonitor实例成功
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func test_enum_AbilityLifecycleState() {
        let enumArray: Array<AbilityLifecycleState> = [
            AbilityLifecycleState.Uninitialized,
            AbilityLifecycleState.Create,
            AbilityLifecycleState.Foreground,
            AbilityLifecycleState.Background,
            AbilityLifecycleState.Destroy]
        let strArray: Array<String> = [
            "AbilityLifecycleState.Uninitialized",
            "AbilityLifecycleState.Create",
            "AbilityLifecycleState.Foreground",
            "AbilityLifecycleState.Background",
            "AbilityLifecycleState.Destroy"]
        for (i in 0..enumArray.size) {
            @Expect(enumArray[i].toString() == strArray[i])
            @Expect (enumArray[i] == enumArray[i])
            @Expect(enumArray[i] != enumArray[(i + 1) % enumArray.size])
        }
    }

}
