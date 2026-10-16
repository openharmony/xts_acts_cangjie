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
public class View_BuilderOfCustomer_1 {
    @State
    var isShow: Bool = false

    @Builder
    func keyboardBuilder(): Unit {
        Row() {
            Text("cKs1").fontSize(14).width(40).height(40).id("key_1")
            Text("cKs2").fontSize(14).width(40).height(40).id("key_2")
            Text("cKs3").fontSize(14).width(40).height(40).id("key_3")
        }
        .width(100.percent)
        .justifyContent(FlexAlign.SpaceAround)
        .padding(10)
        .backgroundColor(0xD0E8F0)
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
                .onClick({ClickEvent
                    => this.isShow = false
                })                
        }
        .width(100.percent)
        .height(100.percent)
        .justifyContent(FlexAlign.Center)
    }
    func build() {
        Column(space: 5i64.vp,
            child: {
                => TextInput(placeholder: "com of TextInput and bindContextMenu")
                .customKeyboard(this.keyboardBuilder)
                .id("text_input")
                .width(100.percent)
                .height(40)
                .onClick({ClickEvent
                    => this.isShow = true
                })
                .bindContentCover(
                    this.isShow,
                    this.contentCoverBuilder,
                    options:ContentCoverOptions(
                        modalTransition: ModalTransition.Default,
                        backgroundColor: Color.Green
                    )
                )
            }).width(100i64.percent)
    }
}
