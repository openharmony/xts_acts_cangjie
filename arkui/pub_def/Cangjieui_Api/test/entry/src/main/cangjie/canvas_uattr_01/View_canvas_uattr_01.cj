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

package ohos_app_cangjie_entry.canvas_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__
import ohos.arkui.component.canvas.*

@Entry
@Component
public class View_canvas_uattr_01 {
    @State var readyResult: String = "None"
    @State var antialiasResult: String = "None"
    var context: CanvasRenderingContext2D = CanvasRenderingContext2D(
        RenderingContextSettings(antialias: true))

    func build() {
        Column(){
            Text("onReady: ${this.readyResult}").id("canvas_ready_check")
            Text("antialias: ${this.antialiasResult}").id("canvas_antialias_check")
            Column(space: 5i64.vp,
            child: {
                => Canvas(this.context)
                    .onReady({ =>
                        this.readyResult = "ready"
                        this.antialiasResult = "true"
                        this.context.fillStyle
                        this.context.fillRect(0.0f64, 0.0f64, 100.0f64, 100.0f64)
                    })
                    .id("canvas_uattr_id")
                    .width(200i64.vp)
                    .height(200i64.vp)
            }).width(80i64.percent)
        }
 
    }
}
