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

package ohos_app_cangjie_entry.Divider_init

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
public class View_Divider_init_10 {
    
    func build() {
        Column() {
            // 使用纵向分割线场景
            Text("Vertical divider").fontSize(9).fontColor(0xCCCCCC)
            Column() {
                Column() {
                    Row().width(288).height(64).backgroundColor(0x30C9F0).opacity(0.3)
                    Row() {
                        Button("Button")
                            .width(136)
                            .height(22)
                            .fontSize(16)
                            .fontColor(0x007DFF)
                            .fontWeight(FontWeight.W500)
                            .backgroundColor(Color.Transparent)
                        Divider()
                            .id("Divider_id")
                            .vertical(true)
                            .height(22)
                            .color(Color.Red)
                            .opacity(0.6)
                            .margin(left: 8, right: 8)
                            .strokeWidth(8.0)
                            .lineCap(LineCapStyle.Square)
                        Button("Button")
                            .width(136)
                            .height(22)
                            .fontSize(16)
                            .fontColor(0x007DFF)
                            .fontWeight(FontWeight.W500)
                            .backgroundColor(Color.Transparent)
                    }.margin(top: 17)
                }.width(336).height(152).backgroundColor(0xFFFFFF).borderRadius(24).padding(24)
            }.width(100.percent).height(168).backgroundColor(0xF1F3F5).justifyContent(FlexAlign.Center).margin(top: 8)
        }.width(100.percent).padding(top: 24)
    }
}
