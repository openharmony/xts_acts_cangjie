package ohos_app_cangjie_entry

import kit.AbilityKit.Ability
import kit.AbilityKit.AbilityStage
import kit.AbilityKit.AbilityStage
import ohos.arkui.state_management.AppStorage

class MyAbilityStage <: AbilityStage {
    public func onCreate(): Unit {
        try {
            AppStorage.setOrCreate("abilityStageContext", this.context)
        } catch (e: Exception) {
        }
    }
}