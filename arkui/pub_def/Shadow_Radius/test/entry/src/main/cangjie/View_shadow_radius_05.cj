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

import kit.ArkUI.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*

var customdialogId5: Int32 = 0

@Component
public class View_shadow_radius_05 {

    @Builder
    func CustomDialog() {
        Column() {
            Text("Hello Content").height(60.vp)
            Button("Close").onClick({
                evt => getUIContext().getPromptAction().closeCustomDialog(customdialogId5)
            })
        }.margin(10.vp)
    }

    func build(){
        Button("open dialog and options")
            .shadow(radius:0.0f64,color:Color.Red,offsetX:20.0f64,offsetY:20.0f64)
            .margin(top: 50)
            .id("shadowradius")
            .onClick({
                evt => getUIContext().getPromptAction().openCustomDialog(
                    CustomDialogOptions(builder: this.CustomDialog,shadow:ShadowOptions(radius:-1.0f64)),
                    {
                        id => customdialogId5 = id
                    }
                )
            })
    }
}