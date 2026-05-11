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

package ohos_app_cangjie_entry.TPicker_uniqueattr_01

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
class index_TPicker_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextPicker_uniqueattr_1", "View_TextPicker_uniqueattr_2", "View_TextPicker_uniqueattr_3", "View_TextPicker_uniqueattr_4", "View_TextPicker_uniqueattr_5",
  "View_TextPicker_uniqueattr_6", "View_TextPicker_uniqueattr_7", "View_TextPicker_uniqueattr_8", "View_TextPicker_uniqueattr_9", "View_TextPicker_uniqueattr_10",
  "View_TextPicker_uniqueattr_11", "View_TextPicker_uniqueattr_12", "View_TextPicker_uniqueattr_13", "View_TextPicker_uniqueattr_14", "View_TextPicker_uniqueattr_15",
  "View_TextPicker_uniqueattr_16", "View_TextPicker_uniqueattr_17", "View_TextPicker_uniqueattr_18", "View_TextPicker_uniqueattr_19", "View_TextPicker_uniqueattr_20",
  "View_TextPicker_uniqueattr_21", "View_TextPicker_uniqueattr_22", "View_TextPicker_uniqueattr_23", "View_TextPicker_uniqueattr_24", "View_TextPicker_uniqueattr_25",
  "View_TextPicker_uniqueattr_26", "View_TextPicker_uniqueattr_27", "View_TextPicker_uniqueattr_28", "View_TextPicker_uniqueattr_29", "View_TextPicker_uniqueattr_30",
  "View_TextPicker_uniqueattr_31", "View_TextPicker_uniqueattr_32", "View_TextPicker_uniqueattr_33", "View_TextPicker_uniqueattr_34", "View_TextPicker_uniqueattr_35",
  "View_TextPicker_uniqueattr_36", "View_TextPicker_uniqueattr_37", "View_TextPicker_uniqueattr_38", "View_TextPicker_uniqueattr_39", "View_TextPicker_uniqueattr_40",
  "View_TextPicker_uniqueattr_41", "View_TextPicker_uniqueattr_42", "View_TextPicker_uniqueattr_43", "View_TextPicker_uniqueattr_44", "View_TextPicker_uniqueattr_45",
  "View_TextPicker_uniqueattr_46", "View_TextPicker_uniqueattr_47", "View_TextPicker_uniqueattr_48", "View_TextPicker_uniqueattr_49", "View_TextPicker_uniqueattr_50",
  "View_TextPicker_uniqueattr_51", "View_TextPicker_uniqueattr_52", "View_TextPicker_uniqueattr_53", "View_TextPicker_uniqueattr_54", "View_TextPicker_uniqueattr_55",
  "View_TextPicker_uniqueattr_56", "View_TextPicker_uniqueattr_57", "View_TextPicker_uniqueattr_58", "View_TextPicker_uniqueattr_59", "View_TextPicker_uniqueattr_60",
  "View_TextPicker_uniqueattr_61", "View_TextPicker_uniqueattr_62", "View_TextPicker_uniqueattr_63", "View_TextPicker_uniqueattr_64", "View_TextPicker_uniqueattr_65",
  "View_TextPicker_uniqueattr_66", "View_TextPicker_uniqueattr_67", "View_TextPicker_uniqueattr_68", "View_TextPicker_uniqueattr_69", "View_TextPicker_uniqueattr_70",
  "View_TextPicker_uniqueattr_71", "View_TextPicker_uniqueattr_72", "View_TextPicker_uniqueattr_73", "View_TextPicker_uniqueattr_74", "View_TextPicker_uniqueattr_75",
  "View_TextPicker_uniqueattr_76", "View_TextPicker_uniqueattr_77", "View_TextPicker_uniqueattr_78", "View_TextPicker_uniqueattr_79", "View_TextPicker_uniqueattr_80",
  "View_TextPicker_uniqueattr_81", "View_TextPicker_uniqueattr_82", "View_TextPicker_uniqueattr_83", "View_TextPicker_uniqueattr_84", "View_TextPicker_uniqueattr_85",
  "View_TextPicker_uniqueattr_86", "View_TextPicker_uniqueattr_87", "View_TextPicker_uniqueattr_88", "View_TextPicker_uniqueattr_89", "View_TextPicker_uniqueattr_90",
  "View_TextPicker_uniqueattr_91", "View_TextPicker_uniqueattr_92", "View_TextPicker_uniqueattr_93", "View_TextPicker_uniqueattr_94", "View_TextPicker_uniqueattr_95",
  "View_TextPicker_uniqueattr_96", "View_TextPicker_uniqueattr_97", "View_TextPicker_uniqueattr_98", "View_TextPicker_uniqueattr_99", "View_TextPicker_uniqueattr_100",
  "View_TextPicker_uniqueattr_101", "View_TextPicker_uniqueattr_102", "View_TextPicker_uniqueattr_103", "View_TextPicker_uniqueattr_104", "View_TextPicker_uniqueattr_105",
  "View_TextPicker_uniqueattr_106", "View_TextPicker_uniqueattr_107", "View_TextPicker_uniqueattr_108", "View_TextPicker_uniqueattr_109", "View_TextPicker_uniqueattr_110",
  "View_TextPicker_uniqueattr_111", "View_TextPicker_uniqueattr_112", "View_TextPicker_uniqueattr_113", "View_TextPicker_uniqueattr_114", "View_TextPicker_uniqueattr_115",
  "View_TextPicker_uniqueattr_116", "View_TextPicker_uniqueattr_117", "View_TextPicker_uniqueattr_118", "View_TextPicker_uniqueattr_119", "View_TextPicker_uniqueattr_120",
  "View_TextPicker_uniqueattr_121", "View_TextPicker_uniqueattr_122", "View_TextPicker_uniqueattr_123", "View_TextPicker_uniqueattr_124", "View_TextPicker_uniqueattr_125",
  "View_TextPicker_uniqueattr_126", "View_TextPicker_uniqueattr_127", "View_TextPicker_uniqueattr_128", "View_TextPicker_uniqueattr_129", "View_TextPicker_uniqueattr_130",
  "View_TextPicker_uniqueattr_131", "View_TextPicker_uniqueattr_132", "View_TextPicker_uniqueattr_133", "View_TextPicker_uniqueattr_134", "View_TextPicker_uniqueattr_135",
  "View_TextPicker_uniqueattr_136", "View_TextPicker_uniqueattr_137", "View_TextPicker_uniqueattr_138", "View_TextPicker_uniqueattr_139", "View_TextPicker_uniqueattr_140" ],
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
