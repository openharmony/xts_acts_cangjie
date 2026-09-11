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
 * StateManagement EC test view 2 (boundary cases):
 *   - AppStorage.link with empty string "" (no such property exists -> None)
 *   - AppStorage.property with empty string "" (no such property exists -> None)
 *   - AppStorage.delete on a known key
 *   - AppStorage.clear to remove all properties
 */
@Entry
@Component
public class View_statemanage_uattr_02 {
    @State var linkEmptyResult: String = "None"
    @State var propertyEmptyResult: String = "None"
    @State var deleteResult: String = "None"
    @State var clearResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // prepare a key via setOrCreate so that boundary delete can target a known key
        AppStorage.setOrCreate<String>("boundaryKey", "boundaryValue")

        // AppStorage.link with empty string "" - property does not exist -> returns None
        try {
            let l = AppStorage.link<String>("")
            match (l) {
                case Some(_) => this.linkEmptyResult = "LinkEmpty-some"
                case None => this.linkEmptyResult = "LinkEmpty-none"
            }
        } catch (e: Exception) {
            this.linkEmptyResult = "LinkEmpty-fail"
        }

        // AppStorage.property with empty string "" - property does not exist -> returns None
        try {
            let p = AppStorage.property<String>("")
            match (p) {
                case Some(_) => this.propertyEmptyResult = "PropertyEmpty-some"
                case None => this.propertyEmptyResult = "PropertyEmpty-none"
            }
        } catch (e: Exception) {
            this.propertyEmptyResult = "PropertyEmpty-fail"
        }

        // AppStorage.delete on the prepared key "boundaryKey"
        try {
            let ok = AppStorage.delete("boundaryKey")
            if (ok) {
                this.deleteResult = "Delete-ok"
            } else {
                this.deleteResult = "Delete-false"
            }
        } catch (e: Exception) {
            this.deleteResult = "Delete-fail"
        }

        // AppStorage.clear to remove all properties (returns false if subscribers exist)
        try {
            let ok = AppStorage.clear()
            if (ok) {
                this.clearResult = "Clear-ok"
            } else {
                this.clearResult = "Clear-false"
            }
        } catch (e: Exception) {
            this.clearResult = "Clear-fail"
        }

        this.aggregateResult = "${this.linkEmptyResult};${this.propertyEmptyResult};${this.deleteResult};${this.clearResult}"
    }

    func build() {
        Column(space: 5i64.vp){
            Text("AppStorage.link(empty): ${this.linkEmptyResult}").id("statemanage_uattr_id")
            Text("AppStorage.property(empty): ${this.propertyEmptyResult}").id("property_empty_uattr_check")
            Text("AppStorage.delete: ${this.deleteResult}").id("delete_uattr_check")
            Text("AppStorage.clear: ${this.clearResult}").id("clear_uattr_check")
            Text("Aggregate: ${this.aggregateResult}").id("aggregate_uattr_check")
        }.width(80i64.percent)
    }
}
