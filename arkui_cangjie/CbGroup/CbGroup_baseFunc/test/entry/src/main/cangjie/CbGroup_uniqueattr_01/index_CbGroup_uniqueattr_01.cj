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

package ohos_app_cangjie_entry.CbGroup_uniqueattr_01

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
class index_CbGroup_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_CheckboxGroup_uniqueattr_1", "View_CheckboxGroup_uniqueattr_2", "View_CheckboxGroup_uniqueattr_3", "View_CheckboxGroup_uniqueattr_4", "View_CheckboxGroup_uniqueattr_5",
  "View_CheckboxGroup_uniqueattr_6", "View_CheckboxGroup_uniqueattr_7", "View_CheckboxGroup_uniqueattr_8", "View_CheckboxGroup_uniqueattr_9", "View_CheckboxGroup_uniqueattr_10",
  "View_CheckboxGroup_uniqueattr_11", "View_CheckboxGroup_uniqueattr_12", "View_CheckboxGroup_uniqueattr_13", "View_CheckboxGroup_uniqueattr_14", "View_CheckboxGroup_uniqueattr_15",
  "View_CheckboxGroup_uniqueattr_16", "View_CheckboxGroup_uniqueattr_17", "View_CheckboxGroup_uniqueattr_18", "View_CheckboxGroup_uniqueattr_19", "View_CheckboxGroup_uniqueattr_20",
  "View_CheckboxGroup_uniqueattr_21", "View_CheckboxGroup_uniqueattr_22", "View_CheckboxGroup_uniqueattr_23", "View_CheckboxGroup_uniqueattr_24", "View_CheckboxGroup_uniqueattr_25",
  "View_CheckboxGroup_uniqueattr_26", "View_CheckboxGroup_uniqueattr_27", "View_CheckboxGroup_uniqueattr_28", "View_CheckboxGroup_uniqueattr_29", "View_CheckboxGroup_uniqueattr_30",
  "View_CheckboxGroup_uniqueattr_31", "View_CheckboxGroup_uniqueattr_32", "View_CheckboxGroup_uniqueattr_33", "View_CheckboxGroup_uniqueattr_34", "View_CheckboxGroup_uniqueattr_35",
  "View_CheckboxGroup_uniqueattr_36", "View_CheckboxGroup_uniqueattr_37", "View_CheckboxGroup_uniqueattr_38", "View_CheckboxGroup_uniqueattr_39", "View_CheckboxGroup_uniqueattr_40",
  "View_CheckboxGroup_uniqueattr_41", "View_CheckboxGroup_uniqueattr_42", "View_CheckboxGroup_uniqueattr_43", "View_CheckboxGroup_uniqueattr_44", "View_CheckboxGroup_uniqueattr_45",
  "View_CheckboxGroup_uniqueattr_46", "View_CheckboxGroup_uniqueattr_47", "View_CheckboxGroup_uniqueattr_48", "View_CheckboxGroup_uniqueattr_49", "View_CheckboxGroup_uniqueattr_50",
  "View_CheckboxGroup_uniqueattr_51", "View_CheckboxGroup_uniqueattr_52", "View_CheckboxGroup_uniqueattr_53", "View_CheckboxGroup_uniqueattr_54", "View_CheckboxGroup_uniqueattr_55",
  "View_CheckboxGroup_uniqueattr_56", "View_CheckboxGroup_uniqueattr_57", "View_CheckboxGroup_uniqueattr_58", "View_CheckboxGroup_uniqueattr_59", "View_CheckboxGroup_uniqueattr_60",
  "View_CheckboxGroup_uniqueattr_61", "View_CheckboxGroup_uniqueattr_62", "View_CheckboxGroup_uniqueattr_63", "View_CheckboxGroup_uniqueattr_64", "View_CheckboxGroup_uniqueattr_65",
  "View_CheckboxGroup_uniqueattr_66", "View_CheckboxGroup_uniqueattr_67", "View_CheckboxGroup_uniqueattr_68", "View_CheckboxGroup_uniqueattr_69", "View_CheckboxGroup_uniqueattr_70",
  "View_CheckboxGroup_uniqueattr_71", "View_CheckboxGroup_uniqueattr_72", "View_CheckboxGroup_uniqueattr_73", "View_CheckboxGroup_uniqueattr_74", "View_CheckboxGroup_uniqueattr_75",
  "View_CheckboxGroup_uniqueattr_76", "View_CheckboxGroup_uniqueattr_77", "View_CheckboxGroup_uniqueattr_78", "View_CheckboxGroup_uniqueattr_79", "View_CheckboxGroup_uniqueattr_80",
  "View_CheckboxGroup_uniqueattr_81", "View_CheckboxGroup_uniqueattr_82", "View_CheckboxGroup_uniqueattr_83", "View_CheckboxGroup_uniqueattr_84", "View_CheckboxGroup_uniqueattr_85",
  "View_CheckboxGroup_uniqueattr_86", "View_CheckboxGroup_uniqueattr_87", "View_CheckboxGroup_uniqueattr_88", "View_CheckboxGroup_uniqueattr_89", "View_CheckboxGroup_uniqueattr_90",
  "View_CheckboxGroup_uniqueattr_91", "View_CheckboxGroup_uniqueattr_92", "View_CheckboxGroup_uniqueattr_93", "View_CheckboxGroup_uniqueattr_94", "View_CheckboxGroup_uniqueattr_95",
  "View_CheckboxGroup_uniqueattr_96", "View_CheckboxGroup_uniqueattr_97", "View_CheckboxGroup_uniqueattr_98", "View_CheckboxGroup_uniqueattr_99", "View_CheckboxGroup_uniqueattr_100",
  "View_CheckboxGroup_uniqueattr_101", "View_CheckboxGroup_uniqueattr_102", "View_CheckboxGroup_uniqueattr_103", "View_CheckboxGroup_uniqueattr_104", "View_CheckboxGroup_uniqueattr_105",
  "View_CheckboxGroup_uniqueattr_106", "View_CheckboxGroup_uniqueattr_107", "View_CheckboxGroup_uniqueattr_108", "View_CheckboxGroup_uniqueattr_109", "View_CheckboxGroup_uniqueattr_110",
  "View_CheckboxGroup_uniqueattr_111", "View_CheckboxGroup_uniqueattr_112", "View_CheckboxGroup_uniqueattr_113", "View_CheckboxGroup_uniqueattr_114", "View_CheckboxGroup_uniqueattr_115",
  "View_CheckboxGroup_uniqueattr_116", "View_CheckboxGroup_uniqueattr_117", "View_CheckboxGroup_uniqueattr_118", "View_CheckboxGroup_uniqueattr_119", "View_CheckboxGroup_uniqueattr_120",
  "View_CheckboxGroup_uniqueattr_121", "View_CheckboxGroup_uniqueattr_122", "View_CheckboxGroup_uniqueattr_123", "View_CheckboxGroup_uniqueattr_124", "View_CheckboxGroup_uniqueattr_125",
  "View_CheckboxGroup_uniqueattr_126", "View_CheckboxGroup_uniqueattr_127", "View_CheckboxGroup_uniqueattr_128", "View_CheckboxGroup_uniqueattr_129", "View_CheckboxGroup_uniqueattr_130",
  "View_CheckboxGroup_uniqueattr_131", "View_CheckboxGroup_uniqueattr_132", "View_CheckboxGroup_uniqueattr_133", "View_CheckboxGroup_uniqueattr_134", "View_CheckboxGroup_uniqueattr_135",
  "View_CheckboxGroup_uniqueattr_136", "View_CheckboxGroup_uniqueattr_137", "View_CheckboxGroup_uniqueattr_138", "View_CheckboxGroup_uniqueattr_139", "View_CheckboxGroup_uniqueattr_140",
  "View_CheckboxGroup_uniqueattr_141", "View_CheckboxGroup_uniqueattr_142", "View_CheckboxGroup_uniqueattr_143", "View_CheckboxGroup_uniqueattr_144", "View_CheckboxGroup_uniqueattr_145",
  "View_CheckboxGroup_uniqueattr_146", "View_CheckboxGroup_uniqueattr_147", "View_CheckboxGroup_uniqueattr_148", "View_CheckboxGroup_uniqueattr_149", "View_CheckboxGroup_uniqueattr_150",
  "View_CheckboxGroup_uniqueattr_151", "View_CheckboxGroup_uniqueattr_152", "View_CheckboxGroup_uniqueattr_153", "View_CheckboxGroup_uniqueattr_154" ],
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
