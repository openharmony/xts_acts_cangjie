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

package ohos_app_cangjie_entry.GridRow_ca_translate_01

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
class index_GridRow_ca_translate_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_comattr_translate_1", "View_GridRow_comattr_translate_2", "View_GridRow_comattr_translate_3", "View_GridRow_comattr_translate_4", "View_GridRow_comattr_translate_5",
  "View_GridRow_comattr_translate_6", "View_GridRow_comattr_translate_7", "View_GridRow_comattr_translate_8", "View_GridRow_comattr_translate_9", "View_GridRow_comattr_translate_10",
  "View_GridRow_comattr_translate_11", "View_GridRow_comattr_translate_12", "View_GridRow_comattr_translate_13", "View_GridRow_comattr_translate_14", "View_GridRow_comattr_translate_15",
  "View_GridRow_comattr_translate_16", "View_GridRow_comattr_translate_17", "View_GridRow_comattr_translate_18", "View_GridRow_comattr_translate_19", "View_GridRow_comattr_translate_20",
  "View_GridRow_comattr_translate_21", "View_GridRow_comattr_translate_22", "View_GridRow_comattr_translate_23", "View_GridRow_comattr_translate_24", "View_GridRow_comattr_translate_25",
  "View_GridRow_comattr_translate_26", "View_GridRow_comattr_translate_27", "View_GridRow_comattr_translate_28", "View_GridRow_comattr_translate_29", "View_GridRow_comattr_translate_30",
  "View_GridRow_comattr_translate_31", "View_GridRow_comattr_translate_32", "View_GridRow_comattr_translate_33", "View_GridRow_comattr_translate_34", "View_GridRow_comattr_translate_35",
  "View_GridRow_comattr_translate_36", "View_GridRow_comattr_translate_37", "View_GridRow_comattr_translate_38", "View_GridRow_comattr_translate_39", "View_GridRow_comattr_translate_40",
  "View_GridRow_comattr_translate_41", "View_GridRow_comattr_translate_42", "View_GridRow_comattr_translate_43", "View_GridRow_comattr_translate_44", "View_GridRow_comattr_translate_45",
  "View_GridRow_comattr_translate_46", "View_GridRow_comattr_translate_47", "View_GridRow_comattr_translate_48", "View_GridRow_comattr_translate_49", "View_GridRow_comattr_translate_50",
  "View_GridRow_comattr_translate_51", "View_GridRow_comattr_translate_52", "View_GridRow_comattr_translate_53", "View_GridRow_comattr_translate_54", "View_GridRow_comattr_translate_55",
  "View_GridRow_comattr_translate_56", "View_GridRow_comattr_translate_57", "View_GridRow_comattr_translate_58", "View_GridRow_comattr_translate_59", "View_GridRow_comattr_translate_60",
  "View_GridRow_comattr_translate_61", "View_GridRow_comattr_translate_62", "View_GridRow_comattr_translate_63", "View_GridRow_comattr_translate_64", "View_GridRow_comattr_translate_65",
  "View_GridRow_comattr_translate_66", "View_GridRow_comattr_translate_67", "View_GridRow_comattr_translate_68", "View_GridRow_comattr_translate_69", "View_GridRow_comattr_translate_70",
  "View_GridRow_comattr_translate_71", "View_GridRow_comattr_translate_72", "View_GridRow_comattr_translate_73", "View_GridRow_comattr_translate_74", "View_GridRow_comattr_translate_75",
  "View_GridRow_comattr_translate_76", "View_GridRow_comattr_translate_77", "View_GridRow_comattr_translate_78", "View_GridRow_comattr_translate_79", "View_GridRow_comattr_translate_80",
  "View_GridRow_comattr_translate_81", "View_GridRow_comattr_translate_82", "View_GridRow_comattr_translate_83", "View_GridRow_comattr_translate_84", "View_GridRow_comattr_translate_85",
  "View_GridRow_comattr_translate_86", "View_GridRow_comattr_translate_87", "View_GridRow_comattr_translate_88", "View_GridRow_comattr_translate_89", "View_GridRow_comattr_translate_90",
  "View_GridRow_comattr_translate_91", "View_GridRow_comattr_translate_92", "View_GridRow_comattr_translate_93", "View_GridRow_comattr_translate_94", "View_GridRow_comattr_translate_95",
  "View_GridRow_comattr_translate_96", "View_GridRow_comattr_translate_97", "View_GridRow_comattr_translate_98", "View_GridRow_comattr_translate_99", "View_GridRow_comattr_translate_100",
  "View_GridRow_comattr_translate_101", "View_GridRow_comattr_translate_102", "View_GridRow_comattr_translate_103", "View_GridRow_comattr_translate_104", "View_GridRow_comattr_translate_105",
  "View_GridRow_comattr_translate_106", "View_GridRow_comattr_translate_107", "View_GridRow_comattr_translate_108", "View_GridRow_comattr_translate_109", "View_GridRow_comattr_translate_110",
  "View_GridRow_comattr_translate_111", "View_GridRow_comattr_translate_112", "View_GridRow_comattr_translate_113", "View_GridRow_comattr_translate_114", "View_GridRow_comattr_translate_115",
  "View_GridRow_comattr_translate_116", "View_GridRow_comattr_translate_117", "View_GridRow_comattr_translate_118", "View_GridRow_comattr_translate_119", "View_GridRow_comattr_translate_120",
  "View_GridRow_comattr_translate_121", "View_GridRow_comattr_translate_122", "View_GridRow_comattr_translate_123", "View_GridRow_comattr_translate_124", "View_GridRow_comattr_translate_125",
  "View_GridRow_comattr_translate_126", "View_GridRow_comattr_translate_127", "View_GridRow_comattr_translate_128", "View_GridRow_comattr_translate_129", "View_GridRow_comattr_translate_130",
  "View_GridRow_comattr_translate_131", "View_GridRow_comattr_translate_132", "View_GridRow_comattr_translate_133", "View_GridRow_comattr_translate_134", "View_GridRow_comattr_translate_135",
  "View_GridRow_comattr_translate_136", "View_GridRow_comattr_translate_137", "View_GridRow_comattr_translate_138", "View_GridRow_comattr_translate_139", "View_GridRow_comattr_translate_140",
  "View_GridRow_comattr_translate_141", "View_GridRow_comattr_translate_142", "View_GridRow_comattr_translate_143", "View_GridRow_comattr_translate_144", "View_GridRow_comattr_translate_145",
  "View_GridRow_comattr_translate_146", "View_GridRow_comattr_translate_147", "View_GridRow_comattr_translate_148", "View_GridRow_comattr_translate_149", "View_GridRow_comattr_translate_150",
  "View_GridRow_comattr_translate_151", "View_GridRow_comattr_translate_152", "View_GridRow_comattr_translate_153", "View_GridRow_comattr_translate_154", "View_GridRow_comattr_translate_155",
  "View_GridRow_comattr_translate_156", "View_GridRow_comattr_translate_157", "View_GridRow_comattr_translate_158", "View_GridRow_comattr_translate_159", "View_GridRow_comattr_translate_160",
  "View_GridRow_comattr_translate_161", "View_GridRow_comattr_translate_162", "View_GridRow_comattr_translate_163", "View_GridRow_comattr_translate_164", "View_GridRow_comattr_translate_165",
  "View_GridRow_comattr_translate_166", "View_GridRow_comattr_translate_167", "View_GridRow_comattr_translate_168", "View_GridRow_comattr_translate_169", "View_GridRow_comattr_translate_170",
  "View_GridRow_comattr_translate_171", "View_GridRow_comattr_translate_172", "View_GridRow_comattr_translate_173", "View_GridRow_comattr_translate_174", "View_GridRow_comattr_translate_175",
  "View_GridRow_comattr_translate_176", "View_GridRow_comattr_translate_177", "View_GridRow_comattr_translate_178", "View_GridRow_comattr_translate_179", "View_GridRow_comattr_translate_180",
  "View_GridRow_comattr_translate_181", "View_GridRow_comattr_translate_182", "View_GridRow_comattr_translate_183", "View_GridRow_comattr_translate_184", "View_GridRow_comattr_translate_185",
  "View_GridRow_comattr_translate_186", "View_GridRow_comattr_translate_187", "View_GridRow_comattr_translate_188", "View_GridRow_comattr_translate_189", "View_GridRow_comattr_translate_190",
  "View_GridRow_comattr_translate_191", "View_GridRow_comattr_translate_192", "View_GridRow_comattr_translate_193", "View_GridRow_comattr_translate_194", "View_GridRow_comattr_translate_195",
  "View_GridRow_comattr_translate_196", "View_GridRow_comattr_translate_197", "View_GridRow_comattr_translate_198", "View_GridRow_comattr_translate_199", "View_GridRow_comattr_translate_200",
  "View_GridRow_comattr_translate_201", "View_GridRow_comattr_translate_202", "View_GridRow_comattr_translate_203", "View_GridRow_comattr_translate_204", "View_GridRow_comattr_translate_205",
  "View_GridRow_comattr_translate_206", "View_GridRow_comattr_translate_207", "View_GridRow_comattr_translate_208", "View_GridRow_comattr_translate_209", "View_GridRow_comattr_translate_210",
  "View_GridRow_comattr_translate_211", "View_GridRow_comattr_translate_212", "View_GridRow_comattr_translate_213", "View_GridRow_comattr_translate_214", "View_GridRow_comattr_translate_215",
  "View_GridRow_comattr_translate_216", "View_GridRow_comattr_translate_217", "View_GridRow_comattr_translate_218", "View_GridRow_comattr_translate_219", "View_GridRow_comattr_translate_220",
  "View_GridRow_comattr_translate_221", "View_GridRow_comattr_translate_222", "View_GridRow_comattr_translate_223", "View_GridRow_comattr_translate_224", "View_GridRow_comattr_translate_225",
  "View_GridRow_comattr_translate_226", "View_GridRow_comattr_translate_227", "View_GridRow_comattr_translate_228", "View_GridRow_comattr_translate_229", "View_GridRow_comattr_translate_230",
  "View_GridRow_comattr_translate_231", "View_GridRow_comattr_translate_232", "View_GridRow_comattr_translate_233", "View_GridRow_comattr_translate_234", "View_GridRow_comattr_translate_235",
  "View_GridRow_comattr_translate_236", "View_GridRow_comattr_translate_237", "View_GridRow_comattr_translate_238", "View_GridRow_comattr_translate_239", "View_GridRow_comattr_translate_240",
  "View_GridRow_comattr_translate_241", "View_GridRow_comattr_translate_242", "View_GridRow_comattr_translate_243", "View_GridRow_comattr_translate_244", "View_GridRow_comattr_translate_245",
  "View_GridRow_comattr_translate_246", "View_GridRow_comattr_translate_247", "View_GridRow_comattr_translate_248", "View_GridRow_comattr_translate_249", "View_GridRow_comattr_translate_250",
  "View_GridRow_comattr_translate_251", "View_GridRow_comattr_translate_252", "View_GridRow_comattr_translate_253", "View_GridRow_comattr_translate_254", "View_GridRow_comattr_translate_255",
  "View_GridRow_comattr_translate_256", "View_GridRow_comattr_translate_257", "View_GridRow_comattr_translate_258", "View_GridRow_comattr_translate_259", "View_GridRow_comattr_translate_260",
  "View_GridRow_comattr_translate_261", "View_GridRow_comattr_translate_262", "View_GridRow_comattr_translate_263", "View_GridRow_comattr_translate_264", "View_GridRow_comattr_translate_265",
  "View_GridRow_comattr_translate_266", "View_GridRow_comattr_translate_267", "View_GridRow_comattr_translate_268", "View_GridRow_comattr_translate_269", "View_GridRow_comattr_translate_270",
  "View_GridRow_comattr_translate_271", "View_GridRow_comattr_translate_272", "View_GridRow_comattr_translate_273", "View_GridRow_comattr_translate_274", "View_GridRow_comattr_translate_275",
  "View_GridRow_comattr_translate_276", "View_GridRow_comattr_translate_277", "View_GridRow_comattr_translate_278", "View_GridRow_comattr_translate_279", "View_GridRow_comattr_translate_280",
  "View_GridRow_comattr_translate_281", "View_GridRow_comattr_translate_282", "View_GridRow_comattr_translate_283", "View_GridRow_comattr_translate_284", "View_GridRow_comattr_translate_285",
  "View_GridRow_comattr_translate_286", "View_GridRow_comattr_translate_287", "View_GridRow_comattr_translate_288", "View_GridRow_comattr_translate_289", "View_GridRow_comattr_translate_290",
  "View_GridRow_comattr_translate_291", "View_GridRow_comattr_translate_292", "View_GridRow_comattr_translate_293", "View_GridRow_comattr_translate_294", "View_GridRow_comattr_translate_295",
  "View_GridRow_comattr_translate_296", "View_GridRow_comattr_translate_297", "View_GridRow_comattr_translate_298", "View_GridRow_comattr_translate_299", "View_GridRow_comattr_translate_300",
  "View_GridRow_comattr_translate_301", "View_GridRow_comattr_translate_302", "View_GridRow_comattr_translate_303", "View_GridRow_comattr_translate_304", "View_GridRow_comattr_translate_305",
  "View_GridRow_comattr_translate_306", "View_GridRow_comattr_translate_307", "View_GridRow_comattr_translate_308", "View_GridRow_comattr_translate_309", "View_GridRow_comattr_translate_310",
  "View_GridRow_comattr_translate_311", "View_GridRow_comattr_translate_312", "View_GridRow_comattr_translate_313", "View_GridRow_comattr_translate_314", "View_GridRow_comattr_translate_315",
  "View_GridRow_comattr_translate_316", "View_GridRow_comattr_translate_317", "View_GridRow_comattr_translate_318", "View_GridRow_comattr_translate_319", "View_GridRow_comattr_translate_320",
  "View_GridRow_comattr_translate_321", "View_GridRow_comattr_translate_322", "View_GridRow_comattr_translate_323", "View_GridRow_comattr_translate_324", "View_GridRow_comattr_translate_325",
  "View_GridRow_comattr_translate_326", "View_GridRow_comattr_translate_327", "View_GridRow_comattr_translate_328", "View_GridRow_comattr_translate_329", "View_GridRow_comattr_translate_330",
  "View_GridRow_comattr_translate_331", "View_GridRow_comattr_translate_332", "View_GridRow_comattr_translate_333", "View_GridRow_comattr_translate_334", "View_GridRow_comattr_translate_335",
  "View_GridRow_comattr_translate_336", "View_GridRow_comattr_translate_337", "View_GridRow_comattr_translate_338", "View_GridRow_comattr_translate_339", "View_GridRow_comattr_translate_340",
  "View_GridRow_comattr_translate_341", "View_GridRow_comattr_translate_342", "View_GridRow_comattr_translate_343", "View_GridRow_comattr_translate_344", "View_GridRow_comattr_translate_345",
  "View_GridRow_comattr_translate_346", "View_GridRow_comattr_translate_347", "View_GridRow_comattr_translate_348", "View_GridRow_comattr_translate_349", "View_GridRow_comattr_translate_350",
  "View_GridRow_comattr_translate_351", "View_GridRow_comattr_translate_352", "View_GridRow_comattr_translate_353", "View_GridRow_comattr_translate_354", "View_GridRow_comattr_translate_355",
  "View_GridRow_comattr_translate_356", "View_GridRow_comattr_translate_357", "View_GridRow_comattr_translate_358", "View_GridRow_comattr_translate_359", "View_GridRow_comattr_translate_360",
  "View_GridRow_comattr_translate_361", "View_GridRow_comattr_translate_362", "View_GridRow_comattr_translate_363", "View_GridRow_comattr_translate_364", "View_GridRow_comattr_translate_365",
  "View_GridRow_comattr_translate_366", "View_GridRow_comattr_translate_367", "View_GridRow_comattr_translate_368", "View_GridRow_comattr_translate_369", "View_GridRow_comattr_translate_370",
  "View_GridRow_comattr_translate_371", "View_GridRow_comattr_translate_372", "View_GridRow_comattr_translate_373", "View_GridRow_comattr_translate_374", "View_GridRow_comattr_translate_375",
  "View_GridRow_comattr_translate_376", "View_GridRow_comattr_translate_377", "View_GridRow_comattr_translate_378", "View_GridRow_comattr_translate_379", "View_GridRow_comattr_translate_380",
  "View_GridRow_comattr_translate_381", "View_GridRow_comattr_translate_382", "View_GridRow_comattr_translate_383", "View_GridRow_comattr_translate_384", "View_GridRow_comattr_translate_385",
  "View_GridRow_comattr_translate_386", "View_GridRow_comattr_translate_387", "View_GridRow_comattr_translate_388", "View_GridRow_comattr_translate_389", "View_GridRow_comattr_translate_390",
  "View_GridRow_comattr_translate_391", "View_GridRow_comattr_translate_392", "View_GridRow_comattr_translate_393", "View_GridRow_comattr_translate_394", "View_GridRow_comattr_translate_395",
  "View_GridRow_comattr_translate_396", "View_GridRow_comattr_translate_397", "View_GridRow_comattr_translate_398", "View_GridRow_comattr_translate_399", "View_GridRow_comattr_translate_400",
  "View_GridRow_comattr_translate_401", "View_GridRow_comattr_translate_402", "View_GridRow_comattr_translate_403", "View_GridRow_comattr_translate_404", "View_GridRow_comattr_translate_405",
  "View_GridRow_comattr_translate_406", "View_GridRow_comattr_translate_407", "View_GridRow_comattr_translate_408", "View_GridRow_comattr_translate_409", "View_GridRow_comattr_translate_410",
  "View_GridRow_comattr_translate_411" ],
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
