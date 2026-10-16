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

@Builder
func popupBuilder() {
    Column {
        Text("Custom Popup")
    }
}

@Entry
@Component
public class View_Button_ca_bpopu_02 {
    @State
    var customPopup: Bool = false

    func build() {
        Column(){
            Text("${customPopup}").id("bpopu")
            Row(space: 5i64.vp,
            child: {
                => Button(){
                    Text("popupOptions")
                }
                .id("require_id")
                .onClick({ e => this.customPopup = !this.customPopup
                                })
                .bindPopup(
                    this.customPopup,
                    CustomPopupOptions(
                        builder: bind(popupBuilder, this),
                        enableArrow: true,
                        placement: Placement.BottomLeft,
                        popupColor: Color.Red,
                        arrowHeight: 24.0.vp,
                        arrowWidth: 24.0.vp,
                        radius: 10.vp,
                        offset: Position(x: 5.0, y: 5.0),
                        width: 300.vp,
                        autoCancel: true,
                        targetSpace: 10.vp,
                        arrowOffset: 5.vp,
                        focusable: true,
                        arrowPointPosition: ArrowPointPosition.Center,
                        transition: TransitionEffect.SLIDE_SWITCH,
                        onStateChange: {
                            evt =>
                            // custom = "stateChange: ${evt.isVisible}"
                            if (!evt.isVisible) {
                                this.customPopup = false
                            }
                        }
                    )
                )

            }).width(100i64.percent)
        }

    }
}
