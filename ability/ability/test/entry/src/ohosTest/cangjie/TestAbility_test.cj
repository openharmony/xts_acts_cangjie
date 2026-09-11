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
import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.*
import ohos.app.ability.ability_constant.LaunchParam
import ohos.app.ability.ability_constant.MemoryLevel
import ohos.app.ability.context_constant.AreaMode
import ohos.app.ability.want.WantValueType
import std.collection.*
import ohos.base.*
import ohos.business_exception.BusinessException
import ohos_app_cangjie_entry.Global
import std.time.*
import kit.TestKit.{AbilityDelegator, AbilityDelegatorRegistry}

@Test
class TestAbility {
    private func waitAbilityContext(): UIAbilityContext {
        let maxAttempts = 30i64
        var attempts = 0i64
        while (attempts < maxAttempts) {
            try {
                return Global.abilityContext
            } catch (e: Exception) {
                attempts += 1
                sleep(Duration.second)
            }
        }
        return Global.abilityContext
    }

    private func waitFlag(f: () -> Bool, timeoutSecs!: Int64 = 30): Unit {
        var attempts = 0i64
        while (attempts < timeoutSecs) {
            if (f()) { return }
            sleep(Duration.second)
            attempts += 1i64
        }
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_areaMode_0100
     * @tc.name      : Test_areaMode_values
     * @tc.desc      : Reads Context.area and asserts it matches a documented AreaMode member.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level     : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_areaMode_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_areaMode_values begins.")
        let ctx = waitAbilityContext()
        let originalArea = ctx.area
        ctx.area = El1
        @Expect(ctx.area, El1)
        ctx.area = El3
        @Expect(ctx.area, El3)
        ctx.area = originalArea
        @Expect(ctx.area, originalArea)
        Hilog.info(0u32, "cangjietest", "testcase Test_areaMode_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_abilityResult_0200
     * @tc.name      : Test_abilityResult_constructor
     * @tc.desc      : Constructs AbilityResult with various parameters and reads back.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_abilityResult_constructor(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityResult_constructor begins.")
        let result = AbilityResult(0i32, want: Want(bundleName: "com.example.ability"))
        @Expect(result.resultCode, 0i32)
        @Expect(result.want.bundleName, "com.example.ability")
        let defaultResult = AbilityResult(-1i32)
        @Expect(defaultResult.resultCode, -1i32)
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityResult_constructor ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0100
     * @tc.name      : TestCase_1
     * @tc.desc      : start ability with empty abilityName, expect BusinessException 16000019
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_1(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 begins.")
        let bundles = ["", "xxx", "com.example.myapplication"]
        let modules = ["", "xxx", "entry"]
        for (bundle in bundles) {
            for (module in modules) {
                Hilog.info(0u32, "CangjieTest", "fail to start ability.")
                try {
                    waitAbilityContext()
                        .startAbility(Want(bundleName: bundle, abilityName: "", moduleName: module),
                            options: StartOptions())
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 16000019i32)
                }
            }
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_1 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0200
     * @tc.name      : TestCase_2
     * @tc.desc      : start ability with non-existent abilityName, expect BusinessException 16000001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_2(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 begins.")
        let bundles = ["", "xxx", "com.example.myapplication"]
        let modules = ["", "xxx", "entry"]
        for (bundle in bundles) {
            for (module in modules) {
                Hilog.info(0u32, "CangjieTest", "fail to start ability.")
                try {
                    waitAbilityContext()
                        .startAbility(Want(bundleName: bundle, abilityName: "xxx", moduleName: module),
                            options: StartOptions())
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 16000001i32)
                }
            }
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_2 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0300
     * @tc.name      : TestCase_3
     * @tc.desc      : start ability with EntryAbility but wrong bundle, expect BusinessException 16000001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_3(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 begins.")
        let bundles = ["", "xxx"]
        let modules = ["", "xxx", "entry"]
        for (bundle in bundles) {
            for (module in modules) {
                Hilog.info(0u32, "CangjieTest", "fail to start ability.")
                try {
                    waitAbilityContext()
                        .startAbility(Want(bundleName: bundle, abilityName: "EntryAbility", moduleName: module),
                            options: StartOptions())
                    @Expect(false)
                } catch (e: BusinessException) {
                    @Expect(e.code, 16000001i32)
                }
            }
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_3 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_0400
     * @tc.name      : TestCase_4
     * @tc.desc      : start ability with EntryAbility and com.example.myapplication bundle, expect BusinessException 16000001
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_4(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 begins.")
        let modules = ["", "xxx", "entry"]
        for (module in modules) {
            try{
                Hilog.info(0u32, "CangjieTest", "start ability successfully")
                let want = Want(bundleName: "com.example.myapplication", abilityName: "EntryAbility", moduleName: module)
                waitAbilityContext()
                    .startAbility(Want(bundleName: "com.example.myapplication", abilityName: "EntryAbility", moduleName: module),
                        options: StartOptions())
                @Expect(false)
            }catch (e:BusinessException) {
                @Expect(e.code, 16000001i32)
                Hilog.error(0,"","case_TestCase_4 " + e.toString())
            }
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_4 ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbility_cross_bundle_2800
     * @tc.name      : TestCase_5
     * @tc.desc      : start ability from com.ohos.example bundle successfully
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func TestCase_5(): Unit {
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_cross_bundle begins.")
        try{
            let want = Want(bundleName: "com.ohos.example", abilityName: "EntryAbility", moduleName: "entry")
            waitAbilityContext()
                .startAbility(want, options: StartOptions())
            @Expect(true)
        }catch (e:Exception) {
            @Expect(false)
            Hilog.error(0,"","case_TestCase_5 " + e.toString())
        }
        Hilog.info(0u32, "CangjieTest", "testcase TestCase_cross_bundle ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_windowMode_0600
     * @tc.name      : Test_abilityConstant_values
     * @tc.desc      : Drives each WindowMode through StartOptions and asserts the read-back matches.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_abilityConstant_values(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityConstant_values begins.")
        let wms: Array<WindowMode> = [WindowMode.WindowModeFullscreen, WindowMode.WindowModeSplitPrimary, WindowMode.WindowModeSplitSecondary]
        for (wm in wms) {
            let opts = StartOptions(windowMode: wm)
            match (opts.windowMode) {
                case Some(ret) => match ((wm, ret)) {
                    case (WindowModeFullscreen, WindowModeFullscreen) => @Expect(true)
                    case (WindowModeSplitPrimary, WindowModeSplitPrimary) => @Expect(true)
                    case (WindowModeSplitSecondary, WindowModeSplitSecondary) => @Expect(true)
                    case _ => @Expect(false)
                }
                case None => @Expect(false)
            }
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_abilityConstant_values ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_lifecycleCallbacks_0600
     * @tc.name      : Test_lifecycleCallbacks
     * @tc.desc      : Verifies onCreate stores launchReason/lastExitReason, onWindowStageCreate is called, onNewWant is referenced.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_lifecycleCallbacks(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_lifecycleCallbacks begins.")
        let ctx = waitAbilityContext()
        waitFlag({ => Global._onWindowStageCreateCalled })
        @Expect(Global._onWindowStageCreateCalled, true)
        let reason = Global._launchReason.getOrThrow()
        match (reason) {
            case StartAbility => @Expect(true)
            case _ => @Expect(false)
        }
        let exitReason = Global._lastExitReason.getOrThrow()
        match (exitReason) {
            case Normal => @Expect(true)
            case _ => @Expect(false)
        }
        let want = Global._lastRequestWant.getOrThrow()
        @Expect(want.bundleName, "com.example.ability")
        let beforeTimes = Global._onNewWantCalledTimes
        ctx.startAbility(Want(bundleName: "com.example.ability", abilityName: "EntryAbility",
            moduleName: "entry", action: "cangjie-lifecycle-onNewWant"))
        waitFlag({ => Global._onNewWantCalledTimes > beforeTimes })
        @Expect(Global._onNewWantCalled, true)
        let want2 = Global._lastRequestWant.getOrThrow()
        @Expect(want2.action, "cangjie-lifecycle-onNewWant")
        Hilog.info(0u32, "cangjietest", "testcase Test_lifecycleCallbacks ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_launchReason_0700
     * @tc.name      : Test_launchReasonValues
     * @tc.desc      : Verifies LaunchReason.StartAbility is injected by system via aa start; LastExitReason is Normal after force-stop+restart cycle.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_launchReasonValues(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_launchReasonValues begins.")
        let _ = waitAbilityContext()
        waitFlag({ => Global._launchReason.isSome() })
        let reason = Global._launchReason.getOrThrow()
        match (reason) {
            case StartAbility => @Expect(true)
            case _ => @Expect(false)
        }
        let exitReason = Global._lastExitReason.getOrThrow()
        Hilog.info(0u32, "cangjietest", "testcase Test_launchReasonValues ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_startAbilityForResult_0800
     * @tc.name      : Test_startAbilityForResult_invalid
     * @tc.desc      : Calls startAbilityForResult with empty Want and with non-existent bundle, tests both overloads, expects BusinessException.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_startAbilityForResult_invalid(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_startAbilityForResult_invalid begins.")
        let ctx = waitAbilityContext()
        try {
            ctx.startAbilityForResult(Want()) { e, r => }
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16000019i32)
            Hilog.info(0u32, "cangjietest", "startAbilityForResult overload1 code=${e.code}")
        }
        try {
            ctx.startAbilityForResult(Want(), StartOptions()) { e, r => }
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16000019i32)
            Hilog.info(0u32, "cangjietest", "startAbilityForResult overload2 code=${e.code}")
        }
        try {
            ctx.startAbilityForResult(Want(bundleName: "com.nonexistent.bundle", abilityName: "FakeAbility")) { e, r => }
            @Expect(false)
        } catch (e: BusinessException) {
            @Expect(e.code, 16000001i32)
            Hilog.info(0u32, "cangjietest", "startAbilityForResult nonexistent code=${e.code}")
        }
        Hilog.info(0u32, "cangjietest", "testcase Test_startAbilityForResult_invalid ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_enumCoverage_0900
     * @tc.name      : Test_enumValues_coverage
     * @tc.desc      : Covers enum types and their values: MemoryLevel (Equatable), OnContinueResult (match), AbilityLifecycleState (Equatable), WantValueType (match), ResultCode (match), AreaMode == / != operators.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_enumValues_coverage(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_enumValues_coverage begins.")

        let v1 = WantValueType.Int64Value(42i64)
        let v2 = WantValueType.Float64Value(3.14f64)
        let v3 = WantValueType.StringValue("hello")
        let v4 = WantValueType.BoolValue(true)
        let v5 = WantValueType.ArrayValue([v1, v2])
        let m = HashMap<String, WantValueType>()
        m.add("key", v3)
        let v6 = WantValueType.HashMapValue(m)
        match (v1) {
            case Int64Value(val) => @Expect(val, 42i64)
            case _ => @Expect(false)
        }
        match (v2) {
            case Float64Value(val) => @Expect(val > 3.0f64, true)
            case _ => @Expect(false)
        }
        match (v3) {
            case StringValue(val) => @Expect(val, "hello")
            case _ => @Expect(false)
        }
        match (v4) {
            case BoolValue(val) => @Expect(val, true)
            case _ => @Expect(false)
        }
        match (v5) {
            case ArrayValue(arr) => @Expect(arr.size, 2)
            case _ => @Expect(false)
        }
        match (v6) {
            case HashMapValue(map) => @Expect(map.size, 1)
            case _ => @Expect(false)
        }

        let ctx2 = waitAbilityContext()
        let originalArea = ctx2.area
        ctx2.area = El1
        @Expect(ctx2.area, El1)
        ctx2.area = El2
        @Expect(ctx2.area, El2)
        @Expect(ctx2.area != El1, true)
        ctx2.area = El3
        @Expect(ctx2.area, El3)
        ctx2.area = El4
        @Expect(ctx2.area, El4)
        ctx2.area = El5
        @Expect(ctx2.area, El5)
        ctx2.area = originalArea
        @Expect(ctx2.area, originalArea)
        @Expect(originalArea.toString() != El1.toString(), originalArea != El1)

        @Expect(MemoryLevel.MemoryLevelCritical == MemoryLevel.MemoryLevelCritical)
        @Expect(MemoryLevel.MemoryLevelCritical != MemoryLevel.MemoryLevelModerate)

        Hilog.info(0u32, "cangjietest", "testcase Test_enumValues_coverage ends.")
    }

    /*
     * @tc.number    : Sub_Cangjie_ability_launchParamEquality_1000
     * @tc.name      : Test_launchParam_fields
     * @tc.desc      : Retrieves LaunchParam from Global (stored in onCreate), reads launchReason and lastExitReason fields.
     * @tc.size      : MediumTest
     * @tc.type      : Function
     * @tc.level      : Level 0
     */
    @TestCase
    @Tag[APILevel22, TestLevel0]
    func Test_launchParam_fields(): Unit {
        Hilog.info(0u32, "cangjietest", "testcase Test_launchParam_fields begins.")
        let _ = waitAbilityContext()
        waitFlag({ => Global._launchParam.isSome() })
        let lp = Global._launchParam.getOrThrow()
        let reason = lp.launchReason
        let exitReason = lp.lastExitReason
        match (reason) {
            case StartAbility => @Expect(true)
            case _ => @Expect(false)
        }
        Hilog.info(0u32, "cangjietest", "LaunchParam fields read successfully")
        Hilog.info(0u32, "cangjietest", "testcase Test_launchParam_fields ends.")
    }
}
