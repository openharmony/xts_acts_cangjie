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

var customdialogId3: Int32 = 0
var dialogIdRecord3: Int32 = 0

@Entry
@Component
class View_popsupport_levelmode_03 {	     
    @Builder
    func customDialogBuilder() {
        Column() {
            Text("Custom Dialog Content").fontSize(20.fp)
            Button("Next").onClick({evt => 
                getUIContext().getRouter().pushUrl(url:"View_next")
            })
            Button("Close").onClick({evt => 
                getUIContext().getPromptAction().closeCustomDialog(dialogIdRecord3)
            })
        }.padding(10.vp)
    }

    func build(){
        Button("levelMode=Embedded, showInSubWindow=false,shadow:Float64.Max")
            .margin(top: 50)
            .onClick({
                evt => getUIContext().getPromptAction().openCustomDialog(
                    CustomDialogConfig(showInSubWindow: false, isModal:false,builder: bind(this.customDialogBuilder,this),shadow:ShadowOptions(radius:Float64.Max),levelMode: LevelMode.Embedded),
                    {
                        id => customdialogId3 = id
                    }
                )
            })
            .id("levelmode_openCustomDialog")
    }
}