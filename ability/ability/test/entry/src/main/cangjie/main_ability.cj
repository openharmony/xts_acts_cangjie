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

import ohos.window.WindowStage
import kit.AbilityKit.*
import ohos.arkui.state_management.AppStorage
import kit.PerformanceAnalysisKit.Hilog

class MainAbility <: UIAbility {
    public func onCreate(want: Want, launchParam: LaunchParam): Unit {
        Global._launchReason = launchParam.launchReason
        Global._lastExitReason = launchParam.lastExitReason
        Global._launchParam = launchParam
        Global._lastRequestWant = want
        Global._onNewWantCalled = false
        match (launchParam.launchReason) {
            case StartAbility => Hilog.info(0u32, "cangjietest", "onCreate launchReason=StartAbility")
            case Call => Hilog.info(0u32, "cangjietest", "onCreate launchReason=Call")
            case Continuation => Hilog.info(0u32, "cangjietest", "onCreate launchReason=Continuation")
            case AppRecovery => Hilog.info(0u32, "cangjietest", "onCreate launchReason=AppRecovery")
            case _ => Hilog.info(0u32, "cangjietest", "onCreate launchReason=other")
        }
        match (launchParam.lastExitReason) {
            case Normal => Hilog.info(0u32, "cangjietest", "onCreate lastExitReason=Normal")
            case CppCrash => Hilog.info(0u32, "cangjietest", "onCreate lastExitReason=CppCrash")
            case AppFreeze => Hilog.info(0u32, "cangjietest", "onCreate lastExitReason=AppFreeze")
            case Unknown => Hilog.info(0u32, "cangjietest", "onCreate lastExitReason=Unknown")
            case _ => Hilog.info(0u32, "cangjietest", "onCreate lastExitReason=other")
        }
    }

    public func onWindowStageCreate(windowStage: WindowStage): Unit {
        AppStorage.setOrCreate("windowStage", windowStage)
        AppStorage.setOrCreate("abilityContext", this.context)
        Global._abilityContext = this.context
        Global._windowStage = windowStage
        Global._onWindowStageCreateCalled = true
        windowStage.loadContent("EntryView")
    }

    public func onNewWant(want: Want, launchParam: LaunchParam): Unit {
        Global._onNewWantCalled = true
        Global._lastRequestWant = want
        Global._onNewWantCalledTimes += 1
    }
}

public class Global {
    public static var _abilityContext: Option<UIAbilityContext> = None
    public static var _windowStage: Option<WindowStage> = None
    public static var _launchReason: Option<LaunchReason> = None
    public static var _lastExitReason: Option<LastExitReason> = None
    public static var _launchParam: Option<LaunchParam> = None
    public static var _lastRequestWant: Option<Want> = None
    public static var _onWindowStageCreateCalled: Bool = false
    public static var _onNewWantCalled: Bool = false
    public static var _onNewWantCalledTimes: Int64 = 0
    public static prop abilityContext: UIAbilityContext {
        get() { return Global._abilityContext.getOrThrow() }
    }
    public static func getAbilityContext() { _abilityContext.getOrThrow() }
    public static func getWindowStage() { _windowStage.getOrThrow() }
}
