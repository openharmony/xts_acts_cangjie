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

package ohos_app_cangjie_entry.Prog_unique1_01

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
class index_Prog_unique1_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Progress_unique1_1", "View_Progress_unique1_2", "View_Progress_unique1_3", "View_Progress_unique1_4", "View_Progress_unique1_5",
  "View_Progress_unique1_6", "View_Progress_unique1_7", "View_Progress_unique1_8", "View_Progress_unique1_9", "View_Progress_unique1_10",
  "View_Progress_unique1_11", "View_Progress_unique1_12", "View_Progress_unique1_13", "View_Progress_unique1_14", "View_Progress_unique1_15",
  "View_Progress_unique1_16", "View_Progress_unique1_17", "View_Progress_unique1_18", "View_Progress_unique1_19", "View_Progress_unique1_20",
  "View_Progress_unique1_21", "View_Progress_unique1_22", "View_Progress_unique1_23", "View_Progress_unique1_24", "View_Progress_unique1_25",
  "View_Progress_unique1_26", "View_Progress_unique1_27", "View_Progress_unique1_28", "View_Progress_unique1_29", "View_Progress_unique1_30",
  "View_Progress_unique1_31", "View_Progress_unique1_32", "View_Progress_unique1_33", "View_Progress_unique1_34", "View_Progress_unique1_35",
  "View_Progress_unique1_36", "View_Progress_unique1_37", "View_Progress_unique1_38", "View_Progress_unique1_39", "View_Progress_unique1_40",
  "View_Progress_unique1_41", "View_Progress_unique1_42", "View_Progress_unique1_43", "View_Progress_unique1_44", "View_Progress_unique1_45",
  "View_Progress_unique1_46", "View_Progress_unique1_47", "View_Progress_unique1_48", "View_Progress_unique1_49", "View_Progress_unique1_50",
  "View_Progress_unique1_51", "View_Progress_unique1_52", "View_Progress_unique1_53", "View_Progress_unique1_54", "View_Progress_unique1_55",
  "View_Progress_unique1_56", "View_Progress_unique1_57", "View_Progress_unique1_58", "View_Progress_unique1_59", "View_Progress_unique1_60",
  "View_Progress_unique1_61", "View_Progress_unique1_62", "View_Progress_unique1_63", "View_Progress_unique1_64", "View_Progress_unique1_65",
  "View_Progress_unique1_66", "View_Progress_unique1_67", "View_Progress_unique1_68", "View_Progress_unique1_69", "View_Progress_unique1_70",
  "View_Progress_unique1_71", "View_Progress_unique1_72", "View_Progress_unique1_73", "View_Progress_unique1_74", "View_Progress_unique1_75",
  "View_Progress_unique1_76", "View_Progress_unique1_77", "View_Progress_unique1_78", "View_Progress_unique1_79", "View_Progress_unique1_80",
  "View_Progress_unique1_81", "View_Progress_unique1_82", "View_Progress_unique1_83", "View_Progress_unique1_84", "View_Progress_unique1_85",
  "View_Progress_unique1_86", "View_Progress_unique1_87", "View_Progress_unique1_88", "View_Progress_unique1_89", "View_Progress_unique1_90",
  "View_Progress_unique1_91", "View_Progress_unique1_92", "View_Progress_unique1_93", "View_Progress_unique1_94", "View_Progress_unique1_95",
  "View_Progress_unique1_96", "View_Progress_unique1_97", "View_Progress_unique1_98", "View_Progress_unique1_99", "View_Progress_unique1_100",
  "View_Progress_unique1_101", "View_Progress_unique1_102", "View_Progress_unique1_103", "View_Progress_unique1_104", "View_Progress_unique1_105",
  "View_Progress_unique1_106", "View_Progress_unique1_107", "View_Progress_unique1_108", "View_Progress_unique1_109", "View_Progress_unique1_110",
  "View_Progress_unique1_111", "View_Progress_unique1_112", "View_Progress_unique1_113", "View_Progress_unique1_114", "View_Progress_unique1_115",
  "View_Progress_unique1_116", "View_Progress_unique1_117", "View_Progress_unique1_118", "View_Progress_unique1_119", "View_Progress_unique1_120",
  "View_Progress_unique1_121", "View_Progress_unique1_122", "View_Progress_unique1_123", "View_Progress_unique1_124", "View_Progress_unique1_125",
  "View_Progress_unique1_126", "View_Progress_unique1_127", "View_Progress_unique1_128", "View_Progress_unique1_129", "View_Progress_unique1_130",
  "View_Progress_unique1_131", "View_Progress_unique1_132", "View_Progress_unique1_133", "View_Progress_unique1_134", "View_Progress_unique1_135",
  "View_Progress_unique1_136", "View_Progress_unique1_137", "View_Progress_unique1_138", "View_Progress_unique1_139", "View_Progress_unique1_140",
  "View_Progress_unique1_141", "View_Progress_unique1_142", "View_Progress_unique1_143", "View_Progress_unique1_144", "View_Progress_unique1_145",
  "View_Progress_unique1_146", "View_Progress_unique1_147", "View_Progress_unique1_148", "View_Progress_unique1_149", "View_Progress_unique1_150",
  "View_Progress_unique1_151", "View_Progress_unique1_152", "View_Progress_unique1_153", "View_Progress_unique1_154", "View_Progress_unique1_155",
  "View_Progress_unique1_156", "View_Progress_unique1_157", "View_Progress_unique1_158", "View_Progress_unique1_159", "View_Progress_unique1_160",
  "View_Progress_unique1_161", "View_Progress_unique1_162", "View_Progress_unique1_163", "View_Progress_unique1_164", "View_Progress_unique1_165",
  "View_Progress_unique1_166", "View_Progress_unique1_167", "View_Progress_unique1_168", "View_Progress_unique1_169", "View_Progress_unique1_170",
  "View_Progress_unique1_171", "View_Progress_unique1_172", "View_Progress_unique1_173", "View_Progress_unique1_174", "View_Progress_unique1_175",
  "View_Progress_unique1_176", "View_Progress_unique1_177", "View_Progress_unique1_178", "View_Progress_unique1_179", "View_Progress_unique1_180",
  "View_Progress_unique1_181", "View_Progress_unique1_182", "View_Progress_unique1_183", "View_Progress_unique1_184", "View_Progress_unique1_185",
  "View_Progress_unique1_186", "View_Progress_unique1_187", "View_Progress_unique1_188", "View_Progress_unique1_189", "View_Progress_unique1_190",
  "View_Progress_unique1_191", "View_Progress_unique1_192", "View_Progress_unique1_193", "View_Progress_unique1_194", "View_Progress_unique1_195",
  "View_Progress_unique1_196", "View_Progress_unique1_197", "View_Progress_unique1_198", "View_Progress_unique1_199", "View_Progress_unique1_200",
  "View_Progress_unique1_201", "View_Progress_unique1_202", "View_Progress_unique1_203", "View_Progress_unique1_204", "View_Progress_unique1_205",
  "View_Progress_unique1_206", "View_Progress_unique1_207", "View_Progress_unique1_208", "View_Progress_unique1_209", "View_Progress_unique1_210",
  "View_Progress_unique1_211", "View_Progress_unique1_212", "View_Progress_unique1_213", "View_Progress_unique1_214", "View_Progress_unique1_215",
  "View_Progress_unique1_216", "View_Progress_unique1_217", "View_Progress_unique1_218", "View_Progress_unique1_219", "View_Progress_unique1_220" ],
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
