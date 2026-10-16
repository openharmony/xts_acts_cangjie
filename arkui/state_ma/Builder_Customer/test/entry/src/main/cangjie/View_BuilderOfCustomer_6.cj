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

package ohos_app_cangjie_entry

import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_BuilderOfCustomer_6 {
    @State
    var isShow: Bool = false

    @Builder
    func checkBoxBuilder(): Unit{
        Column() {
            Text("ct")
                .fontSize(16)
                .fontColor(Color.Blue)
                .id("indicator_text")
        }
        .width(20)
        .height(20)
        .justifyContent(FlexAlign.Center)    
    }

    @Builder
    func sheetBuilder(): Unit {
        Column() {
            Text("Sheet Content")
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .id("sheet_text")
                .padding(20)
                .onClick({ClickEvent
                        => this.isShow = false
                    })
        }
        .width(100.percent)
        .height(200)
        .backgroundColor(0xD0E8F0)
    }

    @Builder
    func sheetOptionsBuilder(): Unit {
        Text("Sheet Title")
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .id("sheet_title")
            .padding(10)
    } 

    func build() {
        Column(space: 5i64.vp,
            child: {
                => Checkbox(indicatorBuilder:this.checkBoxBuilder)
                   .id("checkboxid")
                   .bindSheet(this.isShow, this.sheetBuilder, options:SheetOptions(title: this.sheetOptionsBuilder))
                   Text("bindsheettest")
                     .id("bindtest")
                     .onClick({ClickEvent
                        => this.isShow = true
                    })
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
