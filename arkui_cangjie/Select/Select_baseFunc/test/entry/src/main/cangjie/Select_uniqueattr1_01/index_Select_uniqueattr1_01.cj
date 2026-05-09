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

package ohos_app_cangjie_entry.Select_uniqueattr1_01

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
class index_Select_uniqueattr1_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Select_uniqueattr1_1", "View_Select_uniqueattr1_2", "View_Select_uniqueattr1_3", "View_Select_uniqueattr1_4", "View_Select_uniqueattr1_5",
  "View_Select_uniqueattr1_6", "View_Select_uniqueattr1_7", "View_Select_uniqueattr1_8", "View_Select_uniqueattr1_9", "View_Select_uniqueattr1_10",
  "View_Select_uniqueattr1_11", "View_Select_uniqueattr1_12", "View_Select_uniqueattr1_13", "View_Select_uniqueattr1_14", "View_Select_uniqueattr1_15",
  "View_Select_uniqueattr1_16", "View_Select_uniqueattr1_17", "View_Select_uniqueattr1_18", "View_Select_uniqueattr1_19", "View_Select_uniqueattr1_20",
  "View_Select_uniqueattr1_21", "View_Select_uniqueattr1_22", "View_Select_uniqueattr1_23", "View_Select_uniqueattr1_24", "View_Select_uniqueattr1_25",
  "View_Select_uniqueattr1_26", "View_Select_uniqueattr1_27", "View_Select_uniqueattr1_28", "View_Select_uniqueattr1_29", "View_Select_uniqueattr1_30",
  "View_Select_uniqueattr1_31", "View_Select_uniqueattr1_32", "View_Select_uniqueattr1_33", "View_Select_uniqueattr1_34", "View_Select_uniqueattr1_35",
  "View_Select_uniqueattr1_36", "View_Select_uniqueattr1_37", "View_Select_uniqueattr1_38", "View_Select_uniqueattr1_39", "View_Select_uniqueattr1_40",
  "View_Select_uniqueattr1_41", "View_Select_uniqueattr1_42", "View_Select_uniqueattr1_43", "View_Select_uniqueattr1_44", "View_Select_uniqueattr1_45",
  "View_Select_uniqueattr1_46", "View_Select_uniqueattr1_47", "View_Select_uniqueattr1_48", "View_Select_uniqueattr1_49", "View_Select_uniqueattr1_50",
  "View_Select_uniqueattr1_51", "View_Select_uniqueattr1_52", "View_Select_uniqueattr1_53", "View_Select_uniqueattr1_54", "View_Select_uniqueattr1_55",
  "View_Select_uniqueattr1_56", "View_Select_uniqueattr1_57", "View_Select_uniqueattr1_58", "View_Select_uniqueattr1_59", "View_Select_uniqueattr1_60",
  "View_Select_uniqueattr1_61", "View_Select_uniqueattr1_62", "View_Select_uniqueattr1_63", "View_Select_uniqueattr1_64", "View_Select_uniqueattr1_65",
  "View_Select_uniqueattr1_66", "View_Select_uniqueattr1_67", "View_Select_uniqueattr1_68", "View_Select_uniqueattr1_69", "View_Select_uniqueattr1_70",
  "View_Select_uniqueattr1_71", "View_Select_uniqueattr1_72", "View_Select_uniqueattr1_73", "View_Select_uniqueattr1_74", "View_Select_uniqueattr1_75",
  "View_Select_uniqueattr1_76", "View_Select_uniqueattr1_77", "View_Select_uniqueattr1_78", "View_Select_uniqueattr1_79", "View_Select_uniqueattr1_80",
  "View_Select_uniqueattr1_81", "View_Select_uniqueattr1_82", "View_Select_uniqueattr1_83", "View_Select_uniqueattr1_84", "View_Select_uniqueattr1_85",
  "View_Select_uniqueattr1_86", "View_Select_uniqueattr1_87", "View_Select_uniqueattr1_88", "View_Select_uniqueattr1_89", "View_Select_uniqueattr1_90",
  "View_Select_uniqueattr1_91", "View_Select_uniqueattr1_92", "View_Select_uniqueattr1_93", "View_Select_uniqueattr1_94", "View_Select_uniqueattr1_95",
  "View_Select_uniqueattr1_96", "View_Select_uniqueattr1_97", "View_Select_uniqueattr1_98", "View_Select_uniqueattr1_99", "View_Select_uniqueattr1_100",
  "View_Select_uniqueattr1_101", "View_Select_uniqueattr1_102", "View_Select_uniqueattr1_103", "View_Select_uniqueattr1_104", "View_Select_uniqueattr1_105",
  "View_Select_uniqueattr1_106", "View_Select_uniqueattr1_107", "View_Select_uniqueattr1_108", "View_Select_uniqueattr1_109", "View_Select_uniqueattr1_110",
  "View_Select_uniqueattr1_111", "View_Select_uniqueattr1_112", "View_Select_uniqueattr1_113", "View_Select_uniqueattr1_114", "View_Select_uniqueattr1_115",
  "View_Select_uniqueattr1_116", "View_Select_uniqueattr1_117", "View_Select_uniqueattr1_118", "View_Select_uniqueattr1_119", "View_Select_uniqueattr1_120",
  "View_Select_uniqueattr1_121", "View_Select_uniqueattr1_122", "View_Select_uniqueattr1_123", "View_Select_uniqueattr1_124", "View_Select_uniqueattr1_125",
  "View_Select_uniqueattr1_126", "View_Select_uniqueattr1_127", "View_Select_uniqueattr1_128", "View_Select_uniqueattr1_129", "View_Select_uniqueattr1_130",
  "View_Select_uniqueattr1_131", "View_Select_uniqueattr1_132", "View_Select_uniqueattr1_133", "View_Select_uniqueattr1_134", "View_Select_uniqueattr1_135",
  "View_Select_uniqueattr1_136", "View_Select_uniqueattr1_137", "View_Select_uniqueattr1_138", "View_Select_uniqueattr1_139", "View_Select_uniqueattr1_140",
  "View_Select_uniqueattr1_141", "View_Select_uniqueattr1_142", "View_Select_uniqueattr1_143", "View_Select_uniqueattr1_144", "View_Select_uniqueattr1_145",
  "View_Select_uniqueattr1_146", "View_Select_uniqueattr1_147", "View_Select_uniqueattr1_148", "View_Select_uniqueattr1_149", "View_Select_uniqueattr1_150",
  "View_Select_uniqueattr1_151", "View_Select_uniqueattr1_152", "View_Select_uniqueattr1_153", "View_Select_uniqueattr1_154", "View_Select_uniqueattr1_155",
  "View_Select_uniqueattr1_156", "View_Select_uniqueattr1_157", "View_Select_uniqueattr1_158", "View_Select_uniqueattr1_159", "View_Select_uniqueattr1_160",
  "View_Select_uniqueattr1_161", "View_Select_uniqueattr1_162", "View_Select_uniqueattr1_163", "View_Select_uniqueattr1_164", "View_Select_uniqueattr1_165",
  "View_Select_uniqueattr1_166", "View_Select_uniqueattr1_167", "View_Select_uniqueattr1_168", "View_Select_uniqueattr1_169", "View_Select_uniqueattr1_170",
  "View_Select_uniqueattr1_171", "View_Select_uniqueattr1_172", "View_Select_uniqueattr1_173", "View_Select_uniqueattr1_174", "View_Select_uniqueattr1_175",
  "View_Select_uniqueattr1_176", "View_Select_uniqueattr1_177", "View_Select_uniqueattr1_178", "View_Select_uniqueattr1_179", "View_Select_uniqueattr1_180",
  "View_Select_uniqueattr1_181", "View_Select_uniqueattr1_182", "View_Select_uniqueattr1_183", "View_Select_uniqueattr1_184", "View_Select_uniqueattr1_185",
  "View_Select_uniqueattr1_186", "View_Select_uniqueattr1_187", "View_Select_uniqueattr1_188", "View_Select_uniqueattr1_189", "View_Select_uniqueattr1_190",
  "View_Select_uniqueattr1_191", "View_Select_uniqueattr1_192", "View_Select_uniqueattr1_193", "View_Select_uniqueattr1_194", "View_Select_uniqueattr1_195",
  "View_Select_uniqueattr1_196", "View_Select_uniqueattr1_197", "View_Select_uniqueattr1_198", "View_Select_uniqueattr1_199", "View_Select_uniqueattr1_200",
  "View_Select_uniqueattr1_201", "View_Select_uniqueattr1_202", "View_Select_uniqueattr1_203", "View_Select_uniqueattr1_204", "View_Select_uniqueattr1_205",
  "View_Select_uniqueattr1_206", "View_Select_uniqueattr1_207", "View_Select_uniqueattr1_208", "View_Select_uniqueattr1_209", "View_Select_uniqueattr1_210",
  "View_Select_uniqueattr1_211", "View_Select_uniqueattr1_212", "View_Select_uniqueattr1_213", "View_Select_uniqueattr1_214", "View_Select_uniqueattr1_215",
  "View_Select_uniqueattr1_216", "View_Select_uniqueattr1_217", "View_Select_uniqueattr1_218", "View_Select_uniqueattr1_219", "View_Select_uniqueattr1_220",
  "View_Select_uniqueattr1_221", "View_Select_uniqueattr1_222", "View_Select_uniqueattr1_223", "View_Select_uniqueattr1_224", "View_Select_uniqueattr1_225",
  "View_Select_uniqueattr1_226", "View_Select_uniqueattr1_227", "View_Select_uniqueattr1_228", "View_Select_uniqueattr1_229", "View_Select_uniqueattr1_230",
  "View_Select_uniqueattr1_231", "View_Select_uniqueattr1_232", "View_Select_uniqueattr1_233", "View_Select_uniqueattr1_234", "View_Select_uniqueattr1_235",
  "View_Select_uniqueattr1_236", "View_Select_uniqueattr1_237", "View_Select_uniqueattr1_238", "View_Select_uniqueattr1_239", "View_Select_uniqueattr1_240",
  "View_Select_uniqueattr1_241", "View_Select_uniqueattr1_242", "View_Select_uniqueattr1_243", "View_Select_uniqueattr1_244", "View_Select_uniqueattr1_245",
  "View_Select_uniqueattr1_246", "View_Select_uniqueattr1_247", "View_Select_uniqueattr1_248", "View_Select_uniqueattr1_249", "View_Select_uniqueattr1_250",
  "View_Select_uniqueattr1_251", "View_Select_uniqueattr1_252", "View_Select_uniqueattr1_253", "View_Select_uniqueattr1_254", "View_Select_uniqueattr1_255",
  "View_Select_uniqueattr1_256", "View_Select_uniqueattr1_257", "View_Select_uniqueattr1_258", "View_Select_uniqueattr1_259", "View_Select_uniqueattr1_260",
  "View_Select_uniqueattr1_261", "View_Select_uniqueattr1_262", "View_Select_uniqueattr1_263", "View_Select_uniqueattr1_264", "View_Select_uniqueattr1_265",
  "View_Select_uniqueattr1_266", "View_Select_uniqueattr1_267", "View_Select_uniqueattr1_268", "View_Select_uniqueattr1_269", "View_Select_uniqueattr1_270",
  "View_Select_uniqueattr1_271", "View_Select_uniqueattr1_272", "View_Select_uniqueattr1_273", "View_Select_uniqueattr1_274", "View_Select_uniqueattr1_275",
  "View_Select_uniqueattr1_276", "View_Select_uniqueattr1_277", "View_Select_uniqueattr1_278", "View_Select_uniqueattr1_279", "View_Select_uniqueattr1_280",
  "View_Select_uniqueattr1_281", "View_Select_uniqueattr1_282", "View_Select_uniqueattr1_283", "View_Select_uniqueattr1_284", "View_Select_uniqueattr1_285",
  "View_Select_uniqueattr1_286", "View_Select_uniqueattr1_287", "View_Select_uniqueattr1_288", "View_Select_uniqueattr1_289", "View_Select_uniqueattr1_290",
  "View_Select_uniqueattr1_291", "View_Select_uniqueattr1_292", "View_Select_uniqueattr1_293", "View_Select_uniqueattr1_294", "View_Select_uniqueattr1_295",
  "View_Select_uniqueattr1_296", "View_Select_uniqueattr1_297", "View_Select_uniqueattr1_298", "View_Select_uniqueattr1_299", "View_Select_uniqueattr1_300" ],
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
