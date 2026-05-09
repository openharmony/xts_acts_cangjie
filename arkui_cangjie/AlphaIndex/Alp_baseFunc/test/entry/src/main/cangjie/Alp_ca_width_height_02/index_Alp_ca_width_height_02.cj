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

package ohos_app_cangjie_entry.Alp_ca_width_height_02

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
class index_Alp_ca_width_height_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_AlphabetIndexer_comattr_width_height222_1", "View_AlphabetIndexer_comattr_width_height222_2", "View_AlphabetIndexer_comattr_width_height222_3", "View_AlphabetIndexer_comattr_width_height222_4", "View_AlphabetIndexer_comattr_width_height222_5",
  "View_AlphabetIndexer_comattr_width_height222_6", "View_AlphabetIndexer_comattr_width_height222_7", "View_AlphabetIndexer_comattr_width_height222_8", "View_AlphabetIndexer_comattr_width_height222_9", "View_AlphabetIndexer_comattr_width_height222_10",
  "View_AlphabetIndexer_comattr_width_height222_11", "View_AlphabetIndexer_comattr_width_height222_12", "View_AlphabetIndexer_comattr_width_height222_13", "View_AlphabetIndexer_comattr_width_height222_14", "View_AlphabetIndexer_comattr_width_height222_15",
  "View_AlphabetIndexer_comattr_width_height222_16", "View_AlphabetIndexer_comattr_width_height222_17", "View_AlphabetIndexer_comattr_width_height222_18", "View_AlphabetIndexer_comattr_width_height222_19", "View_AlphabetIndexer_comattr_width_height222_20",
  "View_AlphabetIndexer_comattr_width_height222_21", "View_AlphabetIndexer_comattr_width_height222_22", "View_AlphabetIndexer_comattr_width_height222_23", "View_AlphabetIndexer_comattr_width_height222_24", "View_AlphabetIndexer_comattr_width_height222_25",
  "View_AlphabetIndexer_comattr_width_height222_26", "View_AlphabetIndexer_comattr_width_height222_27", "View_AlphabetIndexer_comattr_width_height222_28", "View_AlphabetIndexer_comattr_width_height222_29", "View_AlphabetIndexer_comattr_width_height222_30",
  "View_AlphabetIndexer_comattr_width_height222_31", "View_AlphabetIndexer_comattr_width_height222_32", "View_AlphabetIndexer_comattr_width_height222_33", "View_AlphabetIndexer_comattr_width_height222_34", "View_AlphabetIndexer_comattr_width_height222_35",
  "View_AlphabetIndexer_comattr_width_height222_36", "View_AlphabetIndexer_comattr_width_height222_37", "View_AlphabetIndexer_comattr_width_height222_38", "View_AlphabetIndexer_comattr_width_height222_39", "View_AlphabetIndexer_comattr_width_height222_40",
  "View_AlphabetIndexer_comattr_width_height222_41", "View_AlphabetIndexer_comattr_width_height222_42", "View_AlphabetIndexer_comattr_width_height222_43", "View_AlphabetIndexer_comattr_width_height222_44", "View_AlphabetIndexer_comattr_width_height222_45",
  "View_AlphabetIndexer_comattr_width_height222_46", "View_AlphabetIndexer_comattr_width_height222_47", "View_AlphabetIndexer_comattr_width_height222_48", "View_AlphabetIndexer_comattr_width_height222_49", "View_AlphabetIndexer_comattr_width_height222_50",
  "View_AlphabetIndexer_comattr_width_height222_51", "View_AlphabetIndexer_comattr_width_height222_52", "View_AlphabetIndexer_comattr_width_height222_53", "View_AlphabetIndexer_comattr_width_height222_54", "View_AlphabetIndexer_comattr_width_height222_55",
  "View_AlphabetIndexer_comattr_width_height222_56", "View_AlphabetIndexer_comattr_width_height222_57", "View_AlphabetIndexer_comattr_width_height222_58", "View_AlphabetIndexer_comattr_width_height222_59", "View_AlphabetIndexer_comattr_width_height222_60",
  "View_AlphabetIndexer_comattr_width_height222_61", "View_AlphabetIndexer_comattr_width_height222_62", "View_AlphabetIndexer_comattr_width_height222_63", "View_AlphabetIndexer_comattr_width_height222_64", "View_AlphabetIndexer_comattr_width_height222_65",
  "View_AlphabetIndexer_comattr_width_height222_66", "View_AlphabetIndexer_comattr_width_height222_67", "View_AlphabetIndexer_comattr_width_height222_68", "View_AlphabetIndexer_comattr_width_height222_69", "View_AlphabetIndexer_comattr_width_height222_70",
  "View_AlphabetIndexer_comattr_width_height222_71", "View_AlphabetIndexer_comattr_width_height222_72", "View_AlphabetIndexer_comattr_width_height222_73", "View_AlphabetIndexer_comattr_width_height222_74", "View_AlphabetIndexer_comattr_width_height222_75",
  "View_AlphabetIndexer_comattr_width_height222_76", "View_AlphabetIndexer_comattr_width_height222_77", "View_AlphabetIndexer_comattr_width_height222_78", "View_AlphabetIndexer_comattr_width_height222_79", "View_AlphabetIndexer_comattr_width_height222_80",
  "View_AlphabetIndexer_comattr_width_height222_81", "View_AlphabetIndexer_comattr_width_height222_82", "View_AlphabetIndexer_comattr_width_height222_83", "View_AlphabetIndexer_comattr_width_height222_84", "View_AlphabetIndexer_comattr_width_height222_85",
  "View_AlphabetIndexer_comattr_width_height222_86", "View_AlphabetIndexer_comattr_width_height222_87", "View_AlphabetIndexer_comattr_width_height222_88", "View_AlphabetIndexer_comattr_width_height222_89", "View_AlphabetIndexer_comattr_width_height222_90",
  "View_AlphabetIndexer_comattr_width_height222_91", "View_AlphabetIndexer_comattr_width_height222_92", "View_AlphabetIndexer_comattr_width_height222_93", "View_AlphabetIndexer_comattr_width_height222_94", "View_AlphabetIndexer_comattr_width_height222_95",
  "View_AlphabetIndexer_comattr_width_height222_96", "View_AlphabetIndexer_comattr_width_height222_97", "View_AlphabetIndexer_comattr_width_height222_98", "View_AlphabetIndexer_comattr_width_height222_99", "View_AlphabetIndexer_comattr_width_height222_100" ],
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
