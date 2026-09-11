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

@Preview
@Component
class PreviewComponent_macro08 {
    @State
    var previewValue: String = "preview_init"

    func build() {
        Column(space: 5i64.vp,
            child: {
                => Text("preview: ${this.previewValue}").id("sm_preview_check")
            }).width(90i64.percent)
    }
}

@Entry
@Component
public class View_statemacro2_uattr_08 {
    @State
    var entryAttrResult: String = "entry_attr_init"

    func build() {
        Column(space: 5i64.vp){
                Text("entry(attr): ${this.entryAttrResult}").id("sm_entry_attr_check")
                PreviewComponent_macro08()
            }.width(100i64.percent)
    }
}
