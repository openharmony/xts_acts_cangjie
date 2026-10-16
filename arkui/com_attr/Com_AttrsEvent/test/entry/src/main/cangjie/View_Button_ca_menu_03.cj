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

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
public class View_Button_ca_menu_03 {
    @State var menu3: String = ""
    @Builder
    func cusbuilder() {
        Column {
            Button("cusmenu1")
                .width(300.px)
                .onClick({
                    evt => this.menu3 = "cusmenu1"
                })
            Button("cusmenu2")
                .width(300.px)
                .onClick({
                    evt => this.menu3 ="cusmenu2"
                })
        }
        .width(300.px)
    }    
    func build() {
        Column(){
        Text(this.menu3).id("menu3")
        Column(space: 10) {
            Button(){
                Text("cusmenu_entry")
            }
            .id("Button_comattr_id")
            .onClick({evt => this.menu3 = "cusmenushow"})
            .bindMenu(
                builder:cusbuilder
            )
        }}        
    }
}
