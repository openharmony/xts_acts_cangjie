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
public class View_BuilderOfCustomer_15 {
    @Builder
    func descriptionBuilder(): Unit {
        Text("Gauge Description")
            .fontSize(14)
            .id("description_text")
            .padding(5)
    }

    @Builder
    func componentBuilder(): Unit {
        Gauge(value: 50.0, min: 0.0, max: 100.0)
            .description(this.descriptionBuilder)
            .id("gauge")
            .width(15)
            .height(15)
        } 

    @Builder
    func componentBuilder1(): Unit {
        List() {
                    ListItemGroup(header: this.componentBuilder, footer: this.componentBuilder) {
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
                }                
        } 
    func build() {
        Column(space: 5i64.vp,
            child: {
                => List() {
                        ListItem() {
                            Text("Swipe left or right")
                                .fontSize(16)
                                .id("list_item_text")
                                .padding(10)
                        }
                        .id("list_item")
                        .swipeAction(start: this.componentBuilder1, end: this.componentBuilder1)
                        .offset(x:100,y:100)
                    }
                    .id("list")
                    .width(100.percent)
                    .height(300)               
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
