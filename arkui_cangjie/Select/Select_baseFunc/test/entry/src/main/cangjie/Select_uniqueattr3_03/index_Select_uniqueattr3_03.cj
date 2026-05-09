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

package ohos_app_cangjie_entry.Select_uniqueattr3_03

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
class index_Select_uniqueattr3_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Select_uniqueattr3_1", "View_Select_uniqueattr3_2", "View_Select_uniqueattr3_3", "View_Select_uniqueattr3_4", "View_Select_uniqueattr3_5",
  "View_Select_uniqueattr3_6", "View_Select_uniqueattr3_7", "View_Select_uniqueattr3_8", "View_Select_uniqueattr3_9", "View_Select_uniqueattr3_10",
  "View_Select_uniqueattr3_11", "View_Select_uniqueattr3_12", "View_Select_uniqueattr3_13", "View_Select_uniqueattr3_14", "View_Select_uniqueattr3_15",
  "View_Select_uniqueattr3_16", "View_Select_uniqueattr3_17", "View_Select_uniqueattr3_18", "View_Select_uniqueattr3_19", "View_Select_uniqueattr3_20",
  "View_Select_uniqueattr3_21", "View_Select_uniqueattr3_22", "View_Select_uniqueattr3_23", "View_Select_uniqueattr3_24", "View_Select_uniqueattr3_25",
  "View_Select_uniqueattr3_26", "View_Select_uniqueattr3_27", "View_Select_uniqueattr3_28", "View_Select_uniqueattr3_29", "View_Select_uniqueattr3_30",
  "View_Select_uniqueattr3_31", "View_Select_uniqueattr3_32", "View_Select_uniqueattr3_33", "View_Select_uniqueattr3_34", "View_Select_uniqueattr3_35",
  "View_Select_uniqueattr3_36", "View_Select_uniqueattr3_37", "View_Select_uniqueattr3_38", "View_Select_uniqueattr3_39", "View_Select_uniqueattr3_40",
  "View_Select_uniqueattr3_41", "View_Select_uniqueattr3_42", "View_Select_uniqueattr3_43", "View_Select_uniqueattr3_44", "View_Select_uniqueattr3_45",
  "View_Select_uniqueattr3_46", "View_Select_uniqueattr3_47", "View_Select_uniqueattr3_48", "View_Select_uniqueattr3_49", "View_Select_uniqueattr3_50",
  "View_Select_uniqueattr3_51", "View_Select_uniqueattr3_52", "View_Select_uniqueattr3_53", "View_Select_uniqueattr3_54", "View_Select_uniqueattr3_55",
  "View_Select_uniqueattr3_56", "View_Select_uniqueattr3_57", "View_Select_uniqueattr3_58", "View_Select_uniqueattr3_59", "View_Select_uniqueattr3_60" ],
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
