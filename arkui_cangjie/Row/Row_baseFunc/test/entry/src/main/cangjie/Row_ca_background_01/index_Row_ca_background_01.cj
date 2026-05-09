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

package ohos_app_cangjie_entry.Row_ca_background_01

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
class index_Row_ca_background_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Row_comattr_background_1", "View_Row_comattr_background_2", "View_Row_comattr_background_3", "View_Row_comattr_background_4", "View_Row_comattr_background_5",
  "View_Row_comattr_background_6", "View_Row_comattr_background_7", "View_Row_comattr_background_8", "View_Row_comattr_background_9", "View_Row_comattr_background_10",
  "View_Row_comattr_background_11", "View_Row_comattr_background_12", "View_Row_comattr_background_13", "View_Row_comattr_background_14", "View_Row_comattr_background_15",
  "View_Row_comattr_background_16", "View_Row_comattr_background_17", "View_Row_comattr_background_18", "View_Row_comattr_background_19", "View_Row_comattr_background_20",
  "View_Row_comattr_background_21", "View_Row_comattr_background_22", "View_Row_comattr_background_23", "View_Row_comattr_background_24", "View_Row_comattr_background_25",
  "View_Row_comattr_background_26", "View_Row_comattr_background_27", "View_Row_comattr_background_28", "View_Row_comattr_background_29", "View_Row_comattr_background_30",
  "View_Row_comattr_background_31", "View_Row_comattr_background_32", "View_Row_comattr_background_33", "View_Row_comattr_background_34", "View_Row_comattr_background_35",
  "View_Row_comattr_background_36", "View_Row_comattr_background_37", "View_Row_comattr_background_38", "View_Row_comattr_background_39", "View_Row_comattr_background_40",
  "View_Row_comattr_background_41", "View_Row_comattr_background_42", "View_Row_comattr_background_43", "View_Row_comattr_background_44", "View_Row_comattr_background_45",
  "View_Row_comattr_background_46", "View_Row_comattr_background_47", "View_Row_comattr_background_48", "View_Row_comattr_background_49", "View_Row_comattr_background_50",
  "View_Row_comattr_background_51", "View_Row_comattr_background_52", "View_Row_comattr_background_53", "View_Row_comattr_background_54", "View_Row_comattr_background_55",
  "View_Row_comattr_background_56", "View_Row_comattr_background_57", "View_Row_comattr_background_58", "View_Row_comattr_background_59", "View_Row_comattr_background_60",
  "View_Row_comattr_background_61", "View_Row_comattr_background_62", "View_Row_comattr_background_63", "View_Row_comattr_background_64", "View_Row_comattr_background_65",
  "View_Row_comattr_background_66", "View_Row_comattr_background_67", "View_Row_comattr_background_68", "View_Row_comattr_background_69", "View_Row_comattr_background_70",
  "View_Row_comattr_background_71", "View_Row_comattr_background_72", "View_Row_comattr_background_73", "View_Row_comattr_background_74", "View_Row_comattr_background_75",
  "View_Row_comattr_background_76", "View_Row_comattr_background_77", "View_Row_comattr_background_78", "View_Row_comattr_background_79", "View_Row_comattr_background_80",
  "View_Row_comattr_background_81", "View_Row_comattr_background_82", "View_Row_comattr_background_83", "View_Row_comattr_background_84", "View_Row_comattr_background_85",
  "View_Row_comattr_background_86", "View_Row_comattr_background_87", "View_Row_comattr_background_88", "View_Row_comattr_background_89", "View_Row_comattr_background_90",
  "View_Row_comattr_background_91", "View_Row_comattr_background_92", "View_Row_comattr_background_93", "View_Row_comattr_background_94", "View_Row_comattr_background_95",
  "View_Row_comattr_background_96", "View_Row_comattr_background_97", "View_Row_comattr_background_98", "View_Row_comattr_background_99", "View_Row_comattr_background_100",
  "View_Row_comattr_background_101", "View_Row_comattr_background_102", "View_Row_comattr_background_103", "View_Row_comattr_background_104", "View_Row_comattr_background_105",
  "View_Row_comattr_background_106", "View_Row_comattr_background_107", "View_Row_comattr_background_108", "View_Row_comattr_background_109", "View_Row_comattr_background_110",
  "View_Row_comattr_background_111", "View_Row_comattr_background_112", "View_Row_comattr_background_113", "View_Row_comattr_background_114", "View_Row_comattr_background_115",
  "View_Row_comattr_background_116", "View_Row_comattr_background_117", "View_Row_comattr_background_118", "View_Row_comattr_background_119", "View_Row_comattr_background_120",
  "View_Row_comattr_background_121", "View_Row_comattr_background_122", "View_Row_comattr_background_123", "View_Row_comattr_background_124", "View_Row_comattr_background_125",
  "View_Row_comattr_background_126", "View_Row_comattr_background_127", "View_Row_comattr_background_128", "View_Row_comattr_background_129", "View_Row_comattr_background_130",
  "View_Row_comattr_background_131", "View_Row_comattr_background_132", "View_Row_comattr_background_133", "View_Row_comattr_background_134", "View_Row_comattr_background_135",
  "View_Row_comattr_background_136", "View_Row_comattr_background_137", "View_Row_comattr_background_138", "View_Row_comattr_background_139", "View_Row_comattr_background_140",
  "View_Row_comattr_background_141", "View_Row_comattr_background_142", "View_Row_comattr_background_143", "View_Row_comattr_background_144", "View_Row_comattr_background_145",
  "View_Row_comattr_background_146", "View_Row_comattr_background_147", "View_Row_comattr_background_148", "View_Row_comattr_background_149", "View_Row_comattr_background_150",
  "View_Row_comattr_background_151", "View_Row_comattr_background_152", "View_Row_comattr_background_153", "View_Row_comattr_background_154", "View_Row_comattr_background_155",
  "View_Row_comattr_background_156", "View_Row_comattr_background_157", "View_Row_comattr_background_158", "View_Row_comattr_background_159", "View_Row_comattr_background_160",
  "View_Row_comattr_background_161", "View_Row_comattr_background_162", "View_Row_comattr_background_163", "View_Row_comattr_background_164", "View_Row_comattr_background_165",
  "View_Row_comattr_background_166", "View_Row_comattr_background_167", "View_Row_comattr_background_168", "View_Row_comattr_background_169", "View_Row_comattr_background_170",
  "View_Row_comattr_background_171", "View_Row_comattr_background_172", "View_Row_comattr_background_173", "View_Row_comattr_background_174", "View_Row_comattr_background_175",
  "View_Row_comattr_background_176", "View_Row_comattr_background_177", "View_Row_comattr_background_178", "View_Row_comattr_background_179", "View_Row_comattr_background_180",
  "View_Row_comattr_background_181", "View_Row_comattr_background_182", "View_Row_comattr_background_183", "View_Row_comattr_background_184", "View_Row_comattr_background_185",
  "View_Row_comattr_background_186", "View_Row_comattr_background_187", "View_Row_comattr_background_188", "View_Row_comattr_background_189", "View_Row_comattr_background_190",
  "View_Row_comattr_background_191", "View_Row_comattr_background_192", "View_Row_comattr_background_193", "View_Row_comattr_background_194", "View_Row_comattr_background_195",
  "View_Row_comattr_background_196", "View_Row_comattr_background_197", "View_Row_comattr_background_198", "View_Row_comattr_background_199", "View_Row_comattr_background_200",
  "View_Row_comattr_background_201", "View_Row_comattr_background_202", "View_Row_comattr_background_203", "View_Row_comattr_background_204", "View_Row_comattr_background_205",
  "View_Row_comattr_background_206", "View_Row_comattr_background_207", "View_Row_comattr_background_208", "View_Row_comattr_background_209", "View_Row_comattr_background_210",
  "View_Row_comattr_background_211", "View_Row_comattr_background_212", "View_Row_comattr_background_213", "View_Row_comattr_background_214", "View_Row_comattr_background_215",
  "View_Row_comattr_background_216", "View_Row_comattr_background_217", "View_Row_comattr_background_218", "View_Row_comattr_background_219", "View_Row_comattr_background_220",
  "View_Row_comattr_background_221", "View_Row_comattr_background_222", "View_Row_comattr_background_223", "View_Row_comattr_background_224", "View_Row_comattr_background_225",
  "View_Row_comattr_background_226", "View_Row_comattr_background_227", "View_Row_comattr_background_228", "View_Row_comattr_background_229", "View_Row_comattr_background_230",
  "View_Row_comattr_background_231", "View_Row_comattr_background_232", "View_Row_comattr_background_233", "View_Row_comattr_background_234", "View_Row_comattr_background_235",
  "View_Row_comattr_background_236", "View_Row_comattr_background_237", "View_Row_comattr_background_238", "View_Row_comattr_background_239", "View_Row_comattr_background_240",
  "View_Row_comattr_background_241", "View_Row_comattr_background_242", "View_Row_comattr_background_243", "View_Row_comattr_background_244", "View_Row_comattr_background_245",
  "View_Row_comattr_background_246", "View_Row_comattr_background_247", "View_Row_comattr_background_248", "View_Row_comattr_background_249", "View_Row_comattr_background_250",
  "View_Row_comattr_background_251", "View_Row_comattr_background_252", "View_Row_comattr_background_253", "View_Row_comattr_background_254", "View_Row_comattr_background_255",
  "View_Row_comattr_background_256", "View_Row_comattr_background_257", "View_Row_comattr_background_258", "View_Row_comattr_background_259", "View_Row_comattr_background_260",
  "View_Row_comattr_background_261", "View_Row_comattr_background_262", "View_Row_comattr_background_263", "View_Row_comattr_background_264", "View_Row_comattr_background_265",
  "View_Row_comattr_background_266", "View_Row_comattr_background_267", "View_Row_comattr_background_268", "View_Row_comattr_background_269", "View_Row_comattr_background_270",
  "View_Row_comattr_background_271", "View_Row_comattr_background_272", "View_Row_comattr_background_273", "View_Row_comattr_background_274", "View_Row_comattr_background_275",
  "View_Row_comattr_background_276", "View_Row_comattr_background_277", "View_Row_comattr_background_278", "View_Row_comattr_background_279", "View_Row_comattr_background_280",
  "View_Row_comattr_background_281", "View_Row_comattr_background_282", "View_Row_comattr_background_283", "View_Row_comattr_background_284", "View_Row_comattr_background_285",
  "View_Row_comattr_background_286", "View_Row_comattr_background_287", "View_Row_comattr_background_288", "View_Row_comattr_background_289", "View_Row_comattr_background_290",
  "View_Row_comattr_background_291", "View_Row_comattr_background_292", "View_Row_comattr_background_293", "View_Row_comattr_background_294", "View_Row_comattr_background_295",
  "View_Row_comattr_background_296", "View_Row_comattr_background_297", "View_Row_comattr_background_298", "View_Row_comattr_background_299", "View_Row_comattr_background_300",
  "View_Row_comattr_background_301", "View_Row_comattr_background_302", "View_Row_comattr_background_303", "View_Row_comattr_background_304", "View_Row_comattr_background_305",
  "View_Row_comattr_background_306", "View_Row_comattr_background_307", "View_Row_comattr_background_308", "View_Row_comattr_background_309", "View_Row_comattr_background_310",
  "View_Row_comattr_background_311", "View_Row_comattr_background_312", "View_Row_comattr_background_313", "View_Row_comattr_background_314", "View_Row_comattr_background_315",
  "View_Row_comattr_background_316", "View_Row_comattr_background_317", "View_Row_comattr_background_318", "View_Row_comattr_background_319", "View_Row_comattr_background_320",
  "View_Row_comattr_background_321", "View_Row_comattr_background_322", "View_Row_comattr_background_323", "View_Row_comattr_background_324", "View_Row_comattr_background_325",
  "View_Row_comattr_background_326", "View_Row_comattr_background_327", "View_Row_comattr_background_328", "View_Row_comattr_background_329", "View_Row_comattr_background_330",
  "View_Row_comattr_background_331", "View_Row_comattr_background_332", "View_Row_comattr_background_333", "View_Row_comattr_background_334", "View_Row_comattr_background_335",
  "View_Row_comattr_background_336", "View_Row_comattr_background_337", "View_Row_comattr_background_338", "View_Row_comattr_background_339", "View_Row_comattr_background_340",
  "View_Row_comattr_background_341", "View_Row_comattr_background_342", "View_Row_comattr_background_343", "View_Row_comattr_background_344", "View_Row_comattr_background_345",
  "View_Row_comattr_background_346", "View_Row_comattr_background_347", "View_Row_comattr_background_348", "View_Row_comattr_background_349", "View_Row_comattr_background_350",
  "View_Row_comattr_background_351", "View_Row_comattr_background_352", "View_Row_comattr_background_353", "View_Row_comattr_background_354", "View_Row_comattr_background_355",
  "View_Row_comattr_background_356", "View_Row_comattr_background_357", "View_Row_comattr_background_358", "View_Row_comattr_background_359", "View_Row_comattr_background_360",
  "View_Row_comattr_background_361", "View_Row_comattr_background_362", "View_Row_comattr_background_363", "View_Row_comattr_background_364", "View_Row_comattr_background_365",
  "View_Row_comattr_background_366", "View_Row_comattr_background_367", "View_Row_comattr_background_368", "View_Row_comattr_background_369", "View_Row_comattr_background_370",
  "View_Row_comattr_background_371", "View_Row_comattr_background_372", "View_Row_comattr_background_373", "View_Row_comattr_background_374", "View_Row_comattr_background_375",
  "View_Row_comattr_background_376", "View_Row_comattr_background_377", "View_Row_comattr_background_378", "View_Row_comattr_background_379", "View_Row_comattr_background_380",
  "View_Row_comattr_background_381", "View_Row_comattr_background_382", "View_Row_comattr_background_383", "View_Row_comattr_background_384", "View_Row_comattr_background_385",
  "View_Row_comattr_background_386", "View_Row_comattr_background_387", "View_Row_comattr_background_388", "View_Row_comattr_background_389", "View_Row_comattr_background_390",
  "View_Row_comattr_background_391", "View_Row_comattr_background_392", "View_Row_comattr_background_393", "View_Row_comattr_background_394", "View_Row_comattr_background_395",
  "View_Row_comattr_background_396", "View_Row_comattr_background_397", "View_Row_comattr_background_398", "View_Row_comattr_background_399", "View_Row_comattr_background_400",
  "View_Row_comattr_background_401", "View_Row_comattr_background_402", "View_Row_comattr_background_403", "View_Row_comattr_background_404", "View_Row_comattr_background_405",
  "View_Row_comattr_background_406", "View_Row_comattr_background_407", "View_Row_comattr_background_408", "View_Row_comattr_background_409", "View_Row_comattr_background_410",
  "View_Row_comattr_background_411", "View_Row_comattr_background_412", "View_Row_comattr_background_413", "View_Row_comattr_background_414", "View_Row_comattr_background_415",
  "View_Row_comattr_background_416", "View_Row_comattr_background_417", "View_Row_comattr_background_418", "View_Row_comattr_background_419", "View_Row_comattr_background_420",
  "View_Row_comattr_background_421", "View_Row_comattr_background_422", "View_Row_comattr_background_423", "View_Row_comattr_background_424", "View_Row_comattr_background_425",
  "View_Row_comattr_background_426", "View_Row_comattr_background_427", "View_Row_comattr_background_428", "View_Row_comattr_background_429", "View_Row_comattr_background_430",
  "View_Row_comattr_background_431", "View_Row_comattr_background_432", "View_Row_comattr_background_433", "View_Row_comattr_background_434", "View_Row_comattr_background_435",
  "View_Row_comattr_background_436", "View_Row_comattr_background_437", "View_Row_comattr_background_438", "View_Row_comattr_background_439", "View_Row_comattr_background_440",
  "View_Row_comattr_background_441", "View_Row_comattr_background_442", "View_Row_comattr_background_443", "View_Row_comattr_background_444", "View_Row_comattr_background_445",
  "View_Row_comattr_background_446", "View_Row_comattr_background_447", "View_Row_comattr_background_448", "View_Row_comattr_background_449", "View_Row_comattr_background_450",
  "View_Row_comattr_background_451", "View_Row_comattr_background_452", "View_Row_comattr_background_453", "View_Row_comattr_background_454", "View_Row_comattr_background_455",
  "View_Row_comattr_background_456", "View_Row_comattr_background_457", "View_Row_comattr_background_458", "View_Row_comattr_background_459", "View_Row_comattr_background_460",
  "View_Row_comattr_background_461", "View_Row_comattr_background_462", "View_Row_comattr_background_463", "View_Row_comattr_background_464", "View_Row_comattr_background_465",
  "View_Row_comattr_background_466", "View_Row_comattr_background_467", "View_Row_comattr_background_468", "View_Row_comattr_background_469", "View_Row_comattr_background_470",
  "View_Row_comattr_background_471", "View_Row_comattr_background_472", "View_Row_comattr_background_473", "View_Row_comattr_background_474", "View_Row_comattr_background_475",
  "View_Row_comattr_background_476", "View_Row_comattr_background_477", "View_Row_comattr_background_478", "View_Row_comattr_background_479", "View_Row_comattr_background_480",
  "View_Row_comattr_background_481", "View_Row_comattr_background_482", "View_Row_comattr_background_483", "View_Row_comattr_background_484", "View_Row_comattr_background_485",
  "View_Row_comattr_background_486", "View_Row_comattr_background_487", "View_Row_comattr_background_488", "View_Row_comattr_background_489", "View_Row_comattr_background_490",
  "View_Row_comattr_background_491", "View_Row_comattr_background_492", "View_Row_comattr_background_493", "View_Row_comattr_background_494", "View_Row_comattr_background_495",
  "View_Row_comattr_background_496", "View_Row_comattr_background_497", "View_Row_comattr_background_498", "View_Row_comattr_background_499", "View_Row_comattr_background_500",
  "View_Row_comattr_background_501", "View_Row_comattr_background_502", "View_Row_comattr_background_503", "View_Row_comattr_background_504" ],
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
