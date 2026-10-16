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

@Entry
@Component
class View_popsupport_levelmode_13 {	     

    func build(){
        Column(){
            Button("levelMode=Overlay, showInSubWindow=true,shadow:1.0f64")
                    .fontSize(30.px)
                    .margin(10.px)
                    .onClick({
                        evt =>
                        getUIContext().getPromptAction().showDialog(
                            ShowDialogConfig(
                                showInSubWindow: true,
                                isModal:false,
                                levelMode: LevelMode.Overlay,
                                shadow: ShadowOptions(radius:1.0f64),
                                buttons: [ButtonInfo(text: "确定", color: Color.Red), ButtonInfo(text: "取消", color: Color.Red)]
                            ),
                            callback: {err, index =>}
                        )
                    })
                    .id("levelmode_showDialog")
            Button("Next").onClick({evt => 
                getUIContext().getRouter().pushUrl(url:"View_next")
            })
        }

    }
}