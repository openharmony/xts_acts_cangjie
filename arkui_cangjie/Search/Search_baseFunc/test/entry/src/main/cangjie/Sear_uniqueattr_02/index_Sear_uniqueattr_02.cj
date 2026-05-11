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

package ohos_app_cangjie_entry.Sear_uniqueattr_02

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
class index_Sear_uniqueattr_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Search_uniqueattr_1", "View_Search_uniqueattr_2", "View_Search_uniqueattr_3", "View_Search_uniqueattr_4", "View_Search_uniqueattr_5",
  "View_Search_uniqueattr_6", "View_Search_uniqueattr_7", "View_Search_uniqueattr_8", "View_Search_uniqueattr_9", "View_Search_uniqueattr_10",
  "View_Search_uniqueattr_11", "View_Search_uniqueattr_12", "View_Search_uniqueattr_13", "View_Search_uniqueattr_14", "View_Search_uniqueattr_15",
  "View_Search_uniqueattr_16", "View_Search_uniqueattr_17", "View_Search_uniqueattr_18", "View_Search_uniqueattr_19", "View_Search_uniqueattr_20",
  "View_Search_uniqueattr_21", "View_Search_uniqueattr_22", "View_Search_uniqueattr_23", "View_Search_uniqueattr_24", "View_Search_uniqueattr_25",
  "View_Search_uniqueattr_26", "View_Search_uniqueattr_27", "View_Search_uniqueattr_28", "View_Search_uniqueattr_29", "View_Search_uniqueattr_30",
  "View_Search_uniqueattr_31", "View_Search_uniqueattr_32", "View_Search_uniqueattr_33", "View_Search_uniqueattr_34", "View_Search_uniqueattr_35",
  "View_Search_uniqueattr_36", "View_Search_uniqueattr_37", "View_Search_uniqueattr_38", "View_Search_uniqueattr_39", "View_Search_uniqueattr_40",
  "View_Search_uniqueattr_41", "View_Search_uniqueattr_42", "View_Search_uniqueattr_43", "View_Search_uniqueattr_44", "View_Search_uniqueattr_45",
  "View_Search_uniqueattr_46", "View_Search_uniqueattr_47", "View_Search_uniqueattr_48", "View_Search_uniqueattr_49", "View_Search_uniqueattr_50",
  "View_Search_uniqueattr_51", "View_Search_uniqueattr_52", "View_Search_uniqueattr_53", "View_Search_uniqueattr_54", "View_Search_uniqueattr_55",
  "View_Search_uniqueattr_56", "View_Search_uniqueattr_57", "View_Search_uniqueattr_58", "View_Search_uniqueattr_59", "View_Search_uniqueattr_60",
  "View_Search_uniqueattr_61", "View_Search_uniqueattr_62", "View_Search_uniqueattr_63", "View_Search_uniqueattr_64", "View_Search_uniqueattr_65",
  "View_Search_uniqueattr_66", "View_Search_uniqueattr_67", "View_Search_uniqueattr_68", "View_Search_uniqueattr_69", "View_Search_uniqueattr_70",
  "View_Search_uniqueattr_71", "View_Search_uniqueattr_72", "View_Search_uniqueattr_73", "View_Search_uniqueattr_74", "View_Search_uniqueattr_75",
  "View_Search_uniqueattr_76", "View_Search_uniqueattr_77", "View_Search_uniqueattr_78", "View_Search_uniqueattr_79", "View_Search_uniqueattr_80",
  "View_Search_uniqueattr_81", "View_Search_uniqueattr_82", "View_Search_uniqueattr_83", "View_Search_uniqueattr_84", "View_Search_uniqueattr_85",
  "View_Search_uniqueattr_86", "View_Search_uniqueattr_87", "View_Search_uniqueattr_88", "View_Search_uniqueattr_89", "View_Search_uniqueattr_90",
  "View_Search_uniqueattr_91", "View_Search_uniqueattr_92", "View_Search_uniqueattr_93", "View_Search_uniqueattr_94", "View_Search_uniqueattr_95",
  "View_Search_uniqueattr_96", "View_Search_uniqueattr_97", "View_Search_uniqueattr_98", "View_Search_uniqueattr_99", "View_Search_uniqueattr_100",
  "View_Search_uniqueattr_101", "View_Search_uniqueattr_102", "View_Search_uniqueattr_103", "View_Search_uniqueattr_104", "View_Search_uniqueattr_105",
  "View_Search_uniqueattr_106", "View_Search_uniqueattr_107", "View_Search_uniqueattr_108", "View_Search_uniqueattr_109", "View_Search_uniqueattr_110",
  "View_Search_uniqueattr_111", "View_Search_uniqueattr_112", "View_Search_uniqueattr_113", "View_Search_uniqueattr_114", "View_Search_uniqueattr_115",
  "View_Search_uniqueattr_116", "View_Search_uniqueattr_117", "View_Search_uniqueattr_118", "View_Search_uniqueattr_119", "View_Search_uniqueattr_120",
  "View_Search_uniqueattr_121", "View_Search_uniqueattr_122" ],
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
