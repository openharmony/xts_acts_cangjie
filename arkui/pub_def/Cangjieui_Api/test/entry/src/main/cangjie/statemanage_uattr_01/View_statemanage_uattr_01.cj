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

package ohos_app_cangjie_entry.statemanage_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

/**
 * StateManagement EC test view 1:
 *   - AppStorage.setAndLink with normal string "testKey"
 *   - AppStorage.setAndProp with normal string "testKey2"
 *   - AppStorage.has / get / set / keys
 */
@Entry
@Component
public class View_statemanage_uattr_01 {
    @State var setAndLinkResult: String = "None"
    @State var setAndPropResult: String = "None"
    @State var hasResult: String = "None"
    @State var getResult: String = "None"
    @State var setResult: String = "None"
    @State var keysResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // AppStorage.setAndLink with normal string "testKey" and default value
        try {
            let link = AppStorage.setAndLink<String>("testKey", "defaultValue")
            this.setAndLinkResult = "SetAndLink-ok"
        } catch (e: Exception) {
            this.setAndLinkResult = "SetAndLink-fail"
        }

        // AppStorage.setAndProp with normal string "testKey2" and default value
        try {
            let pro = AppStorage.setAndProp<String>("testKey2", "defaultPropValue")
            this.setAndPropResult = "SetAndProp-ok"
        } catch (e: Exception) {
            this.setAndPropResult = "SetAndProp-fail"
        }

        // AppStorage.has on existing key "testKey"
        try {
            let exists = AppStorage.has("testKey")
            if (exists) {
                this.hasResult = "Has-ok"
            } else {
                this.hasResult = "Has-false"
            }
        } catch (e: Exception) {
            this.hasResult = "Has-fail"
        }

        // AppStorage.get on existing key "testKey"
        try {
            let v = AppStorage.get<String>("testKey")
            match (v) {
                case Some(s) => this.getResult = "Get-ok:${s}"
                case None => this.getResult = "Get-none"
            }
        } catch (e: Exception) {
            this.getResult = "Get-fail"
        }

        // AppStorage.set to update existing key "testKey" with new value
        try {
            let ok = AppStorage.set<String>("testKey", "newValue")
            if (ok) {
                this.setResult = "Set-ok"
            } else {
                this.setResult = "Set-false"
            }
        } catch (e: Exception) {
            this.setResult = "Set-fail"
        }

        // AppStorage.keys returns EquatableCollection<String> of all keys
        try {
            let ks = AppStorage.keys()
            this.keysResult = "Keys-ok"
        } catch (e: Exception) {
            this.keysResult = "Keys-fail"
        }

        this.aggregateResult = "${this.setAndLinkResult};${this.setAndPropResult};${this.hasResult};${this.getResult};${this.setResult};${this.keysResult}"
    }

    func build() {
        Column(space: 5i64.vp){
            Text("AppStorage.setAndLink(normal): ${this.setAndLinkResult}").id("statemanage_uattr_id")
            Text("AppStorage.setAndProp(normal): ${this.setAndPropResult}").id("setandprop_uattr_check")
            Text("AppStorage.has: ${this.hasResult}").id("has_uattr_check")
            Text("AppStorage.get: ${this.getResult}").id("get_uattr_check")
            Text("AppStorage.set: ${this.setResult}").id("set_uattr_check")
            Text("AppStorage.keys: ${this.keysResult}").id("keys_uattr_check")
            Text("Aggregate: ${this.aggregateResult}").id("aggregate_uattr_check")
        }.width(80i64.percent)
    }
}
