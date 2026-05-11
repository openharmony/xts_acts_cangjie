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

package ohos_app_cangjie_entry.Gcol_ca_translate_01

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
class index_Gcol_ca_translate_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridCol_comattr_translate_1", "View_GridCol_comattr_translate_2", "View_GridCol_comattr_translate_3", "View_GridCol_comattr_translate_4", "View_GridCol_comattr_translate_5",
  "View_GridCol_comattr_translate_6", "View_GridCol_comattr_translate_7", "View_GridCol_comattr_translate_8", "View_GridCol_comattr_translate_9", "View_GridCol_comattr_translate_10",
  "View_GridCol_comattr_translate_11", "View_GridCol_comattr_translate_12", "View_GridCol_comattr_translate_13", "View_GridCol_comattr_translate_14", "View_GridCol_comattr_translate_15",
  "View_GridCol_comattr_translate_16", "View_GridCol_comattr_translate_17", "View_GridCol_comattr_translate_18", "View_GridCol_comattr_translate_19", "View_GridCol_comattr_translate_20",
  "View_GridCol_comattr_translate_21", "View_GridCol_comattr_translate_22", "View_GridCol_comattr_translate_23", "View_GridCol_comattr_translate_24", "View_GridCol_comattr_translate_25",
  "View_GridCol_comattr_translate_26", "View_GridCol_comattr_translate_27", "View_GridCol_comattr_translate_28", "View_GridCol_comattr_translate_29", "View_GridCol_comattr_translate_30",
  "View_GridCol_comattr_translate_31", "View_GridCol_comattr_translate_32", "View_GridCol_comattr_translate_33", "View_GridCol_comattr_translate_34", "View_GridCol_comattr_translate_35",
  "View_GridCol_comattr_translate_36", "View_GridCol_comattr_translate_37", "View_GridCol_comattr_translate_38", "View_GridCol_comattr_translate_39", "View_GridCol_comattr_translate_40",
  "View_GridCol_comattr_translate_41", "View_GridCol_comattr_translate_42", "View_GridCol_comattr_translate_43", "View_GridCol_comattr_translate_44", "View_GridCol_comattr_translate_45",
  "View_GridCol_comattr_translate_46", "View_GridCol_comattr_translate_47", "View_GridCol_comattr_translate_48", "View_GridCol_comattr_translate_49", "View_GridCol_comattr_translate_50",
  "View_GridCol_comattr_translate_51", "View_GridCol_comattr_translate_52", "View_GridCol_comattr_translate_53", "View_GridCol_comattr_translate_54", "View_GridCol_comattr_translate_55",
  "View_GridCol_comattr_translate_56", "View_GridCol_comattr_translate_57", "View_GridCol_comattr_translate_58", "View_GridCol_comattr_translate_59", "View_GridCol_comattr_translate_60",
  "View_GridCol_comattr_translate_61", "View_GridCol_comattr_translate_62", "View_GridCol_comattr_translate_63", "View_GridCol_comattr_translate_64", "View_GridCol_comattr_translate_65",
  "View_GridCol_comattr_translate_66", "View_GridCol_comattr_translate_67", "View_GridCol_comattr_translate_68", "View_GridCol_comattr_translate_69", "View_GridCol_comattr_translate_70",
  "View_GridCol_comattr_translate_71", "View_GridCol_comattr_translate_72", "View_GridCol_comattr_translate_73", "View_GridCol_comattr_translate_74", "View_GridCol_comattr_translate_75",
  "View_GridCol_comattr_translate_76", "View_GridCol_comattr_translate_77", "View_GridCol_comattr_translate_78", "View_GridCol_comattr_translate_79", "View_GridCol_comattr_translate_80",
  "View_GridCol_comattr_translate_81", "View_GridCol_comattr_translate_82", "View_GridCol_comattr_translate_83", "View_GridCol_comattr_translate_84", "View_GridCol_comattr_translate_85",
  "View_GridCol_comattr_translate_86", "View_GridCol_comattr_translate_87", "View_GridCol_comattr_translate_88", "View_GridCol_comattr_translate_89", "View_GridCol_comattr_translate_90",
  "View_GridCol_comattr_translate_91", "View_GridCol_comattr_translate_92", "View_GridCol_comattr_translate_93", "View_GridCol_comattr_translate_94", "View_GridCol_comattr_translate_95",
  "View_GridCol_comattr_translate_96", "View_GridCol_comattr_translate_97", "View_GridCol_comattr_translate_98", "View_GridCol_comattr_translate_99", "View_GridCol_comattr_translate_100",
  "View_GridCol_comattr_translate_101", "View_GridCol_comattr_translate_102", "View_GridCol_comattr_translate_103", "View_GridCol_comattr_translate_104", "View_GridCol_comattr_translate_105",
  "View_GridCol_comattr_translate_106", "View_GridCol_comattr_translate_107", "View_GridCol_comattr_translate_108", "View_GridCol_comattr_translate_109", "View_GridCol_comattr_translate_110",
  "View_GridCol_comattr_translate_111", "View_GridCol_comattr_translate_112", "View_GridCol_comattr_translate_113", "View_GridCol_comattr_translate_114", "View_GridCol_comattr_translate_115",
  "View_GridCol_comattr_translate_116", "View_GridCol_comattr_translate_117", "View_GridCol_comattr_translate_118", "View_GridCol_comattr_translate_119", "View_GridCol_comattr_translate_120",
  "View_GridCol_comattr_translate_121", "View_GridCol_comattr_translate_122", "View_GridCol_comattr_translate_123", "View_GridCol_comattr_translate_124", "View_GridCol_comattr_translate_125",
  "View_GridCol_comattr_translate_126", "View_GridCol_comattr_translate_127", "View_GridCol_comattr_translate_128", "View_GridCol_comattr_translate_129", "View_GridCol_comattr_translate_130",
  "View_GridCol_comattr_translate_131", "View_GridCol_comattr_translate_132", "View_GridCol_comattr_translate_133", "View_GridCol_comattr_translate_134", "View_GridCol_comattr_translate_135",
  "View_GridCol_comattr_translate_136", "View_GridCol_comattr_translate_137", "View_GridCol_comattr_translate_138", "View_GridCol_comattr_translate_139", "View_GridCol_comattr_translate_140",
  "View_GridCol_comattr_translate_141", "View_GridCol_comattr_translate_142", "View_GridCol_comattr_translate_143", "View_GridCol_comattr_translate_144", "View_GridCol_comattr_translate_145",
  "View_GridCol_comattr_translate_146", "View_GridCol_comattr_translate_147", "View_GridCol_comattr_translate_148", "View_GridCol_comattr_translate_149", "View_GridCol_comattr_translate_150",
  "View_GridCol_comattr_translate_151", "View_GridCol_comattr_translate_152", "View_GridCol_comattr_translate_153", "View_GridCol_comattr_translate_154", "View_GridCol_comattr_translate_155",
  "View_GridCol_comattr_translate_156", "View_GridCol_comattr_translate_157", "View_GridCol_comattr_translate_158", "View_GridCol_comattr_translate_159", "View_GridCol_comattr_translate_160",
  "View_GridCol_comattr_translate_161", "View_GridCol_comattr_translate_162", "View_GridCol_comattr_translate_163", "View_GridCol_comattr_translate_164", "View_GridCol_comattr_translate_165",
  "View_GridCol_comattr_translate_166", "View_GridCol_comattr_translate_167", "View_GridCol_comattr_translate_168", "View_GridCol_comattr_translate_169", "View_GridCol_comattr_translate_170",
  "View_GridCol_comattr_translate_171", "View_GridCol_comattr_translate_172", "View_GridCol_comattr_translate_173", "View_GridCol_comattr_translate_174", "View_GridCol_comattr_translate_175",
  "View_GridCol_comattr_translate_176", "View_GridCol_comattr_translate_177", "View_GridCol_comattr_translate_178", "View_GridCol_comattr_translate_179", "View_GridCol_comattr_translate_180",
  "View_GridCol_comattr_translate_181", "View_GridCol_comattr_translate_182", "View_GridCol_comattr_translate_183", "View_GridCol_comattr_translate_184", "View_GridCol_comattr_translate_185",
  "View_GridCol_comattr_translate_186", "View_GridCol_comattr_translate_187", "View_GridCol_comattr_translate_188", "View_GridCol_comattr_translate_189", "View_GridCol_comattr_translate_190",
  "View_GridCol_comattr_translate_191", "View_GridCol_comattr_translate_192", "View_GridCol_comattr_translate_193", "View_GridCol_comattr_translate_194", "View_GridCol_comattr_translate_195",
  "View_GridCol_comattr_translate_196", "View_GridCol_comattr_translate_197", "View_GridCol_comattr_translate_198", "View_GridCol_comattr_translate_199", "View_GridCol_comattr_translate_200",
  "View_GridCol_comattr_translate_201", "View_GridCol_comattr_translate_202", "View_GridCol_comattr_translate_203", "View_GridCol_comattr_translate_204", "View_GridCol_comattr_translate_205",
  "View_GridCol_comattr_translate_206", "View_GridCol_comattr_translate_207", "View_GridCol_comattr_translate_208", "View_GridCol_comattr_translate_209", "View_GridCol_comattr_translate_210",
  "View_GridCol_comattr_translate_211", "View_GridCol_comattr_translate_212", "View_GridCol_comattr_translate_213", "View_GridCol_comattr_translate_214", "View_GridCol_comattr_translate_215",
  "View_GridCol_comattr_translate_216", "View_GridCol_comattr_translate_217", "View_GridCol_comattr_translate_218", "View_GridCol_comattr_translate_219", "View_GridCol_comattr_translate_220",
  "View_GridCol_comattr_translate_221", "View_GridCol_comattr_translate_222", "View_GridCol_comattr_translate_223", "View_GridCol_comattr_translate_224", "View_GridCol_comattr_translate_225",
  "View_GridCol_comattr_translate_226", "View_GridCol_comattr_translate_227", "View_GridCol_comattr_translate_228", "View_GridCol_comattr_translate_229", "View_GridCol_comattr_translate_230",
  "View_GridCol_comattr_translate_231", "View_GridCol_comattr_translate_232", "View_GridCol_comattr_translate_233", "View_GridCol_comattr_translate_234", "View_GridCol_comattr_translate_235",
  "View_GridCol_comattr_translate_236", "View_GridCol_comattr_translate_237", "View_GridCol_comattr_translate_238", "View_GridCol_comattr_translate_239", "View_GridCol_comattr_translate_240",
  "View_GridCol_comattr_translate_241", "View_GridCol_comattr_translate_242", "View_GridCol_comattr_translate_243", "View_GridCol_comattr_translate_244", "View_GridCol_comattr_translate_245",
  "View_GridCol_comattr_translate_246", "View_GridCol_comattr_translate_247", "View_GridCol_comattr_translate_248", "View_GridCol_comattr_translate_249", "View_GridCol_comattr_translate_250",
  "View_GridCol_comattr_translate_251", "View_GridCol_comattr_translate_252", "View_GridCol_comattr_translate_253", "View_GridCol_comattr_translate_254", "View_GridCol_comattr_translate_255",
  "View_GridCol_comattr_translate_256", "View_GridCol_comattr_translate_257", "View_GridCol_comattr_translate_258", "View_GridCol_comattr_translate_259", "View_GridCol_comattr_translate_260",
  "View_GridCol_comattr_translate_261", "View_GridCol_comattr_translate_262", "View_GridCol_comattr_translate_263", "View_GridCol_comattr_translate_264", "View_GridCol_comattr_translate_265",
  "View_GridCol_comattr_translate_266", "View_GridCol_comattr_translate_267", "View_GridCol_comattr_translate_268", "View_GridCol_comattr_translate_269", "View_GridCol_comattr_translate_270",
  "View_GridCol_comattr_translate_271", "View_GridCol_comattr_translate_272", "View_GridCol_comattr_translate_273", "View_GridCol_comattr_translate_274", "View_GridCol_comattr_translate_275",
  "View_GridCol_comattr_translate_276", "View_GridCol_comattr_translate_277", "View_GridCol_comattr_translate_278", "View_GridCol_comattr_translate_279", "View_GridCol_comattr_translate_280",
  "View_GridCol_comattr_translate_281", "View_GridCol_comattr_translate_282", "View_GridCol_comattr_translate_283", "View_GridCol_comattr_translate_284", "View_GridCol_comattr_translate_285",
  "View_GridCol_comattr_translate_286", "View_GridCol_comattr_translate_287", "View_GridCol_comattr_translate_288", "View_GridCol_comattr_translate_289", "View_GridCol_comattr_translate_290",
  "View_GridCol_comattr_translate_291", "View_GridCol_comattr_translate_292", "View_GridCol_comattr_translate_293", "View_GridCol_comattr_translate_294", "View_GridCol_comattr_translate_295",
  "View_GridCol_comattr_translate_296", "View_GridCol_comattr_translate_297", "View_GridCol_comattr_translate_298", "View_GridCol_comattr_translate_299", "View_GridCol_comattr_translate_300",
  "View_GridCol_comattr_translate_301", "View_GridCol_comattr_translate_302", "View_GridCol_comattr_translate_303", "View_GridCol_comattr_translate_304", "View_GridCol_comattr_translate_305",
  "View_GridCol_comattr_translate_306", "View_GridCol_comattr_translate_307", "View_GridCol_comattr_translate_308", "View_GridCol_comattr_translate_309", "View_GridCol_comattr_translate_310",
  "View_GridCol_comattr_translate_311", "View_GridCol_comattr_translate_312", "View_GridCol_comattr_translate_313", "View_GridCol_comattr_translate_314", "View_GridCol_comattr_translate_315",
  "View_GridCol_comattr_translate_316", "View_GridCol_comattr_translate_317", "View_GridCol_comattr_translate_318", "View_GridCol_comattr_translate_319", "View_GridCol_comattr_translate_320",
  "View_GridCol_comattr_translate_321", "View_GridCol_comattr_translate_322", "View_GridCol_comattr_translate_323", "View_GridCol_comattr_translate_324", "View_GridCol_comattr_translate_325",
  "View_GridCol_comattr_translate_326", "View_GridCol_comattr_translate_327", "View_GridCol_comattr_translate_328", "View_GridCol_comattr_translate_329", "View_GridCol_comattr_translate_330",
  "View_GridCol_comattr_translate_331", "View_GridCol_comattr_translate_332", "View_GridCol_comattr_translate_333", "View_GridCol_comattr_translate_334", "View_GridCol_comattr_translate_335",
  "View_GridCol_comattr_translate_336", "View_GridCol_comattr_translate_337", "View_GridCol_comattr_translate_338", "View_GridCol_comattr_translate_339", "View_GridCol_comattr_translate_340",
  "View_GridCol_comattr_translate_341", "View_GridCol_comattr_translate_342", "View_GridCol_comattr_translate_343", "View_GridCol_comattr_translate_344", "View_GridCol_comattr_translate_345",
  "View_GridCol_comattr_translate_346", "View_GridCol_comattr_translate_347", "View_GridCol_comattr_translate_348", "View_GridCol_comattr_translate_349", "View_GridCol_comattr_translate_350",
  "View_GridCol_comattr_translate_351", "View_GridCol_comattr_translate_352", "View_GridCol_comattr_translate_353", "View_GridCol_comattr_translate_354", "View_GridCol_comattr_translate_355",
  "View_GridCol_comattr_translate_356", "View_GridCol_comattr_translate_357", "View_GridCol_comattr_translate_358", "View_GridCol_comattr_translate_359", "View_GridCol_comattr_translate_360",
  "View_GridCol_comattr_translate_361", "View_GridCol_comattr_translate_362", "View_GridCol_comattr_translate_363", "View_GridCol_comattr_translate_364", "View_GridCol_comattr_translate_365",
  "View_GridCol_comattr_translate_366", "View_GridCol_comattr_translate_367", "View_GridCol_comattr_translate_368", "View_GridCol_comattr_translate_369", "View_GridCol_comattr_translate_370",
  "View_GridCol_comattr_translate_371", "View_GridCol_comattr_translate_372", "View_GridCol_comattr_translate_373", "View_GridCol_comattr_translate_374", "View_GridCol_comattr_translate_375",
  "View_GridCol_comattr_translate_376", "View_GridCol_comattr_translate_377", "View_GridCol_comattr_translate_378", "View_GridCol_comattr_translate_379", "View_GridCol_comattr_translate_380",
  "View_GridCol_comattr_translate_381", "View_GridCol_comattr_translate_382", "View_GridCol_comattr_translate_383", "View_GridCol_comattr_translate_384", "View_GridCol_comattr_translate_385",
  "View_GridCol_comattr_translate_386", "View_GridCol_comattr_translate_387", "View_GridCol_comattr_translate_388", "View_GridCol_comattr_translate_389", "View_GridCol_comattr_translate_390",
  "View_GridCol_comattr_translate_391", "View_GridCol_comattr_translate_392", "View_GridCol_comattr_translate_393", "View_GridCol_comattr_translate_394", "View_GridCol_comattr_translate_395",
  "View_GridCol_comattr_translate_396", "View_GridCol_comattr_translate_397", "View_GridCol_comattr_translate_398", "View_GridCol_comattr_translate_399", "View_GridCol_comattr_translate_400",
  "View_GridCol_comattr_translate_401", "View_GridCol_comattr_translate_402", "View_GridCol_comattr_translate_403", "View_GridCol_comattr_translate_404", "View_GridCol_comattr_translate_405",
  "View_GridCol_comattr_translate_406", "View_GridCol_comattr_translate_407", "View_GridCol_comattr_translate_408", "View_GridCol_comattr_translate_409", "View_GridCol_comattr_translate_410",
  "View_GridCol_comattr_translate_411" ],
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
