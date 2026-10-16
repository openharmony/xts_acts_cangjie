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

var customdialogId: Int32 = 0

@Component
public class View_BuilderOfCustomer_16 {
    @Builder
    func CustomDialog() {
        Column() {
            Text("Hello Content").height(60.vp).id("textid")
            Button("Close").onClick({
                evt => getUIContext().getPromptAction().closeCustomDialog(customdialogId)
            }).id("buttonclose")
        }.margin(10.vp)
    }
    func build() {
        Column() {
            Button("open dialog and update content").id("buttonopen")
                .margin(top: 50)
                .onClick(
                    {
                        evt => getUIContext().getPromptAction().openCustomDialog(
                            CustomDialogOptions(builder: this.CustomDialog),
                            {
                                id => customdialogId = id
                            }
                        )
                    })
        }
    }
}
