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
public class View_Button_ca_safar_01 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Button(){
                    TextInput().placeholderFont(size:14)
                    .width(320)
                    .height(40)
                    .fontSize(14)
                    .fontColor(Color.Black)
                    .backgroundColor(Color.White)
                    .offset(x:15,y:15)
                }
                .id("Button_comattr_id1")
                .backgroundColor(Color.Blue)
                .height(100)
                .width(30.percent)
                .offset(x:0,y:200)

                Button(){
                    TextInput().placeholderFont(size:14)
                    .width(320)
                    .height(40)
                    .fontSize(14)
                    .fontColor(Color.Black)
                    .backgroundColor(Color.White)
                    .offset(x:15,y:15)
                }
                .id("Button_comattr_id2")
                .backgroundColor(Color.Blue)
                .height(100)
                .width(30.percent)
                .offset(x:0,y:200)
                .expandSafeArea(types:[SafeAreaType.System],edges:[SafeAreaEdge.Top,SafeAreaEdge.Bottom])
            }).width(100i64.percent)
    }
}
