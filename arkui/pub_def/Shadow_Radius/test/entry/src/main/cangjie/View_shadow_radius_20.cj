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
import std.collection.*
import ohos.arkui.ui_context.*
import ohos.business_exception.BusinessException
import kit.PerformanceAnalysisKit.*

var customdialogId20: Int32 = 0
@Component
public class View_shadow_radius_20 {
    @State var index1: Int32 = 0
    @Builder
    func CustomDialog() {
        Column() {
            Text("Hello Content").height(60.vp)
            Button("Close").onClick({
                evt => getUIContext().getPromptAction().closeCustomDialog(customdialogId20)
            })
        }.margin(10.vp)
    }

    func build(){
        Column {
            Button("showDialog")
            .shadow(radius:0.0f64,color:Color.Red,offsetX:20.0f64,offsetY:20.0f64)
            .id("shadowradius")
            .onClick(
                {
                    evt =>
                    getUIContext().getPromptAction().showDialog(
                        ShowDialogOptions(
                            title: "showDialog Title Info",
                            buttons: [
                                ButtonInfo(text: 'button1', color: Color(0X000000)),
                                ButtonInfo(text: 'button2', color: Color(0X000000))
                            ],
                            shadow:ShadowOptions(radius:0.0f64)
                        ),
                        callback: {
                            err: Option<BusinessException>, i: Option<Int32> => try {
                                match (err) {
                                    case Some(e) => Hilog.info(0, "cangjie", "error: errcode is ${e.code}")
                                    case _ => ()
                                }
                            } catch (e: Exception) {
                                Hilog.info(0, "cangjie", e.toString())
                            }
                        }
                    )
                }
            )
        }.width(100.percent).padding(top: 5)
    }
}