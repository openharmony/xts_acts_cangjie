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

package ohos_app_cangjie_entry.RowSpl_ca_constraintsize_01

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
class index_RowSpl_ca_constraintsize_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RowSplit_comattr_constraintsize_1", "View_RowSplit_comattr_constraintsize_2", "View_RowSplit_comattr_constraintsize_3", "View_RowSplit_comattr_constraintsize_4", "View_RowSplit_comattr_constraintsize_5",
  "View_RowSplit_comattr_constraintsize_6", "View_RowSplit_comattr_constraintsize_7", "View_RowSplit_comattr_constraintsize_8", "View_RowSplit_comattr_constraintsize_9", "View_RowSplit_comattr_constraintsize_10",
  "View_RowSplit_comattr_constraintsize_11", "View_RowSplit_comattr_constraintsize_12", "View_RowSplit_comattr_constraintsize_13", "View_RowSplit_comattr_constraintsize_14", "View_RowSplit_comattr_constraintsize_15",
  "View_RowSplit_comattr_constraintsize_16", "View_RowSplit_comattr_constraintsize_17", "View_RowSplit_comattr_constraintsize_18", "View_RowSplit_comattr_constraintsize_19", "View_RowSplit_comattr_constraintsize_20",
  "View_RowSplit_comattr_constraintsize_21", "View_RowSplit_comattr_constraintsize_22", "View_RowSplit_comattr_constraintsize_23", "View_RowSplit_comattr_constraintsize_24", "View_RowSplit_comattr_constraintsize_25",
  "View_RowSplit_comattr_constraintsize_26", "View_RowSplit_comattr_constraintsize_27", "View_RowSplit_comattr_constraintsize_28", "View_RowSplit_comattr_constraintsize_29", "View_RowSplit_comattr_constraintsize_30",
  "View_RowSplit_comattr_constraintsize_31", "View_RowSplit_comattr_constraintsize_32", "View_RowSplit_comattr_constraintsize_33", "View_RowSplit_comattr_constraintsize_34", "View_RowSplit_comattr_constraintsize_35",
  "View_RowSplit_comattr_constraintsize_36", "View_RowSplit_comattr_constraintsize_37", "View_RowSplit_comattr_constraintsize_38", "View_RowSplit_comattr_constraintsize_39", "View_RowSplit_comattr_constraintsize_40",
  "View_RowSplit_comattr_constraintsize_41", "View_RowSplit_comattr_constraintsize_42", "View_RowSplit_comattr_constraintsize_43", "View_RowSplit_comattr_constraintsize_44", "View_RowSplit_comattr_constraintsize_45",
  "View_RowSplit_comattr_constraintsize_46", "View_RowSplit_comattr_constraintsize_47", "View_RowSplit_comattr_constraintsize_48", "View_RowSplit_comattr_constraintsize_49", "View_RowSplit_comattr_constraintsize_50",
  "View_RowSplit_comattr_constraintsize_51", "View_RowSplit_comattr_constraintsize_52", "View_RowSplit_comattr_constraintsize_53", "View_RowSplit_comattr_constraintsize_54", "View_RowSplit_comattr_constraintsize_55",
  "View_RowSplit_comattr_constraintsize_56", "View_RowSplit_comattr_constraintsize_57", "View_RowSplit_comattr_constraintsize_58", "View_RowSplit_comattr_constraintsize_59", "View_RowSplit_comattr_constraintsize_60",
  "View_RowSplit_comattr_constraintsize_61", "View_RowSplit_comattr_constraintsize_62", "View_RowSplit_comattr_constraintsize_63", "View_RowSplit_comattr_constraintsize_64", "View_RowSplit_comattr_constraintsize_65",
  "View_RowSplit_comattr_constraintsize_66", "View_RowSplit_comattr_constraintsize_67", "View_RowSplit_comattr_constraintsize_68", "View_RowSplit_comattr_constraintsize_69", "View_RowSplit_comattr_constraintsize_70",
  "View_RowSplit_comattr_constraintsize_71", "View_RowSplit_comattr_constraintsize_72", "View_RowSplit_comattr_constraintsize_73", "View_RowSplit_comattr_constraintsize_74", "View_RowSplit_comattr_constraintsize_75",
  "View_RowSplit_comattr_constraintsize_76", "View_RowSplit_comattr_constraintsize_77", "View_RowSplit_comattr_constraintsize_78", "View_RowSplit_comattr_constraintsize_79", "View_RowSplit_comattr_constraintsize_80",
  "View_RowSplit_comattr_constraintsize_81", "View_RowSplit_comattr_constraintsize_82", "View_RowSplit_comattr_constraintsize_83", "View_RowSplit_comattr_constraintsize_84", "View_RowSplit_comattr_constraintsize_85",
  "View_RowSplit_comattr_constraintsize_86", "View_RowSplit_comattr_constraintsize_87", "View_RowSplit_comattr_constraintsize_88", "View_RowSplit_comattr_constraintsize_89", "View_RowSplit_comattr_constraintsize_90",
  "View_RowSplit_comattr_constraintsize_91", "View_RowSplit_comattr_constraintsize_92", "View_RowSplit_comattr_constraintsize_93", "View_RowSplit_comattr_constraintsize_94", "View_RowSplit_comattr_constraintsize_95",
  "View_RowSplit_comattr_constraintsize_96", "View_RowSplit_comattr_constraintsize_97", "View_RowSplit_comattr_constraintsize_98", "View_RowSplit_comattr_constraintsize_99", "View_RowSplit_comattr_constraintsize_100",
  "View_RowSplit_comattr_constraintsize_101", "View_RowSplit_comattr_constraintsize_102", "View_RowSplit_comattr_constraintsize_103", "View_RowSplit_comattr_constraintsize_104", "View_RowSplit_comattr_constraintsize_105",
  "View_RowSplit_comattr_constraintsize_106", "View_RowSplit_comattr_constraintsize_107", "View_RowSplit_comattr_constraintsize_108", "View_RowSplit_comattr_constraintsize_109", "View_RowSplit_comattr_constraintsize_110",
  "View_RowSplit_comattr_constraintsize_111", "View_RowSplit_comattr_constraintsize_112", "View_RowSplit_comattr_constraintsize_113", "View_RowSplit_comattr_constraintsize_114", "View_RowSplit_comattr_constraintsize_115",
  "View_RowSplit_comattr_constraintsize_116", "View_RowSplit_comattr_constraintsize_117", "View_RowSplit_comattr_constraintsize_118", "View_RowSplit_comattr_constraintsize_119", "View_RowSplit_comattr_constraintsize_120",
  "View_RowSplit_comattr_constraintsize_121", "View_RowSplit_comattr_constraintsize_122", "View_RowSplit_comattr_constraintsize_123", "View_RowSplit_comattr_constraintsize_124", "View_RowSplit_comattr_constraintsize_125",
  "View_RowSplit_comattr_constraintsize_126", "View_RowSplit_comattr_constraintsize_127", "View_RowSplit_comattr_constraintsize_128", "View_RowSplit_comattr_constraintsize_129", "View_RowSplit_comattr_constraintsize_130",
  "View_RowSplit_comattr_constraintsize_131", "View_RowSplit_comattr_constraintsize_132", "View_RowSplit_comattr_constraintsize_133", "View_RowSplit_comattr_constraintsize_134", "View_RowSplit_comattr_constraintsize_135",
  "View_RowSplit_comattr_constraintsize_136", "View_RowSplit_comattr_constraintsize_137", "View_RowSplit_comattr_constraintsize_138", "View_RowSplit_comattr_constraintsize_139", "View_RowSplit_comattr_constraintsize_140",
  "View_RowSplit_comattr_constraintsize_141", "View_RowSplit_comattr_constraintsize_142", "View_RowSplit_comattr_constraintsize_143", "View_RowSplit_comattr_constraintsize_144", "View_RowSplit_comattr_constraintsize_145",
  "View_RowSplit_comattr_constraintsize_146", "View_RowSplit_comattr_constraintsize_147", "View_RowSplit_comattr_constraintsize_148", "View_RowSplit_comattr_constraintsize_149", "View_RowSplit_comattr_constraintsize_150",
  "View_RowSplit_comattr_constraintsize_151", "View_RowSplit_comattr_constraintsize_152", "View_RowSplit_comattr_constraintsize_153", "View_RowSplit_comattr_constraintsize_154", "View_RowSplit_comattr_constraintsize_155",
  "View_RowSplit_comattr_constraintsize_156", "View_RowSplit_comattr_constraintsize_157", "View_RowSplit_comattr_constraintsize_158", "View_RowSplit_comattr_constraintsize_159", "View_RowSplit_comattr_constraintsize_160",
  "View_RowSplit_comattr_constraintsize_161", "View_RowSplit_comattr_constraintsize_162", "View_RowSplit_comattr_constraintsize_163", "View_RowSplit_comattr_constraintsize_164", "View_RowSplit_comattr_constraintsize_165",
  "View_RowSplit_comattr_constraintsize_166", "View_RowSplit_comattr_constraintsize_167", "View_RowSplit_comattr_constraintsize_168", "View_RowSplit_comattr_constraintsize_169", "View_RowSplit_comattr_constraintsize_170",
  "View_RowSplit_comattr_constraintsize_171", "View_RowSplit_comattr_constraintsize_172", "View_RowSplit_comattr_constraintsize_173", "View_RowSplit_comattr_constraintsize_174", "View_RowSplit_comattr_constraintsize_175",
  "View_RowSplit_comattr_constraintsize_176", "View_RowSplit_comattr_constraintsize_177", "View_RowSplit_comattr_constraintsize_178", "View_RowSplit_comattr_constraintsize_179", "View_RowSplit_comattr_constraintsize_180",
  "View_RowSplit_comattr_constraintsize_181", "View_RowSplit_comattr_constraintsize_182", "View_RowSplit_comattr_constraintsize_183", "View_RowSplit_comattr_constraintsize_184", "View_RowSplit_comattr_constraintsize_185",
  "View_RowSplit_comattr_constraintsize_186", "View_RowSplit_comattr_constraintsize_187", "View_RowSplit_comattr_constraintsize_188", "View_RowSplit_comattr_constraintsize_189", "View_RowSplit_comattr_constraintsize_190",
  "View_RowSplit_comattr_constraintsize_191", "View_RowSplit_comattr_constraintsize_192", "View_RowSplit_comattr_constraintsize_193", "View_RowSplit_comattr_constraintsize_194", "View_RowSplit_comattr_constraintsize_195",
  "View_RowSplit_comattr_constraintsize_196", "View_RowSplit_comattr_constraintsize_197", "View_RowSplit_comattr_constraintsize_198", "View_RowSplit_comattr_constraintsize_199", "View_RowSplit_comattr_constraintsize_200",
  "View_RowSplit_comattr_constraintsize_201", "View_RowSplit_comattr_constraintsize_202", "View_RowSplit_comattr_constraintsize_203", "View_RowSplit_comattr_constraintsize_204", "View_RowSplit_comattr_constraintsize_205",
  "View_RowSplit_comattr_constraintsize_206", "View_RowSplit_comattr_constraintsize_207", "View_RowSplit_comattr_constraintsize_208", "View_RowSplit_comattr_constraintsize_209", "View_RowSplit_comattr_constraintsize_210",
  "View_RowSplit_comattr_constraintsize_211", "View_RowSplit_comattr_constraintsize_212", "View_RowSplit_comattr_constraintsize_213", "View_RowSplit_comattr_constraintsize_214", "View_RowSplit_comattr_constraintsize_215",
  "View_RowSplit_comattr_constraintsize_216", "View_RowSplit_comattr_constraintsize_217", "View_RowSplit_comattr_constraintsize_218", "View_RowSplit_comattr_constraintsize_219", "View_RowSplit_comattr_constraintsize_220",
  "View_RowSplit_comattr_constraintsize_221", "View_RowSplit_comattr_constraintsize_222", "View_RowSplit_comattr_constraintsize_223", "View_RowSplit_comattr_constraintsize_224", "View_RowSplit_comattr_constraintsize_225",
  "View_RowSplit_comattr_constraintsize_226", "View_RowSplit_comattr_constraintsize_227", "View_RowSplit_comattr_constraintsize_228", "View_RowSplit_comattr_constraintsize_229", "View_RowSplit_comattr_constraintsize_230",
  "View_RowSplit_comattr_constraintsize_231", "View_RowSplit_comattr_constraintsize_232", "View_RowSplit_comattr_constraintsize_233", "View_RowSplit_comattr_constraintsize_234", "View_RowSplit_comattr_constraintsize_235",
  "View_RowSplit_comattr_constraintsize_236", "View_RowSplit_comattr_constraintsize_237", "View_RowSplit_comattr_constraintsize_238", "View_RowSplit_comattr_constraintsize_239", "View_RowSplit_comattr_constraintsize_240",
  "View_RowSplit_comattr_constraintsize_241", "View_RowSplit_comattr_constraintsize_242", "View_RowSplit_comattr_constraintsize_243", "View_RowSplit_comattr_constraintsize_244", "View_RowSplit_comattr_constraintsize_245",
  "View_RowSplit_comattr_constraintsize_246", "View_RowSplit_comattr_constraintsize_247", "View_RowSplit_comattr_constraintsize_248", "View_RowSplit_comattr_constraintsize_249", "View_RowSplit_comattr_constraintsize_250",
  "View_RowSplit_comattr_constraintsize_251", "View_RowSplit_comattr_constraintsize_252", "View_RowSplit_comattr_constraintsize_253", "View_RowSplit_comattr_constraintsize_254", "View_RowSplit_comattr_constraintsize_255",
  "View_RowSplit_comattr_constraintsize_256", "View_RowSplit_comattr_constraintsize_257", "View_RowSplit_comattr_constraintsize_258", "View_RowSplit_comattr_constraintsize_259", "View_RowSplit_comattr_constraintsize_260",
  "View_RowSplit_comattr_constraintsize_261", "View_RowSplit_comattr_constraintsize_262", "View_RowSplit_comattr_constraintsize_263", "View_RowSplit_comattr_constraintsize_264", "View_RowSplit_comattr_constraintsize_265",
  "View_RowSplit_comattr_constraintsize_266", "View_RowSplit_comattr_constraintsize_267", "View_RowSplit_comattr_constraintsize_268", "View_RowSplit_comattr_constraintsize_269", "View_RowSplit_comattr_constraintsize_270",
  "View_RowSplit_comattr_constraintsize_271", "View_RowSplit_comattr_constraintsize_272", "View_RowSplit_comattr_constraintsize_273", "View_RowSplit_comattr_constraintsize_274", "View_RowSplit_comattr_constraintsize_275",
  "View_RowSplit_comattr_constraintsize_276", "View_RowSplit_comattr_constraintsize_277", "View_RowSplit_comattr_constraintsize_278", "View_RowSplit_comattr_constraintsize_279", "View_RowSplit_comattr_constraintsize_280",
  "View_RowSplit_comattr_constraintsize_281", "View_RowSplit_comattr_constraintsize_282", "View_RowSplit_comattr_constraintsize_283", "View_RowSplit_comattr_constraintsize_284", "View_RowSplit_comattr_constraintsize_285",
  "View_RowSplit_comattr_constraintsize_286", "View_RowSplit_comattr_constraintsize_287", "View_RowSplit_comattr_constraintsize_288", "View_RowSplit_comattr_constraintsize_289", "View_RowSplit_comattr_constraintsize_290",
  "View_RowSplit_comattr_constraintsize_291", "View_RowSplit_comattr_constraintsize_292", "View_RowSplit_comattr_constraintsize_293", "View_RowSplit_comattr_constraintsize_294", "View_RowSplit_comattr_constraintsize_295",
  "View_RowSplit_comattr_constraintsize_296", "View_RowSplit_comattr_constraintsize_297", "View_RowSplit_comattr_constraintsize_298", "View_RowSplit_comattr_constraintsize_299", "View_RowSplit_comattr_constraintsize_300",
  "View_RowSplit_comattr_constraintsize_301", "View_RowSplit_comattr_constraintsize_302", "View_RowSplit_comattr_constraintsize_303", "View_RowSplit_comattr_constraintsize_304", "View_RowSplit_comattr_constraintsize_305",
  "View_RowSplit_comattr_constraintsize_306", "View_RowSplit_comattr_constraintsize_307", "View_RowSplit_comattr_constraintsize_308", "View_RowSplit_comattr_constraintsize_309", "View_RowSplit_comattr_constraintsize_310",
  "View_RowSplit_comattr_constraintsize_311", "View_RowSplit_comattr_constraintsize_312", "View_RowSplit_comattr_constraintsize_313", "View_RowSplit_comattr_constraintsize_314", "View_RowSplit_comattr_constraintsize_315",
  "View_RowSplit_comattr_constraintsize_316", "View_RowSplit_comattr_constraintsize_317", "View_RowSplit_comattr_constraintsize_318", "View_RowSplit_comattr_constraintsize_319", "View_RowSplit_comattr_constraintsize_320",
  "View_RowSplit_comattr_constraintsize_321", "View_RowSplit_comattr_constraintsize_322", "View_RowSplit_comattr_constraintsize_323", "View_RowSplit_comattr_constraintsize_324", "View_RowSplit_comattr_constraintsize_325",
  "View_RowSplit_comattr_constraintsize_326", "View_RowSplit_comattr_constraintsize_327", "View_RowSplit_comattr_constraintsize_328", "View_RowSplit_comattr_constraintsize_329", "View_RowSplit_comattr_constraintsize_330",
  "View_RowSplit_comattr_constraintsize_331", "View_RowSplit_comattr_constraintsize_332", "View_RowSplit_comattr_constraintsize_333", "View_RowSplit_comattr_constraintsize_334", "View_RowSplit_comattr_constraintsize_335",
  "View_RowSplit_comattr_constraintsize_336", "View_RowSplit_comattr_constraintsize_337", "View_RowSplit_comattr_constraintsize_338", "View_RowSplit_comattr_constraintsize_339", "View_RowSplit_comattr_constraintsize_340",
  "View_RowSplit_comattr_constraintsize_341", "View_RowSplit_comattr_constraintsize_342", "View_RowSplit_comattr_constraintsize_343", "View_RowSplit_comattr_constraintsize_344", "View_RowSplit_comattr_constraintsize_345",
  "View_RowSplit_comattr_constraintsize_346", "View_RowSplit_comattr_constraintsize_347", "View_RowSplit_comattr_constraintsize_348", "View_RowSplit_comattr_constraintsize_349", "View_RowSplit_comattr_constraintsize_350",
  "View_RowSplit_comattr_constraintsize_351", "View_RowSplit_comattr_constraintsize_352", "View_RowSplit_comattr_constraintsize_353", "View_RowSplit_comattr_constraintsize_354", "View_RowSplit_comattr_constraintsize_355",
  "View_RowSplit_comattr_constraintsize_356", "View_RowSplit_comattr_constraintsize_357", "View_RowSplit_comattr_constraintsize_358", "View_RowSplit_comattr_constraintsize_359", "View_RowSplit_comattr_constraintsize_360",
  "View_RowSplit_comattr_constraintsize_361", "View_RowSplit_comattr_constraintsize_362", "View_RowSplit_comattr_constraintsize_363", "View_RowSplit_comattr_constraintsize_364", "View_RowSplit_comattr_constraintsize_365",
  "View_RowSplit_comattr_constraintsize_366", "View_RowSplit_comattr_constraintsize_367", "View_RowSplit_comattr_constraintsize_368", "View_RowSplit_comattr_constraintsize_369", "View_RowSplit_comattr_constraintsize_370",
  "View_RowSplit_comattr_constraintsize_371", "View_RowSplit_comattr_constraintsize_372", "View_RowSplit_comattr_constraintsize_373", "View_RowSplit_comattr_constraintsize_374", "View_RowSplit_comattr_constraintsize_375",
  "View_RowSplit_comattr_constraintsize_376", "View_RowSplit_comattr_constraintsize_377", "View_RowSplit_comattr_constraintsize_378", "View_RowSplit_comattr_constraintsize_379", "View_RowSplit_comattr_constraintsize_380",
  "View_RowSplit_comattr_constraintsize_381", "View_RowSplit_comattr_constraintsize_382", "View_RowSplit_comattr_constraintsize_383", "View_RowSplit_comattr_constraintsize_384", "View_RowSplit_comattr_constraintsize_385",
  "View_RowSplit_comattr_constraintsize_386", "View_RowSplit_comattr_constraintsize_387", "View_RowSplit_comattr_constraintsize_388", "View_RowSplit_comattr_constraintsize_389", "View_RowSplit_comattr_constraintsize_390",
  "View_RowSplit_comattr_constraintsize_391", "View_RowSplit_comattr_constraintsize_392", "View_RowSplit_comattr_constraintsize_393", "View_RowSplit_comattr_constraintsize_394", "View_RowSplit_comattr_constraintsize_395",
  "View_RowSplit_comattr_constraintsize_396", "View_RowSplit_comattr_constraintsize_397", "View_RowSplit_comattr_constraintsize_398", "View_RowSplit_comattr_constraintsize_399", "View_RowSplit_comattr_constraintsize_400",
  "View_RowSplit_comattr_constraintsize_401", "View_RowSplit_comattr_constraintsize_402", "View_RowSplit_comattr_constraintsize_403", "View_RowSplit_comattr_constraintsize_404", "View_RowSplit_comattr_constraintsize_405",
  "View_RowSplit_comattr_constraintsize_406", "View_RowSplit_comattr_constraintsize_407", "View_RowSplit_comattr_constraintsize_408", "View_RowSplit_comattr_constraintsize_409", "View_RowSplit_comattr_constraintsize_410",
  "View_RowSplit_comattr_constraintsize_411", "View_RowSplit_comattr_constraintsize_412", "View_RowSplit_comattr_constraintsize_413", "View_RowSplit_comattr_constraintsize_414", "View_RowSplit_comattr_constraintsize_415",
  "View_RowSplit_comattr_constraintsize_416", "View_RowSplit_comattr_constraintsize_417", "View_RowSplit_comattr_constraintsize_418", "View_RowSplit_comattr_constraintsize_419", "View_RowSplit_comattr_constraintsize_420",
  "View_RowSplit_comattr_constraintsize_421", "View_RowSplit_comattr_constraintsize_422", "View_RowSplit_comattr_constraintsize_423", "View_RowSplit_comattr_constraintsize_424", "View_RowSplit_comattr_constraintsize_425",
  "View_RowSplit_comattr_constraintsize_426", "View_RowSplit_comattr_constraintsize_427", "View_RowSplit_comattr_constraintsize_428", "View_RowSplit_comattr_constraintsize_429", "View_RowSplit_comattr_constraintsize_430",
  "View_RowSplit_comattr_constraintsize_431", "View_RowSplit_comattr_constraintsize_432", "View_RowSplit_comattr_constraintsize_433", "View_RowSplit_comattr_constraintsize_434", "View_RowSplit_comattr_constraintsize_435",
  "View_RowSplit_comattr_constraintsize_436", "View_RowSplit_comattr_constraintsize_437", "View_RowSplit_comattr_constraintsize_438", "View_RowSplit_comattr_constraintsize_439", "View_RowSplit_comattr_constraintsize_440",
  "View_RowSplit_comattr_constraintsize_441", "View_RowSplit_comattr_constraintsize_442", "View_RowSplit_comattr_constraintsize_443", "View_RowSplit_comattr_constraintsize_444", "View_RowSplit_comattr_constraintsize_445",
  "View_RowSplit_comattr_constraintsize_446", "View_RowSplit_comattr_constraintsize_447", "View_RowSplit_comattr_constraintsize_448", "View_RowSplit_comattr_constraintsize_449", "View_RowSplit_comattr_constraintsize_450",
  "View_RowSplit_comattr_constraintsize_451", "View_RowSplit_comattr_constraintsize_452", "View_RowSplit_comattr_constraintsize_453", "View_RowSplit_comattr_constraintsize_454", "View_RowSplit_comattr_constraintsize_455",
  "View_RowSplit_comattr_constraintsize_456", "View_RowSplit_comattr_constraintsize_457", "View_RowSplit_comattr_constraintsize_458", "View_RowSplit_comattr_constraintsize_459", "View_RowSplit_comattr_constraintsize_460",
  "View_RowSplit_comattr_constraintsize_461", "View_RowSplit_comattr_constraintsize_462", "View_RowSplit_comattr_constraintsize_463" ],
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
