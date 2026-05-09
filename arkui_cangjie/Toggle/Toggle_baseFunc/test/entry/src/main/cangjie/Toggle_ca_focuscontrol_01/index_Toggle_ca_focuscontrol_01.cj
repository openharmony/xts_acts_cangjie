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

package ohos_app_cangjie_entry.Toggle_ca_focuscontrol_01

import kit.ArkUI.LengthProp
import kit.ArkUI.Column
import kit.ArkUI.Row
import kit.ArkUI.Text
import kit.ArkUI.CustomView
import kit.ArkUI.CJEntry
import kit.ArkUI.loadNativeView
import kit.ArkUI.FontWeight
import kit.ArkUI.SubscriberManager
import kit.ArkUI.ObservedProperty
import kit.ArkUI.LocalStorage
import ohos.arkui.state_macro_manage.Entry
import ohos.arkui.state_macro_manage.Component
import ohos.arkui.state_macro_manage.State
import kit.PerformanceAnalysisKit.Hilog
import kit.ArkUI.Scroll
import kit.ArkUI.ClickEvent
import kit.ArkUI.ForEach
import kit.ArkUI.Button

@Entry
@Component
class index_Toggle_ca_focuscontrol_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Toggle_comattr_focuscontrol_1", "View_Toggle_comattr_focuscontrol_2", "View_Toggle_comattr_focuscontrol_3", "View_Toggle_comattr_focuscontrol_4", "View_Toggle_comattr_focuscontrol_5",
  "View_Toggle_comattr_focuscontrol_6", "View_Toggle_comattr_focuscontrol_7", "View_Toggle_comattr_focuscontrol_8", "View_Toggle_comattr_focuscontrol_9", "View_Toggle_comattr_focuscontrol_10",
  "View_Toggle_comattr_focuscontrol_11", "View_Toggle_comattr_focuscontrol_12", "View_Toggle_comattr_focuscontrol_13", "View_Toggle_comattr_focuscontrol_14", "View_Toggle_comattr_focuscontrol_15",
  "View_Toggle_comattr_focuscontrol_16", "View_Toggle_comattr_focuscontrol_17", "View_Toggle_comattr_focuscontrol_18", "View_Toggle_comattr_focuscontrol_19", "View_Toggle_comattr_focuscontrol_20",
  "View_Toggle_comattr_focuscontrol_21", "View_Toggle_comattr_focuscontrol_22", "View_Toggle_comattr_focuscontrol_23", "View_Toggle_comattr_focuscontrol_24", "View_Toggle_comattr_focuscontrol_25",
  "View_Toggle_comattr_focuscontrol_26", "View_Toggle_comattr_focuscontrol_27", "View_Toggle_comattr_focuscontrol_28", "View_Toggle_comattr_focuscontrol_29", "View_Toggle_comattr_focuscontrol_30",
  "View_Toggle_comattr_focuscontrol_31", "View_Toggle_comattr_focuscontrol_32", "View_Toggle_comattr_focuscontrol_33", "View_Toggle_comattr_focuscontrol_34", "View_Toggle_comattr_focuscontrol_35",
  "View_Toggle_comattr_focuscontrol_36", "View_Toggle_comattr_focuscontrol_37", "View_Toggle_comattr_focuscontrol_38", "View_Toggle_comattr_focuscontrol_39", "View_Toggle_comattr_focuscontrol_40",
  "View_Toggle_comattr_focuscontrol_41", "View_Toggle_comattr_focuscontrol_42", "View_Toggle_comattr_focuscontrol_43", "View_Toggle_comattr_focuscontrol_44", "View_Toggle_comattr_focuscontrol_45",
  "View_Toggle_comattr_focuscontrol_46", "View_Toggle_comattr_focuscontrol_47", "View_Toggle_comattr_focuscontrol_48" ],
                            itemGeneratorFunc: {
                                viewName: String, _: Int64 => Button(viewName)
                                    .fontSize(16i64)
                                    .width(100i64.percent)
                                    .height(15i64)
                                    .id(viewName)
                                    .borderRadius(10i64)
                                    .onClick(
                                        {
                                            clickEvent: ClickEvent => getUIContext().getRouter().pushUrl(url: viewName)
                                        })
                            })
                    }).width(100i64.percent).margin(top: 5i64)
            }).id("scroller")
    }
}
