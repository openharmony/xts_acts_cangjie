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

package ohos_app_cangjie_entry.Canvas_init

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Component
public class View_Canvas_init_17 {
    var settings: RenderingContextSettings = RenderingContextSettings(antialias: true)
    var context: CanvasRenderingContext2D = CanvasRenderingContext2D(this.settings)

    func build() {
        Flex(direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center) {
            Canvas(this.context)
                .id("Canvas_id")
                .width(100.percent)
                .height(100.percent)
                .backgroundColor(0xffff00)
                .onReady(
                    {
                        =>
                        // 切线
                        this.context.beginPath()
                        this.context.strokeStyle =Color.Blue
                        this.context.lineWidth = 1.5
                        this.context.moveTo(360.0, 20.0)
                        this.context.lineTo(360.0, 170.0)
                        this.context.lineTo(110.0, 170.0)
                        this.context.stroke()

                        // 圆弧
                        this.context.beginPath()
                        this.context.strokeStyle = Color.Black
                        this.context.lineWidth = 3.0
                        this.context.moveTo(360.0, 20.0)
                        this.context.arcTo(360.0, 170.0, 110.0, 170.0, 150.0)
                        this.context.stroke()

                        // 起始点
                        this.context.beginPath()
                        this.context.fillStyle = Color.Green
                        this.context.arc(360.0, 20.0, 4.0, 0.0, 3.14)
                        this.context.fill()

                        // 控制点
                        this.context.beginPath()
                        this.context.fillStyle = Color.Red
                        this.context.arc(360.0, 170.0, 4.0, 0.0, 3.14)
                        this.context.arc(110.0, 170.0, 4.0, 0.0, 3.14)
                        this.context.fill()
                    }
                )
        }.width(100.percent).height(100.percent)
    }
}
