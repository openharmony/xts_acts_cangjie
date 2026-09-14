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

package ohos_app_cangjie_entry

import kit.AbilityKit.*
import ohos.window.WindowStage
import ohos.arkui.state_management.AppStorage
import kit.PerformanceAnalysisKit.Hilog


class MainAbility <: UIAbility {
    init() {
        super()
        registerSelf()
    }
    public func onCreate(want: Want, launchParam: LaunchParam): Unit {
        Hilog.info(0u32, "cangjietest","","MainAbility OnCreated.${want.abilityName}")
    }

    public func onWindowStageCreate(windowStage: WindowStage): Unit {
        Hilog.info(0u32, "cangjietest","","MainAbility onWindowStageCreate.")
        AppStorage.setOrCreate("windowStage", windowStage)
        AppStorage.setOrCreate("abilityContext", this.context)
        this
            .context
            .resourceManager
        Global._abilityContext = this.context
        windowStage.loadContent("EntryView")
    }
}

public class Global {
    public static var _abilityContext: Option<UIAbilityContext> = None
    public static var windowStage: Option<WindowStage> = None
    public static prop abilityContext: UIAbilityContext {
        get() {
            Global._abilityContext.getOrThrow()
        }
    }

    public static func getAbilityContext() {
        var retryCount =  0
        while(retryCount < 50){
            match  (_abilityContext){
            case Some(ctx) => return ctx
            case None =>
            retryCount++
            sleep(Duration.millisecond * 100)
            }
        }
        _abilityContext.getOrThrow()
    }
    public static func getWindowStage() {
        windowStage.getOrThrow()
    }
}

