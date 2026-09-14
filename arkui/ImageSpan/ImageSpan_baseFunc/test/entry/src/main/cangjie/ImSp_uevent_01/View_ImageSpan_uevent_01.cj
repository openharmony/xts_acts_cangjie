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

package ohos_app_cangjie_entry.ImSp_uevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_ImageSpan_uevent_01 {
    @State var onComplete_width: String = "0"
    @State var onComplete_height: String = "0"
    @State var onComplete_componentWidth: String = "0"
    @State var onComplete_componentHeight: String = "0"
    @State var onComplete_status: String = "None"

    func build() {
        Column(){
        Column(space: 5i64.vp, child: {
            => Text("use ImageSpan uevent onComplete Success", child: {
                => ImageSpan("notexist_invalid_image.png")
                    .id("ImageSpan_uevent_id")
                    .onComplete({ _ =>
                        this.onComplete_width = "0"
                        this.onComplete_height = "0"
                        this.onComplete_status = "None"
                    })
            })
        }).width(80i64.percent) 
        Text("onComplete校验：")
        Text("width:${this.onComplete_width}").id("onComplete_width")
        Text("height:${this.onComplete_height}").id("onComplete_height")
        Text("componentWidth:${this.onComplete_componentWidth}").id("onComplete_componentWidth")
        Text("componentHeight:${this.onComplete_componentHeight}").id("onComplete_componentHeight")
        Text("status:${this.onComplete_status}").id("onComplete_status")           
        }
    }
}
