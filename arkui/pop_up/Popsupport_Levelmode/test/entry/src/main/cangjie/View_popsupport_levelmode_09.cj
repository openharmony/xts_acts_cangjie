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

import kit.ArkUI.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*

var customdialogId5: Int32 = 0
var dialogIdRecord5: Int32 = 0

@Entry
@Component
class View_popsupport_levelmode_09 {	
    @State
    var testResult: String = ""   
    @Builder
    func customDialogBuilder() {
        Column() {
            Text("Custom Dialog Content").fontSize(20.fp)
            Button("Close").onClick({evt => 
                getUIContext().getPromptAction().closeCustomDialog(dialogIdRecord5)
            })
        }.padding(10.vp)
    }

    func build(){
        Column(){
            Text(this.testResult).id("DilogText")
            Button("levelMode=Overlay, showInSubWindow=true,shadow:0.0f64")
                .margin(top: 50)
                .onClick({
                    evt => getUIContext().getPromptAction().openCustomDialog(
                        CustomDialogConfig(showInSubWindow: true, builder: bind(this.customDialogBuilder,this),shadow:ShadowOptions(radius:-10.0f64),levelMode: LevelMode.Overlay),
                        {
                            id => testResult = "levelMode=Overlay, showInSubWindow=true,shadow:0.0f64"
                        }
                    )
                })
                .id("levelmode_openCustomDialog")  
        }

    }
}