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

package ohos_app_cangjie_entry.Alp_ca_size_02

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
class index_Alp_ca_size_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_AlphabetIndexer_comattr_size222_1", "View_AlphabetIndexer_comattr_size222_2", "View_AlphabetIndexer_comattr_size222_3", "View_AlphabetIndexer_comattr_size222_4", "View_AlphabetIndexer_comattr_size222_5",
  "View_AlphabetIndexer_comattr_size222_6", "View_AlphabetIndexer_comattr_size222_7", "View_AlphabetIndexer_comattr_size222_8", "View_AlphabetIndexer_comattr_size222_9", "View_AlphabetIndexer_comattr_size222_10",
  "View_AlphabetIndexer_comattr_size222_11", "View_AlphabetIndexer_comattr_size222_12", "View_AlphabetIndexer_comattr_size222_13", "View_AlphabetIndexer_comattr_size222_14", "View_AlphabetIndexer_comattr_size222_15",
  "View_AlphabetIndexer_comattr_size222_16", "View_AlphabetIndexer_comattr_size222_17", "View_AlphabetIndexer_comattr_size222_18", "View_AlphabetIndexer_comattr_size222_19", "View_AlphabetIndexer_comattr_size222_20",
  "View_AlphabetIndexer_comattr_size222_21", "View_AlphabetIndexer_comattr_size222_22", "View_AlphabetIndexer_comattr_size222_23", "View_AlphabetIndexer_comattr_size222_24", "View_AlphabetIndexer_comattr_size222_25",
  "View_AlphabetIndexer_comattr_size222_26", "View_AlphabetIndexer_comattr_size222_27", "View_AlphabetIndexer_comattr_size222_28", "View_AlphabetIndexer_comattr_size222_29", "View_AlphabetIndexer_comattr_size222_30",
  "View_AlphabetIndexer_comattr_size222_31", "View_AlphabetIndexer_comattr_size222_32", "View_AlphabetIndexer_comattr_size222_33", "View_AlphabetIndexer_comattr_size222_34", "View_AlphabetIndexer_comattr_size222_35",
  "View_AlphabetIndexer_comattr_size222_36", "View_AlphabetIndexer_comattr_size222_37", "View_AlphabetIndexer_comattr_size222_38", "View_AlphabetIndexer_comattr_size222_39", "View_AlphabetIndexer_comattr_size222_40",
  "View_AlphabetIndexer_comattr_size222_41", "View_AlphabetIndexer_comattr_size222_42", "View_AlphabetIndexer_comattr_size222_43", "View_AlphabetIndexer_comattr_size222_44", "View_AlphabetIndexer_comattr_size222_45",
  "View_AlphabetIndexer_comattr_size222_46", "View_AlphabetIndexer_comattr_size222_47", "View_AlphabetIndexer_comattr_size222_48", "View_AlphabetIndexer_comattr_size222_49", "View_AlphabetIndexer_comattr_size222_50",
  "View_AlphabetIndexer_comattr_size222_51", "View_AlphabetIndexer_comattr_size222_52", "View_AlphabetIndexer_comattr_size222_53", "View_AlphabetIndexer_comattr_size222_54", "View_AlphabetIndexer_comattr_size222_55",
  "View_AlphabetIndexer_comattr_size222_56", "View_AlphabetIndexer_comattr_size222_57", "View_AlphabetIndexer_comattr_size222_58", "View_AlphabetIndexer_comattr_size222_59", "View_AlphabetIndexer_comattr_size222_60",
  "View_AlphabetIndexer_comattr_size222_61", "View_AlphabetIndexer_comattr_size222_62", "View_AlphabetIndexer_comattr_size222_63", "View_AlphabetIndexer_comattr_size222_64", "View_AlphabetIndexer_comattr_size222_65",
  "View_AlphabetIndexer_comattr_size222_66", "View_AlphabetIndexer_comattr_size222_67", "View_AlphabetIndexer_comattr_size222_68", "View_AlphabetIndexer_comattr_size222_69", "View_AlphabetIndexer_comattr_size222_70",
  "View_AlphabetIndexer_comattr_size222_71", "View_AlphabetIndexer_comattr_size222_72", "View_AlphabetIndexer_comattr_size222_73", "View_AlphabetIndexer_comattr_size222_74", "View_AlphabetIndexer_comattr_size222_75",
  "View_AlphabetIndexer_comattr_size222_76", "View_AlphabetIndexer_comattr_size222_77", "View_AlphabetIndexer_comattr_size222_78", "View_AlphabetIndexer_comattr_size222_79", "View_AlphabetIndexer_comattr_size222_80",
  "View_AlphabetIndexer_comattr_size222_81", "View_AlphabetIndexer_comattr_size222_82", "View_AlphabetIndexer_comattr_size222_83", "View_AlphabetIndexer_comattr_size222_84", "View_AlphabetIndexer_comattr_size222_85",
  "View_AlphabetIndexer_comattr_size222_86", "View_AlphabetIndexer_comattr_size222_87", "View_AlphabetIndexer_comattr_size222_88", "View_AlphabetIndexer_comattr_size222_89", "View_AlphabetIndexer_comattr_size222_90",
  "View_AlphabetIndexer_comattr_size222_91", "View_AlphabetIndexer_comattr_size222_92", "View_AlphabetIndexer_comattr_size222_93", "View_AlphabetIndexer_comattr_size222_94", "View_AlphabetIndexer_comattr_size222_95",
  "View_AlphabetIndexer_comattr_size222_96", "View_AlphabetIndexer_comattr_size222_97", "View_AlphabetIndexer_comattr_size222_98", "View_AlphabetIndexer_comattr_size222_99", "View_AlphabetIndexer_comattr_size222_100" ],
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
