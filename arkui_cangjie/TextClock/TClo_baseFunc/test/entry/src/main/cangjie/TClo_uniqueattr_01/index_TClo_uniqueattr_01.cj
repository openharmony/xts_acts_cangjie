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

package ohos_app_cangjie_entry.TClo_uniqueattr_01

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
class index_TClo_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextClock_unique01_1", "View_TextClock_unique01_2", "View_TextClock_unique01_3", "View_TextClock_unique01_4", "View_TextClock_unique01_5",
  "View_TextClock_unique01_6", "View_TextClock_unique01_7", "View_TextClock_unique01_8", "View_TextClock_unique01_9", "View_TextClock_unique01_10",
  "View_TextClock_unique01_11", "View_TextClock_unique01_12", "View_TextClock_unique01_13", "View_TextClock_unique01_14", "View_TextClock_unique01_15",
  "View_TextClock_unique01_16", "View_TextClock_unique01_17", "View_TextClock_unique01_18", "View_TextClock_unique01_19", "View_TextClock_unique01_20",
  "View_TextClock_unique01_21", "View_TextClock_unique01_22", "View_TextClock_unique01_23", "View_TextClock_unique01_24", "View_TextClock_unique01_25",
  "View_TextClock_unique01_26", "View_TextClock_unique01_27", "View_TextClock_unique01_28", "View_TextClock_unique01_29", "View_TextClock_unique01_30",
  "View_TextClock_unique01_31", "View_TextClock_unique01_32", "View_TextClock_unique01_33", "View_TextClock_unique01_34", "View_TextClock_unique01_35",
  "View_TextClock_unique01_36", "View_TextClock_unique01_37", "View_TextClock_unique01_38", "View_TextClock_unique01_39", "View_TextClock_unique01_40",
  "View_TextClock_unique01_41", "View_TextClock_unique01_42", "View_TextClock_unique01_43", "View_TextClock_unique01_44", "View_TextClock_unique01_45",
  "View_TextClock_unique01_46", "View_TextClock_unique01_47", "View_TextClock_unique01_48", "View_TextClock_unique01_49", "View_TextClock_unique01_50",
  "View_TextClock_unique01_51", "View_TextClock_unique01_52", "View_TextClock_unique01_53", "View_TextClock_unique01_54", "View_TextClock_unique01_55",
  "View_TextClock_unique01_56", "View_TextClock_unique01_57", "View_TextClock_unique01_58", "View_TextClock_unique01_59", "View_TextClock_unique01_60",
  "View_TextClock_unique01_61", "View_TextClock_unique01_62", "View_TextClock_unique01_63", "View_TextClock_unique01_64", "View_TextClock_unique01_65",
  "View_TextClock_unique01_66", "View_TextClock_unique01_67", "View_TextClock_unique01_68", "View_TextClock_unique01_69", "View_TextClock_unique01_70",
  "View_TextClock_unique01_71", "View_TextClock_unique01_72", "View_TextClock_unique01_73", "View_TextClock_unique01_74", "View_TextClock_unique01_75",
  "View_TextClock_unique01_76", "View_TextClock_unique01_77", "View_TextClock_unique01_78", "View_TextClock_unique01_79", "View_TextClock_unique01_80",
  "View_TextClock_unique01_81", "View_TextClock_unique01_82", "View_TextClock_unique01_83", "View_TextClock_unique01_84", "View_TextClock_unique01_85",
  "View_TextClock_unique01_86", "View_TextClock_unique01_87", "View_TextClock_unique01_88", "View_TextClock_unique01_89", "View_TextClock_unique01_90",
  "View_TextClock_unique01_91", "View_TextClock_unique01_92", "View_TextClock_unique01_93", "View_TextClock_unique01_94", "View_TextClock_unique01_95",
  "View_TextClock_unique01_96", "View_TextClock_unique01_97", "View_TextClock_unique01_98", "View_TextClock_unique01_99", "View_TextClock_unique01_100",
  "View_TextClock_unique01_101", "View_TextClock_unique01_102", "View_TextClock_unique01_103", "View_TextClock_unique01_104", "View_TextClock_unique01_105",
  "View_TextClock_unique01_106", "View_TextClock_unique01_107", "View_TextClock_unique01_108", "View_TextClock_unique01_109", "View_TextClock_unique01_110",
  "View_TextClock_unique01_111", "View_TextClock_unique01_112", "View_TextClock_unique01_113", "View_TextClock_unique01_114", "View_TextClock_unique01_115",
  "View_TextClock_unique01_116", "View_TextClock_unique01_117", "View_TextClock_unique01_118", "View_TextClock_unique01_119", "View_TextClock_unique01_120",
  "View_TextClock_unique01_121", "View_TextClock_unique01_122", "View_TextClock_unique01_123", "View_TextClock_unique01_124", "View_TextClock_unique01_125",
  "View_TextClock_unique01_126", "View_TextClock_unique01_127", "View_TextClock_unique01_128", "View_TextClock_unique01_129", "View_TextClock_unique01_130",
  "View_TextClock_unique01_131", "View_TextClock_unique01_132", "View_TextClock_unique01_133", "View_TextClock_unique01_134", "View_TextClock_unique01_135",
  "View_TextClock_unique01_136", "View_TextClock_unique01_137", "View_TextClock_unique01_138", "View_TextClock_unique01_139", "View_TextClock_unique01_140",
  "View_TextClock_unique01_141", "View_TextClock_unique01_142", "View_TextClock_unique01_143", "View_TextClock_unique01_144", "View_TextClock_unique01_145",
  "View_TextClock_unique01_146", "View_TextClock_unique01_147", "View_TextClock_unique01_148", "View_TextClock_unique01_149", "View_TextClock_unique01_150",
  "View_TextClock_unique01_151", "View_TextClock_unique01_152", "View_TextClock_unique01_153", "View_TextClock_unique01_154", "View_TextClock_unique01_155",
  "View_TextClock_unique01_156", "View_TextClock_unique01_157", "View_TextClock_unique01_158", "View_TextClock_unique01_159", "View_TextClock_unique01_160",
  "View_TextClock_unique01_161", "View_TextClock_unique01_162", "View_TextClock_unique01_163", "View_TextClock_unique01_164", "View_TextClock_unique01_165",
  "View_TextClock_unique01_166", "View_TextClock_unique01_167", "View_TextClock_unique01_168", "View_TextClock_unique01_169", "View_TextClock_unique01_170",
  "View_TextClock_unique01_171", "View_TextClock_unique01_172", "View_TextClock_unique01_173", "View_TextClock_unique01_174", "View_TextClock_unique01_175",
  "View_TextClock_unique01_176", "View_TextClock_unique01_177", "View_TextClock_unique01_178", "View_TextClock_unique01_179", "View_TextClock_unique01_180",
  "View_TextClock_unique01_181", "View_TextClock_unique01_182", "View_TextClock_unique01_183", "View_TextClock_unique01_184", "View_TextClock_unique01_185",
  "View_TextClock_unique01_186", "View_TextClock_unique01_187", "View_TextClock_unique01_188", "View_TextClock_unique01_189", "View_TextClock_unique01_190",
  "View_TextClock_unique01_191", "View_TextClock_unique01_192", "View_TextClock_unique01_193", "View_TextClock_unique01_194", "View_TextClock_unique01_195",
  "View_TextClock_unique01_196", "View_TextClock_unique01_197", "View_TextClock_unique01_198", "View_TextClock_unique01_199", "View_TextClock_unique01_200",
  "View_TextClock_unique01_201", "View_TextClock_unique01_202", "View_TextClock_unique01_203", "View_TextClock_unique01_204", "View_TextClock_unique01_205",
  "View_TextClock_unique01_206", "View_TextClock_unique01_207", "View_TextClock_unique01_208", "View_TextClock_unique01_209", "View_TextClock_unique01_210",
  "View_TextClock_unique01_211", "View_TextClock_unique01_212", "View_TextClock_unique01_213", "View_TextClock_unique01_214", "View_TextClock_unique01_215",
  "View_TextClock_unique01_216", "View_TextClock_unique01_217", "View_TextClock_unique01_218", "View_TextClock_unique01_219", "View_TextClock_unique01_220" ],
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
