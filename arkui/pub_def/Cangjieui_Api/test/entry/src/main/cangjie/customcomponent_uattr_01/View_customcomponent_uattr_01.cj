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
import ohos.arkui.component.page_transition.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog

/**
 * EC test view 1:
 *   - Overrides lifecycle methods: aboutToAppear, onPageShow, onBackPress(returns true),
 *     aboutToDisappear, onDidBuild, pageTransition (from RemoteView/CustomView).
 *   - Calls CustomView.getLocalStorage() / getUIContext() inside aboutToAppear.
 *   - Tests custom_component.bind(builder, thisView) with a @Builder function.
 *   - Results are tracked in @State String vars and displayed in Text components.
 */
@Builder
func bindTestBuilder(cv: CustomView) {
    Column {
        Text("bind test content")
    }
}

@Entry
@Component
public class View_customcomponent_uattr_01 {
    @State var aboutToAppearResult: String = "None"
    @State var onPageShowResult: String = "None"
    @State var onBackPressResult: String = "None"
    @State var onBackPressReturn: String = "None"
    @State var aboutToDisappearResult: String = "None"
    @State var onDidBuildResult: String = "None"
    @State var pageTransitionResult: String = "None"
    @State var getLocalStorageResult: String = "None"
    @State var getUIContextResult: String = "None"
    @State var bindResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        this.aboutToAppearResult = "aboutToAppear-ok"
        try {
            let ls = this.getLocalStorage()
            this.getLocalStorageResult = "getLocalStorage-ok"
        } catch (e: Exception) {
            this.getLocalStorageResult = "getLocalStorage-fail"
        }
        try {
            let uc = this.getUIContext()
            this.getUIContextResult = "getUIContext-ok"
        } catch (e: Exception) {
            this.getUIContextResult = "getUIContext-fail"
        }
        try {
            let bound = bind( bindTestBuilder,  this)
            this.bindResult = "bind-ok"
        } catch (e: Exception) {
            this.bindResult = "bind-fail"
        }
        this.aggregateResult = "${this.aboutToAppearResult};${this.getLocalStorageResult};${this.getUIContextResult};${this.bindResult}"
    }

    public func onDidBuild() {
        this.onDidBuildResult = "onDidBuild-ok"
        this.aggregateResult = "${this.aboutToAppearResult};${this.onDidBuildResult};${this.getLocalStorageResult};${this.getUIContextResult};${this.bindResult}"
    }

    public func onPageShow() {
        this.onPageShowResult = "onPageShow-ok"
    }

    public func onBackPress(): Bool {
        this.onBackPressResult = "onBackPress-ok"
        return true
    }

    public func aboutToDisappear() {
        this.aboutToDisappearResult = "aboutToDisappear-ok"
    }

    protected func pageTransition(): Unit {
        this.pageTransitionResult = "pageTransition-ok"
        PageTransitionEnter().slide(SlideEffect.Left)
    }

    func build() {
        Column(space: 5i64.vp){
            Text("aboutToAppear: ${this.aboutToAppearResult}").id("customcomp_01_aboutToAppear")
            Text("onPageShow: ${this.onPageShowResult}").id("customcomp_01_onPageShow")
            Text("onBackPress: ${this.onBackPressResult}").id("customcomp_01_onBackPress")
            Text("onBackPressReturn: ${this.onBackPressReturn}").id("customcomp_01_onBackPressReturn")
            Text("aboutToDisappear: ${this.aboutToDisappearResult}").id("customcomp_01_aboutToDisappear")
            Text("onDidBuild: ${this.onDidBuildResult}").id("customcomp_01_onDidBuild")
            Text("pageTransition: ${this.pageTransitionResult}").id("customcomp_01_pageTransition")
            Text("getLocalStorage: ${this.getLocalStorageResult}").id("customcomp_01_getLocalStorage")
            Text("getUIContext: ${this.getUIContextResult}").id("customcomp_01_getUIContext")
            Text("bind: ${this.bindResult}").id("customcomp_01_bind")
            Text("Aggregate: ${this.aggregateResult}").id("customcomp_01_aggregate")
            Button("trigger onBackPress").id("customcomp_01_btn_backpress").onClick(
                {
                    evt =>
                    let ret: Bool = this.onBackPress()
                    this.onBackPressReturn = "${ret}"
                }
            )
        }.width(80i64.percent)
    }
}
