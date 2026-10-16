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
public class View_BuilderOfCustomer_7 {
    @Builder
    func previewBuilder(): Unit {
        Text("Preview Content")
            .fontSize(16)
            .id("preview_text")
            .padding(10)
            .backgroundColor(0xD0E8F0)
    }    
    @Builder
    func menuBuilder(str1:String,str2:String): Unit {
        Menu() {
            MenuItem(startIcon: Option<ResourceStr>.None, content: "${str1}", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None).id("menu1")
            MenuItem(startIcon: Option<ResourceStr>.None, content: "${str2}", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None)
        }
    }

    @Builder
    func selectionMenuBuilder(): Unit {
        Menu() {
            MenuItem(startIcon: Option<ResourceStr>.None, content: "Copy", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None).id("menu2")
            MenuItem(startIcon: Option<ResourceStr>.None, content: "Cut", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None)
            MenuItem(startIcon: Option<ResourceStr>.None, content: "Paste", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None)
        }
    }       
    func build() {
        Column(space: 5i64.vp,
            child: {
                =>Column() {
                    Text("Sheet Content")
                    .fontSize(18)
                    .fontWeight(FontWeight.Bold)
                    .id("sheet_text")
                    .padding(20)
                    .bindContextMenu(builder: this.selectionMenuBuilder, responseType: ResponseType.LongPress,options: ContextMenuOptions(preview:this.previewBuilder))
                    .bindMenu(builder: {=> bind(this.menuBuilder,this)("Item 1","Item 2")})
                }
                .width(100.percent)
                .height(200)
                .backgroundColor(0xD0E8F0)
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
 