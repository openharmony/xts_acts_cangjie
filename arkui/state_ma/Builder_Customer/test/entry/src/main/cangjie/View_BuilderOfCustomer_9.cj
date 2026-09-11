/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
public class View_BuilderOfCustomer_9 {
    @State
    var isShow: Bool = false
        
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
    @Builder
    func contentCoverBuilder(): Unit {
        Column() {
            Text("Content Cover")
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
                .id("cover_text")
                .padding(20)
                .backgroundColor(0xD0E8F0)
             
        }
        .width(100.percent)
        .height(100.percent)
        .justifyContent(FlexAlign.Center)
    }    

    func build() {
        Column(space: 5i64.vp,
            child: {
                =>Button("test1")
                   .id("buttonid")
                   .bindSheet(this.isShow, this.sheetBuilder, options: SheetOptions(title: bind(this.sheetOptionsBuilder,this)))
                   .bindContentCover(
                    false,
                    bind(this.contentCoverBuilder,this),
                    options:ContentCoverOptions(
                        modalTransition: ModalTransition.Default,
                        backgroundColor: Color.Green
                    )
                )
                .onClick({ClickEvent
                    => this.isShow = true
                })                
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
