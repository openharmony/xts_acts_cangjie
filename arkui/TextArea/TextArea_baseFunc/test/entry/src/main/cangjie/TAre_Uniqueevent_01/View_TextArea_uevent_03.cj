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

package ohos_app_cangjie_entry.TAre_Uniqueevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.__GenerateResource__
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_TextArea_uevent_03 {
    @State
    var changeResult: String = "None"
    @State
    var submitResult: String = "None"
    @State
    var editChangeResult: String = "None"
    @State
    var copyResult: String = "None"
    @State
    var cutResult: String = "None"
    @State
    var pasteResult: String = "None"

    func build() {
        Column(){
        Text("onChange: ${this.changeResult}").id("onChange_check")
        Text("onSubmit: ${this.submitResult}").id("onSubmit_check")
        Text("onEditChange: ${this.editChangeResult}").id("onEditChange_check")
        Text("onCopy: ${this.copyResult}").id("onCopy_check")
        Text("onCut: ${this.cutResult}").id("onCut_check")
        Text("onPaste: ${this.pasteResult}").id("onPaste_check")            
        Column(space: 5i64.vp,
            child: {

                => TextArea(placeholder: "input", text: "", controller: TextAreaController())
                    .onChange({ value: String =>
                        this.changeResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "TextArea onChange value:${value}")
                    })
                    .onSubmit({ val =>
                        this.submitResult = "value:"
                        Hilog.info(0, "AppLogCj", "TextArea onSubmit value:")
                    })
                    .onEditChange({ value: Bool =>
                        this.editChangeResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "TextArea onEditChange value:${value}")
                    })
                    .onCopy({ value: String =>
                        this.copyResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "TextArea onCopy value:${value}")
                    })
                    .onCut({ value: String =>
                        this.cutResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "TextArea onCut value:${value}")
                    })
                    .onPaste({ value: String =>
                        this.pasteResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "TextArea onPaste value:${value}")
                    })
                    .id("TextArea_uevent_id")
            }).width(80i64.percent)}
    }
}
