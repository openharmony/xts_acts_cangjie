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

package ohos_app_cangjie_entry.customcomponent_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.custom_component.*
import ohos.arkui.component.custom_view.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog

/**
 * EC test view 2:
 *   - Overrides RemoteView.onBackPress (returns false) and onPageHide.
 *   - Tests CustomView.aboutToBeDeleted() (public method) by invoking it.
 *   - Results are tracked in @State String vars and displayed in Text components.
 *   - Each method is triggered by a Button click so the test can verify the result.
 */
@Entry
@Component
public class View_customcomponent_uattr_02 {
    @State var onBackPressResult: String = "None"
    @State var onBackPressReturn: String = "None"
    @State var onPageHideResult: String = "None"
    @State var aboutToBeDeletedResult: String = "None"
    @State var aggregateResult: String = "None"

    public func onBackPress(): Bool {
        this.onBackPressResult = "onBackPress-ok"
        this.aggregateResult = "${this.onBackPressResult};${this.onPageHideResult};${this.aboutToBeDeletedResult}"
        return false
    }

    public func onPageHide() {
        this.onPageHideResult = "onPageHide-ok"
        this.aggregateResult = "${this.onBackPressResult};${this.onPageHideResult};${this.aboutToBeDeletedResult}"
    }


    func build() {
        Column(space: 5i64.vp){
            Text("onBackPress: ${this.onBackPressResult}").id("customcomp_02_onBackPress")
            Text("onBackPressReturn: ${this.onBackPressReturn}").id("customcomp_02_onBackPressReturn")
            Text("onPageHide: ${this.onPageHideResult}").id("customcomp_02_onPageHide")
            Text("Aggregate: ${this.aggregateResult}").id("customcomp_02_aggregate")
            Button("trigger onBackPress").id("customcomp_02_btn_backpress").onClick(
                {
                    evt =>
                    let ret: Bool = this.onBackPress()
                    this.onBackPressReturn = "${ret}"
                }
            )
            Button("trigger onPageHide").id("customcomp_02_btn_pagehide").onClick(
                {
                    evt =>
                    this.onPageHide()
                }
            )
            Button("trigger aboutToBeDeleted").id("customcomp_02_btn_abouttobedeleted").onClick(
                {
                    evt =>
                    try {
                        this.aboutToBeDeleted()
                    } catch (e: Exception) {
                        this.aboutToBeDeletedResult = "aboutToBeDeleted-fail"
                    }
                }
            )
        }.width(80i64.percent)
    }
}
