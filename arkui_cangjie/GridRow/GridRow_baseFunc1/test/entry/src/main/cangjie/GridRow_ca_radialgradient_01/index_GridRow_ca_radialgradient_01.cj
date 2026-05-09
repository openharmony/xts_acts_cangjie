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

package ohos_app_cangjie_entry.GridRow_ca_radialgradient_01

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
class index_GridRow_ca_radialgradient_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_comattr_radialgradient_1", "View_GridRow_comattr_radialgradient_2", "View_GridRow_comattr_radialgradient_3", "View_GridRow_comattr_radialgradient_4", "View_GridRow_comattr_radialgradient_5",
  "View_GridRow_comattr_radialgradient_6", "View_GridRow_comattr_radialgradient_7", "View_GridRow_comattr_radialgradient_8", "View_GridRow_comattr_radialgradient_9", "View_GridRow_comattr_radialgradient_10",
  "View_GridRow_comattr_radialgradient_11", "View_GridRow_comattr_radialgradient_12", "View_GridRow_comattr_radialgradient_13", "View_GridRow_comattr_radialgradient_14", "View_GridRow_comattr_radialgradient_15",
  "View_GridRow_comattr_radialgradient_16", "View_GridRow_comattr_radialgradient_17", "View_GridRow_comattr_radialgradient_18", "View_GridRow_comattr_radialgradient_19", "View_GridRow_comattr_radialgradient_20",
  "View_GridRow_comattr_radialgradient_21", "View_GridRow_comattr_radialgradient_22", "View_GridRow_comattr_radialgradient_23", "View_GridRow_comattr_radialgradient_24", "View_GridRow_comattr_radialgradient_25",
  "View_GridRow_comattr_radialgradient_26", "View_GridRow_comattr_radialgradient_27", "View_GridRow_comattr_radialgradient_28", "View_GridRow_comattr_radialgradient_29", "View_GridRow_comattr_radialgradient_30",
  "View_GridRow_comattr_radialgradient_31", "View_GridRow_comattr_radialgradient_32", "View_GridRow_comattr_radialgradient_33", "View_GridRow_comattr_radialgradient_34", "View_GridRow_comattr_radialgradient_35",
  "View_GridRow_comattr_radialgradient_36", "View_GridRow_comattr_radialgradient_37", "View_GridRow_comattr_radialgradient_38", "View_GridRow_comattr_radialgradient_39", "View_GridRow_comattr_radialgradient_40",
  "View_GridRow_comattr_radialgradient_41", "View_GridRow_comattr_radialgradient_42", "View_GridRow_comattr_radialgradient_43", "View_GridRow_comattr_radialgradient_44", "View_GridRow_comattr_radialgradient_45",
  "View_GridRow_comattr_radialgradient_46", "View_GridRow_comattr_radialgradient_47", "View_GridRow_comattr_radialgradient_48", "View_GridRow_comattr_radialgradient_49", "View_GridRow_comattr_radialgradient_50",
  "View_GridRow_comattr_radialgradient_51", "View_GridRow_comattr_radialgradient_52", "View_GridRow_comattr_radialgradient_53", "View_GridRow_comattr_radialgradient_54", "View_GridRow_comattr_radialgradient_55",
  "View_GridRow_comattr_radialgradient_56", "View_GridRow_comattr_radialgradient_57", "View_GridRow_comattr_radialgradient_58", "View_GridRow_comattr_radialgradient_59", "View_GridRow_comattr_radialgradient_60",
  "View_GridRow_comattr_radialgradient_61", "View_GridRow_comattr_radialgradient_62", "View_GridRow_comattr_radialgradient_63", "View_GridRow_comattr_radialgradient_64", "View_GridRow_comattr_radialgradient_65",
  "View_GridRow_comattr_radialgradient_66", "View_GridRow_comattr_radialgradient_67", "View_GridRow_comattr_radialgradient_68", "View_GridRow_comattr_radialgradient_69", "View_GridRow_comattr_radialgradient_70",
  "View_GridRow_comattr_radialgradient_71", "View_GridRow_comattr_radialgradient_72", "View_GridRow_comattr_radialgradient_73", "View_GridRow_comattr_radialgradient_74", "View_GridRow_comattr_radialgradient_75",
  "View_GridRow_comattr_radialgradient_76", "View_GridRow_comattr_radialgradient_77", "View_GridRow_comattr_radialgradient_78", "View_GridRow_comattr_radialgradient_79", "View_GridRow_comattr_radialgradient_80",
  "View_GridRow_comattr_radialgradient_81", "View_GridRow_comattr_radialgradient_82", "View_GridRow_comattr_radialgradient_83", "View_GridRow_comattr_radialgradient_84", "View_GridRow_comattr_radialgradient_85",
  "View_GridRow_comattr_radialgradient_86", "View_GridRow_comattr_radialgradient_87", "View_GridRow_comattr_radialgradient_88", "View_GridRow_comattr_radialgradient_89", "View_GridRow_comattr_radialgradient_90",
  "View_GridRow_comattr_radialgradient_91", "View_GridRow_comattr_radialgradient_92", "View_GridRow_comattr_radialgradient_93", "View_GridRow_comattr_radialgradient_94", "View_GridRow_comattr_radialgradient_95",
  "View_GridRow_comattr_radialgradient_96", "View_GridRow_comattr_radialgradient_97", "View_GridRow_comattr_radialgradient_98", "View_GridRow_comattr_radialgradient_99", "View_GridRow_comattr_radialgradient_100",
  "View_GridRow_comattr_radialgradient_101", "View_GridRow_comattr_radialgradient_102", "View_GridRow_comattr_radialgradient_103", "View_GridRow_comattr_radialgradient_104", "View_GridRow_comattr_radialgradient_105",
  "View_GridRow_comattr_radialgradient_106", "View_GridRow_comattr_radialgradient_107", "View_GridRow_comattr_radialgradient_108", "View_GridRow_comattr_radialgradient_109", "View_GridRow_comattr_radialgradient_110",
  "View_GridRow_comattr_radialgradient_111", "View_GridRow_comattr_radialgradient_112", "View_GridRow_comattr_radialgradient_113", "View_GridRow_comattr_radialgradient_114", "View_GridRow_comattr_radialgradient_115",
  "View_GridRow_comattr_radialgradient_116", "View_GridRow_comattr_radialgradient_117", "View_GridRow_comattr_radialgradient_118", "View_GridRow_comattr_radialgradient_119", "View_GridRow_comattr_radialgradient_120",
  "View_GridRow_comattr_radialgradient_121", "View_GridRow_comattr_radialgradient_122", "View_GridRow_comattr_radialgradient_123", "View_GridRow_comattr_radialgradient_124", "View_GridRow_comattr_radialgradient_125",
  "View_GridRow_comattr_radialgradient_126", "View_GridRow_comattr_radialgradient_127", "View_GridRow_comattr_radialgradient_128", "View_GridRow_comattr_radialgradient_129", "View_GridRow_comattr_radialgradient_130",
  "View_GridRow_comattr_radialgradient_131", "View_GridRow_comattr_radialgradient_132", "View_GridRow_comattr_radialgradient_133", "View_GridRow_comattr_radialgradient_134", "View_GridRow_comattr_radialgradient_135",
  "View_GridRow_comattr_radialgradient_136", "View_GridRow_comattr_radialgradient_137", "View_GridRow_comattr_radialgradient_138", "View_GridRow_comattr_radialgradient_139", "View_GridRow_comattr_radialgradient_140",
  "View_GridRow_comattr_radialgradient_141", "View_GridRow_comattr_radialgradient_142", "View_GridRow_comattr_radialgradient_143", "View_GridRow_comattr_radialgradient_144", "View_GridRow_comattr_radialgradient_145",
  "View_GridRow_comattr_radialgradient_146", "View_GridRow_comattr_radialgradient_147", "View_GridRow_comattr_radialgradient_148", "View_GridRow_comattr_radialgradient_149", "View_GridRow_comattr_radialgradient_150",
  "View_GridRow_comattr_radialgradient_151", "View_GridRow_comattr_radialgradient_152", "View_GridRow_comattr_radialgradient_153", "View_GridRow_comattr_radialgradient_154", "View_GridRow_comattr_radialgradient_155",
  "View_GridRow_comattr_radialgradient_156", "View_GridRow_comattr_radialgradient_157", "View_GridRow_comattr_radialgradient_158", "View_GridRow_comattr_radialgradient_159", "View_GridRow_comattr_radialgradient_160",
  "View_GridRow_comattr_radialgradient_161", "View_GridRow_comattr_radialgradient_162", "View_GridRow_comattr_radialgradient_163", "View_GridRow_comattr_radialgradient_164", "View_GridRow_comattr_radialgradient_165",
  "View_GridRow_comattr_radialgradient_166", "View_GridRow_comattr_radialgradient_167", "View_GridRow_comattr_radialgradient_168", "View_GridRow_comattr_radialgradient_169", "View_GridRow_comattr_radialgradient_170",
  "View_GridRow_comattr_radialgradient_171", "View_GridRow_comattr_radialgradient_172", "View_GridRow_comattr_radialgradient_173", "View_GridRow_comattr_radialgradient_174", "View_GridRow_comattr_radialgradient_175",
  "View_GridRow_comattr_radialgradient_176", "View_GridRow_comattr_radialgradient_177", "View_GridRow_comattr_radialgradient_178", "View_GridRow_comattr_radialgradient_179", "View_GridRow_comattr_radialgradient_180" ],
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
