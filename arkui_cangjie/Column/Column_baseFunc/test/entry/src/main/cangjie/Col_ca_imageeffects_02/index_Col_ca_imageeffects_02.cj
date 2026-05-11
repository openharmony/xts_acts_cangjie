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

package ohos_app_cangjie_entry.Col_ca_imageeffects_02

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
class index_Col_ca_imageeffects_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Column_comattr_imageeffects2_1", "View_Column_comattr_imageeffects2_2", "View_Column_comattr_imageeffects2_3", "View_Column_comattr_imageeffects2_4", "View_Column_comattr_imageeffects2_5",
  "View_Column_comattr_imageeffects2_6", "View_Column_comattr_imageeffects2_7", "View_Column_comattr_imageeffects2_8", "View_Column_comattr_imageeffects2_9", "View_Column_comattr_imageeffects2_10",
  "View_Column_comattr_imageeffects2_11", "View_Column_comattr_imageeffects2_12", "View_Column_comattr_imageeffects2_13", "View_Column_comattr_imageeffects2_14", "View_Column_comattr_imageeffects2_15",
  "View_Column_comattr_imageeffects2_16", "View_Column_comattr_imageeffects2_17", "View_Column_comattr_imageeffects2_18", "View_Column_comattr_imageeffects2_19", "View_Column_comattr_imageeffects2_20",
  "View_Column_comattr_imageeffects2_21", "View_Column_comattr_imageeffects2_22", "View_Column_comattr_imageeffects2_23", "View_Column_comattr_imageeffects2_24", "View_Column_comattr_imageeffects2_25",
  "View_Column_comattr_imageeffects2_26", "View_Column_comattr_imageeffects2_27", "View_Column_comattr_imageeffects2_28", "View_Column_comattr_imageeffects2_29", "View_Column_comattr_imageeffects2_30",
  "View_Column_comattr_imageeffects2_31", "View_Column_comattr_imageeffects2_32", "View_Column_comattr_imageeffects2_33", "View_Column_comattr_imageeffects2_34", "View_Column_comattr_imageeffects2_35",
  "View_Column_comattr_imageeffects2_36", "View_Column_comattr_imageeffects2_37", "View_Column_comattr_imageeffects2_38", "View_Column_comattr_imageeffects2_39", "View_Column_comattr_imageeffects2_40",
  "View_Column_comattr_imageeffects2_41", "View_Column_comattr_imageeffects2_42", "View_Column_comattr_imageeffects2_43", "View_Column_comattr_imageeffects2_44", "View_Column_comattr_imageeffects2_45",
  "View_Column_comattr_imageeffects2_46", "View_Column_comattr_imageeffects2_47", "View_Column_comattr_imageeffects2_48", "View_Column_comattr_imageeffects2_49", "View_Column_comattr_imageeffects2_50",
  "View_Column_comattr_imageeffects2_51", "View_Column_comattr_imageeffects2_52", "View_Column_comattr_imageeffects2_53", "View_Column_comattr_imageeffects2_54", "View_Column_comattr_imageeffects2_55",
  "View_Column_comattr_imageeffects2_56", "View_Column_comattr_imageeffects2_57", "View_Column_comattr_imageeffects2_58", "View_Column_comattr_imageeffects2_59", "View_Column_comattr_imageeffects2_60",
  "View_Column_comattr_imageeffects2_61", "View_Column_comattr_imageeffects2_62", "View_Column_comattr_imageeffects2_63", "View_Column_comattr_imageeffects2_64", "View_Column_comattr_imageeffects2_65",
  "View_Column_comattr_imageeffects2_66", "View_Column_comattr_imageeffects2_67", "View_Column_comattr_imageeffects2_68", "View_Column_comattr_imageeffects2_69", "View_Column_comattr_imageeffects2_70",
  "View_Column_comattr_imageeffects2_71", "View_Column_comattr_imageeffects2_72", "View_Column_comattr_imageeffects2_73", "View_Column_comattr_imageeffects2_74", "View_Column_comattr_imageeffects2_75",
  "View_Column_comattr_imageeffects2_76", "View_Column_comattr_imageeffects2_77", "View_Column_comattr_imageeffects2_78", "View_Column_comattr_imageeffects2_79", "View_Column_comattr_imageeffects2_80",
  "View_Column_comattr_imageeffects2_81", "View_Column_comattr_imageeffects2_82", "View_Column_comattr_imageeffects2_83", "View_Column_comattr_imageeffects2_84", "View_Column_comattr_imageeffects2_85",
  "View_Column_comattr_imageeffects2_86", "View_Column_comattr_imageeffects2_87", "View_Column_comattr_imageeffects2_88", "View_Column_comattr_imageeffects2_89", "View_Column_comattr_imageeffects2_90",
  "View_Column_comattr_imageeffects2_91", "View_Column_comattr_imageeffects2_92", "View_Column_comattr_imageeffects2_93", "View_Column_comattr_imageeffects2_94", "View_Column_comattr_imageeffects2_95",
  "View_Column_comattr_imageeffects2_96", "View_Column_comattr_imageeffects2_97", "View_Column_comattr_imageeffects2_98", "View_Column_comattr_imageeffects2_99", "View_Column_comattr_imageeffects2_100",
  "View_Column_comattr_imageeffects2_101", "View_Column_comattr_imageeffects2_102", "View_Column_comattr_imageeffects2_103", "View_Column_comattr_imageeffects2_104", "View_Column_comattr_imageeffects2_105",
  "View_Column_comattr_imageeffects2_106", "View_Column_comattr_imageeffects2_107", "View_Column_comattr_imageeffects2_108", "View_Column_comattr_imageeffects2_109", "View_Column_comattr_imageeffects2_110",
  "View_Column_comattr_imageeffects2_111", "View_Column_comattr_imageeffects2_112", "View_Column_comattr_imageeffects2_113", "View_Column_comattr_imageeffects2_114", "View_Column_comattr_imageeffects2_115",
  "View_Column_comattr_imageeffects2_116", "View_Column_comattr_imageeffects2_117", "View_Column_comattr_imageeffects2_118", "View_Column_comattr_imageeffects2_119", "View_Column_comattr_imageeffects2_120",
  "View_Column_comattr_imageeffects2_121", "View_Column_comattr_imageeffects2_122", "View_Column_comattr_imageeffects2_123", "View_Column_comattr_imageeffects2_124", "View_Column_comattr_imageeffects2_125",
  "View_Column_comattr_imageeffects2_126", "View_Column_comattr_imageeffects2_127", "View_Column_comattr_imageeffects2_128", "View_Column_comattr_imageeffects2_129", "View_Column_comattr_imageeffects2_130",
  "View_Column_comattr_imageeffects2_131", "View_Column_comattr_imageeffects2_132", "View_Column_comattr_imageeffects2_133", "View_Column_comattr_imageeffects2_134", "View_Column_comattr_imageeffects2_135",
  "View_Column_comattr_imageeffects2_136", "View_Column_comattr_imageeffects2_137", "View_Column_comattr_imageeffects2_138", "View_Column_comattr_imageeffects2_139", "View_Column_comattr_imageeffects2_140",
  "View_Column_comattr_imageeffects2_141", "View_Column_comattr_imageeffects2_142", "View_Column_comattr_imageeffects2_143", "View_Column_comattr_imageeffects2_144", "View_Column_comattr_imageeffects2_145",
  "View_Column_comattr_imageeffects2_146", "View_Column_comattr_imageeffects2_147", "View_Column_comattr_imageeffects2_148", "View_Column_comattr_imageeffects2_149", "View_Column_comattr_imageeffects2_150",
  "View_Column_comattr_imageeffects2_151", "View_Column_comattr_imageeffects2_152", "View_Column_comattr_imageeffects2_153", "View_Column_comattr_imageeffects2_154", "View_Column_comattr_imageeffects2_155",
  "View_Column_comattr_imageeffects2_156", "View_Column_comattr_imageeffects2_157", "View_Column_comattr_imageeffects2_158", "View_Column_comattr_imageeffects2_159", "View_Column_comattr_imageeffects2_160",
  "View_Column_comattr_imageeffects2_161", "View_Column_comattr_imageeffects2_162", "View_Column_comattr_imageeffects2_163", "View_Column_comattr_imageeffects2_164", "View_Column_comattr_imageeffects2_165",
  "View_Column_comattr_imageeffects2_166", "View_Column_comattr_imageeffects2_167", "View_Column_comattr_imageeffects2_168", "View_Column_comattr_imageeffects2_169", "View_Column_comattr_imageeffects2_170",
  "View_Column_comattr_imageeffects2_171", "View_Column_comattr_imageeffects2_172", "View_Column_comattr_imageeffects2_173", "View_Column_comattr_imageeffects2_174", "View_Column_comattr_imageeffects2_175",
  "View_Column_comattr_imageeffects2_176", "View_Column_comattr_imageeffects2_177", "View_Column_comattr_imageeffects2_178", "View_Column_comattr_imageeffects2_179", "View_Column_comattr_imageeffects2_180",
  "View_Column_comattr_imageeffects2_181", "View_Column_comattr_imageeffects2_182", "View_Column_comattr_imageeffects2_183", "View_Column_comattr_imageeffects2_184", "View_Column_comattr_imageeffects2_185",
  "View_Column_comattr_imageeffects2_186", "View_Column_comattr_imageeffects2_187", "View_Column_comattr_imageeffects2_188", "View_Column_comattr_imageeffects2_189", "View_Column_comattr_imageeffects2_190",
  "View_Column_comattr_imageeffects2_191", "View_Column_comattr_imageeffects2_192", "View_Column_comattr_imageeffects2_193", "View_Column_comattr_imageeffects2_194", "View_Column_comattr_imageeffects2_195",
  "View_Column_comattr_imageeffects2_196", "View_Column_comattr_imageeffects2_197", "View_Column_comattr_imageeffects2_198", "View_Column_comattr_imageeffects2_199", "View_Column_comattr_imageeffects2_200",
  "View_Column_comattr_imageeffects2_201", "View_Column_comattr_imageeffects2_202", "View_Column_comattr_imageeffects2_203", "View_Column_comattr_imageeffects2_204", "View_Column_comattr_imageeffects2_205",
  "View_Column_comattr_imageeffects2_206", "View_Column_comattr_imageeffects2_207", "View_Column_comattr_imageeffects2_208", "View_Column_comattr_imageeffects2_209", "View_Column_comattr_imageeffects2_210",
  "View_Column_comattr_imageeffects2_211", "View_Column_comattr_imageeffects2_212", "View_Column_comattr_imageeffects2_213", "View_Column_comattr_imageeffects2_214", "View_Column_comattr_imageeffects2_215",
  "View_Column_comattr_imageeffects2_216", "View_Column_comattr_imageeffects2_217", "View_Column_comattr_imageeffects2_218", "View_Column_comattr_imageeffects2_219", "View_Column_comattr_imageeffects2_220",
  "View_Column_comattr_imageeffects2_221", "View_Column_comattr_imageeffects2_222", "View_Column_comattr_imageeffects2_223", "View_Column_comattr_imageeffects2_224", "View_Column_comattr_imageeffects2_225",
  "View_Column_comattr_imageeffects2_226", "View_Column_comattr_imageeffects2_227", "View_Column_comattr_imageeffects2_228", "View_Column_comattr_imageeffects2_229", "View_Column_comattr_imageeffects2_230",
  "View_Column_comattr_imageeffects2_231", "View_Column_comattr_imageeffects2_232", "View_Column_comattr_imageeffects2_233", "View_Column_comattr_imageeffects2_234", "View_Column_comattr_imageeffects2_235",
  "View_Column_comattr_imageeffects2_236", "View_Column_comattr_imageeffects2_237", "View_Column_comattr_imageeffects2_238", "View_Column_comattr_imageeffects2_239", "View_Column_comattr_imageeffects2_240",
  "View_Column_comattr_imageeffects2_241", "View_Column_comattr_imageeffects2_242", "View_Column_comattr_imageeffects2_243" ],
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
