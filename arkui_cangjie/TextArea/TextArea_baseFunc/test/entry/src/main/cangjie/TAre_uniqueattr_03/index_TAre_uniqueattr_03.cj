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

package ohos_app_cangjie_entry.TAre_uniqueattr_03

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
class index_TAre_uniqueattr_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextArea_uniqueattr_1", "View_TextArea_uniqueattr_2", "View_TextArea_uniqueattr_3", "View_TextArea_uniqueattr_4", "View_TextArea_uniqueattr_5",
  "View_TextArea_uniqueattr_6", "View_TextArea_uniqueattr_7", "View_TextArea_uniqueattr_8", "View_TextArea_uniqueattr_9", "View_TextArea_uniqueattr_10",
  "View_TextArea_uniqueattr_11", "View_TextArea_uniqueattr_12", "View_TextArea_uniqueattr_13", "View_TextArea_uniqueattr_14", "View_TextArea_uniqueattr_15",
  "View_TextArea_uniqueattr_16", "View_TextArea_uniqueattr_17", "View_TextArea_uniqueattr_18", "View_TextArea_uniqueattr_19", "View_TextArea_uniqueattr_20",
  "View_TextArea_uniqueattr_21", "View_TextArea_uniqueattr_22", "View_TextArea_uniqueattr_23", "View_TextArea_uniqueattr_24", "View_TextArea_uniqueattr_25",
  "View_TextArea_uniqueattr_26", "View_TextArea_uniqueattr_27", "View_TextArea_uniqueattr_28", "View_TextArea_uniqueattr_29", "View_TextArea_uniqueattr_30",
  "View_TextArea_uniqueattr_31", "View_TextArea_uniqueattr_32", "View_TextArea_uniqueattr_33", "View_TextArea_uniqueattr_34", "View_TextArea_uniqueattr_35",
  "View_TextArea_uniqueattr_36", "View_TextArea_uniqueattr_37", "View_TextArea_uniqueattr_38", "View_TextArea_uniqueattr_39", "View_TextArea_uniqueattr_40",
  "View_TextArea_uniqueattr_41", "View_TextArea_uniqueattr_42", "View_TextArea_uniqueattr_43", "View_TextArea_uniqueattr_44", "View_TextArea_uniqueattr_45",
  "View_TextArea_uniqueattr_46", "View_TextArea_uniqueattr_47", "View_TextArea_uniqueattr_48", "View_TextArea_uniqueattr_49", "View_TextArea_uniqueattr_50",
  "View_TextArea_uniqueattr_51", "View_TextArea_uniqueattr_52", "View_TextArea_uniqueattr_53", "View_TextArea_uniqueattr_54", "View_TextArea_uniqueattr_55",
  "View_TextArea_uniqueattr_56", "View_TextArea_uniqueattr_57", "View_TextArea_uniqueattr_58", "View_TextArea_uniqueattr_59", "View_TextArea_uniqueattr_60",
  "View_TextArea_uniqueattr_61", "View_TextArea_uniqueattr_62", "View_TextArea_uniqueattr_63", "View_TextArea_uniqueattr_64", "View_TextArea_uniqueattr_65",
  "View_TextArea_uniqueattr_66", "View_TextArea_uniqueattr_67", "View_TextArea_uniqueattr_68", "View_TextArea_uniqueattr_69", "View_TextArea_uniqueattr_70",
  "View_TextArea_uniqueattr_71", "View_TextArea_uniqueattr_72", "View_TextArea_uniqueattr_73", "View_TextArea_uniqueattr_74", "View_TextArea_uniqueattr_75",
  "View_TextArea_uniqueattr_76", "View_TextArea_uniqueattr_77", "View_TextArea_uniqueattr_78", "View_TextArea_uniqueattr_79", "View_TextArea_uniqueattr_80",
  "View_TextArea_uniqueattr_81", "View_TextArea_uniqueattr_82", "View_TextArea_uniqueattr_83", "View_TextArea_uniqueattr_84", "View_TextArea_uniqueattr_85",
  "View_TextArea_uniqueattr_86", "View_TextArea_uniqueattr_87", "View_TextArea_uniqueattr_88", "View_TextArea_uniqueattr_89", "View_TextArea_uniqueattr_90",
  "View_TextArea_uniqueattr_91", "View_TextArea_uniqueattr_92", "View_TextArea_uniqueattr_93", "View_TextArea_uniqueattr_94", "View_TextArea_uniqueattr_95",
  "View_TextArea_uniqueattr_96", "View_TextArea_uniqueattr_97", "View_TextArea_uniqueattr_98", "View_TextArea_uniqueattr_99", "View_TextArea_uniqueattr_100",
  "View_TextArea_uniqueattr_101", "View_TextArea_uniqueattr_102", "View_TextArea_uniqueattr_103", "View_TextArea_uniqueattr_104", "View_TextArea_uniqueattr_105",
  "View_TextArea_uniqueattr_106", "View_TextArea_uniqueattr_107", "View_TextArea_uniqueattr_108", "View_TextArea_uniqueattr_109", "View_TextArea_uniqueattr_110",
  "View_TextArea_uniqueattr_111", "View_TextArea_uniqueattr_112", "View_TextArea_uniqueattr_113", "View_TextArea_uniqueattr_114", "View_TextArea_uniqueattr_115",
  "View_TextArea_uniqueattr_116", "View_TextArea_uniqueattr_117", "View_TextArea_uniqueattr_118", "View_TextArea_uniqueattr_119", "View_TextArea_uniqueattr_120",
  "View_TextArea_uniqueattr_121", "View_TextArea_uniqueattr_122", "View_TextArea_uniqueattr_123", "View_TextArea_uniqueattr_124", "View_TextArea_uniqueattr_125",
  "View_TextArea_uniqueattr_126", "View_TextArea_uniqueattr_127", "View_TextArea_uniqueattr_128", "View_TextArea_uniqueattr_129", "View_TextArea_uniqueattr_130",
  "View_TextArea_uniqueattr_131", "View_TextArea_uniqueattr_132", "View_TextArea_uniqueattr_133", "View_TextArea_uniqueattr_134", "View_TextArea_uniqueattr_135",
  "View_TextArea_uniqueattr_136", "View_TextArea_uniqueattr_137", "View_TextArea_uniqueattr_138", "View_TextArea_uniqueattr_139", "View_TextArea_uniqueattr_140",
  "View_TextArea_uniqueattr_141", "View_TextArea_uniqueattr_142", "View_TextArea_uniqueattr_143", "View_TextArea_uniqueattr_144", "View_TextArea_uniqueattr_145",
  "View_TextArea_uniqueattr_146", "View_TextArea_uniqueattr_147", "View_TextArea_uniqueattr_148", "View_TextArea_uniqueattr_149", "View_TextArea_uniqueattr_150",
  "View_TextArea_uniqueattr_151", "View_TextArea_uniqueattr_152", "View_TextArea_uniqueattr_153", "View_TextArea_uniqueattr_154", "View_TextArea_uniqueattr_155",
  "View_TextArea_uniqueattr_156", "View_TextArea_uniqueattr_157", "View_TextArea_uniqueattr_158", "View_TextArea_uniqueattr_159", "View_TextArea_uniqueattr_160",
  "View_TextArea_uniqueattr_161", "View_TextArea_uniqueattr_162", "View_TextArea_uniqueattr_163", "View_TextArea_uniqueattr_164", "View_TextArea_uniqueattr_165",
  "View_TextArea_uniqueattr_166", "View_TextArea_uniqueattr_167", "View_TextArea_uniqueattr_168", "View_TextArea_uniqueattr_169", "View_TextArea_uniqueattr_170",
  "View_TextArea_uniqueattr_171", "View_TextArea_uniqueattr_172", "View_TextArea_uniqueattr_173", "View_TextArea_uniqueattr_174", "View_TextArea_uniqueattr_175",
  "View_TextArea_uniqueattr_176", "View_TextArea_uniqueattr_177", "View_TextArea_uniqueattr_178", "View_TextArea_uniqueattr_179", "View_TextArea_uniqueattr_180",
  "View_TextArea_uniqueattr_181", "View_TextArea_uniqueattr_182", "View_TextArea_uniqueattr_183", "View_TextArea_uniqueattr_184", "View_TextArea_uniqueattr_185",
  "View_TextArea_uniqueattr_186", "View_TextArea_uniqueattr_187", "View_TextArea_uniqueattr_188", "View_TextArea_uniqueattr_189", "View_TextArea_uniqueattr_190",
  "View_TextArea_uniqueattr_191", "View_TextArea_uniqueattr_192", "View_TextArea_uniqueattr_193", "View_TextArea_uniqueattr_194", "View_TextArea_uniqueattr_195",
  "View_TextArea_uniqueattr_196", "View_TextArea_uniqueattr_197", "View_TextArea_uniqueattr_198", "View_TextArea_uniqueattr_199", "View_TextArea_uniqueattr_200",
  "View_TextArea_uniqueattr_201", "View_TextArea_uniqueattr_202", "View_TextArea_uniqueattr_203", "View_TextArea_uniqueattr_204", "View_TextArea_uniqueattr_205",
  "View_TextArea_uniqueattr_206", "View_TextArea_uniqueattr_207", "View_TextArea_uniqueattr_208", "View_TextArea_uniqueattr_209", "View_TextArea_uniqueattr_210",
  "View_TextArea_uniqueattr_211", "View_TextArea_uniqueattr_212", "View_TextArea_uniqueattr_213", "View_TextArea_uniqueattr_214", "View_TextArea_uniqueattr_215",
  "View_TextArea_uniqueattr_216", "View_TextArea_uniqueattr_217", "View_TextArea_uniqueattr_218", "View_TextArea_uniqueattr_219", "View_TextArea_uniqueattr_220",
  "View_TextArea_uniqueattr_221", "View_TextArea_uniqueattr_222", "View_TextArea_uniqueattr_223", "View_TextArea_uniqueattr_224" ],
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
