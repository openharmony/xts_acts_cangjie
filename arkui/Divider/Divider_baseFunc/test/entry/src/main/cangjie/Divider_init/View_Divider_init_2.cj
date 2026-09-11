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
public class View_Divider_init_2 {
    func build() {
        Column() {
            // 使用横向分割线场景
            Text("Horizontal divider").fontSize(9).fontColor(0xCCCCCC)
            List() {
                ForEach(
                    [1, 2, 3],
                    itemGenerator:{
                        item: Int64, idx: Int64 => ListItem() {
                            Text("list" + item.toString())
                                .width(100.percent)
                                .fontSize(14)
                                .fontColor(0x182431)
                                .textAlign(TextAlign.Start)
                        }.width(244).height(48)
                    }
                )
            }.padding(left: 24, bottom: 8)

            Divider().id("Divider_id").color(0xF1F3F5).lineCap(LineCapStyle.Round).strokeWidth(8)

            List() {
                ForEach(
                    [4, 5],
                    itemGenerator:{
                        item: Int64, idx: Int64 => ListItem() {
                            Text("list" + item.toString())
                                .width(100.percent)
                                .fontSize(14)
                                .fontColor(0x182431)
                                .textAlign(TextAlign.Start)
                        }.width(244).height(48)
                    }
                )
            }.padding(left: 24, top: 8)
        }.width(100.percent).padding(top: 24)
    }
}
