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

package ohos_app_cangjie_entry.TTim_ca_background_02

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
class index_TTim_ca_background_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextTimer_comattr_background22_1", "View_TextTimer_comattr_background22_2", "View_TextTimer_comattr_background22_3", "View_TextTimer_comattr_background22_4", "View_TextTimer_comattr_background22_5",
  "View_TextTimer_comattr_background22_6", "View_TextTimer_comattr_background22_7", "View_TextTimer_comattr_background22_8", "View_TextTimer_comattr_background22_9", "View_TextTimer_comattr_background22_10",
  "View_TextTimer_comattr_background22_11", "View_TextTimer_comattr_background22_12", "View_TextTimer_comattr_background22_13", "View_TextTimer_comattr_background22_14", "View_TextTimer_comattr_background22_15",
  "View_TextTimer_comattr_background22_16", "View_TextTimer_comattr_background22_17", "View_TextTimer_comattr_background22_18", "View_TextTimer_comattr_background22_19", "View_TextTimer_comattr_background22_20",
  "View_TextTimer_comattr_background22_21", "View_TextTimer_comattr_background22_22", "View_TextTimer_comattr_background22_23", "View_TextTimer_comattr_background22_24", "View_TextTimer_comattr_background22_25",
  "View_TextTimer_comattr_background22_26", "View_TextTimer_comattr_background22_27", "View_TextTimer_comattr_background22_28", "View_TextTimer_comattr_background22_29", "View_TextTimer_comattr_background22_30",
  "View_TextTimer_comattr_background22_31", "View_TextTimer_comattr_background22_32", "View_TextTimer_comattr_background22_33", "View_TextTimer_comattr_background22_34", "View_TextTimer_comattr_background22_35",
  "View_TextTimer_comattr_background22_36", "View_TextTimer_comattr_background22_37", "View_TextTimer_comattr_background22_38", "View_TextTimer_comattr_background22_39", "View_TextTimer_comattr_background22_40",
  "View_TextTimer_comattr_background22_41", "View_TextTimer_comattr_background22_42", "View_TextTimer_comattr_background22_43", "View_TextTimer_comattr_background22_44", "View_TextTimer_comattr_background22_45",
  "View_TextTimer_comattr_background22_46", "View_TextTimer_comattr_background22_47", "View_TextTimer_comattr_background22_48", "View_TextTimer_comattr_background22_49", "View_TextTimer_comattr_background22_50",
  "View_TextTimer_comattr_background22_51", "View_TextTimer_comattr_background22_52", "View_TextTimer_comattr_background22_53", "View_TextTimer_comattr_background22_54", "View_TextTimer_comattr_background22_55",
  "View_TextTimer_comattr_background22_56", "View_TextTimer_comattr_background22_57", "View_TextTimer_comattr_background22_58", "View_TextTimer_comattr_background22_59", "View_TextTimer_comattr_background22_60",
  "View_TextTimer_comattr_background22_61", "View_TextTimer_comattr_background22_62", "View_TextTimer_comattr_background22_63", "View_TextTimer_comattr_background22_64" ],
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
