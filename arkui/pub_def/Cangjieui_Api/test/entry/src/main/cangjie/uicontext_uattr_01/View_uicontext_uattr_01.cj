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

package ohos_app_cangjie_entry.uicontext_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.ui_context.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_uicontext_uattr_01 {
    @State var getPromptActionResult: String = "None"
    @State var getMeasureUtilsResult: String = "None"
    @State var createAnimatorResult: String = "None"
    @State var vp2pxResult: String = "None"
    @State var px2vpResult: String = "None"
    @State var fp2pxResult: String = "None"
    @State var px2fpResult: String = "None"
    @State var lpx2pxResult: String = "None"
    @State var px2lpxResult: String = "None"
    @State var getFontResult: String = "None"
    @State var getRouterResult: String = "None"
    @State var getContextMenuControllerResult: String = "None"

    public func aboutToAppear() {
        let uiContext = getUIContext()

        // getPromptAction
        let promptAction = uiContext.getPromptAction()
        this.getPromptActionResult = "OK"

        // getMeasureUtils
        let measureUtils = uiContext.getMeasureUtils()
        this.getMeasureUtilsResult = "OK"

        // createAnimator
        let animatorOptions = AnimatorOptions(
            duration: 1000i32,
            easing: "ease",
            delay: 0i32,
            fill: AnimatorFill.None,
            direction: AnimatorDirection.Normal,
            iterations: 1i32,
            begin: 0.0,
            end: 1.0
        )
        let animator = uiContext.createAnimator(animatorOptions)
        this.createAnimatorResult = "OK"

        // vp2px
        match (uiContext.vp2px(10i64.vp)) {
            case Some(_) => this.vp2pxResult = "OK"
            case None => this.vp2pxResult = "None"
        }

        // px2vp
        match (uiContext.px2vp(100i64.px)) {
            case Some(_) => this.px2vpResult = "OK"
            case None => this.px2vpResult = "None"
        }

        // fp2px
        match (uiContext.fp2px(14.0f64.fp)) {
            case Some(_) => this.fp2pxResult = "OK"
            case None => this.fp2pxResult = "None"
        }

        // px2fp
        match (uiContext.px2fp(100i64.px)) {
            case Some(_) => this.px2fpResult = "OK"
            case None => this.px2fpResult = "None"
        }

        // lpx2px
        match (uiContext.lpx2px(100.0f64.lpx)) {
            case Some(_) => this.lpx2pxResult = "OK"
            case None => this.lpx2pxResult = "None"
        }

        // px2lpx
        match (uiContext.px2lpx(100i64.px)) {
            case Some(_) => this.px2lpxResult = "OK"
            case None => this.px2lpxResult = "None"
        }

        // getFont
        let font = uiContext.getFont()
        this.getFontResult = "OK"

        // getRouter
        let router = uiContext.getRouter()
        this.getRouterResult = "OK"

        // getContextMenuController
        let contextMenuController = uiContext.getContextMenuController()
        this.getContextMenuControllerResult = "OK"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("getPromptAction: ${this.getPromptActionResult}").id("getPromptAction_check")
                Text("getMeasureUtils: ${this.getMeasureUtilsResult}").id("getMeasureUtils_check")
                Text("createAnimator: ${this.createAnimatorResult}").id("createAnimator_check")
                Text("vp2px: ${this.vp2pxResult}").id("vp2px_check")
                Text("px2vp: ${this.px2vpResult}").id("px2vp_check")
                Text("fp2px: ${this.fp2pxResult}").id("fp2px_check")
                Text("px2fp: ${this.px2fpResult}").id("px2fp_check")
                Text("lpx2px: ${this.lpx2pxResult}").id("lpx2px_check")
                Text("px2lpx: ${this.px2lpxResult}").id("px2lpx_check")
                Text("getFont: ${this.getFontResult}").id("getFont_check")
                Text("getRouter: ${this.getRouterResult}").id("getRouter_check")
                Text("getContextMenuController: ${this.getContextMenuControllerResult}").id("getContextMenuController_check")
            }.width(80i64.percent)
    }
}
