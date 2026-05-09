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

package ohos_app_cangjie_entry.Slider_uniqueattr_01

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
class index_Slider_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Slider_uniqueattr_1", "View_Slider_uniqueattr_2", "View_Slider_uniqueattr_3", "View_Slider_uniqueattr_4", "View_Slider_uniqueattr_5",
  "View_Slider_uniqueattr_6", "View_Slider_uniqueattr_7", "View_Slider_uniqueattr_8", "View_Slider_uniqueattr_9", "View_Slider_uniqueattr_10",
  "View_Slider_uniqueattr_11", "View_Slider_uniqueattr_12", "View_Slider_uniqueattr_13", "View_Slider_uniqueattr_14", "View_Slider_uniqueattr_15",
  "View_Slider_uniqueattr_16", "View_Slider_uniqueattr_17", "View_Slider_uniqueattr_18", "View_Slider_uniqueattr_19", "View_Slider_uniqueattr_20",
  "View_Slider_uniqueattr_21", "View_Slider_uniqueattr_22", "View_Slider_uniqueattr_23", "View_Slider_uniqueattr_24", "View_Slider_uniqueattr_25",
  "View_Slider_uniqueattr_26", "View_Slider_uniqueattr_27", "View_Slider_uniqueattr_28", "View_Slider_uniqueattr_29", "View_Slider_uniqueattr_30",
  "View_Slider_uniqueattr_31", "View_Slider_uniqueattr_32", "View_Slider_uniqueattr_33", "View_Slider_uniqueattr_34", "View_Slider_uniqueattr_35",
  "View_Slider_uniqueattr_36", "View_Slider_uniqueattr_37", "View_Slider_uniqueattr_38", "View_Slider_uniqueattr_39", "View_Slider_uniqueattr_40",
  "View_Slider_uniqueattr_41", "View_Slider_uniqueattr_42", "View_Slider_uniqueattr_43", "View_Slider_uniqueattr_44", "View_Slider_uniqueattr_45",
  "View_Slider_uniqueattr_46", "View_Slider_uniqueattr_47", "View_Slider_uniqueattr_48", "View_Slider_uniqueattr_49", "View_Slider_uniqueattr_50",
  "View_Slider_uniqueattr_51", "View_Slider_uniqueattr_52", "View_Slider_uniqueattr_53", "View_Slider_uniqueattr_54", "View_Slider_uniqueattr_55",
  "View_Slider_uniqueattr_56", "View_Slider_uniqueattr_57", "View_Slider_uniqueattr_58", "View_Slider_uniqueattr_59", "View_Slider_uniqueattr_60",
  "View_Slider_uniqueattr_61", "View_Slider_uniqueattr_62", "View_Slider_uniqueattr_63", "View_Slider_uniqueattr_64", "View_Slider_uniqueattr_65",
  "View_Slider_uniqueattr_66", "View_Slider_uniqueattr_67", "View_Slider_uniqueattr_68", "View_Slider_uniqueattr_69", "View_Slider_uniqueattr_70",
  "View_Slider_uniqueattr_71", "View_Slider_uniqueattr_72", "View_Slider_uniqueattr_73", "View_Slider_uniqueattr_74", "View_Slider_uniqueattr_75",
  "View_Slider_uniqueattr_76", "View_Slider_uniqueattr_77", "View_Slider_uniqueattr_78", "View_Slider_uniqueattr_79", "View_Slider_uniqueattr_80",
  "View_Slider_uniqueattr_81", "View_Slider_uniqueattr_82", "View_Slider_uniqueattr_83", "View_Slider_uniqueattr_84", "View_Slider_uniqueattr_85",
  "View_Slider_uniqueattr_86", "View_Slider_uniqueattr_87", "View_Slider_uniqueattr_88", "View_Slider_uniqueattr_89", "View_Slider_uniqueattr_90",
  "View_Slider_uniqueattr_91", "View_Slider_uniqueattr_92", "View_Slider_uniqueattr_93", "View_Slider_uniqueattr_94", "View_Slider_uniqueattr_95",
  "View_Slider_uniqueattr_96", "View_Slider_uniqueattr_97", "View_Slider_uniqueattr_98", "View_Slider_uniqueattr_99", "View_Slider_uniqueattr_100",
  "View_Slider_uniqueattr_101", "View_Slider_uniqueattr_102", "View_Slider_uniqueattr_103", "View_Slider_uniqueattr_104", "View_Slider_uniqueattr_105",
  "View_Slider_uniqueattr_106", "View_Slider_uniqueattr_107", "View_Slider_uniqueattr_108", "View_Slider_uniqueattr_109", "View_Slider_uniqueattr_110",
  "View_Slider_uniqueattr_111", "View_Slider_uniqueattr_112", "View_Slider_uniqueattr_113", "View_Slider_uniqueattr_114", "View_Slider_uniqueattr_115",
  "View_Slider_uniqueattr_116", "View_Slider_uniqueattr_117", "View_Slider_uniqueattr_118", "View_Slider_uniqueattr_119", "View_Slider_uniqueattr_120",
  "View_Slider_uniqueattr_121", "View_Slider_uniqueattr_122", "View_Slider_uniqueattr_123", "View_Slider_uniqueattr_124", "View_Slider_uniqueattr_125",
  "View_Slider_uniqueattr_126", "View_Slider_uniqueattr_127", "View_Slider_uniqueattr_128", "View_Slider_uniqueattr_129", "View_Slider_uniqueattr_130",
  "View_Slider_uniqueattr_131", "View_Slider_uniqueattr_132", "View_Slider_uniqueattr_133", "View_Slider_uniqueattr_134", "View_Slider_uniqueattr_135",
  "View_Slider_uniqueattr_136", "View_Slider_uniqueattr_137", "View_Slider_uniqueattr_138", "View_Slider_uniqueattr_139", "View_Slider_uniqueattr_140",
  "View_Slider_uniqueattr_141", "View_Slider_uniqueattr_142", "View_Slider_uniqueattr_143", "View_Slider_uniqueattr_144", "View_Slider_uniqueattr_145",
  "View_Slider_uniqueattr_146", "View_Slider_uniqueattr_147", "View_Slider_uniqueattr_148", "View_Slider_uniqueattr_149", "View_Slider_uniqueattr_150",
  "View_Slider_uniqueattr_151", "View_Slider_uniqueattr_152", "View_Slider_uniqueattr_153", "View_Slider_uniqueattr_154", "View_Slider_uniqueattr_155",
  "View_Slider_uniqueattr_156", "View_Slider_uniqueattr_157", "View_Slider_uniqueattr_158", "View_Slider_uniqueattr_159", "View_Slider_uniqueattr_160",
  "View_Slider_uniqueattr_161", "View_Slider_uniqueattr_162", "View_Slider_uniqueattr_163", "View_Slider_uniqueattr_164", "View_Slider_uniqueattr_165",
  "View_Slider_uniqueattr_166", "View_Slider_uniqueattr_167", "View_Slider_uniqueattr_168", "View_Slider_uniqueattr_169", "View_Slider_uniqueattr_170",
  "View_Slider_uniqueattr_171", "View_Slider_uniqueattr_172", "View_Slider_uniqueattr_173", "View_Slider_uniqueattr_174", "View_Slider_uniqueattr_175",
  "View_Slider_uniqueattr_176", "View_Slider_uniqueattr_177", "View_Slider_uniqueattr_178", "View_Slider_uniqueattr_179", "View_Slider_uniqueattr_180",
  "View_Slider_uniqueattr_181", "View_Slider_uniqueattr_182", "View_Slider_uniqueattr_183", "View_Slider_uniqueattr_184", "View_Slider_uniqueattr_185",
  "View_Slider_uniqueattr_186", "View_Slider_uniqueattr_187", "View_Slider_uniqueattr_188", "View_Slider_uniqueattr_189", "View_Slider_uniqueattr_190",
  "View_Slider_uniqueattr_191", "View_Slider_uniqueattr_192", "View_Slider_uniqueattr_193", "View_Slider_uniqueattr_194", "View_Slider_uniqueattr_195",
  "View_Slider_uniqueattr_196", "View_Slider_uniqueattr_197", "View_Slider_uniqueattr_198", "View_Slider_uniqueattr_199", "View_Slider_uniqueattr_200",
  "View_Slider_uniqueattr_201", "View_Slider_uniqueattr_202", "View_Slider_uniqueattr_203", "View_Slider_uniqueattr_204", "View_Slider_uniqueattr_205",
  "View_Slider_uniqueattr_206", "View_Slider_uniqueattr_207", "View_Slider_uniqueattr_208", "View_Slider_uniqueattr_209", "View_Slider_uniqueattr_210",
  "View_Slider_uniqueattr_211", "View_Slider_uniqueattr_212", "View_Slider_uniqueattr_213", "View_Slider_uniqueattr_214", "View_Slider_uniqueattr_215",
  "View_Slider_uniqueattr_216", "View_Slider_uniqueattr_217", "View_Slider_uniqueattr_218", "View_Slider_uniqueattr_219", "View_Slider_uniqueattr_220" ],
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
