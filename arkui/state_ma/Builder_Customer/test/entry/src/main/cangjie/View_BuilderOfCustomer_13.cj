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
public class View_BuilderOfCustomer_13 {
    @Builder
    func descriptionBuilder(): Unit {
        Text("Gauge Description")
            .fontSize(14)
            .id("description_text")
            .padding(5)
    }

    @Builder
    func componentBuilder(): Unit {
        Menu(){
            MenuItem(startIcon: Option<ResourceStr>.None, content: "Item 1", endIcon: Option<ResourceStr>.None, labelInfo: Option<ResourceStr>.None,builder:this.descriptionBuilder).id("menuit")
        }
        } 

    func build() {
        Column(space: 5i64.vp,
            child: {
                => Text("MenuItemtest")
                   this.componentBuilder()                   
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
