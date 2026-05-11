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

package ohos_app_cangjie_entry.Refre_ca_size_02

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
class index_Refre_ca_size_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Refresh_comattr_size2_1", "View_Refresh_comattr_size2_2", "View_Refresh_comattr_size2_3", "View_Refresh_comattr_size2_4", "View_Refresh_comattr_size2_5",
  "View_Refresh_comattr_size2_6", "View_Refresh_comattr_size2_7", "View_Refresh_comattr_size2_8", "View_Refresh_comattr_size2_9", "View_Refresh_comattr_size2_10",
  "View_Refresh_comattr_size2_11", "View_Refresh_comattr_size2_12", "View_Refresh_comattr_size2_13", "View_Refresh_comattr_size2_14", "View_Refresh_comattr_size2_15",
  "View_Refresh_comattr_size2_16", "View_Refresh_comattr_size2_17", "View_Refresh_comattr_size2_18", "View_Refresh_comattr_size2_19", "View_Refresh_comattr_size2_20",
  "View_Refresh_comattr_size2_21", "View_Refresh_comattr_size2_22", "View_Refresh_comattr_size2_23", "View_Refresh_comattr_size2_24", "View_Refresh_comattr_size2_25",
  "View_Refresh_comattr_size2_26", "View_Refresh_comattr_size2_27", "View_Refresh_comattr_size2_28", "View_Refresh_comattr_size2_29", "View_Refresh_comattr_size2_30",
  "View_Refresh_comattr_size2_31", "View_Refresh_comattr_size2_32", "View_Refresh_comattr_size2_33", "View_Refresh_comattr_size2_34", "View_Refresh_comattr_size2_35",
  "View_Refresh_comattr_size2_36", "View_Refresh_comattr_size2_37", "View_Refresh_comattr_size2_38", "View_Refresh_comattr_size2_39", "View_Refresh_comattr_size2_40",
  "View_Refresh_comattr_size2_41", "View_Refresh_comattr_size2_42", "View_Refresh_comattr_size2_43", "View_Refresh_comattr_size2_44", "View_Refresh_comattr_size2_45",
  "View_Refresh_comattr_size2_46", "View_Refresh_comattr_size2_47", "View_Refresh_comattr_size2_48", "View_Refresh_comattr_size2_49", "View_Refresh_comattr_size2_50",
  "View_Refresh_comattr_size2_51", "View_Refresh_comattr_size2_52", "View_Refresh_comattr_size2_53", "View_Refresh_comattr_size2_54", "View_Refresh_comattr_size2_55",
  "View_Refresh_comattr_size2_56", "View_Refresh_comattr_size2_57", "View_Refresh_comattr_size2_58", "View_Refresh_comattr_size2_59", "View_Refresh_comattr_size2_60",
  "View_Refresh_comattr_size2_61", "View_Refresh_comattr_size2_62", "View_Refresh_comattr_size2_63", "View_Refresh_comattr_size2_64", "View_Refresh_comattr_size2_65",
  "View_Refresh_comattr_size2_66", "View_Refresh_comattr_size2_67", "View_Refresh_comattr_size2_68", "View_Refresh_comattr_size2_69", "View_Refresh_comattr_size2_70",
  "View_Refresh_comattr_size2_71", "View_Refresh_comattr_size2_72", "View_Refresh_comattr_size2_73", "View_Refresh_comattr_size2_74", "View_Refresh_comattr_size2_75",
  "View_Refresh_comattr_size2_76", "View_Refresh_comattr_size2_77", "View_Refresh_comattr_size2_78", "View_Refresh_comattr_size2_79", "View_Refresh_comattr_size2_80",
  "View_Refresh_comattr_size2_81", "View_Refresh_comattr_size2_82", "View_Refresh_comattr_size2_83", "View_Refresh_comattr_size2_84", "View_Refresh_comattr_size2_85",
  "View_Refresh_comattr_size2_86", "View_Refresh_comattr_size2_87", "View_Refresh_comattr_size2_88", "View_Refresh_comattr_size2_89", "View_Refresh_comattr_size2_90",
  "View_Refresh_comattr_size2_91", "View_Refresh_comattr_size2_92", "View_Refresh_comattr_size2_93", "View_Refresh_comattr_size2_94", "View_Refresh_comattr_size2_95",
  "View_Refresh_comattr_size2_96", "View_Refresh_comattr_size2_97", "View_Refresh_comattr_size2_98", "View_Refresh_comattr_size2_99", "View_Refresh_comattr_size2_100" ],
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
