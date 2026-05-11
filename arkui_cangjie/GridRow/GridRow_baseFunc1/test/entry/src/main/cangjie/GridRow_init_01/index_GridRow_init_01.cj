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

package ohos_app_cangjie_entry.GridRow_init_01

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
class index_GridRow_init_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_init1_1", "View_GridRow_init1_2", "View_GridRow_init1_3", "View_GridRow_init1_4", "View_GridRow_init1_5",
  "View_GridRow_init1_6", "View_GridRow_init1_7", "View_GridRow_init1_8", "View_GridRow_init1_9", "View_GridRow_init1_10",
  "View_GridRow_init1_11", "View_GridRow_init1_12", "View_GridRow_init1_13", "View_GridRow_init1_14", "View_GridRow_init1_15",
  "View_GridRow_init1_16", "View_GridRow_init1_17", "View_GridRow_init1_18", "View_GridRow_init1_19", "View_GridRow_init1_20",
  "View_GridRow_init1_21", "View_GridRow_init1_22", "View_GridRow_init1_23", "View_GridRow_init1_24", "View_GridRow_init1_25",
  "View_GridRow_init1_26", "View_GridRow_init1_27", "View_GridRow_init1_28", "View_GridRow_init1_29", "View_GridRow_init1_30",
  "View_GridRow_init1_31", "View_GridRow_init1_32", "View_GridRow_init1_33", "View_GridRow_init1_34", "View_GridRow_init1_35",
  "View_GridRow_init1_36", "View_GridRow_init1_37", "View_GridRow_init1_38", "View_GridRow_init1_39", "View_GridRow_init1_40",
  "View_GridRow_init1_41", "View_GridRow_init1_42", "View_GridRow_init1_43", "View_GridRow_init1_44", "View_GridRow_init1_45",
  "View_GridRow_init1_46", "View_GridRow_init1_47", "View_GridRow_init1_48", "View_GridRow_init1_49", "View_GridRow_init1_50",
  "View_GridRow_init1_51", "View_GridRow_init1_52", "View_GridRow_init1_53", "View_GridRow_init1_54", "View_GridRow_init1_55",
  "View_GridRow_init1_56", "View_GridRow_init1_57", "View_GridRow_init1_58", "View_GridRow_init1_59", "View_GridRow_init1_60",
  "View_GridRow_init1_61", "View_GridRow_init1_62", "View_GridRow_init1_63", "View_GridRow_init1_64", "View_GridRow_init1_65",
  "View_GridRow_init1_66", "View_GridRow_init1_67", "View_GridRow_init1_68", "View_GridRow_init1_69", "View_GridRow_init1_70",
  "View_GridRow_init1_71", "View_GridRow_init1_72", "View_GridRow_init1_73", "View_GridRow_init1_74", "View_GridRow_init1_75",
  "View_GridRow_init1_76", "View_GridRow_init1_77", "View_GridRow_init1_78", "View_GridRow_init1_79", "View_GridRow_init1_80",
  "View_GridRow_init1_81", "View_GridRow_init1_82", "View_GridRow_init1_83", "View_GridRow_init1_84", "View_GridRow_init1_85",
  "View_GridRow_init1_86", "View_GridRow_init1_87", "View_GridRow_init1_88", "View_GridRow_init1_89", "View_GridRow_init1_90",
  "View_GridRow_init1_91", "View_GridRow_init1_92", "View_GridRow_init1_93", "View_GridRow_init1_94", "View_GridRow_init1_95",
  "View_GridRow_init1_96", "View_GridRow_init1_97", "View_GridRow_init1_98", "View_GridRow_init1_99", "View_GridRow_init1_100",
  "View_GridRow_init1_101", "View_GridRow_init1_102", "View_GridRow_init1_103", "View_GridRow_init1_104", "View_GridRow_init1_105",
  "View_GridRow_init1_106", "View_GridRow_init1_107", "View_GridRow_init1_108", "View_GridRow_init1_109", "View_GridRow_init1_110",
  "View_GridRow_init1_111", "View_GridRow_init1_112", "View_GridRow_init1_113", "View_GridRow_init1_114", "View_GridRow_init1_115",
  "View_GridRow_init1_116", "View_GridRow_init1_117", "View_GridRow_init1_118", "View_GridRow_init1_119", "View_GridRow_init1_120",
  "View_GridRow_init1_121", "View_GridRow_init1_122", "View_GridRow_init1_123", "View_GridRow_init1_124", "View_GridRow_init1_125",
  "View_GridRow_init1_126", "View_GridRow_init1_127", "View_GridRow_init1_128", "View_GridRow_init1_129", "View_GridRow_init1_130",
  "View_GridRow_init1_131", "View_GridRow_init1_132", "View_GridRow_init1_133", "View_GridRow_init1_134", "View_GridRow_init1_135",
  "View_GridRow_init1_136", "View_GridRow_init1_137", "View_GridRow_init1_138", "View_GridRow_init1_139", "View_GridRow_init1_140",
  "View_GridRow_init1_141", "View_GridRow_init1_142", "View_GridRow_init1_143", "View_GridRow_init1_144", "View_GridRow_init1_145",
  "View_GridRow_init1_146", "View_GridRow_init1_147", "View_GridRow_init1_148", "View_GridRow_init1_149", "View_GridRow_init1_150",
  "View_GridRow_init1_151", "View_GridRow_init1_152", "View_GridRow_init1_153", "View_GridRow_init1_154", "View_GridRow_init1_155",
  "View_GridRow_init1_156", "View_GridRow_init1_157", "View_GridRow_init1_158", "View_GridRow_init1_159", "View_GridRow_init1_160",
  "View_GridRow_init1_161", "View_GridRow_init1_162", "View_GridRow_init1_163", "View_GridRow_init1_164", "View_GridRow_init1_165",
  "View_GridRow_init1_166", "View_GridRow_init1_167", "View_GridRow_init1_168", "View_GridRow_init1_169", "View_GridRow_init1_170",
  "View_GridRow_init1_171", "View_GridRow_init1_172", "View_GridRow_init1_173", "View_GridRow_init1_174", "View_GridRow_init1_175",
  "View_GridRow_init1_176", "View_GridRow_init1_177", "View_GridRow_init1_178", "View_GridRow_init1_179", "View_GridRow_init1_180",
  "View_GridRow_init1_181", "View_GridRow_init1_182", "View_GridRow_init1_183", "View_GridRow_init1_184", "View_GridRow_init1_185",
  "View_GridRow_init1_186", "View_GridRow_init1_187", "View_GridRow_init1_188", "View_GridRow_init1_189", "View_GridRow_init1_190",
  "View_GridRow_init1_191", "View_GridRow_init1_192", "View_GridRow_init1_193", "View_GridRow_init1_194", "View_GridRow_init1_195",
  "View_GridRow_init1_196", "View_GridRow_init1_197", "View_GridRow_init1_198", "View_GridRow_init1_199", "View_GridRow_init1_200" ],
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
