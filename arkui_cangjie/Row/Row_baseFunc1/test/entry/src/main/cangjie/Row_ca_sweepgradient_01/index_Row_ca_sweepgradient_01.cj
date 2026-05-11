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

package ohos_app_cangjie_entry.Row_ca_sweepgradient_01

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
class index_Row_ca_sweepgradient_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Row_comattr_sweepgradient_1", "View_Row_comattr_sweepgradient_2", "View_Row_comattr_sweepgradient_3", "View_Row_comattr_sweepgradient_4", "View_Row_comattr_sweepgradient_5",
  "View_Row_comattr_sweepgradient_6", "View_Row_comattr_sweepgradient_7", "View_Row_comattr_sweepgradient_8", "View_Row_comattr_sweepgradient_9", "View_Row_comattr_sweepgradient_10",
  "View_Row_comattr_sweepgradient_11", "View_Row_comattr_sweepgradient_12", "View_Row_comattr_sweepgradient_13", "View_Row_comattr_sweepgradient_14", "View_Row_comattr_sweepgradient_15",
  "View_Row_comattr_sweepgradient_16", "View_Row_comattr_sweepgradient_17", "View_Row_comattr_sweepgradient_18", "View_Row_comattr_sweepgradient_19", "View_Row_comattr_sweepgradient_20",
  "View_Row_comattr_sweepgradient_21", "View_Row_comattr_sweepgradient_22", "View_Row_comattr_sweepgradient_23", "View_Row_comattr_sweepgradient_24", "View_Row_comattr_sweepgradient_25",
  "View_Row_comattr_sweepgradient_26", "View_Row_comattr_sweepgradient_27", "View_Row_comattr_sweepgradient_28", "View_Row_comattr_sweepgradient_29", "View_Row_comattr_sweepgradient_30",
  "View_Row_comattr_sweepgradient_31", "View_Row_comattr_sweepgradient_32", "View_Row_comattr_sweepgradient_33", "View_Row_comattr_sweepgradient_34", "View_Row_comattr_sweepgradient_35",
  "View_Row_comattr_sweepgradient_36", "View_Row_comattr_sweepgradient_37", "View_Row_comattr_sweepgradient_38", "View_Row_comattr_sweepgradient_39", "View_Row_comattr_sweepgradient_40",
  "View_Row_comattr_sweepgradient_41", "View_Row_comattr_sweepgradient_42", "View_Row_comattr_sweepgradient_43", "View_Row_comattr_sweepgradient_44", "View_Row_comattr_sweepgradient_45",
  "View_Row_comattr_sweepgradient_46", "View_Row_comattr_sweepgradient_47", "View_Row_comattr_sweepgradient_48", "View_Row_comattr_sweepgradient_49", "View_Row_comattr_sweepgradient_50",
  "View_Row_comattr_sweepgradient_51", "View_Row_comattr_sweepgradient_52", "View_Row_comattr_sweepgradient_53", "View_Row_comattr_sweepgradient_54", "View_Row_comattr_sweepgradient_55",
  "View_Row_comattr_sweepgradient_56", "View_Row_comattr_sweepgradient_57", "View_Row_comattr_sweepgradient_58", "View_Row_comattr_sweepgradient_59", "View_Row_comattr_sweepgradient_60",
  "View_Row_comattr_sweepgradient_61", "View_Row_comattr_sweepgradient_62", "View_Row_comattr_sweepgradient_63", "View_Row_comattr_sweepgradient_64", "View_Row_comattr_sweepgradient_65",
  "View_Row_comattr_sweepgradient_66", "View_Row_comattr_sweepgradient_67", "View_Row_comattr_sweepgradient_68", "View_Row_comattr_sweepgradient_69", "View_Row_comattr_sweepgradient_70",
  "View_Row_comattr_sweepgradient_71", "View_Row_comattr_sweepgradient_72", "View_Row_comattr_sweepgradient_73", "View_Row_comattr_sweepgradient_74", "View_Row_comattr_sweepgradient_75",
  "View_Row_comattr_sweepgradient_76", "View_Row_comattr_sweepgradient_77", "View_Row_comattr_sweepgradient_78", "View_Row_comattr_sweepgradient_79", "View_Row_comattr_sweepgradient_80",
  "View_Row_comattr_sweepgradient_81", "View_Row_comattr_sweepgradient_82", "View_Row_comattr_sweepgradient_83", "View_Row_comattr_sweepgradient_84", "View_Row_comattr_sweepgradient_85",
  "View_Row_comattr_sweepgradient_86", "View_Row_comattr_sweepgradient_87", "View_Row_comattr_sweepgradient_88", "View_Row_comattr_sweepgradient_89", "View_Row_comattr_sweepgradient_90",
  "View_Row_comattr_sweepgradient_91", "View_Row_comattr_sweepgradient_92", "View_Row_comattr_sweepgradient_93", "View_Row_comattr_sweepgradient_94", "View_Row_comattr_sweepgradient_95",
  "View_Row_comattr_sweepgradient_96", "View_Row_comattr_sweepgradient_97", "View_Row_comattr_sweepgradient_98", "View_Row_comattr_sweepgradient_99", "View_Row_comattr_sweepgradient_100",
  "View_Row_comattr_sweepgradient_101", "View_Row_comattr_sweepgradient_102", "View_Row_comattr_sweepgradient_103", "View_Row_comattr_sweepgradient_104", "View_Row_comattr_sweepgradient_105",
  "View_Row_comattr_sweepgradient_106", "View_Row_comattr_sweepgradient_107", "View_Row_comattr_sweepgradient_108", "View_Row_comattr_sweepgradient_109", "View_Row_comattr_sweepgradient_110",
  "View_Row_comattr_sweepgradient_111", "View_Row_comattr_sweepgradient_112", "View_Row_comattr_sweepgradient_113", "View_Row_comattr_sweepgradient_114", "View_Row_comattr_sweepgradient_115",
  "View_Row_comattr_sweepgradient_116", "View_Row_comattr_sweepgradient_117", "View_Row_comattr_sweepgradient_118", "View_Row_comattr_sweepgradient_119", "View_Row_comattr_sweepgradient_120",
  "View_Row_comattr_sweepgradient_121", "View_Row_comattr_sweepgradient_122", "View_Row_comattr_sweepgradient_123", "View_Row_comattr_sweepgradient_124", "View_Row_comattr_sweepgradient_125",
  "View_Row_comattr_sweepgradient_126", "View_Row_comattr_sweepgradient_127", "View_Row_comattr_sweepgradient_128", "View_Row_comattr_sweepgradient_129", "View_Row_comattr_sweepgradient_130",
  "View_Row_comattr_sweepgradient_131", "View_Row_comattr_sweepgradient_132", "View_Row_comattr_sweepgradient_133", "View_Row_comattr_sweepgradient_134", "View_Row_comattr_sweepgradient_135",
  "View_Row_comattr_sweepgradient_136", "View_Row_comattr_sweepgradient_137", "View_Row_comattr_sweepgradient_138", "View_Row_comattr_sweepgradient_139", "View_Row_comattr_sweepgradient_140",
  "View_Row_comattr_sweepgradient_141", "View_Row_comattr_sweepgradient_142", "View_Row_comattr_sweepgradient_143", "View_Row_comattr_sweepgradient_144", "View_Row_comattr_sweepgradient_145",
  "View_Row_comattr_sweepgradient_146", "View_Row_comattr_sweepgradient_147", "View_Row_comattr_sweepgradient_148", "View_Row_comattr_sweepgradient_149", "View_Row_comattr_sweepgradient_150",
  "View_Row_comattr_sweepgradient_151", "View_Row_comattr_sweepgradient_152", "View_Row_comattr_sweepgradient_153", "View_Row_comattr_sweepgradient_154", "View_Row_comattr_sweepgradient_155",
  "View_Row_comattr_sweepgradient_156", "View_Row_comattr_sweepgradient_157", "View_Row_comattr_sweepgradient_158", "View_Row_comattr_sweepgradient_159", "View_Row_comattr_sweepgradient_160",
  "View_Row_comattr_sweepgradient_161", "View_Row_comattr_sweepgradient_162", "View_Row_comattr_sweepgradient_163", "View_Row_comattr_sweepgradient_164", "View_Row_comattr_sweepgradient_165",
  "View_Row_comattr_sweepgradient_166", "View_Row_comattr_sweepgradient_167", "View_Row_comattr_sweepgradient_168", "View_Row_comattr_sweepgradient_169", "View_Row_comattr_sweepgradient_170",
  "View_Row_comattr_sweepgradient_171", "View_Row_comattr_sweepgradient_172", "View_Row_comattr_sweepgradient_173", "View_Row_comattr_sweepgradient_174", "View_Row_comattr_sweepgradient_175",
  "View_Row_comattr_sweepgradient_176", "View_Row_comattr_sweepgradient_177", "View_Row_comattr_sweepgradient_178", "View_Row_comattr_sweepgradient_179", "View_Row_comattr_sweepgradient_180" ],
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
