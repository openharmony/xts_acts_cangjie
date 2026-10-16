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
public class View_BuilderOfCustomer_5 {
    @Builder
    func startActionBuilder(): Unit {
        Row() {
            Text("Start Action")
                .fontSize(14)
                .id("start_action_text")
                .padding(10)
        }
        .width(80)
        .height(100.percent)
        .justifyContent(FlexAlign.Center)
        .backgroundColor(0x4CAF50)
    }
    
    @Builder
    func endActionBuilder(): Unit {
        Row() {
            Text("End Action")
                .fontSize(14)
                .id("end_action_text")
                .padding(10)
        }
        .width(80)
        .height(100.percent)
        .justifyContent(FlexAlign.Center)
        .backgroundColor(0xF44336)
    }

    @Builder
    func popUpBuilder():Unit {
        Column() {
            Text("Custom Popup Content")
                .fontSize(16)
                .fontColor(Color.Black)
                .id("popup_text")
                .padding(10)
        }
        .width(150)
        .padding(10)
        .backgroundColor(Color.White)
        .borderRadius(8)
    }
    func build() {
        Column(space: 5i64.vp,
            child: {
                =>List() {
                    ListItem() {
                        Text("Swipe left or right")
                            .fontSize(16)
                            .id("list_item_text")
                            .padding(10)
                    }
                    .id("list_item")
                    .swipeAction(start: this.startActionBuilder, end: this.endActionBuilder)
                    .offset(x:100.vp,y:100.vp)
                }
                .id("list")
                .width(100.percent)
                .height(300)
                .bindPopup(false, CustomPopupOptions(builder: this.popUpBuilder))
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
