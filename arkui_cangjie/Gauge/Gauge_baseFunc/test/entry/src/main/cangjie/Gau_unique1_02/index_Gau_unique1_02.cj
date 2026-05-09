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

package ohos_app_cangjie_entry.Gau_unique1_02

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
class index_Gau_unique1_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Gauge_unique2_1", "View_Gauge_unique2_2", "View_Gauge_unique2_3", "View_Gauge_unique2_4", "View_Gauge_unique2_5",
  "View_Gauge_unique2_6", "View_Gauge_unique2_7", "View_Gauge_unique2_8", "View_Gauge_unique2_9", "View_Gauge_unique2_10",
  "View_Gauge_unique2_11", "View_Gauge_unique2_12", "View_Gauge_unique2_13", "View_Gauge_unique2_14", "View_Gauge_unique2_15",
  "View_Gauge_unique2_16", "View_Gauge_unique2_17", "View_Gauge_unique2_18", "View_Gauge_unique2_19", "View_Gauge_unique2_20",
  "View_Gauge_unique2_21", "View_Gauge_unique2_22", "View_Gauge_unique2_23", "View_Gauge_unique2_24", "View_Gauge_unique2_25",
  "View_Gauge_unique2_26", "View_Gauge_unique2_27", "View_Gauge_unique2_28", "View_Gauge_unique2_29", "View_Gauge_unique2_30",
  "View_Gauge_unique2_31", "View_Gauge_unique2_32", "View_Gauge_unique2_33", "View_Gauge_unique2_34", "View_Gauge_unique2_35",
  "View_Gauge_unique2_36", "View_Gauge_unique2_37", "View_Gauge_unique2_38", "View_Gauge_unique2_39", "View_Gauge_unique2_40",
  "View_Gauge_unique2_41", "View_Gauge_unique2_42", "View_Gauge_unique2_43", "View_Gauge_unique2_44", "View_Gauge_unique2_45",
  "View_Gauge_unique2_46", "View_Gauge_unique2_47", "View_Gauge_unique2_48", "View_Gauge_unique2_49", "View_Gauge_unique2_50",
  "View_Gauge_unique2_51", "View_Gauge_unique2_52", "View_Gauge_unique2_53", "View_Gauge_unique2_54", "View_Gauge_unique2_55",
  "View_Gauge_unique2_56", "View_Gauge_unique2_57", "View_Gauge_unique2_58", "View_Gauge_unique2_59", "View_Gauge_unique2_60",
  "View_Gauge_unique2_61", "View_Gauge_unique2_62", "View_Gauge_unique2_63", "View_Gauge_unique2_64", "View_Gauge_unique2_65",
  "View_Gauge_unique2_66", "View_Gauge_unique2_67", "View_Gauge_unique2_68", "View_Gauge_unique2_69", "View_Gauge_unique2_70",
  "View_Gauge_unique2_71", "View_Gauge_unique2_72", "View_Gauge_unique2_73", "View_Gauge_unique2_74", "View_Gauge_unique2_75",
  "View_Gauge_unique2_76", "View_Gauge_unique2_77", "View_Gauge_unique2_78", "View_Gauge_unique2_79", "View_Gauge_unique2_80",
  "View_Gauge_unique2_81", "View_Gauge_unique2_82", "View_Gauge_unique2_83", "View_Gauge_unique2_84", "View_Gauge_unique2_85",
  "View_Gauge_unique2_86", "View_Gauge_unique2_87", "View_Gauge_unique2_88", "View_Gauge_unique2_89", "View_Gauge_unique2_90",
  "View_Gauge_unique2_91", "View_Gauge_unique2_92", "View_Gauge_unique2_93", "View_Gauge_unique2_94", "View_Gauge_unique2_95",
  "View_Gauge_unique2_96", "View_Gauge_unique2_97", "View_Gauge_unique2_98", "View_Gauge_unique2_99", "View_Gauge_unique2_100",
  "View_Gauge_unique2_101", "View_Gauge_unique2_102", "View_Gauge_unique2_103", "View_Gauge_unique2_104", "View_Gauge_unique2_105",
  "View_Gauge_unique2_106", "View_Gauge_unique2_107", "View_Gauge_unique2_108", "View_Gauge_unique2_109", "View_Gauge_unique2_110",
  "View_Gauge_unique2_111", "View_Gauge_unique2_112", "View_Gauge_unique2_113", "View_Gauge_unique2_114", "View_Gauge_unique2_115",
  "View_Gauge_unique2_116", "View_Gauge_unique2_117", "View_Gauge_unique2_118", "View_Gauge_unique2_119", "View_Gauge_unique2_120",
  "View_Gauge_unique2_121", "View_Gauge_unique2_122", "View_Gauge_unique2_123", "View_Gauge_unique2_124", "View_Gauge_unique2_125",
  "View_Gauge_unique2_126", "View_Gauge_unique2_127", "View_Gauge_unique2_128", "View_Gauge_unique2_129", "View_Gauge_unique2_130",
  "View_Gauge_unique2_131", "View_Gauge_unique2_132", "View_Gauge_unique2_133", "View_Gauge_unique2_134", "View_Gauge_unique2_135",
  "View_Gauge_unique2_136", "View_Gauge_unique2_137", "View_Gauge_unique2_138", "View_Gauge_unique2_139", "View_Gauge_unique2_140",
  "View_Gauge_unique2_141", "View_Gauge_unique2_142", "View_Gauge_unique2_143", "View_Gauge_unique2_144", "View_Gauge_unique2_145",
  "View_Gauge_unique2_146", "View_Gauge_unique2_147", "View_Gauge_unique2_148", "View_Gauge_unique2_149", "View_Gauge_unique2_150",
  "View_Gauge_unique2_151", "View_Gauge_unique2_152", "View_Gauge_unique2_153", "View_Gauge_unique2_154", "View_Gauge_unique2_155",
  "View_Gauge_unique2_156", "View_Gauge_unique2_157", "View_Gauge_unique2_158", "View_Gauge_unique2_159", "View_Gauge_unique2_160",
  "View_Gauge_unique2_161", "View_Gauge_unique2_162", "View_Gauge_unique2_163", "View_Gauge_unique2_164", "View_Gauge_unique2_165",
  "View_Gauge_unique2_166", "View_Gauge_unique2_167", "View_Gauge_unique2_168", "View_Gauge_unique2_169", "View_Gauge_unique2_170",
  "View_Gauge_unique2_171", "View_Gauge_unique2_172", "View_Gauge_unique2_173", "View_Gauge_unique2_174", "View_Gauge_unique2_175",
  "View_Gauge_unique2_176", "View_Gauge_unique2_177", "View_Gauge_unique2_178", "View_Gauge_unique2_179", "View_Gauge_unique2_180",
  "View_Gauge_unique2_181", "View_Gauge_unique2_182", "View_Gauge_unique2_183", "View_Gauge_unique2_184", "View_Gauge_unique2_185",
  "View_Gauge_unique2_186", "View_Gauge_unique2_187", "View_Gauge_unique2_188", "View_Gauge_unique2_189", "View_Gauge_unique2_190",
  "View_Gauge_unique2_191", "View_Gauge_unique2_192", "View_Gauge_unique2_193", "View_Gauge_unique2_194", "View_Gauge_unique2_195",
  "View_Gauge_unique2_196", "View_Gauge_unique2_197", "View_Gauge_unique2_198", "View_Gauge_unique2_199", "View_Gauge_unique2_200",
  "View_Gauge_unique2_201", "View_Gauge_unique2_202", "View_Gauge_unique2_203", "View_Gauge_unique2_204", "View_Gauge_unique2_205",
  "View_Gauge_unique2_206", "View_Gauge_unique2_207", "View_Gauge_unique2_208", "View_Gauge_unique2_209", "View_Gauge_unique2_210",
  "View_Gauge_unique2_211", "View_Gauge_unique2_212", "View_Gauge_unique2_213", "View_Gauge_unique2_214", "View_Gauge_unique2_215",
  "View_Gauge_unique2_216", "View_Gauge_unique2_217", "View_Gauge_unique2_218", "View_Gauge_unique2_219", "View_Gauge_unique2_220" ],
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
