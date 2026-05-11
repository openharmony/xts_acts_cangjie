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

package ohos_app_cangjie_entry.Alp_uniqueattr_02

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
class index_Alp_uniqueattr_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_AlphabetIndexer_uniqueattr02_1", "View_AlphabetIndexer_uniqueattr02_2", "View_AlphabetIndexer_uniqueattr02_3", "View_AlphabetIndexer_uniqueattr02_4", "View_AlphabetIndexer_uniqueattr02_5",
  "View_AlphabetIndexer_uniqueattr02_6", "View_AlphabetIndexer_uniqueattr02_7", "View_AlphabetIndexer_uniqueattr02_8", "View_AlphabetIndexer_uniqueattr02_9", "View_AlphabetIndexer_uniqueattr02_10",
  "View_AlphabetIndexer_uniqueattr02_11", "View_AlphabetIndexer_uniqueattr02_12", "View_AlphabetIndexer_uniqueattr02_13", "View_AlphabetIndexer_uniqueattr02_14", "View_AlphabetIndexer_uniqueattr02_15",
  "View_AlphabetIndexer_uniqueattr02_16", "View_AlphabetIndexer_uniqueattr02_17", "View_AlphabetIndexer_uniqueattr02_18", "View_AlphabetIndexer_uniqueattr02_19", "View_AlphabetIndexer_uniqueattr02_20",
  "View_AlphabetIndexer_uniqueattr02_21", "View_AlphabetIndexer_uniqueattr02_22", "View_AlphabetIndexer_uniqueattr02_23", "View_AlphabetIndexer_uniqueattr02_24", "View_AlphabetIndexer_uniqueattr02_25",
  "View_AlphabetIndexer_uniqueattr02_26", "View_AlphabetIndexer_uniqueattr02_27", "View_AlphabetIndexer_uniqueattr02_28", "View_AlphabetIndexer_uniqueattr02_29", "View_AlphabetIndexer_uniqueattr02_30",
  "View_AlphabetIndexer_uniqueattr02_31", "View_AlphabetIndexer_uniqueattr02_32", "View_AlphabetIndexer_uniqueattr02_33", "View_AlphabetIndexer_uniqueattr02_34", "View_AlphabetIndexer_uniqueattr02_35",
  "View_AlphabetIndexer_uniqueattr02_36", "View_AlphabetIndexer_uniqueattr02_37", "View_AlphabetIndexer_uniqueattr02_38", "View_AlphabetIndexer_uniqueattr02_39", "View_AlphabetIndexer_uniqueattr02_40",
  "View_AlphabetIndexer_uniqueattr02_41", "View_AlphabetIndexer_uniqueattr02_42", "View_AlphabetIndexer_uniqueattr02_43", "View_AlphabetIndexer_uniqueattr02_44", "View_AlphabetIndexer_uniqueattr02_45",
  "View_AlphabetIndexer_uniqueattr02_46", "View_AlphabetIndexer_uniqueattr02_47", "View_AlphabetIndexer_uniqueattr02_48", "View_AlphabetIndexer_uniqueattr02_49", "View_AlphabetIndexer_uniqueattr02_50",
  "View_AlphabetIndexer_uniqueattr02_51", "View_AlphabetIndexer_uniqueattr02_52", "View_AlphabetIndexer_uniqueattr02_53", "View_AlphabetIndexer_uniqueattr02_54", "View_AlphabetIndexer_uniqueattr02_55",
  "View_AlphabetIndexer_uniqueattr02_56", "View_AlphabetIndexer_uniqueattr02_57", "View_AlphabetIndexer_uniqueattr02_58", "View_AlphabetIndexer_uniqueattr02_59", "View_AlphabetIndexer_uniqueattr02_60",
  "View_AlphabetIndexer_uniqueattr02_61", "View_AlphabetIndexer_uniqueattr02_62", "View_AlphabetIndexer_uniqueattr02_63", "View_AlphabetIndexer_uniqueattr02_64", "View_AlphabetIndexer_uniqueattr02_65",
  "View_AlphabetIndexer_uniqueattr02_66", "View_AlphabetIndexer_uniqueattr02_67", "View_AlphabetIndexer_uniqueattr02_68", "View_AlphabetIndexer_uniqueattr02_69", "View_AlphabetIndexer_uniqueattr02_70",
  "View_AlphabetIndexer_uniqueattr02_71", "View_AlphabetIndexer_uniqueattr02_72", "View_AlphabetIndexer_uniqueattr02_73", "View_AlphabetIndexer_uniqueattr02_74", "View_AlphabetIndexer_uniqueattr02_75",
  "View_AlphabetIndexer_uniqueattr02_76", "View_AlphabetIndexer_uniqueattr02_77", "View_AlphabetIndexer_uniqueattr02_78", "View_AlphabetIndexer_uniqueattr02_79", "View_AlphabetIndexer_uniqueattr02_80",
  "View_AlphabetIndexer_uniqueattr02_81", "View_AlphabetIndexer_uniqueattr02_82", "View_AlphabetIndexer_uniqueattr02_83", "View_AlphabetIndexer_uniqueattr02_84", "View_AlphabetIndexer_uniqueattr02_85",
  "View_AlphabetIndexer_uniqueattr02_86", "View_AlphabetIndexer_uniqueattr02_87", "View_AlphabetIndexer_uniqueattr02_88", "View_AlphabetIndexer_uniqueattr02_89", "View_AlphabetIndexer_uniqueattr02_90",
  "View_AlphabetIndexer_uniqueattr02_91", "View_AlphabetIndexer_uniqueattr02_92", "View_AlphabetIndexer_uniqueattr02_93", "View_AlphabetIndexer_uniqueattr02_94", "View_AlphabetIndexer_uniqueattr02_95",
  "View_AlphabetIndexer_uniqueattr02_96", "View_AlphabetIndexer_uniqueattr02_97", "View_AlphabetIndexer_uniqueattr02_98", "View_AlphabetIndexer_uniqueattr02_99", "View_AlphabetIndexer_uniqueattr02_100",
  "View_AlphabetIndexer_uniqueattr02_101", "View_AlphabetIndexer_uniqueattr02_102", "View_AlphabetIndexer_uniqueattr02_103", "View_AlphabetIndexer_uniqueattr02_104", "View_AlphabetIndexer_uniqueattr02_105",
  "View_AlphabetIndexer_uniqueattr02_106", "View_AlphabetIndexer_uniqueattr02_107", "View_AlphabetIndexer_uniqueattr02_108", "View_AlphabetIndexer_uniqueattr02_109", "View_AlphabetIndexer_uniqueattr02_110",
  "View_AlphabetIndexer_uniqueattr02_111", "View_AlphabetIndexer_uniqueattr02_112", "View_AlphabetIndexer_uniqueattr02_113", "View_AlphabetIndexer_uniqueattr02_114", "View_AlphabetIndexer_uniqueattr02_115",
  "View_AlphabetIndexer_uniqueattr02_116", "View_AlphabetIndexer_uniqueattr02_117", "View_AlphabetIndexer_uniqueattr02_118", "View_AlphabetIndexer_uniqueattr02_119", "View_AlphabetIndexer_uniqueattr02_120",
  "View_AlphabetIndexer_uniqueattr02_121", "View_AlphabetIndexer_uniqueattr02_122", "View_AlphabetIndexer_uniqueattr02_123", "View_AlphabetIndexer_uniqueattr02_124", "View_AlphabetIndexer_uniqueattr02_125",
  "View_AlphabetIndexer_uniqueattr02_126", "View_AlphabetIndexer_uniqueattr02_127", "View_AlphabetIndexer_uniqueattr02_128", "View_AlphabetIndexer_uniqueattr02_129", "View_AlphabetIndexer_uniqueattr02_130",
  "View_AlphabetIndexer_uniqueattr02_131", "View_AlphabetIndexer_uniqueattr02_132", "View_AlphabetIndexer_uniqueattr02_133", "View_AlphabetIndexer_uniqueattr02_134", "View_AlphabetIndexer_uniqueattr02_135",
  "View_AlphabetIndexer_uniqueattr02_136", "View_AlphabetIndexer_uniqueattr02_137", "View_AlphabetIndexer_uniqueattr02_138", "View_AlphabetIndexer_uniqueattr02_139", "View_AlphabetIndexer_uniqueattr02_140",
  "View_AlphabetIndexer_uniqueattr02_141", "View_AlphabetIndexer_uniqueattr02_142", "View_AlphabetIndexer_uniqueattr02_143", "View_AlphabetIndexer_uniqueattr02_144", "View_AlphabetIndexer_uniqueattr02_145",
  "View_AlphabetIndexer_uniqueattr02_146", "View_AlphabetIndexer_uniqueattr02_147", "View_AlphabetIndexer_uniqueattr02_148", "View_AlphabetIndexer_uniqueattr02_149", "View_AlphabetIndexer_uniqueattr02_150",
  "View_AlphabetIndexer_uniqueattr02_151", "View_AlphabetIndexer_uniqueattr02_152", "View_AlphabetIndexer_uniqueattr02_153", "View_AlphabetIndexer_uniqueattr02_154", "View_AlphabetIndexer_uniqueattr02_155",
  "View_AlphabetIndexer_uniqueattr02_156", "View_AlphabetIndexer_uniqueattr02_157", "View_AlphabetIndexer_uniqueattr02_158", "View_AlphabetIndexer_uniqueattr02_159", "View_AlphabetIndexer_uniqueattr02_160",
  "View_AlphabetIndexer_uniqueattr02_161", "View_AlphabetIndexer_uniqueattr02_162", "View_AlphabetIndexer_uniqueattr02_163", "View_AlphabetIndexer_uniqueattr02_164", "View_AlphabetIndexer_uniqueattr02_165",
  "View_AlphabetIndexer_uniqueattr02_166", "View_AlphabetIndexer_uniqueattr02_167", "View_AlphabetIndexer_uniqueattr02_168", "View_AlphabetIndexer_uniqueattr02_169", "View_AlphabetIndexer_uniqueattr02_170",
  "View_AlphabetIndexer_uniqueattr02_171", "View_AlphabetIndexer_uniqueattr02_172", "View_AlphabetIndexer_uniqueattr02_173", "View_AlphabetIndexer_uniqueattr02_174", "View_AlphabetIndexer_uniqueattr02_175",
  "View_AlphabetIndexer_uniqueattr02_176", "View_AlphabetIndexer_uniqueattr02_177", "View_AlphabetIndexer_uniqueattr02_178", "View_AlphabetIndexer_uniqueattr02_179", "View_AlphabetIndexer_uniqueattr02_180",
  "View_AlphabetIndexer_uniqueattr02_181", "View_AlphabetIndexer_uniqueattr02_182", "View_AlphabetIndexer_uniqueattr02_183", "View_AlphabetIndexer_uniqueattr02_184", "View_AlphabetIndexer_uniqueattr02_185",
  "View_AlphabetIndexer_uniqueattr02_186", "View_AlphabetIndexer_uniqueattr02_187", "View_AlphabetIndexer_uniqueattr02_188", "View_AlphabetIndexer_uniqueattr02_189", "View_AlphabetIndexer_uniqueattr02_190",
  "View_AlphabetIndexer_uniqueattr02_191", "View_AlphabetIndexer_uniqueattr02_192", "View_AlphabetIndexer_uniqueattr02_193", "View_AlphabetIndexer_uniqueattr02_194", "View_AlphabetIndexer_uniqueattr02_195",
  "View_AlphabetIndexer_uniqueattr02_196", "View_AlphabetIndexer_uniqueattr02_197", "View_AlphabetIndexer_uniqueattr02_198", "View_AlphabetIndexer_uniqueattr02_199", "View_AlphabetIndexer_uniqueattr02_200",
  "View_AlphabetIndexer_uniqueattr02_201", "View_AlphabetIndexer_uniqueattr02_202", "View_AlphabetIndexer_uniqueattr02_203", "View_AlphabetIndexer_uniqueattr02_204", "View_AlphabetIndexer_uniqueattr02_205",
  "View_AlphabetIndexer_uniqueattr02_206", "View_AlphabetIndexer_uniqueattr02_207", "View_AlphabetIndexer_uniqueattr02_208", "View_AlphabetIndexer_uniqueattr02_209", "View_AlphabetIndexer_uniqueattr02_210",
  "View_AlphabetIndexer_uniqueattr02_211", "View_AlphabetIndexer_uniqueattr02_212", "View_AlphabetIndexer_uniqueattr02_213", "View_AlphabetIndexer_uniqueattr02_214", "View_AlphabetIndexer_uniqueattr02_215",
  "View_AlphabetIndexer_uniqueattr02_216", "View_AlphabetIndexer_uniqueattr02_217", "View_AlphabetIndexer_uniqueattr02_218", "View_AlphabetIndexer_uniqueattr02_219", "View_AlphabetIndexer_uniqueattr02_220",
  "View_AlphabetIndexer_uniqueattr02_221", "View_AlphabetIndexer_uniqueattr02_222", "View_AlphabetIndexer_uniqueattr02_223", "View_AlphabetIndexer_uniqueattr02_224", "View_AlphabetIndexer_uniqueattr02_225",
  "View_AlphabetIndexer_uniqueattr02_226", "View_AlphabetIndexer_uniqueattr02_227", "View_AlphabetIndexer_uniqueattr02_228", "View_AlphabetIndexer_uniqueattr02_229", "View_AlphabetIndexer_uniqueattr02_230",
  "View_AlphabetIndexer_uniqueattr02_231", "View_AlphabetIndexer_uniqueattr02_232", "View_AlphabetIndexer_uniqueattr02_233", "View_AlphabetIndexer_uniqueattr02_234", "View_AlphabetIndexer_uniqueattr02_235",
  "View_AlphabetIndexer_uniqueattr02_236", "View_AlphabetIndexer_uniqueattr02_237", "View_AlphabetIndexer_uniqueattr02_238", "View_AlphabetIndexer_uniqueattr02_239", "View_AlphabetIndexer_uniqueattr02_240",
  "View_AlphabetIndexer_uniqueattr02_241", "View_AlphabetIndexer_uniqueattr02_242", "View_AlphabetIndexer_uniqueattr02_243", "View_AlphabetIndexer_uniqueattr02_244", "View_AlphabetIndexer_uniqueattr02_245",
  "View_AlphabetIndexer_uniqueattr02_246", "View_AlphabetIndexer_uniqueattr02_247", "View_AlphabetIndexer_uniqueattr02_248", "View_AlphabetIndexer_uniqueattr02_249", "View_AlphabetIndexer_uniqueattr02_250",
  "View_AlphabetIndexer_uniqueattr02_251", "View_AlphabetIndexer_uniqueattr02_252", "View_AlphabetIndexer_uniqueattr02_253", "View_AlphabetIndexer_uniqueattr02_254", "View_AlphabetIndexer_uniqueattr02_255",
  "View_AlphabetIndexer_uniqueattr02_256", "View_AlphabetIndexer_uniqueattr02_257", "View_AlphabetIndexer_uniqueattr02_258", "View_AlphabetIndexer_uniqueattr02_259", "View_AlphabetIndexer_uniqueattr02_260",
  "View_AlphabetIndexer_uniqueattr02_261", "View_AlphabetIndexer_uniqueattr02_262", "View_AlphabetIndexer_uniqueattr02_263", "View_AlphabetIndexer_uniqueattr02_264", "View_AlphabetIndexer_uniqueattr02_265",
  "View_AlphabetIndexer_uniqueattr02_266", "View_AlphabetIndexer_uniqueattr02_267", "View_AlphabetIndexer_uniqueattr02_268", "View_AlphabetIndexer_uniqueattr02_269", "View_AlphabetIndexer_uniqueattr02_270",
  "View_AlphabetIndexer_uniqueattr02_271", "View_AlphabetIndexer_uniqueattr02_272", "View_AlphabetIndexer_uniqueattr02_273", "View_AlphabetIndexer_uniqueattr02_274", "View_AlphabetIndexer_uniqueattr02_275",
  "View_AlphabetIndexer_uniqueattr02_276", "View_AlphabetIndexer_uniqueattr02_277", "View_AlphabetIndexer_uniqueattr02_278", "View_AlphabetIndexer_uniqueattr02_279", "View_AlphabetIndexer_uniqueattr02_280",
  "View_AlphabetIndexer_uniqueattr02_281", "View_AlphabetIndexer_uniqueattr02_282", "View_AlphabetIndexer_uniqueattr02_283", "View_AlphabetIndexer_uniqueattr02_284", "View_AlphabetIndexer_uniqueattr02_285",
  "View_AlphabetIndexer_uniqueattr02_286", "View_AlphabetIndexer_uniqueattr02_287", "View_AlphabetIndexer_uniqueattr02_288", "View_AlphabetIndexer_uniqueattr02_289", "View_AlphabetIndexer_uniqueattr02_290",
  "View_AlphabetIndexer_uniqueattr02_291", "View_AlphabetIndexer_uniqueattr02_292", "View_AlphabetIndexer_uniqueattr02_293", "View_AlphabetIndexer_uniqueattr02_294", "View_AlphabetIndexer_uniqueattr02_295",
  "View_AlphabetIndexer_uniqueattr02_296", "View_AlphabetIndexer_uniqueattr02_297", "View_AlphabetIndexer_uniqueattr02_298", "View_AlphabetIndexer_uniqueattr02_299", "View_AlphabetIndexer_uniqueattr02_300",
  "View_AlphabetIndexer_uniqueattr02_301" ],
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
