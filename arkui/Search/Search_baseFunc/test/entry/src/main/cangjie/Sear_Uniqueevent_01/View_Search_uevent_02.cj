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

package ohos_app_cangjie_entry.Sear_Uniqueevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_Search_uevent_02 {
    @State
    var copyResult: String = "None"
    @State
    var cutResult: String = "None"
    @State
    var pasteResult: String = "None"

    func build() {
        Column(){
        Text("onCopy: ${this.copyResult}").id("onCopy_check")
        Text("onCut: ${this.cutResult}").id("onCut_check")
        Text("onPaste: ${this.pasteResult}").id("onPaste_check")
        Column(space: 5i64.vp,
            child: {

                => Search(value: "", placeholder: "search")
                    .onCopy({ value: String =>
                        this.copyResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "Search onCopy value:${value}")
                    })
                    .onCut({ value: String =>
                        this.cutResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "Search onCut value:${value}")
                    })
                    .onPaste({ value: String =>
                        this.pasteResult = "value:${value}"
                        Hilog.info(0, "AppLogCj", "Search onPaste value:${value}")
                    })
                    .id("Search_id")
            }).width(80i64.percent)}
    }
}
