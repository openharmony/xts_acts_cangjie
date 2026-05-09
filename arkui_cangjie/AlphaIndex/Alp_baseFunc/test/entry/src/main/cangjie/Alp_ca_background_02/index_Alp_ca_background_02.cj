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

package ohos_app_cangjie_entry.Alp_ca_background_02

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
class index_Alp_ca_background_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_AlphabetIndexer_comattr_background222_1", "View_AlphabetIndexer_comattr_background222_2", "View_AlphabetIndexer_comattr_background222_3", "View_AlphabetIndexer_comattr_background222_4", "View_AlphabetIndexer_comattr_background222_5",
  "View_AlphabetIndexer_comattr_background222_6", "View_AlphabetIndexer_comattr_background222_7", "View_AlphabetIndexer_comattr_background222_8", "View_AlphabetIndexer_comattr_background222_9", "View_AlphabetIndexer_comattr_background222_10",
  "View_AlphabetIndexer_comattr_background222_11", "View_AlphabetIndexer_comattr_background222_12", "View_AlphabetIndexer_comattr_background222_13", "View_AlphabetIndexer_comattr_background222_14", "View_AlphabetIndexer_comattr_background222_15",
  "View_AlphabetIndexer_comattr_background222_16", "View_AlphabetIndexer_comattr_background222_17", "View_AlphabetIndexer_comattr_background222_18", "View_AlphabetIndexer_comattr_background222_19", "View_AlphabetIndexer_comattr_background222_20",
  "View_AlphabetIndexer_comattr_background222_21", "View_AlphabetIndexer_comattr_background222_22", "View_AlphabetIndexer_comattr_background222_23", "View_AlphabetIndexer_comattr_background222_24", "View_AlphabetIndexer_comattr_background222_25",
  "View_AlphabetIndexer_comattr_background222_26", "View_AlphabetIndexer_comattr_background222_27", "View_AlphabetIndexer_comattr_background222_28", "View_AlphabetIndexer_comattr_background222_29", "View_AlphabetIndexer_comattr_background222_30",
  "View_AlphabetIndexer_comattr_background222_31", "View_AlphabetIndexer_comattr_background222_32", "View_AlphabetIndexer_comattr_background222_33", "View_AlphabetIndexer_comattr_background222_34", "View_AlphabetIndexer_comattr_background222_35",
  "View_AlphabetIndexer_comattr_background222_36", "View_AlphabetIndexer_comattr_background222_37", "View_AlphabetIndexer_comattr_background222_38", "View_AlphabetIndexer_comattr_background222_39", "View_AlphabetIndexer_comattr_background222_40",
  "View_AlphabetIndexer_comattr_background222_41", "View_AlphabetIndexer_comattr_background222_42", "View_AlphabetIndexer_comattr_background222_43", "View_AlphabetIndexer_comattr_background222_44", "View_AlphabetIndexer_comattr_background222_45",
  "View_AlphabetIndexer_comattr_background222_46", "View_AlphabetIndexer_comattr_background222_47", "View_AlphabetIndexer_comattr_background222_48", "View_AlphabetIndexer_comattr_background222_49", "View_AlphabetIndexer_comattr_background222_50",
  "View_AlphabetIndexer_comattr_background222_51", "View_AlphabetIndexer_comattr_background222_52", "View_AlphabetIndexer_comattr_background222_53", "View_AlphabetIndexer_comattr_background222_54", "View_AlphabetIndexer_comattr_background222_55",
  "View_AlphabetIndexer_comattr_background222_56", "View_AlphabetIndexer_comattr_background222_57", "View_AlphabetIndexer_comattr_background222_58", "View_AlphabetIndexer_comattr_background222_59", "View_AlphabetIndexer_comattr_background222_60",
  "View_AlphabetIndexer_comattr_background222_61", "View_AlphabetIndexer_comattr_background222_62", "View_AlphabetIndexer_comattr_background222_63", "View_AlphabetIndexer_comattr_background222_64" ],
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
