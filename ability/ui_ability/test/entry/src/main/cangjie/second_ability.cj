/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 */

package ohos_app_cangjie_entry

import kit.AbilityKit.*
import ohos.window.WindowStage
import kit.PerformanceAnalysisKit.Hilog

public var secondAbilityNewWantCount = 0
public var secondAbilityResultRequested = false
public var secondAbilityCreateCount = 0
public var secondAbilityWindowStageCreateCount = 0
public var secondAbilityWindowStageDestroyCount = 0
public var secondAbilityDestroyCount = 0

public class SecondAbility <: UIAbility {
    public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
        secondAbilityCreateCount += 1
        secondAbilityResultRequested = want.uri == "result"
        Hilog.info(0u32, "cangjietest", "SecondAbility onCreate abilityName=${want.abilityName}")
    }

    public override func onNewWant(want: Want, launchParam: LaunchParam): Unit {
        secondAbilityNewWantCount += 1
        Hilog.info(0u32, "cangjietest", "SecondAbility onNewWant count=${secondAbilityNewWantCount}")
        if (want.uri == "result") {
            this.context.terminateSelfWithResult(AbilityResult(42))
        }
    }

    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
        secondAbilityWindowStageCreateCount += 1
        Hilog.info(0u32, "cangjietest", "SecondAbility onWindowStageCreate")
        if (secondAbilityResultRequested) {
            this.context.terminateSelfWithResult(AbilityResult(42))
        }
    }

    public override func onWindowStageDestroy(): Unit {
        secondAbilityWindowStageDestroyCount += 1
        Hilog.info(0u32, "cangjietest", "SecondAbility onWindowStageDestroy")
    }

    public override func onDestroy(): Unit {
        secondAbilityDestroyCount += 1
        Hilog.info(0u32, "cangjietest", "SecondAbility onDestroy")
    }
}
