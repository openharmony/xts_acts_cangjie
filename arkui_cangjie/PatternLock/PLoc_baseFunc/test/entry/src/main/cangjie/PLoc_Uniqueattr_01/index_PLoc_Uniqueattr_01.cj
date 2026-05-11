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

package ohos_app_cangjie_entry.PLoc_Uniqueattr_01

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
class index_PLoc_Uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_PatternLock_uniqueattr01_1", "View_PatternLock_uniqueattr01_2", "View_PatternLock_uniqueattr01_3", "View_PatternLock_uniqueattr01_4", "View_PatternLock_uniqueattr01_5",
  "View_PatternLock_uniqueattr01_6", "View_PatternLock_uniqueattr01_7", "View_PatternLock_uniqueattr01_8", "View_PatternLock_uniqueattr01_9", "View_PatternLock_uniqueattr01_10",
  "View_PatternLock_uniqueattr01_11", "View_PatternLock_uniqueattr01_12", "View_PatternLock_uniqueattr01_13", "View_PatternLock_uniqueattr01_14", "View_PatternLock_uniqueattr01_15",
  "View_PatternLock_uniqueattr01_16", "View_PatternLock_uniqueattr01_17", "View_PatternLock_uniqueattr01_18", "View_PatternLock_uniqueattr01_19", "View_PatternLock_uniqueattr01_20",
  "View_PatternLock_uniqueattr01_21", "View_PatternLock_uniqueattr01_22", "View_PatternLock_uniqueattr01_23", "View_PatternLock_uniqueattr01_24", "View_PatternLock_uniqueattr01_25",
  "View_PatternLock_uniqueattr01_26", "View_PatternLock_uniqueattr01_27", "View_PatternLock_uniqueattr01_28", "View_PatternLock_uniqueattr01_29", "View_PatternLock_uniqueattr01_30",
  "View_PatternLock_uniqueattr01_31", "View_PatternLock_uniqueattr01_32", "View_PatternLock_uniqueattr01_33", "View_PatternLock_uniqueattr01_34", "View_PatternLock_uniqueattr01_35",
  "View_PatternLock_uniqueattr01_36", "View_PatternLock_uniqueattr01_37", "View_PatternLock_uniqueattr01_38", "View_PatternLock_uniqueattr01_39", "View_PatternLock_uniqueattr01_40",
  "View_PatternLock_uniqueattr01_41", "View_PatternLock_uniqueattr01_42", "View_PatternLock_uniqueattr01_43", "View_PatternLock_uniqueattr01_44", "View_PatternLock_uniqueattr01_45",
  "View_PatternLock_uniqueattr01_46", "View_PatternLock_uniqueattr01_47", "View_PatternLock_uniqueattr01_48", "View_PatternLock_uniqueattr01_49", "View_PatternLock_uniqueattr01_50",
  "View_PatternLock_uniqueattr01_51", "View_PatternLock_uniqueattr01_52", "View_PatternLock_uniqueattr01_53", "View_PatternLock_uniqueattr01_54", "View_PatternLock_uniqueattr01_55",
  "View_PatternLock_uniqueattr01_56", "View_PatternLock_uniqueattr01_57", "View_PatternLock_uniqueattr01_58", "View_PatternLock_uniqueattr01_59", "View_PatternLock_uniqueattr01_60",
  "View_PatternLock_uniqueattr01_61", "View_PatternLock_uniqueattr01_62", "View_PatternLock_uniqueattr01_63", "View_PatternLock_uniqueattr01_64", "View_PatternLock_uniqueattr01_65",
  "View_PatternLock_uniqueattr01_66", "View_PatternLock_uniqueattr01_67", "View_PatternLock_uniqueattr01_68", "View_PatternLock_uniqueattr01_69", "View_PatternLock_uniqueattr01_70",
  "View_PatternLock_uniqueattr01_71", "View_PatternLock_uniqueattr01_72", "View_PatternLock_uniqueattr01_73", "View_PatternLock_uniqueattr01_74", "View_PatternLock_uniqueattr01_75",
  "View_PatternLock_uniqueattr01_76", "View_PatternLock_uniqueattr01_77", "View_PatternLock_uniqueattr01_78", "View_PatternLock_uniqueattr01_79", "View_PatternLock_uniqueattr01_80",
  "View_PatternLock_uniqueattr01_81", "View_PatternLock_uniqueattr01_82", "View_PatternLock_uniqueattr01_83", "View_PatternLock_uniqueattr01_84", "View_PatternLock_uniqueattr01_85",
  "View_PatternLock_uniqueattr01_86", "View_PatternLock_uniqueattr01_87", "View_PatternLock_uniqueattr01_88", "View_PatternLock_uniqueattr01_89", "View_PatternLock_uniqueattr01_90",
  "View_PatternLock_uniqueattr01_91", "View_PatternLock_uniqueattr01_92", "View_PatternLock_uniqueattr01_93", "View_PatternLock_uniqueattr01_94", "View_PatternLock_uniqueattr01_95",
  "View_PatternLock_uniqueattr01_96", "View_PatternLock_uniqueattr01_97", "View_PatternLock_uniqueattr01_98", "View_PatternLock_uniqueattr01_99", "View_PatternLock_uniqueattr01_100",
  "View_PatternLock_uniqueattr01_101", "View_PatternLock_uniqueattr01_102", "View_PatternLock_uniqueattr01_103", "View_PatternLock_uniqueattr01_104", "View_PatternLock_uniqueattr01_105",
  "View_PatternLock_uniqueattr01_106", "View_PatternLock_uniqueattr01_107", "View_PatternLock_uniqueattr01_108", "View_PatternLock_uniqueattr01_109", "View_PatternLock_uniqueattr01_110",
  "View_PatternLock_uniqueattr01_111", "View_PatternLock_uniqueattr01_112", "View_PatternLock_uniqueattr01_113", "View_PatternLock_uniqueattr01_114", "View_PatternLock_uniqueattr01_115",
  "View_PatternLock_uniqueattr01_116", "View_PatternLock_uniqueattr01_117", "View_PatternLock_uniqueattr01_118", "View_PatternLock_uniqueattr01_119", "View_PatternLock_uniqueattr01_120",
  "View_PatternLock_uniqueattr01_121", "View_PatternLock_uniqueattr01_122", "View_PatternLock_uniqueattr01_123", "View_PatternLock_uniqueattr01_124", "View_PatternLock_uniqueattr01_125",
  "View_PatternLock_uniqueattr01_126", "View_PatternLock_uniqueattr01_127", "View_PatternLock_uniqueattr01_128", "View_PatternLock_uniqueattr01_129", "View_PatternLock_uniqueattr01_130",
  "View_PatternLock_uniqueattr01_131", "View_PatternLock_uniqueattr01_132", "View_PatternLock_uniqueattr01_133", "View_PatternLock_uniqueattr01_134", "View_PatternLock_uniqueattr01_135",
  "View_PatternLock_uniqueattr01_136", "View_PatternLock_uniqueattr01_137", "View_PatternLock_uniqueattr01_138", "View_PatternLock_uniqueattr01_139", "View_PatternLock_uniqueattr01_140",
  "View_PatternLock_uniqueattr01_141", "View_PatternLock_uniqueattr01_142", "View_PatternLock_uniqueattr01_143", "View_PatternLock_uniqueattr01_144", "View_PatternLock_uniqueattr01_145",
  "View_PatternLock_uniqueattr01_146", "View_PatternLock_uniqueattr01_147", "View_PatternLock_uniqueattr01_148", "View_PatternLock_uniqueattr01_149", "View_PatternLock_uniqueattr01_150",
  "View_PatternLock_uniqueattr01_151", "View_PatternLock_uniqueattr01_152", "View_PatternLock_uniqueattr01_153", "View_PatternLock_uniqueattr01_154", "View_PatternLock_uniqueattr01_155",
  "View_PatternLock_uniqueattr01_156", "View_PatternLock_uniqueattr01_157", "View_PatternLock_uniqueattr01_158", "View_PatternLock_uniqueattr01_159", "View_PatternLock_uniqueattr01_160",
  "View_PatternLock_uniqueattr01_161", "View_PatternLock_uniqueattr01_162", "View_PatternLock_uniqueattr01_163", "View_PatternLock_uniqueattr01_164", "View_PatternLock_uniqueattr01_165",
  "View_PatternLock_uniqueattr01_166", "View_PatternLock_uniqueattr01_167", "View_PatternLock_uniqueattr01_168", "View_PatternLock_uniqueattr01_169", "View_PatternLock_uniqueattr01_170",
  "View_PatternLock_uniqueattr01_171", "View_PatternLock_uniqueattr01_172", "View_PatternLock_uniqueattr01_173", "View_PatternLock_uniqueattr01_174", "View_PatternLock_uniqueattr01_175",
  "View_PatternLock_uniqueattr01_176", "View_PatternLock_uniqueattr01_177", "View_PatternLock_uniqueattr01_178", "View_PatternLock_uniqueattr01_179", "View_PatternLock_uniqueattr01_180",
  "View_PatternLock_uniqueattr01_181", "View_PatternLock_uniqueattr01_182", "View_PatternLock_uniqueattr01_183", "View_PatternLock_uniqueattr01_184", "View_PatternLock_uniqueattr01_185",
  "View_PatternLock_uniqueattr01_186", "View_PatternLock_uniqueattr01_187", "View_PatternLock_uniqueattr01_188", "View_PatternLock_uniqueattr01_189", "View_PatternLock_uniqueattr01_190",
  "View_PatternLock_uniqueattr01_191", "View_PatternLock_uniqueattr01_192", "View_PatternLock_uniqueattr01_193", "View_PatternLock_uniqueattr01_194", "View_PatternLock_uniqueattr01_195",
  "View_PatternLock_uniqueattr01_196", "View_PatternLock_uniqueattr01_197", "View_PatternLock_uniqueattr01_198", "View_PatternLock_uniqueattr01_199", "View_PatternLock_uniqueattr01_200",
  "View_PatternLock_uniqueattr01_201", "View_PatternLock_uniqueattr01_202", "View_PatternLock_uniqueattr01_203", "View_PatternLock_uniqueattr01_204", "View_PatternLock_uniqueattr01_205",
  "View_PatternLock_uniqueattr01_206", "View_PatternLock_uniqueattr01_207", "View_PatternLock_uniqueattr01_208", "View_PatternLock_uniqueattr01_209", "View_PatternLock_uniqueattr01_210",
  "View_PatternLock_uniqueattr01_211", "View_PatternLock_uniqueattr01_212", "View_PatternLock_uniqueattr01_213", "View_PatternLock_uniqueattr01_214", "View_PatternLock_uniqueattr01_215",
  "View_PatternLock_uniqueattr01_216", "View_PatternLock_uniqueattr01_217", "View_PatternLock_uniqueattr01_218", "View_PatternLock_uniqueattr01_219", "View_PatternLock_uniqueattr01_220" ],
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
