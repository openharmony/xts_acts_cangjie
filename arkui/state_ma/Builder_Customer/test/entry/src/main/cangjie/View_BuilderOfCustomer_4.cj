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
public class View_BuilderOfCustomer_4 {
    @Builder
    func headerBuilder(): Unit {
        Text("Header Content")
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .id("header_text")
            .padding(10)
            .backgroundColor(0xD0E8F0)
    }
    
    @Builder
    func footerBuilder(): Unit {
        Text("Footer Content")
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .id("footer_text")
            .padding(10)
            .backgroundColor(0xD0E8F0)
    }  

    @Builder
    func menuBuilder(): Unit {
        Menu() {
            MenuItem(startIcon: Option<ResourceStr>.None, content: "Item list1", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None).id("menulist")
            MenuItem(startIcon: Option<ResourceStr>.None, content: "Item list2", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None)
        }
    }

    func build() {
        Column(space: 5i64.vp,
            child: {
                =>List() {
                    ListItemGroup(header: this.headerBuilder, footer: this.footerBuilder) {
                        ForEach(
                            [1, 2, 3, 4, 5],
                            itemGeneratorFunc: { item: Int64, _: Int64 =>
                                ListItem() {
                                    Text("Item ${item}")
                                        .fontSize(16)
                                        .id("item_${item}_text")
                                        .padding(10)
                                }
                                .id("item_${item}")
                            }
                        )
                    }
                    .id("list_item_group")
                    .width(100.percent)
                    .bindMenu(builder: this.menuBuilder)
                }
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
