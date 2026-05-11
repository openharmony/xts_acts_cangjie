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

package ohos_app_cangjie_entry.StepIt_ca_background_01

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
internal import kit.LocalizationKit.__GenerateResource__
@Entry
@Component
class index_StepIt_ca_background_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_StepIt_comattr_background_1", "View_StepIt_comattr_background_2", "View_StepIt_comattr_background_3", "View_StepIt_comattr_background_4", "View_StepIt_comattr_background_5",
  "View_StepIt_comattr_background_6", "View_StepIt_comattr_background_7", "View_StepIt_comattr_background_8", "View_StepIt_comattr_background_9", "View_StepIt_comattr_background_10",
  "View_StepIt_comattr_background_11", "View_StepIt_comattr_background_12", "View_StepIt_comattr_background_13", "View_StepIt_comattr_background_14", "View_StepIt_comattr_background_15",
  "View_StepIt_comattr_background_16", "View_StepIt_comattr_background_17", "View_StepIt_comattr_background_18", "View_StepIt_comattr_background_19", "View_StepIt_comattr_background_20",
  "View_StepIt_comattr_background_21", "View_StepIt_comattr_background_22", "View_StepIt_comattr_background_23", "View_StepIt_comattr_background_24", "View_StepIt_comattr_background_25",
  "View_StepIt_comattr_background_26", "View_StepIt_comattr_background_27", "View_StepIt_comattr_background_28", "View_StepIt_comattr_background_29", "View_StepIt_comattr_background_30",
  "View_StepIt_comattr_background_31", "View_StepIt_comattr_background_32", "View_StepIt_comattr_background_33", "View_StepIt_comattr_background_34", "View_StepIt_comattr_background_35",
  "View_StepIt_comattr_background_36", "View_StepIt_comattr_background_37", "View_StepIt_comattr_background_38", "View_StepIt_comattr_background_39", "View_StepIt_comattr_background_40",
  "View_StepIt_comattr_background_41", "View_StepIt_comattr_background_42", "View_StepIt_comattr_background_43", "View_StepIt_comattr_background_44" ],
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
