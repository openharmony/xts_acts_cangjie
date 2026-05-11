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

package ohos_app_cangjie_entry.Alp_uniqueattr_01

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
class index_Alp_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_AlphabetIndexer_uniqueattr01_1", "View_AlphabetIndexer_uniqueattr01_2", "View_AlphabetIndexer_uniqueattr01_3", "View_AlphabetIndexer_uniqueattr01_4", "View_AlphabetIndexer_uniqueattr01_5",
  "View_AlphabetIndexer_uniqueattr01_6", "View_AlphabetIndexer_uniqueattr01_7", "View_AlphabetIndexer_uniqueattr01_8", "View_AlphabetIndexer_uniqueattr01_9", "View_AlphabetIndexer_uniqueattr01_10",
  "View_AlphabetIndexer_uniqueattr01_11", "View_AlphabetIndexer_uniqueattr01_12", "View_AlphabetIndexer_uniqueattr01_13", "View_AlphabetIndexer_uniqueattr01_14", "View_AlphabetIndexer_uniqueattr01_15",
  "View_AlphabetIndexer_uniqueattr01_16", "View_AlphabetIndexer_uniqueattr01_17", "View_AlphabetIndexer_uniqueattr01_18", "View_AlphabetIndexer_uniqueattr01_19", "View_AlphabetIndexer_uniqueattr01_20",
  "View_AlphabetIndexer_uniqueattr01_21", "View_AlphabetIndexer_uniqueattr01_22", "View_AlphabetIndexer_uniqueattr01_23", "View_AlphabetIndexer_uniqueattr01_24", "View_AlphabetIndexer_uniqueattr01_25",
  "View_AlphabetIndexer_uniqueattr01_26", "View_AlphabetIndexer_uniqueattr01_27", "View_AlphabetIndexer_uniqueattr01_28", "View_AlphabetIndexer_uniqueattr01_29", "View_AlphabetIndexer_uniqueattr01_30",
  "View_AlphabetIndexer_uniqueattr01_31", "View_AlphabetIndexer_uniqueattr01_32", "View_AlphabetIndexer_uniqueattr01_33", "View_AlphabetIndexer_uniqueattr01_34", "View_AlphabetIndexer_uniqueattr01_35",
  "View_AlphabetIndexer_uniqueattr01_36", "View_AlphabetIndexer_uniqueattr01_37", "View_AlphabetIndexer_uniqueattr01_38", "View_AlphabetIndexer_uniqueattr01_39", "View_AlphabetIndexer_uniqueattr01_40",
  "View_AlphabetIndexer_uniqueattr01_41", "View_AlphabetIndexer_uniqueattr01_42", "View_AlphabetIndexer_uniqueattr01_43", "View_AlphabetIndexer_uniqueattr01_44", "View_AlphabetIndexer_uniqueattr01_45",
  "View_AlphabetIndexer_uniqueattr01_46", "View_AlphabetIndexer_uniqueattr01_47", "View_AlphabetIndexer_uniqueattr01_48", "View_AlphabetIndexer_uniqueattr01_49", "View_AlphabetIndexer_uniqueattr01_50",
  "View_AlphabetIndexer_uniqueattr01_51", "View_AlphabetIndexer_uniqueattr01_52", "View_AlphabetIndexer_uniqueattr01_53", "View_AlphabetIndexer_uniqueattr01_54", "View_AlphabetIndexer_uniqueattr01_55",
  "View_AlphabetIndexer_uniqueattr01_56", "View_AlphabetIndexer_uniqueattr01_57", "View_AlphabetIndexer_uniqueattr01_58", "View_AlphabetIndexer_uniqueattr01_59", "View_AlphabetIndexer_uniqueattr01_60",
  "View_AlphabetIndexer_uniqueattr01_61", "View_AlphabetIndexer_uniqueattr01_62", "View_AlphabetIndexer_uniqueattr01_63", "View_AlphabetIndexer_uniqueattr01_64", "View_AlphabetIndexer_uniqueattr01_65",
  "View_AlphabetIndexer_uniqueattr01_66", "View_AlphabetIndexer_uniqueattr01_67", "View_AlphabetIndexer_uniqueattr01_68", "View_AlphabetIndexer_uniqueattr01_69", "View_AlphabetIndexer_uniqueattr01_70",
  "View_AlphabetIndexer_uniqueattr01_71", "View_AlphabetIndexer_uniqueattr01_72", "View_AlphabetIndexer_uniqueattr01_73", "View_AlphabetIndexer_uniqueattr01_74", "View_AlphabetIndexer_uniqueattr01_75",
  "View_AlphabetIndexer_uniqueattr01_76", "View_AlphabetIndexer_uniqueattr01_77", "View_AlphabetIndexer_uniqueattr01_78", "View_AlphabetIndexer_uniqueattr01_79", "View_AlphabetIndexer_uniqueattr01_80",
  "View_AlphabetIndexer_uniqueattr01_81", "View_AlphabetIndexer_uniqueattr01_82", "View_AlphabetIndexer_uniqueattr01_83", "View_AlphabetIndexer_uniqueattr01_84", "View_AlphabetIndexer_uniqueattr01_85",
  "View_AlphabetIndexer_uniqueattr01_86", "View_AlphabetIndexer_uniqueattr01_87", "View_AlphabetIndexer_uniqueattr01_88", "View_AlphabetIndexer_uniqueattr01_89", "View_AlphabetIndexer_uniqueattr01_90",
  "View_AlphabetIndexer_uniqueattr01_91", "View_AlphabetIndexer_uniqueattr01_92", "View_AlphabetIndexer_uniqueattr01_93", "View_AlphabetIndexer_uniqueattr01_94", "View_AlphabetIndexer_uniqueattr01_95",
  "View_AlphabetIndexer_uniqueattr01_96", "View_AlphabetIndexer_uniqueattr01_97", "View_AlphabetIndexer_uniqueattr01_98", "View_AlphabetIndexer_uniqueattr01_99", "View_AlphabetIndexer_uniqueattr01_100",
  "View_AlphabetIndexer_uniqueattr01_101", "View_AlphabetIndexer_uniqueattr01_102", "View_AlphabetIndexer_uniqueattr01_103", "View_AlphabetIndexer_uniqueattr01_104", "View_AlphabetIndexer_uniqueattr01_105",
  "View_AlphabetIndexer_uniqueattr01_106", "View_AlphabetIndexer_uniqueattr01_107", "View_AlphabetIndexer_uniqueattr01_108", "View_AlphabetIndexer_uniqueattr01_109", "View_AlphabetIndexer_uniqueattr01_110",
  "View_AlphabetIndexer_uniqueattr01_111", "View_AlphabetIndexer_uniqueattr01_112", "View_AlphabetIndexer_uniqueattr01_113", "View_AlphabetIndexer_uniqueattr01_114", "View_AlphabetIndexer_uniqueattr01_115",
  "View_AlphabetIndexer_uniqueattr01_116", "View_AlphabetIndexer_uniqueattr01_117", "View_AlphabetIndexer_uniqueattr01_118", "View_AlphabetIndexer_uniqueattr01_119", "View_AlphabetIndexer_uniqueattr01_120",
  "View_AlphabetIndexer_uniqueattr01_121", "View_AlphabetIndexer_uniqueattr01_122", "View_AlphabetIndexer_uniqueattr01_123", "View_AlphabetIndexer_uniqueattr01_124", "View_AlphabetIndexer_uniqueattr01_125",
  "View_AlphabetIndexer_uniqueattr01_126", "View_AlphabetIndexer_uniqueattr01_127", "View_AlphabetIndexer_uniqueattr01_128", "View_AlphabetIndexer_uniqueattr01_129", "View_AlphabetIndexer_uniqueattr01_130",
  "View_AlphabetIndexer_uniqueattr01_131", "View_AlphabetIndexer_uniqueattr01_132", "View_AlphabetIndexer_uniqueattr01_133", "View_AlphabetIndexer_uniqueattr01_134", "View_AlphabetIndexer_uniqueattr01_135",
  "View_AlphabetIndexer_uniqueattr01_136", "View_AlphabetIndexer_uniqueattr01_137", "View_AlphabetIndexer_uniqueattr01_138", "View_AlphabetIndexer_uniqueattr01_139", "View_AlphabetIndexer_uniqueattr01_140",
  "View_AlphabetIndexer_uniqueattr01_141", "View_AlphabetIndexer_uniqueattr01_142", "View_AlphabetIndexer_uniqueattr01_143", "View_AlphabetIndexer_uniqueattr01_144", "View_AlphabetIndexer_uniqueattr01_145",
  "View_AlphabetIndexer_uniqueattr01_146", "View_AlphabetIndexer_uniqueattr01_147", "View_AlphabetIndexer_uniqueattr01_148", "View_AlphabetIndexer_uniqueattr01_149", "View_AlphabetIndexer_uniqueattr01_150",
  "View_AlphabetIndexer_uniqueattr01_151", "View_AlphabetIndexer_uniqueattr01_152", "View_AlphabetIndexer_uniqueattr01_153", "View_AlphabetIndexer_uniqueattr01_154", "View_AlphabetIndexer_uniqueattr01_155",
  "View_AlphabetIndexer_uniqueattr01_156", "View_AlphabetIndexer_uniqueattr01_157", "View_AlphabetIndexer_uniqueattr01_158", "View_AlphabetIndexer_uniqueattr01_159", "View_AlphabetIndexer_uniqueattr01_160",
  "View_AlphabetIndexer_uniqueattr01_161", "View_AlphabetIndexer_uniqueattr01_162", "View_AlphabetIndexer_uniqueattr01_163", "View_AlphabetIndexer_uniqueattr01_164", "View_AlphabetIndexer_uniqueattr01_165",
  "View_AlphabetIndexer_uniqueattr01_166", "View_AlphabetIndexer_uniqueattr01_167", "View_AlphabetIndexer_uniqueattr01_168", "View_AlphabetIndexer_uniqueattr01_169", "View_AlphabetIndexer_uniqueattr01_170",
  "View_AlphabetIndexer_uniqueattr01_171", "View_AlphabetIndexer_uniqueattr01_172", "View_AlphabetIndexer_uniqueattr01_173", "View_AlphabetIndexer_uniqueattr01_174", "View_AlphabetIndexer_uniqueattr01_175",
  "View_AlphabetIndexer_uniqueattr01_176", "View_AlphabetIndexer_uniqueattr01_177", "View_AlphabetIndexer_uniqueattr01_178", "View_AlphabetIndexer_uniqueattr01_179", "View_AlphabetIndexer_uniqueattr01_180",
  "View_AlphabetIndexer_uniqueattr01_181", "View_AlphabetIndexer_uniqueattr01_182", "View_AlphabetIndexer_uniqueattr01_183", "View_AlphabetIndexer_uniqueattr01_184", "View_AlphabetIndexer_uniqueattr01_185",
  "View_AlphabetIndexer_uniqueattr01_186", "View_AlphabetIndexer_uniqueattr01_187", "View_AlphabetIndexer_uniqueattr01_188", "View_AlphabetIndexer_uniqueattr01_189", "View_AlphabetIndexer_uniqueattr01_190",
  "View_AlphabetIndexer_uniqueattr01_191", "View_AlphabetIndexer_uniqueattr01_192", "View_AlphabetIndexer_uniqueattr01_193", "View_AlphabetIndexer_uniqueattr01_194", "View_AlphabetIndexer_uniqueattr01_195",
  "View_AlphabetIndexer_uniqueattr01_196", "View_AlphabetIndexer_uniqueattr01_197", "View_AlphabetIndexer_uniqueattr01_198", "View_AlphabetIndexer_uniqueattr01_199", "View_AlphabetIndexer_uniqueattr01_200",
  "View_AlphabetIndexer_uniqueattr01_201", "View_AlphabetIndexer_uniqueattr01_202", "View_AlphabetIndexer_uniqueattr01_203", "View_AlphabetIndexer_uniqueattr01_204", "View_AlphabetIndexer_uniqueattr01_205",
  "View_AlphabetIndexer_uniqueattr01_206", "View_AlphabetIndexer_uniqueattr01_207", "View_AlphabetIndexer_uniqueattr01_208", "View_AlphabetIndexer_uniqueattr01_209", "View_AlphabetIndexer_uniqueattr01_210",
  "View_AlphabetIndexer_uniqueattr01_211", "View_AlphabetIndexer_uniqueattr01_212", "View_AlphabetIndexer_uniqueattr01_213", "View_AlphabetIndexer_uniqueattr01_214", "View_AlphabetIndexer_uniqueattr01_215",
  "View_AlphabetIndexer_uniqueattr01_216", "View_AlphabetIndexer_uniqueattr01_217", "View_AlphabetIndexer_uniqueattr01_218", "View_AlphabetIndexer_uniqueattr01_219", "View_AlphabetIndexer_uniqueattr01_220",
  "View_AlphabetIndexer_uniqueattr01_221", "View_AlphabetIndexer_uniqueattr01_222", "View_AlphabetIndexer_uniqueattr01_223", "View_AlphabetIndexer_uniqueattr01_224", "View_AlphabetIndexer_uniqueattr01_225",
  "View_AlphabetIndexer_uniqueattr01_226", "View_AlphabetIndexer_uniqueattr01_227", "View_AlphabetIndexer_uniqueattr01_228", "View_AlphabetIndexer_uniqueattr01_229", "View_AlphabetIndexer_uniqueattr01_230",
  "View_AlphabetIndexer_uniqueattr01_231", "View_AlphabetIndexer_uniqueattr01_232", "View_AlphabetIndexer_uniqueattr01_233", "View_AlphabetIndexer_uniqueattr01_234", "View_AlphabetIndexer_uniqueattr01_235",
  "View_AlphabetIndexer_uniqueattr01_236", "View_AlphabetIndexer_uniqueattr01_237", "View_AlphabetIndexer_uniqueattr01_238", "View_AlphabetIndexer_uniqueattr01_239", "View_AlphabetIndexer_uniqueattr01_240",
  "View_AlphabetIndexer_uniqueattr01_241", "View_AlphabetIndexer_uniqueattr01_242", "View_AlphabetIndexer_uniqueattr01_243", "View_AlphabetIndexer_uniqueattr01_244", "View_AlphabetIndexer_uniqueattr01_245",
  "View_AlphabetIndexer_uniqueattr01_246", "View_AlphabetIndexer_uniqueattr01_247", "View_AlphabetIndexer_uniqueattr01_248", "View_AlphabetIndexer_uniqueattr01_249", "View_AlphabetIndexer_uniqueattr01_250",
  "View_AlphabetIndexer_uniqueattr01_251", "View_AlphabetIndexer_uniqueattr01_252", "View_AlphabetIndexer_uniqueattr01_253", "View_AlphabetIndexer_uniqueattr01_254", "View_AlphabetIndexer_uniqueattr01_255",
  "View_AlphabetIndexer_uniqueattr01_256", "View_AlphabetIndexer_uniqueattr01_257", "View_AlphabetIndexer_uniqueattr01_258", "View_AlphabetIndexer_uniqueattr01_259", "View_AlphabetIndexer_uniqueattr01_260",
  "View_AlphabetIndexer_uniqueattr01_261", "View_AlphabetIndexer_uniqueattr01_262", "View_AlphabetIndexer_uniqueattr01_263", "View_AlphabetIndexer_uniqueattr01_264", "View_AlphabetIndexer_uniqueattr01_265",
  "View_AlphabetIndexer_uniqueattr01_266", "View_AlphabetIndexer_uniqueattr01_267", "View_AlphabetIndexer_uniqueattr01_268", "View_AlphabetIndexer_uniqueattr01_269", "View_AlphabetIndexer_uniqueattr01_270",
  "View_AlphabetIndexer_uniqueattr01_271", "View_AlphabetIndexer_uniqueattr01_272", "View_AlphabetIndexer_uniqueattr01_273", "View_AlphabetIndexer_uniqueattr01_274", "View_AlphabetIndexer_uniqueattr01_275",
  "View_AlphabetIndexer_uniqueattr01_276", "View_AlphabetIndexer_uniqueattr01_277", "View_AlphabetIndexer_uniqueattr01_278", "View_AlphabetIndexer_uniqueattr01_279", "View_AlphabetIndexer_uniqueattr01_280",
  "View_AlphabetIndexer_uniqueattr01_281", "View_AlphabetIndexer_uniqueattr01_282", "View_AlphabetIndexer_uniqueattr01_283", "View_AlphabetIndexer_uniqueattr01_284", "View_AlphabetIndexer_uniqueattr01_285",
  "View_AlphabetIndexer_uniqueattr01_286", "View_AlphabetIndexer_uniqueattr01_287", "View_AlphabetIndexer_uniqueattr01_288", "View_AlphabetIndexer_uniqueattr01_289", "View_AlphabetIndexer_uniqueattr01_290",
  "View_AlphabetIndexer_uniqueattr01_291", "View_AlphabetIndexer_uniqueattr01_292", "View_AlphabetIndexer_uniqueattr01_293", "View_AlphabetIndexer_uniqueattr01_294", "View_AlphabetIndexer_uniqueattr01_295",
  "View_AlphabetIndexer_uniqueattr01_296", "View_AlphabetIndexer_uniqueattr01_297", "View_AlphabetIndexer_uniqueattr01_298", "View_AlphabetIndexer_uniqueattr01_299", "View_AlphabetIndexer_uniqueattr01_300",
  "View_AlphabetIndexer_uniqueattr01_301", "View_AlphabetIndexer_uniqueattr01_302", "View_AlphabetIndexer_uniqueattr01_303" ],
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
