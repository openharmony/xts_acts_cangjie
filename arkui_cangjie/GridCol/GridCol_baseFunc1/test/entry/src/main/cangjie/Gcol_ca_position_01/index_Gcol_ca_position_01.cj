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

package ohos_app_cangjie_entry.Gcol_ca_position_01

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
class index_Gcol_ca_position_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridCol_comattr_position_1", "View_GridCol_comattr_position_2", "View_GridCol_comattr_position_3", "View_GridCol_comattr_position_4", "View_GridCol_comattr_position_5",
  "View_GridCol_comattr_position_6", "View_GridCol_comattr_position_7", "View_GridCol_comattr_position_8", "View_GridCol_comattr_position_9", "View_GridCol_comattr_position_10",
  "View_GridCol_comattr_position_11", "View_GridCol_comattr_position_12", "View_GridCol_comattr_position_13", "View_GridCol_comattr_position_14", "View_GridCol_comattr_position_15",
  "View_GridCol_comattr_position_16", "View_GridCol_comattr_position_17", "View_GridCol_comattr_position_18", "View_GridCol_comattr_position_19", "View_GridCol_comattr_position_20",
  "View_GridCol_comattr_position_21", "View_GridCol_comattr_position_22", "View_GridCol_comattr_position_23", "View_GridCol_comattr_position_24", "View_GridCol_comattr_position_25",
  "View_GridCol_comattr_position_26", "View_GridCol_comattr_position_27", "View_GridCol_comattr_position_28", "View_GridCol_comattr_position_29", "View_GridCol_comattr_position_30",
  "View_GridCol_comattr_position_31", "View_GridCol_comattr_position_32", "View_GridCol_comattr_position_33", "View_GridCol_comattr_position_34", "View_GridCol_comattr_position_35",
  "View_GridCol_comattr_position_36", "View_GridCol_comattr_position_37", "View_GridCol_comattr_position_38", "View_GridCol_comattr_position_39", "View_GridCol_comattr_position_40",
  "View_GridCol_comattr_position_41", "View_GridCol_comattr_position_42", "View_GridCol_comattr_position_43", "View_GridCol_comattr_position_44", "View_GridCol_comattr_position_45",
  "View_GridCol_comattr_position_46", "View_GridCol_comattr_position_47", "View_GridCol_comattr_position_48", "View_GridCol_comattr_position_49", "View_GridCol_comattr_position_50",
  "View_GridCol_comattr_position_51", "View_GridCol_comattr_position_52", "View_GridCol_comattr_position_53", "View_GridCol_comattr_position_54", "View_GridCol_comattr_position_55",
  "View_GridCol_comattr_position_56", "View_GridCol_comattr_position_57", "View_GridCol_comattr_position_58", "View_GridCol_comattr_position_59", "View_GridCol_comattr_position_60",
  "View_GridCol_comattr_position_61", "View_GridCol_comattr_position_62", "View_GridCol_comattr_position_63", "View_GridCol_comattr_position_64", "View_GridCol_comattr_position_65",
  "View_GridCol_comattr_position_66", "View_GridCol_comattr_position_67", "View_GridCol_comattr_position_68", "View_GridCol_comattr_position_69", "View_GridCol_comattr_position_70",
  "View_GridCol_comattr_position_71", "View_GridCol_comattr_position_72", "View_GridCol_comattr_position_73", "View_GridCol_comattr_position_74", "View_GridCol_comattr_position_75",
  "View_GridCol_comattr_position_76", "View_GridCol_comattr_position_77", "View_GridCol_comattr_position_78", "View_GridCol_comattr_position_79", "View_GridCol_comattr_position_80",
  "View_GridCol_comattr_position_81", "View_GridCol_comattr_position_82", "View_GridCol_comattr_position_83", "View_GridCol_comattr_position_84", "View_GridCol_comattr_position_85",
  "View_GridCol_comattr_position_86", "View_GridCol_comattr_position_87", "View_GridCol_comattr_position_88", "View_GridCol_comattr_position_89", "View_GridCol_comattr_position_90",
  "View_GridCol_comattr_position_91", "View_GridCol_comattr_position_92", "View_GridCol_comattr_position_93", "View_GridCol_comattr_position_94", "View_GridCol_comattr_position_95",
  "View_GridCol_comattr_position_96", "View_GridCol_comattr_position_97", "View_GridCol_comattr_position_98", "View_GridCol_comattr_position_99", "View_GridCol_comattr_position_100",
  "View_GridCol_comattr_position_101", "View_GridCol_comattr_position_102", "View_GridCol_comattr_position_103", "View_GridCol_comattr_position_104", "View_GridCol_comattr_position_105",
  "View_GridCol_comattr_position_106", "View_GridCol_comattr_position_107", "View_GridCol_comattr_position_108", "View_GridCol_comattr_position_109", "View_GridCol_comattr_position_110",
  "View_GridCol_comattr_position_111", "View_GridCol_comattr_position_112", "View_GridCol_comattr_position_113", "View_GridCol_comattr_position_114", "View_GridCol_comattr_position_115",
  "View_GridCol_comattr_position_116", "View_GridCol_comattr_position_117", "View_GridCol_comattr_position_118", "View_GridCol_comattr_position_119", "View_GridCol_comattr_position_120",
  "View_GridCol_comattr_position_121", "View_GridCol_comattr_position_122", "View_GridCol_comattr_position_123", "View_GridCol_comattr_position_124", "View_GridCol_comattr_position_125",
  "View_GridCol_comattr_position_126", "View_GridCol_comattr_position_127", "View_GridCol_comattr_position_128", "View_GridCol_comattr_position_129", "View_GridCol_comattr_position_130",
  "View_GridCol_comattr_position_131", "View_GridCol_comattr_position_132", "View_GridCol_comattr_position_133", "View_GridCol_comattr_position_134", "View_GridCol_comattr_position_135",
  "View_GridCol_comattr_position_136", "View_GridCol_comattr_position_137", "View_GridCol_comattr_position_138", "View_GridCol_comattr_position_139", "View_GridCol_comattr_position_140",
  "View_GridCol_comattr_position_141", "View_GridCol_comattr_position_142", "View_GridCol_comattr_position_143", "View_GridCol_comattr_position_144", "View_GridCol_comattr_position_145",
  "View_GridCol_comattr_position_146", "View_GridCol_comattr_position_147", "View_GridCol_comattr_position_148", "View_GridCol_comattr_position_149", "View_GridCol_comattr_position_150",
  "View_GridCol_comattr_position_151", "View_GridCol_comattr_position_152", "View_GridCol_comattr_position_153", "View_GridCol_comattr_position_154", "View_GridCol_comattr_position_155",
  "View_GridCol_comattr_position_156", "View_GridCol_comattr_position_157", "View_GridCol_comattr_position_158", "View_GridCol_comattr_position_159", "View_GridCol_comattr_position_160",
  "View_GridCol_comattr_position_161", "View_GridCol_comattr_position_162", "View_GridCol_comattr_position_163", "View_GridCol_comattr_position_164", "View_GridCol_comattr_position_165",
  "View_GridCol_comattr_position_166", "View_GridCol_comattr_position_167", "View_GridCol_comattr_position_168", "View_GridCol_comattr_position_169", "View_GridCol_comattr_position_170",
  "View_GridCol_comattr_position_171", "View_GridCol_comattr_position_172", "View_GridCol_comattr_position_173", "View_GridCol_comattr_position_174", "View_GridCol_comattr_position_175",
  "View_GridCol_comattr_position_176", "View_GridCol_comattr_position_177", "View_GridCol_comattr_position_178", "View_GridCol_comattr_position_179", "View_GridCol_comattr_position_180",
  "View_GridCol_comattr_position_181", "View_GridCol_comattr_position_182", "View_GridCol_comattr_position_183", "View_GridCol_comattr_position_184", "View_GridCol_comattr_position_185",
  "View_GridCol_comattr_position_186", "View_GridCol_comattr_position_187", "View_GridCol_comattr_position_188", "View_GridCol_comattr_position_189", "View_GridCol_comattr_position_190",
  "View_GridCol_comattr_position_191", "View_GridCol_comattr_position_192", "View_GridCol_comattr_position_193", "View_GridCol_comattr_position_194", "View_GridCol_comattr_position_195",
  "View_GridCol_comattr_position_196", "View_GridCol_comattr_position_197", "View_GridCol_comattr_position_198", "View_GridCol_comattr_position_199", "View_GridCol_comattr_position_200",
  "View_GridCol_comattr_position_201", "View_GridCol_comattr_position_202", "View_GridCol_comattr_position_203", "View_GridCol_comattr_position_204", "View_GridCol_comattr_position_205",
  "View_GridCol_comattr_position_206", "View_GridCol_comattr_position_207", "View_GridCol_comattr_position_208", "View_GridCol_comattr_position_209", "View_GridCol_comattr_position_210",
  "View_GridCol_comattr_position_211", "View_GridCol_comattr_position_212", "View_GridCol_comattr_position_213", "View_GridCol_comattr_position_214", "View_GridCol_comattr_position_215",
  "View_GridCol_comattr_position_216", "View_GridCol_comattr_position_217", "View_GridCol_comattr_position_218", "View_GridCol_comattr_position_219", "View_GridCol_comattr_position_220",
  "View_GridCol_comattr_position_221", "View_GridCol_comattr_position_222", "View_GridCol_comattr_position_223", "View_GridCol_comattr_position_224", "View_GridCol_comattr_position_225",
  "View_GridCol_comattr_position_226", "View_GridCol_comattr_position_227", "View_GridCol_comattr_position_228", "View_GridCol_comattr_position_229", "View_GridCol_comattr_position_230",
  "View_GridCol_comattr_position_231", "View_GridCol_comattr_position_232", "View_GridCol_comattr_position_233", "View_GridCol_comattr_position_234", "View_GridCol_comattr_position_235",
  "View_GridCol_comattr_position_236", "View_GridCol_comattr_position_237", "View_GridCol_comattr_position_238", "View_GridCol_comattr_position_239", "View_GridCol_comattr_position_240",
  "View_GridCol_comattr_position_241", "View_GridCol_comattr_position_242", "View_GridCol_comattr_position_243", "View_GridCol_comattr_position_244", "View_GridCol_comattr_position_245",
  "View_GridCol_comattr_position_246", "View_GridCol_comattr_position_247", "View_GridCol_comattr_position_248", "View_GridCol_comattr_position_249", "View_GridCol_comattr_position_250",
  "View_GridCol_comattr_position_251", "View_GridCol_comattr_position_252", "View_GridCol_comattr_position_253", "View_GridCol_comattr_position_254", "View_GridCol_comattr_position_255",
  "View_GridCol_comattr_position_256", "View_GridCol_comattr_position_257", "View_GridCol_comattr_position_258", "View_GridCol_comattr_position_259", "View_GridCol_comattr_position_260",
  "View_GridCol_comattr_position_261", "View_GridCol_comattr_position_262", "View_GridCol_comattr_position_263", "View_GridCol_comattr_position_264", "View_GridCol_comattr_position_265",
  "View_GridCol_comattr_position_266", "View_GridCol_comattr_position_267", "View_GridCol_comattr_position_268", "View_GridCol_comattr_position_269", "View_GridCol_comattr_position_270",
  "View_GridCol_comattr_position_271", "View_GridCol_comattr_position_272", "View_GridCol_comattr_position_273", "View_GridCol_comattr_position_274", "View_GridCol_comattr_position_275",
  "View_GridCol_comattr_position_276", "View_GridCol_comattr_position_277", "View_GridCol_comattr_position_278", "View_GridCol_comattr_position_279", "View_GridCol_comattr_position_280",
  "View_GridCol_comattr_position_281", "View_GridCol_comattr_position_282", "View_GridCol_comattr_position_283", "View_GridCol_comattr_position_284", "View_GridCol_comattr_position_285",
  "View_GridCol_comattr_position_286", "View_GridCol_comattr_position_287", "View_GridCol_comattr_position_288", "View_GridCol_comattr_position_289", "View_GridCol_comattr_position_290",
  "View_GridCol_comattr_position_291", "View_GridCol_comattr_position_292", "View_GridCol_comattr_position_293", "View_GridCol_comattr_position_294", "View_GridCol_comattr_position_295",
  "View_GridCol_comattr_position_296", "View_GridCol_comattr_position_297", "View_GridCol_comattr_position_298", "View_GridCol_comattr_position_299", "View_GridCol_comattr_position_300",
  "View_GridCol_comattr_position_301", "View_GridCol_comattr_position_302", "View_GridCol_comattr_position_303", "View_GridCol_comattr_position_304", "View_GridCol_comattr_position_305",
  "View_GridCol_comattr_position_306", "View_GridCol_comattr_position_307", "View_GridCol_comattr_position_308", "View_GridCol_comattr_position_309", "View_GridCol_comattr_position_310",
  "View_GridCol_comattr_position_311", "View_GridCol_comattr_position_312", "View_GridCol_comattr_position_313", "View_GridCol_comattr_position_314", "View_GridCol_comattr_position_315",
  "View_GridCol_comattr_position_316", "View_GridCol_comattr_position_317", "View_GridCol_comattr_position_318", "View_GridCol_comattr_position_319", "View_GridCol_comattr_position_320",
  "View_GridCol_comattr_position_321", "View_GridCol_comattr_position_322", "View_GridCol_comattr_position_323", "View_GridCol_comattr_position_324", "View_GridCol_comattr_position_325",
  "View_GridCol_comattr_position_326", "View_GridCol_comattr_position_327", "View_GridCol_comattr_position_328", "View_GridCol_comattr_position_329", "View_GridCol_comattr_position_330",
  "View_GridCol_comattr_position_331", "View_GridCol_comattr_position_332", "View_GridCol_comattr_position_333", "View_GridCol_comattr_position_334", "View_GridCol_comattr_position_335",
  "View_GridCol_comattr_position_336", "View_GridCol_comattr_position_337", "View_GridCol_comattr_position_338", "View_GridCol_comattr_position_339", "View_GridCol_comattr_position_340",
  "View_GridCol_comattr_position_341", "View_GridCol_comattr_position_342", "View_GridCol_comattr_position_343", "View_GridCol_comattr_position_344", "View_GridCol_comattr_position_345",
  "View_GridCol_comattr_position_346", "View_GridCol_comattr_position_347", "View_GridCol_comattr_position_348", "View_GridCol_comattr_position_349", "View_GridCol_comattr_position_350",
  "View_GridCol_comattr_position_351", "View_GridCol_comattr_position_352", "View_GridCol_comattr_position_353", "View_GridCol_comattr_position_354", "View_GridCol_comattr_position_355",
  "View_GridCol_comattr_position_356", "View_GridCol_comattr_position_357", "View_GridCol_comattr_position_358", "View_GridCol_comattr_position_359", "View_GridCol_comattr_position_360",
  "View_GridCol_comattr_position_361", "View_GridCol_comattr_position_362", "View_GridCol_comattr_position_363", "View_GridCol_comattr_position_364", "View_GridCol_comattr_position_365",
  "View_GridCol_comattr_position_366", "View_GridCol_comattr_position_367", "View_GridCol_comattr_position_368", "View_GridCol_comattr_position_369", "View_GridCol_comattr_position_370",
  "View_GridCol_comattr_position_371", "View_GridCol_comattr_position_372", "View_GridCol_comattr_position_373", "View_GridCol_comattr_position_374", "View_GridCol_comattr_position_375",
  "View_GridCol_comattr_position_376", "View_GridCol_comattr_position_377", "View_GridCol_comattr_position_378", "View_GridCol_comattr_position_379", "View_GridCol_comattr_position_380",
  "View_GridCol_comattr_position_381", "View_GridCol_comattr_position_382", "View_GridCol_comattr_position_383", "View_GridCol_comattr_position_384", "View_GridCol_comattr_position_385",
  "View_GridCol_comattr_position_386", "View_GridCol_comattr_position_387", "View_GridCol_comattr_position_388", "View_GridCol_comattr_position_389", "View_GridCol_comattr_position_390",
  "View_GridCol_comattr_position_391", "View_GridCol_comattr_position_392", "View_GridCol_comattr_position_393", "View_GridCol_comattr_position_394", "View_GridCol_comattr_position_395",
  "View_GridCol_comattr_position_396", "View_GridCol_comattr_position_397", "View_GridCol_comattr_position_398", "View_GridCol_comattr_position_399", "View_GridCol_comattr_position_400" ],
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
