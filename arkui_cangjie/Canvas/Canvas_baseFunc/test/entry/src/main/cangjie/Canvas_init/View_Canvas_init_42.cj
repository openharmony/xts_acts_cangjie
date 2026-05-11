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

@Entry
@Component
class View_Canvas_init_42 {
    var settings: RenderingContextSettings = RenderingContextSettings(antialias: true)
    var context1: CanvasRenderingContext2D = CanvasRenderingContext2D(this.settings)
    var context2: CanvasRenderingContext2D = CanvasRenderingContext2D(this.settings)

    func build() {
        Flex(direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center) {
            Canvas(this.context1)
                .id("Canvas_id")
                .width(30.percent)
                .height(30.percent)
                .backgroundColor(0xffff00)
                .onReady(
                    {
                        =>
                        this.context1.fillRect(50.0, 50.0, 50.0, 50.0)
                        this.context1.setTransform(1.2, 3.14 / 8.0, 3.14 / 6.0, 0.5, 30.0, -25.0)
                        this.context1.fillRect(50.0, 50.0, 50.0, 50.0)
                    }
                )
            Text("Canvas2")
            Canvas(this.context2)
                .id("Canvas_id2")
                .width(30.percent)
                .height(30.percent)
                .backgroundColor(0xffff00)
                .onReady(
                    {
                        =>
                        this.context2.fillRect(100.0, 20.0, 50.0, 50.0)
                        let storedTransform = this.context1.getTransform()
                        this.context2.setTransform(storedTransform)
                        this.context2.fillRect(100.0, 20.0, 50.0, 50.0)
                    }
                )
        }.width(100.percent).height(100.percent)
    }
}
