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

package ohos_app_cangjie_entry.Row_ca_padding_margin_02

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
class index_Row_ca_padding_margin_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Row_comattr_padding_margin2_1", "View_Row_comattr_padding_margin2_2", "View_Row_comattr_padding_margin2_3", "View_Row_comattr_padding_margin2_4", "View_Row_comattr_padding_margin2_5",
  "View_Row_comattr_padding_margin2_6", "View_Row_comattr_padding_margin2_7", "View_Row_comattr_padding_margin2_8", "View_Row_comattr_padding_margin2_9", "View_Row_comattr_padding_margin2_10",
  "View_Row_comattr_padding_margin2_11", "View_Row_comattr_padding_margin2_12", "View_Row_comattr_padding_margin2_13", "View_Row_comattr_padding_margin2_14", "View_Row_comattr_padding_margin2_15",
  "View_Row_comattr_padding_margin2_16", "View_Row_comattr_padding_margin2_17", "View_Row_comattr_padding_margin2_18", "View_Row_comattr_padding_margin2_19", "View_Row_comattr_padding_margin2_20",
  "View_Row_comattr_padding_margin2_21", "View_Row_comattr_padding_margin2_22", "View_Row_comattr_padding_margin2_23", "View_Row_comattr_padding_margin2_24", "View_Row_comattr_padding_margin2_25",
  "View_Row_comattr_padding_margin2_26", "View_Row_comattr_padding_margin2_27", "View_Row_comattr_padding_margin2_28", "View_Row_comattr_padding_margin2_29", "View_Row_comattr_padding_margin2_30",
  "View_Row_comattr_padding_margin2_31", "View_Row_comattr_padding_margin2_32", "View_Row_comattr_padding_margin2_33", "View_Row_comattr_padding_margin2_34", "View_Row_comattr_padding_margin2_35",
  "View_Row_comattr_padding_margin2_36", "View_Row_comattr_padding_margin2_37", "View_Row_comattr_padding_margin2_38", "View_Row_comattr_padding_margin2_39", "View_Row_comattr_padding_margin2_40",
  "View_Row_comattr_padding_margin2_41", "View_Row_comattr_padding_margin2_42", "View_Row_comattr_padding_margin2_43", "View_Row_comattr_padding_margin2_44", "View_Row_comattr_padding_margin2_45",
  "View_Row_comattr_padding_margin2_46", "View_Row_comattr_padding_margin2_47", "View_Row_comattr_padding_margin2_48", "View_Row_comattr_padding_margin2_49", "View_Row_comattr_padding_margin2_50",
  "View_Row_comattr_padding_margin2_51", "View_Row_comattr_padding_margin2_52", "View_Row_comattr_padding_margin2_53", "View_Row_comattr_padding_margin2_54", "View_Row_comattr_padding_margin2_55",
  "View_Row_comattr_padding_margin2_56", "View_Row_comattr_padding_margin2_57", "View_Row_comattr_padding_margin2_58", "View_Row_comattr_padding_margin2_59", "View_Row_comattr_padding_margin2_60",
  "View_Row_comattr_padding_margin2_61", "View_Row_comattr_padding_margin2_62", "View_Row_comattr_padding_margin2_63", "View_Row_comattr_padding_margin2_64", "View_Row_comattr_padding_margin2_65",
  "View_Row_comattr_padding_margin2_66", "View_Row_comattr_padding_margin2_67", "View_Row_comattr_padding_margin2_68", "View_Row_comattr_padding_margin2_69", "View_Row_comattr_padding_margin2_70",
  "View_Row_comattr_padding_margin2_71", "View_Row_comattr_padding_margin2_72", "View_Row_comattr_padding_margin2_73", "View_Row_comattr_padding_margin2_74", "View_Row_comattr_padding_margin2_75",
  "View_Row_comattr_padding_margin2_76", "View_Row_comattr_padding_margin2_77", "View_Row_comattr_padding_margin2_78", "View_Row_comattr_padding_margin2_79", "View_Row_comattr_padding_margin2_80",
  "View_Row_comattr_padding_margin2_81", "View_Row_comattr_padding_margin2_82", "View_Row_comattr_padding_margin2_83", "View_Row_comattr_padding_margin2_84", "View_Row_comattr_padding_margin2_85",
  "View_Row_comattr_padding_margin2_86", "View_Row_comattr_padding_margin2_87", "View_Row_comattr_padding_margin2_88", "View_Row_comattr_padding_margin2_89", "View_Row_comattr_padding_margin2_90",
  "View_Row_comattr_padding_margin2_91", "View_Row_comattr_padding_margin2_92", "View_Row_comattr_padding_margin2_93", "View_Row_comattr_padding_margin2_94", "View_Row_comattr_padding_margin2_95",
  "View_Row_comattr_padding_margin2_96", "View_Row_comattr_padding_margin2_97", "View_Row_comattr_padding_margin2_98", "View_Row_comattr_padding_margin2_99", "View_Row_comattr_padding_margin2_100",
  "View_Row_comattr_padding_margin2_101", "View_Row_comattr_padding_margin2_102", "View_Row_comattr_padding_margin2_103", "View_Row_comattr_padding_margin2_104", "View_Row_comattr_padding_margin2_105",
  "View_Row_comattr_padding_margin2_106", "View_Row_comattr_padding_margin2_107", "View_Row_comattr_padding_margin2_108", "View_Row_comattr_padding_margin2_109", "View_Row_comattr_padding_margin2_110",
  "View_Row_comattr_padding_margin2_111", "View_Row_comattr_padding_margin2_112", "View_Row_comattr_padding_margin2_113", "View_Row_comattr_padding_margin2_114", "View_Row_comattr_padding_margin2_115",
  "View_Row_comattr_padding_margin2_116", "View_Row_comattr_padding_margin2_117", "View_Row_comattr_padding_margin2_118", "View_Row_comattr_padding_margin2_119", "View_Row_comattr_padding_margin2_120",
  "View_Row_comattr_padding_margin2_121", "View_Row_comattr_padding_margin2_122", "View_Row_comattr_padding_margin2_123", "View_Row_comattr_padding_margin2_124", "View_Row_comattr_padding_margin2_125",
  "View_Row_comattr_padding_margin2_126", "View_Row_comattr_padding_margin2_127", "View_Row_comattr_padding_margin2_128", "View_Row_comattr_padding_margin2_129", "View_Row_comattr_padding_margin2_130",
  "View_Row_comattr_padding_margin2_131", "View_Row_comattr_padding_margin2_132", "View_Row_comattr_padding_margin2_133", "View_Row_comattr_padding_margin2_134", "View_Row_comattr_padding_margin2_135",
  "View_Row_comattr_padding_margin2_136", "View_Row_comattr_padding_margin2_137", "View_Row_comattr_padding_margin2_138", "View_Row_comattr_padding_margin2_139", "View_Row_comattr_padding_margin2_140",
  "View_Row_comattr_padding_margin2_141", "View_Row_comattr_padding_margin2_142", "View_Row_comattr_padding_margin2_143", "View_Row_comattr_padding_margin2_144", "View_Row_comattr_padding_margin2_145",
  "View_Row_comattr_padding_margin2_146", "View_Row_comattr_padding_margin2_147", "View_Row_comattr_padding_margin2_148", "View_Row_comattr_padding_margin2_149", "View_Row_comattr_padding_margin2_150",
  "View_Row_comattr_padding_margin2_151", "View_Row_comattr_padding_margin2_152", "View_Row_comattr_padding_margin2_153", "View_Row_comattr_padding_margin2_154", "View_Row_comattr_padding_margin2_155",
  "View_Row_comattr_padding_margin2_156", "View_Row_comattr_padding_margin2_157", "View_Row_comattr_padding_margin2_158", "View_Row_comattr_padding_margin2_159", "View_Row_comattr_padding_margin2_160",
  "View_Row_comattr_padding_margin2_161", "View_Row_comattr_padding_margin2_162", "View_Row_comattr_padding_margin2_163", "View_Row_comattr_padding_margin2_164", "View_Row_comattr_padding_margin2_165",
  "View_Row_comattr_padding_margin2_166", "View_Row_comattr_padding_margin2_167", "View_Row_comattr_padding_margin2_168", "View_Row_comattr_padding_margin2_169", "View_Row_comattr_padding_margin2_170",
  "View_Row_comattr_padding_margin2_171", "View_Row_comattr_padding_margin2_172", "View_Row_comattr_padding_margin2_173", "View_Row_comattr_padding_margin2_174", "View_Row_comattr_padding_margin2_175",
  "View_Row_comattr_padding_margin2_176", "View_Row_comattr_padding_margin2_177", "View_Row_comattr_padding_margin2_178", "View_Row_comattr_padding_margin2_179", "View_Row_comattr_padding_margin2_180",
  "View_Row_comattr_padding_margin2_181", "View_Row_comattr_padding_margin2_182", "View_Row_comattr_padding_margin2_183", "View_Row_comattr_padding_margin2_184", "View_Row_comattr_padding_margin2_185",
  "View_Row_comattr_padding_margin2_186", "View_Row_comattr_padding_margin2_187", "View_Row_comattr_padding_margin2_188", "View_Row_comattr_padding_margin2_189", "View_Row_comattr_padding_margin2_190",
  "View_Row_comattr_padding_margin2_191", "View_Row_comattr_padding_margin2_192", "View_Row_comattr_padding_margin2_193", "View_Row_comattr_padding_margin2_194", "View_Row_comattr_padding_margin2_195",
  "View_Row_comattr_padding_margin2_196", "View_Row_comattr_padding_margin2_197", "View_Row_comattr_padding_margin2_198", "View_Row_comattr_padding_margin2_199", "View_Row_comattr_padding_margin2_200",
  "View_Row_comattr_padding_margin2_201", "View_Row_comattr_padding_margin2_202", "View_Row_comattr_padding_margin2_203", "View_Row_comattr_padding_margin2_204", "View_Row_comattr_padding_margin2_205",
  "View_Row_comattr_padding_margin2_206", "View_Row_comattr_padding_margin2_207", "View_Row_comattr_padding_margin2_208", "View_Row_comattr_padding_margin2_209", "View_Row_comattr_padding_margin2_210",
  "View_Row_comattr_padding_margin2_211", "View_Row_comattr_padding_margin2_212", "View_Row_comattr_padding_margin2_213", "View_Row_comattr_padding_margin2_214", "View_Row_comattr_padding_margin2_215",
  "View_Row_comattr_padding_margin2_216", "View_Row_comattr_padding_margin2_217", "View_Row_comattr_padding_margin2_218", "View_Row_comattr_padding_margin2_219", "View_Row_comattr_padding_margin2_220",
  "View_Row_comattr_padding_margin2_221", "View_Row_comattr_padding_margin2_222", "View_Row_comattr_padding_margin2_223", "View_Row_comattr_padding_margin2_224", "View_Row_comattr_padding_margin2_225",
  "View_Row_comattr_padding_margin2_226", "View_Row_comattr_padding_margin2_227", "View_Row_comattr_padding_margin2_228", "View_Row_comattr_padding_margin2_229", "View_Row_comattr_padding_margin2_230",
  "View_Row_comattr_padding_margin2_231", "View_Row_comattr_padding_margin2_232", "View_Row_comattr_padding_margin2_233", "View_Row_comattr_padding_margin2_234", "View_Row_comattr_padding_margin2_235",
  "View_Row_comattr_padding_margin2_236", "View_Row_comattr_padding_margin2_237", "View_Row_comattr_padding_margin2_238", "View_Row_comattr_padding_margin2_239", "View_Row_comattr_padding_margin2_240",
  "View_Row_comattr_padding_margin2_241", "View_Row_comattr_padding_margin2_242", "View_Row_comattr_padding_margin2_243", "View_Row_comattr_padding_margin2_244", "View_Row_comattr_padding_margin2_245",
  "View_Row_comattr_padding_margin2_246", "View_Row_comattr_padding_margin2_247", "View_Row_comattr_padding_margin2_248", "View_Row_comattr_padding_margin2_249", "View_Row_comattr_padding_margin2_250",
  "View_Row_comattr_padding_margin2_251", "View_Row_comattr_padding_margin2_252", "View_Row_comattr_padding_margin2_253", "View_Row_comattr_padding_margin2_254", "View_Row_comattr_padding_margin2_255",
  "View_Row_comattr_padding_margin2_256", "View_Row_comattr_padding_margin2_257", "View_Row_comattr_padding_margin2_258", "View_Row_comattr_padding_margin2_259", "View_Row_comattr_padding_margin2_260",
  "View_Row_comattr_padding_margin2_261", "View_Row_comattr_padding_margin2_262", "View_Row_comattr_padding_margin2_263", "View_Row_comattr_padding_margin2_264", "View_Row_comattr_padding_margin2_265",
  "View_Row_comattr_padding_margin2_266", "View_Row_comattr_padding_margin2_267", "View_Row_comattr_padding_margin2_268", "View_Row_comattr_padding_margin2_269", "View_Row_comattr_padding_margin2_270",
  "View_Row_comattr_padding_margin2_271", "View_Row_comattr_padding_margin2_272", "View_Row_comattr_padding_margin2_273", "View_Row_comattr_padding_margin2_274", "View_Row_comattr_padding_margin2_275",
  "View_Row_comattr_padding_margin2_276", "View_Row_comattr_padding_margin2_277", "View_Row_comattr_padding_margin2_278", "View_Row_comattr_padding_margin2_279", "View_Row_comattr_padding_margin2_280",
  "View_Row_comattr_padding_margin2_281", "View_Row_comattr_padding_margin2_282", "View_Row_comattr_padding_margin2_283", "View_Row_comattr_padding_margin2_284", "View_Row_comattr_padding_margin2_285",
  "View_Row_comattr_padding_margin2_286", "View_Row_comattr_padding_margin2_287", "View_Row_comattr_padding_margin2_288", "View_Row_comattr_padding_margin2_289", "View_Row_comattr_padding_margin2_290",
  "View_Row_comattr_padding_margin2_291", "View_Row_comattr_padding_margin2_292", "View_Row_comattr_padding_margin2_293", "View_Row_comattr_padding_margin2_294", "View_Row_comattr_padding_margin2_295",
  "View_Row_comattr_padding_margin2_296", "View_Row_comattr_padding_margin2_297", "View_Row_comattr_padding_margin2_298", "View_Row_comattr_padding_margin2_299", "View_Row_comattr_padding_margin2_300",
  "View_Row_comattr_padding_margin2_301", "View_Row_comattr_padding_margin2_302", "View_Row_comattr_padding_margin2_303", "View_Row_comattr_padding_margin2_304", "View_Row_comattr_padding_margin2_305",
  "View_Row_comattr_padding_margin2_306", "View_Row_comattr_padding_margin2_307", "View_Row_comattr_padding_margin2_308", "View_Row_comattr_padding_margin2_309", "View_Row_comattr_padding_margin2_310",
  "View_Row_comattr_padding_margin2_311", "View_Row_comattr_padding_margin2_312", "View_Row_comattr_padding_margin2_313", "View_Row_comattr_padding_margin2_314", "View_Row_comattr_padding_margin2_315",
  "View_Row_comattr_padding_margin2_316", "View_Row_comattr_padding_margin2_317", "View_Row_comattr_padding_margin2_318", "View_Row_comattr_padding_margin2_319", "View_Row_comattr_padding_margin2_320",
  "View_Row_comattr_padding_margin2_321", "View_Row_comattr_padding_margin2_322", "View_Row_comattr_padding_margin2_323", "View_Row_comattr_padding_margin2_324", "View_Row_comattr_padding_margin2_325",
  "View_Row_comattr_padding_margin2_326", "View_Row_comattr_padding_margin2_327", "View_Row_comattr_padding_margin2_328", "View_Row_comattr_padding_margin2_329", "View_Row_comattr_padding_margin2_330",
  "View_Row_comattr_padding_margin2_331", "View_Row_comattr_padding_margin2_332", "View_Row_comattr_padding_margin2_333", "View_Row_comattr_padding_margin2_334", "View_Row_comattr_padding_margin2_335",
  "View_Row_comattr_padding_margin2_336", "View_Row_comattr_padding_margin2_337", "View_Row_comattr_padding_margin2_338", "View_Row_comattr_padding_margin2_339", "View_Row_comattr_padding_margin2_340",
  "View_Row_comattr_padding_margin2_341", "View_Row_comattr_padding_margin2_342", "View_Row_comattr_padding_margin2_343", "View_Row_comattr_padding_margin2_344", "View_Row_comattr_padding_margin2_345",
  "View_Row_comattr_padding_margin2_346", "View_Row_comattr_padding_margin2_347", "View_Row_comattr_padding_margin2_348", "View_Row_comattr_padding_margin2_349", "View_Row_comattr_padding_margin2_350",
  "View_Row_comattr_padding_margin2_351", "View_Row_comattr_padding_margin2_352", "View_Row_comattr_padding_margin2_353", "View_Row_comattr_padding_margin2_354", "View_Row_comattr_padding_margin2_355",
  "View_Row_comattr_padding_margin2_356", "View_Row_comattr_padding_margin2_357", "View_Row_comattr_padding_margin2_358", "View_Row_comattr_padding_margin2_359", "View_Row_comattr_padding_margin2_360",
  "View_Row_comattr_padding_margin2_361", "View_Row_comattr_padding_margin2_362", "View_Row_comattr_padding_margin2_363", "View_Row_comattr_padding_margin2_364", "View_Row_comattr_padding_margin2_365",
  "View_Row_comattr_padding_margin2_366", "View_Row_comattr_padding_margin2_367", "View_Row_comattr_padding_margin2_368", "View_Row_comattr_padding_margin2_369", "View_Row_comattr_padding_margin2_370",
  "View_Row_comattr_padding_margin2_371", "View_Row_comattr_padding_margin2_372", "View_Row_comattr_padding_margin2_373", "View_Row_comattr_padding_margin2_374", "View_Row_comattr_padding_margin2_375",
  "View_Row_comattr_padding_margin2_376", "View_Row_comattr_padding_margin2_377", "View_Row_comattr_padding_margin2_378", "View_Row_comattr_padding_margin2_379", "View_Row_comattr_padding_margin2_380",
  "View_Row_comattr_padding_margin2_381", "View_Row_comattr_padding_margin2_382", "View_Row_comattr_padding_margin2_383", "View_Row_comattr_padding_margin2_384", "View_Row_comattr_padding_margin2_385",
  "View_Row_comattr_padding_margin2_386", "View_Row_comattr_padding_margin2_387", "View_Row_comattr_padding_margin2_388", "View_Row_comattr_padding_margin2_389", "View_Row_comattr_padding_margin2_390",
  "View_Row_comattr_padding_margin2_391", "View_Row_comattr_padding_margin2_392", "View_Row_comattr_padding_margin2_393", "View_Row_comattr_padding_margin2_394", "View_Row_comattr_padding_margin2_395",
  "View_Row_comattr_padding_margin2_396", "View_Row_comattr_padding_margin2_397", "View_Row_comattr_padding_margin2_398", "View_Row_comattr_padding_margin2_399", "View_Row_comattr_padding_margin2_400" ],
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
