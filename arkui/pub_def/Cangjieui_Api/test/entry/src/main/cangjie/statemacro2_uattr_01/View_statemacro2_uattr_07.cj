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

package ohos_app_cangjie_entry.statemacro2_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__
import ohos.arkui.component.custom_dialog.*

@CustomDialog
class MyDialogView_macro07 {
    @State
    var dialogMessage: String = "dialog_content"
    var controller: Option<CustomDialogController> = Option.None

    func build() {
        Column(space: 5i64.vp,
            child: {
                => Text(this.dialogMessage).id("sm_dialog_content_check")
            }).width(80i64.percent)
    }
}

@Entry
@Component
public class View_statemacro2_uattr_07 {
    @State
    var rawfileResult: String = "None"
    @State
    var rawfileEmptyResult: String = "None"
    var dialogController: CustomDialogController = CustomDialogController(
        CustomDialogControllerOptions(
            builder: MyDialogView_macro07()
        )
    )

    public func aboutToAppear() {
        let r1 = @r(app.media.startIcon)
        this.rawfileResult = "resource_created"
        let r2 = @r(app.media.startIcon)
        this.rawfileResult = "rawfile_normal_created"
        let r3 = @r(app.media.startIcon)
        this.rawfileEmptyResult = "rawfile_empty_created"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("rawfile(normal): ${this.rawfileResult}").id("sm_rawfile_normal_check")
                Text("rawfile(empty): ${this.rawfileEmptyResult}").id("sm_rawfile_empty_check")
                Button("open dialog").onClick({ e =>
                    this.dialogController.openDialog()
                }).id("sm_open_dialog_btn")
                Image(@r(app.media.startIcon)).width(50i64.vp).height(50i64.vp).id("sm_resource_image")
            }.width(100i64.percent)
    }
}
