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
public class View_Button_ca_bpopu_01 {
    @State
    var handlePopup: Bool = false

    func build() {
        Column(){
            Text("${this.handlePopup}").id("bpopu")
            Row(space: 5i64.vp,
            child: {
                => Button(){
                    Text("popupOptions")
                }
                .id("require_id")
                .onClick(
                        {evt =>  this.handlePopup = true}
                )
                .bindPopup(
                    this.handlePopup,
                    PopupOptions(
                        message: 'This is a popup with PopupOptions',
                        primaryButton: PopupButton(
                            value: 'confirm',
                            action: {
                                => this.handlePopup = this.handlePopup
                            }
                        ),
                        secondaryButton: PopupButton(
                            value: 'cancel',
                            action: {
                                => this.handlePopup = !this.handlePopup
                            }
                        ),
                        onStateChange: {
                            evt =>
                            //nativeLog("Bind 1 isVisible: " + evt.isVisible.toString())
                            if (!evt.isVisible) {
                                this.handlePopup = false
                            }
                        },
                        showInSubWindow: false,
                        arrowOffset: 60.0.vp,
                        targetSpace: 20.0.vp,
                        enableArrow: true,
                        arrowHeight: 30.0.vp,
                        arrowWidth: 30.0.vp,
                        radius: 25.0.vp,
                        autoCancel: false,
                        backgroundBlurStyle: BlurStyle.Thick,
                        shadow: ShadowStyle.OuterDefaultSM,
                        offset: Position(x: 50.0, y: 50.0),
                        placement: Placement.Top,
                        arrowPointPosition: ArrowPointPosition.Center,
                        mask: Color(0x33000000),
                        popupColor: Color.Green,
                        transition: TransitionEffect.SLIDE_SWITCH,
                        followTransformOfTarget: true
                    )
                )
            }).width(100i64.percent)
        }
    }
}
