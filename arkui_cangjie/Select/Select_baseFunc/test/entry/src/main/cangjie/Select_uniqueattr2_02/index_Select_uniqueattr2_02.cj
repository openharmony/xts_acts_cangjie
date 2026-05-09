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

package ohos_app_cangjie_entry.Select_uniqueattr2_02

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
class index_Select_uniqueattr2_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Select_uniqueattr2_1", "View_Select_uniqueattr2_2", "View_Select_uniqueattr2_3", "View_Select_uniqueattr2_4", "View_Select_uniqueattr2_5",
  "View_Select_uniqueattr2_6", "View_Select_uniqueattr2_7", "View_Select_uniqueattr2_8", "View_Select_uniqueattr2_9", "View_Select_uniqueattr2_10",
  "View_Select_uniqueattr2_11", "View_Select_uniqueattr2_12", "View_Select_uniqueattr2_13", "View_Select_uniqueattr2_14", "View_Select_uniqueattr2_15",
  "View_Select_uniqueattr2_16", "View_Select_uniqueattr2_17", "View_Select_uniqueattr2_18", "View_Select_uniqueattr2_19", "View_Select_uniqueattr2_20",
  "View_Select_uniqueattr2_21", "View_Select_uniqueattr2_22", "View_Select_uniqueattr2_23", "View_Select_uniqueattr2_24", "View_Select_uniqueattr2_25",
  "View_Select_uniqueattr2_26", "View_Select_uniqueattr2_27", "View_Select_uniqueattr2_28", "View_Select_uniqueattr2_29", "View_Select_uniqueattr2_30",
  "View_Select_uniqueattr2_31", "View_Select_uniqueattr2_32", "View_Select_uniqueattr2_33", "View_Select_uniqueattr2_34", "View_Select_uniqueattr2_35",
  "View_Select_uniqueattr2_36", "View_Select_uniqueattr2_37", "View_Select_uniqueattr2_38", "View_Select_uniqueattr2_39", "View_Select_uniqueattr2_40",
  "View_Select_uniqueattr2_41", "View_Select_uniqueattr2_42", "View_Select_uniqueattr2_43", "View_Select_uniqueattr2_44", "View_Select_uniqueattr2_45",
  "View_Select_uniqueattr2_46", "View_Select_uniqueattr2_47", "View_Select_uniqueattr2_48", "View_Select_uniqueattr2_49", "View_Select_uniqueattr2_50",
  "View_Select_uniqueattr2_51", "View_Select_uniqueattr2_52", "View_Select_uniqueattr2_53", "View_Select_uniqueattr2_54", "View_Select_uniqueattr2_55",
  "View_Select_uniqueattr2_56", "View_Select_uniqueattr2_57", "View_Select_uniqueattr2_58", "View_Select_uniqueattr2_59", "View_Select_uniqueattr2_60",
  "View_Select_uniqueattr2_61", "View_Select_uniqueattr2_62", "View_Select_uniqueattr2_63", "View_Select_uniqueattr2_64", "View_Select_uniqueattr2_65",
  "View_Select_uniqueattr2_66", "View_Select_uniqueattr2_67", "View_Select_uniqueattr2_68", "View_Select_uniqueattr2_69", "View_Select_uniqueattr2_70",
  "View_Select_uniqueattr2_71", "View_Select_uniqueattr2_72", "View_Select_uniqueattr2_73", "View_Select_uniqueattr2_74", "View_Select_uniqueattr2_75",
  "View_Select_uniqueattr2_76", "View_Select_uniqueattr2_77", "View_Select_uniqueattr2_78", "View_Select_uniqueattr2_79", "View_Select_uniqueattr2_80",
  "View_Select_uniqueattr2_81", "View_Select_uniqueattr2_82", "View_Select_uniqueattr2_83", "View_Select_uniqueattr2_84", "View_Select_uniqueattr2_85",
  "View_Select_uniqueattr2_86", "View_Select_uniqueattr2_87", "View_Select_uniqueattr2_88", "View_Select_uniqueattr2_89", "View_Select_uniqueattr2_90",
  "View_Select_uniqueattr2_91", "View_Select_uniqueattr2_92", "View_Select_uniqueattr2_93", "View_Select_uniqueattr2_94", "View_Select_uniqueattr2_95",
  "View_Select_uniqueattr2_96", "View_Select_uniqueattr2_97", "View_Select_uniqueattr2_98", "View_Select_uniqueattr2_99", "View_Select_uniqueattr2_100",
  "View_Select_uniqueattr2_101", "View_Select_uniqueattr2_102", "View_Select_uniqueattr2_103", "View_Select_uniqueattr2_104", "View_Select_uniqueattr2_105",
  "View_Select_uniqueattr2_106", "View_Select_uniqueattr2_107", "View_Select_uniqueattr2_108", "View_Select_uniqueattr2_109", "View_Select_uniqueattr2_110",
  "View_Select_uniqueattr2_111", "View_Select_uniqueattr2_112", "View_Select_uniqueattr2_113", "View_Select_uniqueattr2_114", "View_Select_uniqueattr2_115",
  "View_Select_uniqueattr2_116", "View_Select_uniqueattr2_117", "View_Select_uniqueattr2_118", "View_Select_uniqueattr2_119", "View_Select_uniqueattr2_120",
  "View_Select_uniqueattr2_121", "View_Select_uniqueattr2_122", "View_Select_uniqueattr2_123", "View_Select_uniqueattr2_124", "View_Select_uniqueattr2_125",
  "View_Select_uniqueattr2_126", "View_Select_uniqueattr2_127", "View_Select_uniqueattr2_128", "View_Select_uniqueattr2_129", "View_Select_uniqueattr2_130",
  "View_Select_uniqueattr2_131", "View_Select_uniqueattr2_132", "View_Select_uniqueattr2_133", "View_Select_uniqueattr2_134", "View_Select_uniqueattr2_135",
  "View_Select_uniqueattr2_136", "View_Select_uniqueattr2_137", "View_Select_uniqueattr2_138", "View_Select_uniqueattr2_139", "View_Select_uniqueattr2_140",
  "View_Select_uniqueattr2_141", "View_Select_uniqueattr2_142", "View_Select_uniqueattr2_143", "View_Select_uniqueattr2_144", "View_Select_uniqueattr2_145",
  "View_Select_uniqueattr2_146", "View_Select_uniqueattr2_147", "View_Select_uniqueattr2_148", "View_Select_uniqueattr2_149", "View_Select_uniqueattr2_150",
  "View_Select_uniqueattr2_151", "View_Select_uniqueattr2_152", "View_Select_uniqueattr2_153", "View_Select_uniqueattr2_154", "View_Select_uniqueattr2_155",
  "View_Select_uniqueattr2_156", "View_Select_uniqueattr2_157", "View_Select_uniqueattr2_158", "View_Select_uniqueattr2_159", "View_Select_uniqueattr2_160",
  "View_Select_uniqueattr2_161", "View_Select_uniqueattr2_162", "View_Select_uniqueattr2_163", "View_Select_uniqueattr2_164", "View_Select_uniqueattr2_165",
  "View_Select_uniqueattr2_166", "View_Select_uniqueattr2_167", "View_Select_uniqueattr2_168", "View_Select_uniqueattr2_169", "View_Select_uniqueattr2_170",
  "View_Select_uniqueattr2_171", "View_Select_uniqueattr2_172", "View_Select_uniqueattr2_173", "View_Select_uniqueattr2_174", "View_Select_uniqueattr2_175",
  "View_Select_uniqueattr2_176", "View_Select_uniqueattr2_177", "View_Select_uniqueattr2_178", "View_Select_uniqueattr2_179", "View_Select_uniqueattr2_180",
  "View_Select_uniqueattr2_181", "View_Select_uniqueattr2_182", "View_Select_uniqueattr2_183", "View_Select_uniqueattr2_184", "View_Select_uniqueattr2_185",
  "View_Select_uniqueattr2_186", "View_Select_uniqueattr2_187", "View_Select_uniqueattr2_188", "View_Select_uniqueattr2_189", "View_Select_uniqueattr2_190",
  "View_Select_uniqueattr2_191", "View_Select_uniqueattr2_192", "View_Select_uniqueattr2_193", "View_Select_uniqueattr2_194", "View_Select_uniqueattr2_195",
  "View_Select_uniqueattr2_196", "View_Select_uniqueattr2_197", "View_Select_uniqueattr2_198", "View_Select_uniqueattr2_199", "View_Select_uniqueattr2_200",
  "View_Select_uniqueattr2_201", "View_Select_uniqueattr2_202", "View_Select_uniqueattr2_203", "View_Select_uniqueattr2_204", "View_Select_uniqueattr2_205",
  "View_Select_uniqueattr2_206", "View_Select_uniqueattr2_207", "View_Select_uniqueattr2_208", "View_Select_uniqueattr2_209", "View_Select_uniqueattr2_210",
  "View_Select_uniqueattr2_211", "View_Select_uniqueattr2_212", "View_Select_uniqueattr2_213", "View_Select_uniqueattr2_214", "View_Select_uniqueattr2_215",
  "View_Select_uniqueattr2_216", "View_Select_uniqueattr2_217", "View_Select_uniqueattr2_218", "View_Select_uniqueattr2_219", "View_Select_uniqueattr2_220",
  "View_Select_uniqueattr2_221", "View_Select_uniqueattr2_222", "View_Select_uniqueattr2_223", "View_Select_uniqueattr2_224", "View_Select_uniqueattr2_225",
  "View_Select_uniqueattr2_226", "View_Select_uniqueattr2_227", "View_Select_uniqueattr2_228", "View_Select_uniqueattr2_229", "View_Select_uniqueattr2_230",
  "View_Select_uniqueattr2_231", "View_Select_uniqueattr2_232", "View_Select_uniqueattr2_233", "View_Select_uniqueattr2_234", "View_Select_uniqueattr2_235",
  "View_Select_uniqueattr2_236", "View_Select_uniqueattr2_237", "View_Select_uniqueattr2_238", "View_Select_uniqueattr2_239", "View_Select_uniqueattr2_240",
  "View_Select_uniqueattr2_241", "View_Select_uniqueattr2_242", "View_Select_uniqueattr2_243", "View_Select_uniqueattr2_244", "View_Select_uniqueattr2_245",
  "View_Select_uniqueattr2_246", "View_Select_uniqueattr2_247", "View_Select_uniqueattr2_248", "View_Select_uniqueattr2_249", "View_Select_uniqueattr2_250",
  "View_Select_uniqueattr2_251", "View_Select_uniqueattr2_252", "View_Select_uniqueattr2_253", "View_Select_uniqueattr2_254", "View_Select_uniqueattr2_255",
  "View_Select_uniqueattr2_256", "View_Select_uniqueattr2_257", "View_Select_uniqueattr2_258", "View_Select_uniqueattr2_259", "View_Select_uniqueattr2_260",
  "View_Select_uniqueattr2_261", "View_Select_uniqueattr2_262", "View_Select_uniqueattr2_263", "View_Select_uniqueattr2_264", "View_Select_uniqueattr2_265",
  "View_Select_uniqueattr2_266", "View_Select_uniqueattr2_267", "View_Select_uniqueattr2_268", "View_Select_uniqueattr2_269", "View_Select_uniqueattr2_270",
  "View_Select_uniqueattr2_271", "View_Select_uniqueattr2_272", "View_Select_uniqueattr2_273", "View_Select_uniqueattr2_274", "View_Select_uniqueattr2_275",
  "View_Select_uniqueattr2_276", "View_Select_uniqueattr2_277", "View_Select_uniqueattr2_278", "View_Select_uniqueattr2_279", "View_Select_uniqueattr2_280",
  "View_Select_uniqueattr2_281", "View_Select_uniqueattr2_282", "View_Select_uniqueattr2_283", "View_Select_uniqueattr2_284", "View_Select_uniqueattr2_285",
  "View_Select_uniqueattr2_286", "View_Select_uniqueattr2_287", "View_Select_uniqueattr2_288", "View_Select_uniqueattr2_289", "View_Select_uniqueattr2_290",
  "View_Select_uniqueattr2_291", "View_Select_uniqueattr2_292", "View_Select_uniqueattr2_293", "View_Select_uniqueattr2_294", "View_Select_uniqueattr2_295",
  "View_Select_uniqueattr2_296", "View_Select_uniqueattr2_297", "View_Select_uniqueattr2_298", "View_Select_uniqueattr2_299", "View_Select_uniqueattr2_300",
  "View_Select_uniqueattr2_301", "View_Select_uniqueattr2_302", "View_Select_uniqueattr2_303" ],
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
