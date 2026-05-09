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

package ohos_app_cangjie_entry.Button_init4_04

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
class index_Button_init4_04 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Button_init4_1", "View_Button_init4_2", "View_Button_init4_3", "View_Button_init4_4", "View_Button_init4_5",
  "View_Button_init4_6", "View_Button_init4_7", "View_Button_init4_8", "View_Button_init4_9", "View_Button_init4_10",
  "View_Button_init4_11", "View_Button_init4_12", "View_Button_init4_13", "View_Button_init4_14", "View_Button_init4_15",
  "View_Button_init4_16", "View_Button_init4_17", "View_Button_init4_18", "View_Button_init4_19", "View_Button_init4_20",
  "View_Button_init4_21", "View_Button_init4_22", "View_Button_init4_23", "View_Button_init4_24", "View_Button_init4_25",
  "View_Button_init4_26", "View_Button_init4_27", "View_Button_init4_28", "View_Button_init4_29", "View_Button_init4_30",
  "View_Button_init4_31", "View_Button_init4_32", "View_Button_init4_33", "View_Button_init4_34", "View_Button_init4_35",
  "View_Button_init4_36", "View_Button_init4_37", "View_Button_init4_38", "View_Button_init4_39", "View_Button_init4_40",
  "View_Button_init4_41", "View_Button_init4_42", "View_Button_init4_43", "View_Button_init4_44", "View_Button_init4_45",
  "View_Button_init4_46", "View_Button_init4_47", "View_Button_init4_48", "View_Button_init4_49", "View_Button_init4_50",
  "View_Button_init4_51", "View_Button_init4_52", "View_Button_init4_53", "View_Button_init4_54", "View_Button_init4_55",
  "View_Button_init4_56", "View_Button_init4_57", "View_Button_init4_58", "View_Button_init4_59", "View_Button_init4_60",
  "View_Button_init4_61", "View_Button_init4_62", "View_Button_init4_63", "View_Button_init4_64", "View_Button_init4_65",
  "View_Button_init4_66", "View_Button_init4_67", "View_Button_init4_68", "View_Button_init4_69", "View_Button_init4_70",
  "View_Button_init4_71", "View_Button_init4_72", "View_Button_init4_73", "View_Button_init4_74", "View_Button_init4_75",
  "View_Button_init4_76", "View_Button_init4_77", "View_Button_init4_78", "View_Button_init4_79", "View_Button_init4_80",
  "View_Button_init4_81", "View_Button_init4_82", "View_Button_init4_83", "View_Button_init4_84", "View_Button_init4_85",
  "View_Button_init4_86", "View_Button_init4_87", "View_Button_init4_88", "View_Button_init4_89", "View_Button_init4_90",
  "View_Button_init4_91", "View_Button_init4_92", "View_Button_init4_93", "View_Button_init4_94", "View_Button_init4_95",
  "View_Button_init4_96", "View_Button_init4_97", "View_Button_init4_98", "View_Button_init4_99", "View_Button_init4_100",
  "View_Button_init4_101", "View_Button_init4_102", "View_Button_init4_103", "View_Button_init4_104", "View_Button_init4_105",
  "View_Button_init4_106", "View_Button_init4_107", "View_Button_init4_108", "View_Button_init4_109", "View_Button_init4_110",
  "View_Button_init4_111", "View_Button_init4_112", "View_Button_init4_113", "View_Button_init4_114", "View_Button_init4_115",
  "View_Button_init4_116", "View_Button_init4_117", "View_Button_init4_118", "View_Button_init4_119", "View_Button_init4_120",
  "View_Button_init4_121", "View_Button_init4_122", "View_Button_init4_123", "View_Button_init4_124", "View_Button_init4_125",
  "View_Button_init4_126", "View_Button_init4_127", "View_Button_init4_128", "View_Button_init4_129", "View_Button_init4_130",
  "View_Button_init4_131", "View_Button_init4_132", "View_Button_init4_133", "View_Button_init4_134", "View_Button_init4_135",
  "View_Button_init4_136", "View_Button_init4_137", "View_Button_init4_138", "View_Button_init4_139", "View_Button_init4_140",
  "View_Button_init4_141", "View_Button_init4_142", "View_Button_init4_143", "View_Button_init4_144", "View_Button_init4_145",
  "View_Button_init4_146", "View_Button_init4_147", "View_Button_init4_148", "View_Button_init4_149", "View_Button_init4_150",
  "View_Button_init4_151", "View_Button_init4_152", "View_Button_init4_153", "View_Button_init4_154", "View_Button_init4_155",
  "View_Button_init4_156", "View_Button_init4_157", "View_Button_init4_158", "View_Button_init4_159", "View_Button_init4_160",
  "View_Button_init4_161", "View_Button_init4_162", "View_Button_init4_163", "View_Button_init4_164", "View_Button_init4_165",
  "View_Button_init4_166", "View_Button_init4_167", "View_Button_init4_168", "View_Button_init4_169", "View_Button_init4_170",
  "View_Button_init4_171", "View_Button_init4_172", "View_Button_init4_173", "View_Button_init4_174", "View_Button_init4_175",
  "View_Button_init4_176", "View_Button_init4_177", "View_Button_init4_178", "View_Button_init4_179", "View_Button_init4_180",
  "View_Button_init4_181", "View_Button_init4_182", "View_Button_init4_183", "View_Button_init4_184", "View_Button_init4_185",
  "View_Button_init4_186", "View_Button_init4_187", "View_Button_init4_188", "View_Button_init4_189", "View_Button_init4_190",
  "View_Button_init4_191", "View_Button_init4_192", "View_Button_init4_193", "View_Button_init4_194", "View_Button_init4_195",
  "View_Button_init4_196", "View_Button_init4_197", "View_Button_init4_198", "View_Button_init4_199", "View_Button_init4_200",
  "View_Button_init4_201", "View_Button_init4_202", "View_Button_init4_203", "View_Button_init4_204", "View_Button_init4_205",
  "View_Button_init4_206", "View_Button_init4_207", "View_Button_init4_208", "View_Button_init4_209", "View_Button_init4_210",
  "View_Button_init4_211", "View_Button_init4_212", "View_Button_init4_213", "View_Button_init4_214", "View_Button_init4_215",
  "View_Button_init4_216", "View_Button_init4_217", "View_Button_init4_218", "View_Button_init4_219", "View_Button_init4_220",
  "View_Button_init4_221", "View_Button_init4_222", "View_Button_init4_223", "View_Button_init4_224", "View_Button_init4_225",
  "View_Button_init4_226", "View_Button_init4_227", "View_Button_init4_228", "View_Button_init4_229", "View_Button_init4_230",
  "View_Button_init4_231", "View_Button_init4_232", "View_Button_init4_233", "View_Button_init4_234", "View_Button_init4_235",
  "View_Button_init4_236", "View_Button_init4_237", "View_Button_init4_238", "View_Button_init4_239", "View_Button_init4_240",
  "View_Button_init4_241", "View_Button_init4_242", "View_Button_init4_243", "View_Button_init4_244", "View_Button_init4_245",
  "View_Button_init4_246", "View_Button_init4_247", "View_Button_init4_248", "View_Button_init4_249", "View_Button_init4_250",
  "View_Button_init4_251", "View_Button_init4_252", "View_Button_init4_253", "View_Button_init4_254", "View_Button_init4_255",
  "View_Button_init4_256", "View_Button_init4_257", "View_Button_init4_258", "View_Button_init4_259", "View_Button_init4_260",
  "View_Button_init4_261", "View_Button_init4_262", "View_Button_init4_263", "View_Button_init4_264", "View_Button_init4_265",
  "View_Button_init4_266", "View_Button_init4_267", "View_Button_init4_268", "View_Button_init4_269", "View_Button_init4_270",
  "View_Button_init4_271", "View_Button_init4_272", "View_Button_init4_273", "View_Button_init4_274", "View_Button_init4_275",
  "View_Button_init4_276", "View_Button_init4_277", "View_Button_init4_278", "View_Button_init4_279", "View_Button_init4_280",
  "View_Button_init4_281", "View_Button_init4_282", "View_Button_init4_283", "View_Button_init4_284", "View_Button_init4_285",
  "View_Button_init4_286", "View_Button_init4_287", "View_Button_init4_288", "View_Button_init4_289", "View_Button_init4_290",
  "View_Button_init4_291", "View_Button_init4_292", "View_Button_init4_293", "View_Button_init4_294", "View_Button_init4_295",
  "View_Button_init4_296", "View_Button_init4_297", "View_Button_init4_298", "View_Button_init4_299", "View_Button_init4_300",
  "View_Button_init4_301", "View_Button_init4_302", "View_Button_init4_303", "View_Button_init4_304", "View_Button_init4_305",
  "View_Button_init4_306", "View_Button_init4_307", "View_Button_init4_308", "View_Button_init4_309", "View_Button_init4_310",
  "View_Button_init4_311", "View_Button_init4_312", "View_Button_init4_313", "View_Button_init4_314", "View_Button_init4_315",
  "View_Button_init4_316", "View_Button_init4_317", "View_Button_init4_318", "View_Button_init4_319", "View_Button_init4_320",
  "View_Button_init4_321", "View_Button_init4_322", "View_Button_init4_323", "View_Button_init4_324", "View_Button_init4_325",
  "View_Button_init4_326", "View_Button_init4_327", "View_Button_init4_328", "View_Button_init4_329", "View_Button_init4_330",
  "View_Button_init4_331", "View_Button_init4_332", "View_Button_init4_333", "View_Button_init4_334", "View_Button_init4_335",
  "View_Button_init4_336", "View_Button_init4_337", "View_Button_init4_338", "View_Button_init4_339", "View_Button_init4_340",
  "View_Button_init4_341", "View_Button_init4_342", "View_Button_init4_343", "View_Button_init4_344", "View_Button_init4_345",
  "View_Button_init4_346", "View_Button_init4_347", "View_Button_init4_348", "View_Button_init4_349", "View_Button_init4_350",
  "View_Button_init4_351", "View_Button_init4_352", "View_Button_init4_353", "View_Button_init4_354", "View_Button_init4_355",
  "View_Button_init4_356", "View_Button_init4_357", "View_Button_init4_358", "View_Button_init4_359", "View_Button_init4_360",
  "View_Button_init4_361", "View_Button_init4_362", "View_Button_init4_363", "View_Button_init4_364", "View_Button_init4_365",
  "View_Button_init4_366", "View_Button_init4_367", "View_Button_init4_368", "View_Button_init4_369", "View_Button_init4_370",
  "View_Button_init4_371", "View_Button_init4_372", "View_Button_init4_373", "View_Button_init4_374", "View_Button_init4_375",
  "View_Button_init4_376", "View_Button_init4_377", "View_Button_init4_378", "View_Button_init4_379", "View_Button_init4_380",
  "View_Button_init4_381", "View_Button_init4_382", "View_Button_init4_383", "View_Button_init4_384", "View_Button_init4_385",
  "View_Button_init4_386", "View_Button_init4_387", "View_Button_init4_388", "View_Button_init4_389", "View_Button_init4_390",
  "View_Button_init4_391", "View_Button_init4_392", "View_Button_init4_393", "View_Button_init4_394", "View_Button_init4_395",
  "View_Button_init4_396", "View_Button_init4_397", "View_Button_init4_398", "View_Button_init4_399", "View_Button_init4_400",
  "View_Button_init4_401", "View_Button_init4_402", "View_Button_init4_403", "View_Button_init4_404", "View_Button_init4_405",
  "View_Button_init4_406", "View_Button_init4_407", "View_Button_init4_408", "View_Button_init4_409", "View_Button_init4_410",
  "View_Button_init4_411", "View_Button_init4_412", "View_Button_init4_413", "View_Button_init4_414", "View_Button_init4_415",
  "View_Button_init4_416", "View_Button_init4_417", "View_Button_init4_418", "View_Button_init4_419", "View_Button_init4_420",
  "View_Button_init4_421", "View_Button_init4_422", "View_Button_init4_423", "View_Button_init4_424", "View_Button_init4_425",
  "View_Button_init4_426", "View_Button_init4_427", "View_Button_init4_428", "View_Button_init4_429", "View_Button_init4_430",
  "View_Button_init4_431", "View_Button_init4_432", "View_Button_init4_433", "View_Button_init4_434", "View_Button_init4_435",
  "View_Button_init4_436", "View_Button_init4_437", "View_Button_init4_438", "View_Button_init4_439", "View_Button_init4_440",
  "View_Button_init4_441", "View_Button_init4_442", "View_Button_init4_443", "View_Button_init4_444", "View_Button_init4_445",
  "View_Button_init4_446", "View_Button_init4_447", "View_Button_init4_448", "View_Button_init4_449", "View_Button_init4_450",
  "View_Button_init4_451", "View_Button_init4_452", "View_Button_init4_453", "View_Button_init4_454", "View_Button_init4_455",
  "View_Button_init4_456", "View_Button_init4_457", "View_Button_init4_458", "View_Button_init4_459", "View_Button_init4_460",
  "View_Button_init4_461", "View_Button_init4_462", "View_Button_init4_463", "View_Button_init4_464", "View_Button_init4_465",
  "View_Button_init4_466", "View_Button_init4_467", "View_Button_init4_468", "View_Button_init4_469", "View_Button_init4_470",
  "View_Button_init4_471", "View_Button_init4_472", "View_Button_init4_473", "View_Button_init4_474", "View_Button_init4_475",
  "View_Button_init4_476", "View_Button_init4_477", "View_Button_init4_478", "View_Button_init4_479", "View_Button_init4_480",
  "View_Button_init4_481", "View_Button_init4_482", "View_Button_init4_483", "View_Button_init4_484", "View_Button_init4_485",
  "View_Button_init4_486", "View_Button_init4_487", "View_Button_init4_488", "View_Button_init4_489", "View_Button_init4_490",
  "View_Button_init4_491", "View_Button_init4_492", "View_Button_init4_493", "View_Button_init4_494", "View_Button_init4_495",
  "View_Button_init4_496", "View_Button_init4_497", "View_Button_init4_498", "View_Button_init4_499", "View_Button_init4_500",
  "View_Button_init4_501", "View_Button_init4_502", "View_Button_init4_503", "View_Button_init4_504", "View_Button_init4_505",
  "View_Button_init4_506", "View_Button_init4_507", "View_Button_init4_508", "View_Button_init4_509", "View_Button_init4_510",
  "View_Button_init4_511", "View_Button_init4_512", "View_Button_init4_513", "View_Button_init4_514", "View_Button_init4_515",
  "View_Button_init4_516", "View_Button_init4_517", "View_Button_init4_518", "View_Button_init4_519", "View_Button_init4_520",
  "View_Button_init4_521", "View_Button_init4_522", "View_Button_init4_523", "View_Button_init4_524", "View_Button_init4_525",
  "View_Button_init4_526", "View_Button_init4_527", "View_Button_init4_528", "View_Button_init4_529", "View_Button_init4_530",
  "View_Button_init4_531", "View_Button_init4_532", "View_Button_init4_533", "View_Button_init4_534", "View_Button_init4_535",
  "View_Button_init4_536", "View_Button_init4_537", "View_Button_init4_538", "View_Button_init4_539", "View_Button_init4_540",
  "View_Button_init4_541", "View_Button_init4_542", "View_Button_init4_543", "View_Button_init4_544", "View_Button_init4_545",
  "View_Button_init4_546", "View_Button_init4_547", "View_Button_init4_548", "View_Button_init4_549", "View_Button_init4_550",
  "View_Button_init4_551", "View_Button_init4_552", "View_Button_init4_553", "View_Button_init4_554", "View_Button_init4_555",
  "View_Button_init4_556", "View_Button_init4_557", "View_Button_init4_558", "View_Button_init4_559", "View_Button_init4_560",
  "View_Button_init4_561", "View_Button_init4_562", "View_Button_init4_563", "View_Button_init4_564", "View_Button_init4_565",
  "View_Button_init4_566", "View_Button_init4_567", "View_Button_init4_568", "View_Button_init4_569", "View_Button_init4_570",
  "View_Button_init4_571", "View_Button_init4_572", "View_Button_init4_573", "View_Button_init4_574", "View_Button_init4_575",
  "View_Button_init4_576", "View_Button_init4_577", "View_Button_init4_578", "View_Button_init4_579", "View_Button_init4_580",
  "View_Button_init4_581", "View_Button_init4_582", "View_Button_init4_583", "View_Button_init4_584", "View_Button_init4_585",
  "View_Button_init4_586", "View_Button_init4_587", "View_Button_init4_588", "View_Button_init4_589", "View_Button_init4_590",
  "View_Button_init4_591", "View_Button_init4_592", "View_Button_init4_593", "View_Button_init4_594", "View_Button_init4_595",
  "View_Button_init4_596", "View_Button_init4_597", "View_Button_init4_598", "View_Button_init4_599", "View_Button_init4_600",
  "View_Button_init4_601", "View_Button_init4_602", "View_Button_init4_603", "View_Button_init4_604", "View_Button_init4_605",
  "View_Button_init4_606", "View_Button_init4_607", "View_Button_init4_608", "View_Button_init4_609", "View_Button_init4_610",
  "View_Button_init4_611", "View_Button_init4_612", "View_Button_init4_613", "View_Button_init4_614", "View_Button_init4_615",
  "View_Button_init4_616", "View_Button_init4_617", "View_Button_init4_618", "View_Button_init4_619", "View_Button_init4_620",
  "View_Button_init4_621", "View_Button_init4_622", "View_Button_init4_623", "View_Button_init4_624", "View_Button_init4_625",
  "View_Button_init4_626", "View_Button_init4_627", "View_Button_init4_628", "View_Button_init4_629", "View_Button_init4_630",
  "View_Button_init4_631", "View_Button_init4_632", "View_Button_init4_633", "View_Button_init4_634", "View_Button_init4_635",
  "View_Button_init4_636", "View_Button_init4_637", "View_Button_init4_638", "View_Button_init4_639", "View_Button_init4_640",
  "View_Button_init4_641", "View_Button_init4_642", "View_Button_init4_643", "View_Button_init4_644", "View_Button_init4_645",
  "View_Button_init4_646", "View_Button_init4_647", "View_Button_init4_648", "View_Button_init4_649", "View_Button_init4_650",
  "View_Button_init4_651", "View_Button_init4_652", "View_Button_init4_653", "View_Button_init4_654", "View_Button_init4_655",
  "View_Button_init4_656", "View_Button_init4_657", "View_Button_init4_658", "View_Button_init4_659", "View_Button_init4_660",
  "View_Button_init4_661", "View_Button_init4_662", "View_Button_init4_663", "View_Button_init4_664", "View_Button_init4_665",
  "View_Button_init4_666", "View_Button_init4_667", "View_Button_init4_668", "View_Button_init4_669", "View_Button_init4_670",
  "View_Button_init4_671", "View_Button_init4_672" ],
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
