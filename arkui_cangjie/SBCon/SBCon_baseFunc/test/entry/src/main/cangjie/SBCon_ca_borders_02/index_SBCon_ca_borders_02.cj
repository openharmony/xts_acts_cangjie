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

package ohos_app_cangjie_entry.SBCon_ca_borders_02

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
class index_SBCon_ca_borders_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_SBCon_comattr_borders2_1", "View_SBCon_comattr_borders2_2", "View_SBCon_comattr_borders2_3", "View_SBCon_comattr_borders2_4", "View_SBCon_comattr_borders2_5",
  "View_SBCon_comattr_borders2_6", "View_SBCon_comattr_borders2_7", "View_SBCon_comattr_borders2_8", "View_SBCon_comattr_borders2_9", "View_SBCon_comattr_borders2_10",
  "View_SBCon_comattr_borders2_11", "View_SBCon_comattr_borders2_12", "View_SBCon_comattr_borders2_13", "View_SBCon_comattr_borders2_14", "View_SBCon_comattr_borders2_15",
  "View_SBCon_comattr_borders2_16", "View_SBCon_comattr_borders2_17", "View_SBCon_comattr_borders2_18", "View_SBCon_comattr_borders2_19", "View_SBCon_comattr_borders2_20",
  "View_SBCon_comattr_borders2_21", "View_SBCon_comattr_borders2_22", "View_SBCon_comattr_borders2_23", "View_SBCon_comattr_borders2_24", "View_SBCon_comattr_borders2_25",
  "View_SBCon_comattr_borders2_26", "View_SBCon_comattr_borders2_27", "View_SBCon_comattr_borders2_28", "View_SBCon_comattr_borders2_29", "View_SBCon_comattr_borders2_30",
  "View_SBCon_comattr_borders2_31", "View_SBCon_comattr_borders2_32", "View_SBCon_comattr_borders2_33", "View_SBCon_comattr_borders2_34", "View_SBCon_comattr_borders2_35",
  "View_SBCon_comattr_borders2_36", "View_SBCon_comattr_borders2_37", "View_SBCon_comattr_borders2_38", "View_SBCon_comattr_borders2_39", "View_SBCon_comattr_borders2_40",
  "View_SBCon_comattr_borders2_41", "View_SBCon_comattr_borders2_42", "View_SBCon_comattr_borders2_43", "View_SBCon_comattr_borders2_44", "View_SBCon_comattr_borders2_45",
  "View_SBCon_comattr_borders2_46", "View_SBCon_comattr_borders2_47", "View_SBCon_comattr_borders2_48", "View_SBCon_comattr_borders2_49", "View_SBCon_comattr_borders2_50",
  "View_SBCon_comattr_borders2_51", "View_SBCon_comattr_borders2_52", "View_SBCon_comattr_borders2_53", "View_SBCon_comattr_borders2_54", "View_SBCon_comattr_borders2_55",
  "View_SBCon_comattr_borders2_56", "View_SBCon_comattr_borders2_57", "View_SBCon_comattr_borders2_58", "View_SBCon_comattr_borders2_59", "View_SBCon_comattr_borders2_60",
  "View_SBCon_comattr_borders2_61", "View_SBCon_comattr_borders2_62", "View_SBCon_comattr_borders2_63", "View_SBCon_comattr_borders2_64", "View_SBCon_comattr_borders2_65",
  "View_SBCon_comattr_borders2_66", "View_SBCon_comattr_borders2_67", "View_SBCon_comattr_borders2_68", "View_SBCon_comattr_borders2_69", "View_SBCon_comattr_borders2_70",
  "View_SBCon_comattr_borders2_71", "View_SBCon_comattr_borders2_72", "View_SBCon_comattr_borders2_73", "View_SBCon_comattr_borders2_74", "View_SBCon_comattr_borders2_75",
  "View_SBCon_comattr_borders2_76", "View_SBCon_comattr_borders2_77", "View_SBCon_comattr_borders2_78", "View_SBCon_comattr_borders2_79", "View_SBCon_comattr_borders2_80",
  "View_SBCon_comattr_borders2_81", "View_SBCon_comattr_borders2_82", "View_SBCon_comattr_borders2_83", "View_SBCon_comattr_borders2_84", "View_SBCon_comattr_borders2_85",
  "View_SBCon_comattr_borders2_86", "View_SBCon_comattr_borders2_87", "View_SBCon_comattr_borders2_88", "View_SBCon_comattr_borders2_89", "View_SBCon_comattr_borders2_90",
  "View_SBCon_comattr_borders2_91", "View_SBCon_comattr_borders2_92", "View_SBCon_comattr_borders2_93", "View_SBCon_comattr_borders2_94", "View_SBCon_comattr_borders2_95",
  "View_SBCon_comattr_borders2_96", "View_SBCon_comattr_borders2_97", "View_SBCon_comattr_borders2_98", "View_SBCon_comattr_borders2_99", "View_SBCon_comattr_borders2_100",
  "View_SBCon_comattr_borders2_101", "View_SBCon_comattr_borders2_102", "View_SBCon_comattr_borders2_103", "View_SBCon_comattr_borders2_104", "View_SBCon_comattr_borders2_105",
  "View_SBCon_comattr_borders2_106", "View_SBCon_comattr_borders2_107", "View_SBCon_comattr_borders2_108", "View_SBCon_comattr_borders2_109", "View_SBCon_comattr_borders2_110",
  "View_SBCon_comattr_borders2_111", "View_SBCon_comattr_borders2_112", "View_SBCon_comattr_borders2_113", "View_SBCon_comattr_borders2_114", "View_SBCon_comattr_borders2_115",
  "View_SBCon_comattr_borders2_116", "View_SBCon_comattr_borders2_117", "View_SBCon_comattr_borders2_118", "View_SBCon_comattr_borders2_119", "View_SBCon_comattr_borders2_120",
  "View_SBCon_comattr_borders2_121", "View_SBCon_comattr_borders2_122", "View_SBCon_comattr_borders2_123", "View_SBCon_comattr_borders2_124", "View_SBCon_comattr_borders2_125",
  "View_SBCon_comattr_borders2_126", "View_SBCon_comattr_borders2_127", "View_SBCon_comattr_borders2_128", "View_SBCon_comattr_borders2_129", "View_SBCon_comattr_borders2_130",
  "View_SBCon_comattr_borders2_131", "View_SBCon_comattr_borders2_132", "View_SBCon_comattr_borders2_133", "View_SBCon_comattr_borders2_134", "View_SBCon_comattr_borders2_135",
  "View_SBCon_comattr_borders2_136", "View_SBCon_comattr_borders2_137", "View_SBCon_comattr_borders2_138", "View_SBCon_comattr_borders2_139", "View_SBCon_comattr_borders2_140",
  "View_SBCon_comattr_borders2_141", "View_SBCon_comattr_borders2_142", "View_SBCon_comattr_borders2_143", "View_SBCon_comattr_borders2_144", "View_SBCon_comattr_borders2_145",
  "View_SBCon_comattr_borders2_146", "View_SBCon_comattr_borders2_147", "View_SBCon_comattr_borders2_148", "View_SBCon_comattr_borders2_149", "View_SBCon_comattr_borders2_150",
  "View_SBCon_comattr_borders2_151", "View_SBCon_comattr_borders2_152", "View_SBCon_comattr_borders2_153", "View_SBCon_comattr_borders2_154", "View_SBCon_comattr_borders2_155",
  "View_SBCon_comattr_borders2_156", "View_SBCon_comattr_borders2_157", "View_SBCon_comattr_borders2_158", "View_SBCon_comattr_borders2_159", "View_SBCon_comattr_borders2_160",
  "View_SBCon_comattr_borders2_161", "View_SBCon_comattr_borders2_162", "View_SBCon_comattr_borders2_163", "View_SBCon_comattr_borders2_164", "View_SBCon_comattr_borders2_165",
  "View_SBCon_comattr_borders2_166", "View_SBCon_comattr_borders2_167", "View_SBCon_comattr_borders2_168", "View_SBCon_comattr_borders2_169", "View_SBCon_comattr_borders2_170",
  "View_SBCon_comattr_borders2_171", "View_SBCon_comattr_borders2_172", "View_SBCon_comattr_borders2_173", "View_SBCon_comattr_borders2_174", "View_SBCon_comattr_borders2_175",
  "View_SBCon_comattr_borders2_176", "View_SBCon_comattr_borders2_177", "View_SBCon_comattr_borders2_178", "View_SBCon_comattr_borders2_179", "View_SBCon_comattr_borders2_180",
  "View_SBCon_comattr_borders2_181", "View_SBCon_comattr_borders2_182", "View_SBCon_comattr_borders2_183", "View_SBCon_comattr_borders2_184", "View_SBCon_comattr_borders2_185",
  "View_SBCon_comattr_borders2_186", "View_SBCon_comattr_borders2_187", "View_SBCon_comattr_borders2_188", "View_SBCon_comattr_borders2_189", "View_SBCon_comattr_borders2_190",
  "View_SBCon_comattr_borders2_191", "View_SBCon_comattr_borders2_192", "View_SBCon_comattr_borders2_193", "View_SBCon_comattr_borders2_194", "View_SBCon_comattr_borders2_195",
  "View_SBCon_comattr_borders2_196", "View_SBCon_comattr_borders2_197", "View_SBCon_comattr_borders2_198", "View_SBCon_comattr_borders2_199", "View_SBCon_comattr_borders2_200",
  "View_SBCon_comattr_borders2_201", "View_SBCon_comattr_borders2_202", "View_SBCon_comattr_borders2_203", "View_SBCon_comattr_borders2_204", "View_SBCon_comattr_borders2_205",
  "View_SBCon_comattr_borders2_206", "View_SBCon_comattr_borders2_207", "View_SBCon_comattr_borders2_208", "View_SBCon_comattr_borders2_209", "View_SBCon_comattr_borders2_210",
  "View_SBCon_comattr_borders2_211", "View_SBCon_comattr_borders2_212", "View_SBCon_comattr_borders2_213", "View_SBCon_comattr_borders2_214", "View_SBCon_comattr_borders2_215",
  "View_SBCon_comattr_borders2_216", "View_SBCon_comattr_borders2_217", "View_SBCon_comattr_borders2_218", "View_SBCon_comattr_borders2_219", "View_SBCon_comattr_borders2_220",
  "View_SBCon_comattr_borders2_221", "View_SBCon_comattr_borders2_222", "View_SBCon_comattr_borders2_223", "View_SBCon_comattr_borders2_224", "View_SBCon_comattr_borders2_225",
  "View_SBCon_comattr_borders2_226", "View_SBCon_comattr_borders2_227", "View_SBCon_comattr_borders2_228", "View_SBCon_comattr_borders2_229", "View_SBCon_comattr_borders2_230",
  "View_SBCon_comattr_borders2_231", "View_SBCon_comattr_borders2_232", "View_SBCon_comattr_borders2_233", "View_SBCon_comattr_borders2_234", "View_SBCon_comattr_borders2_235",
  "View_SBCon_comattr_borders2_236", "View_SBCon_comattr_borders2_237", "View_SBCon_comattr_borders2_238", "View_SBCon_comattr_borders2_239", "View_SBCon_comattr_borders2_240",
  "View_SBCon_comattr_borders2_241", "View_SBCon_comattr_borders2_242", "View_SBCon_comattr_borders2_243", "View_SBCon_comattr_borders2_244", "View_SBCon_comattr_borders2_245",
  "View_SBCon_comattr_borders2_246", "View_SBCon_comattr_borders2_247", "View_SBCon_comattr_borders2_248", "View_SBCon_comattr_borders2_249", "View_SBCon_comattr_borders2_250",
  "View_SBCon_comattr_borders2_251", "View_SBCon_comattr_borders2_252", "View_SBCon_comattr_borders2_253", "View_SBCon_comattr_borders2_254", "View_SBCon_comattr_borders2_255",
  "View_SBCon_comattr_borders2_256", "View_SBCon_comattr_borders2_257", "View_SBCon_comattr_borders2_258", "View_SBCon_comattr_borders2_259", "View_SBCon_comattr_borders2_260",
  "View_SBCon_comattr_borders2_261", "View_SBCon_comattr_borders2_262", "View_SBCon_comattr_borders2_263", "View_SBCon_comattr_borders2_264", "View_SBCon_comattr_borders2_265",
  "View_SBCon_comattr_borders2_266", "View_SBCon_comattr_borders2_267", "View_SBCon_comattr_borders2_268", "View_SBCon_comattr_borders2_269", "View_SBCon_comattr_borders2_270",
  "View_SBCon_comattr_borders2_271", "View_SBCon_comattr_borders2_272", "View_SBCon_comattr_borders2_273", "View_SBCon_comattr_borders2_274", "View_SBCon_comattr_borders2_275",
  "View_SBCon_comattr_borders2_276", "View_SBCon_comattr_borders2_277", "View_SBCon_comattr_borders2_278", "View_SBCon_comattr_borders2_279", "View_SBCon_comattr_borders2_280",
  "View_SBCon_comattr_borders2_281", "View_SBCon_comattr_borders2_282", "View_SBCon_comattr_borders2_283", "View_SBCon_comattr_borders2_284", "View_SBCon_comattr_borders2_285",
  "View_SBCon_comattr_borders2_286", "View_SBCon_comattr_borders2_287", "View_SBCon_comattr_borders2_288", "View_SBCon_comattr_borders2_289", "View_SBCon_comattr_borders2_290",
  "View_SBCon_comattr_borders2_291", "View_SBCon_comattr_borders2_292", "View_SBCon_comattr_borders2_293", "View_SBCon_comattr_borders2_294", "View_SBCon_comattr_borders2_295",
  "View_SBCon_comattr_borders2_296", "View_SBCon_comattr_borders2_297", "View_SBCon_comattr_borders2_298", "View_SBCon_comattr_borders2_299", "View_SBCon_comattr_borders2_300",
  "View_SBCon_comattr_borders2_301", "View_SBCon_comattr_borders2_302", "View_SBCon_comattr_borders2_303", "View_SBCon_comattr_borders2_304", "View_SBCon_comattr_borders2_305",
  "View_SBCon_comattr_borders2_306", "View_SBCon_comattr_borders2_307", "View_SBCon_comattr_borders2_308", "View_SBCon_comattr_borders2_309", "View_SBCon_comattr_borders2_310",
  "View_SBCon_comattr_borders2_311", "View_SBCon_comattr_borders2_312", "View_SBCon_comattr_borders2_313", "View_SBCon_comattr_borders2_314", "View_SBCon_comattr_borders2_315",
  "View_SBCon_comattr_borders2_316", "View_SBCon_comattr_borders2_317", "View_SBCon_comattr_borders2_318", "View_SBCon_comattr_borders2_319", "View_SBCon_comattr_borders2_320",
  "View_SBCon_comattr_borders2_321", "View_SBCon_comattr_borders2_322", "View_SBCon_comattr_borders2_323", "View_SBCon_comattr_borders2_324", "View_SBCon_comattr_borders2_325",
  "View_SBCon_comattr_borders2_326", "View_SBCon_comattr_borders2_327", "View_SBCon_comattr_borders2_328", "View_SBCon_comattr_borders2_329", "View_SBCon_comattr_borders2_330",
  "View_SBCon_comattr_borders2_331", "View_SBCon_comattr_borders2_332", "View_SBCon_comattr_borders2_333", "View_SBCon_comattr_borders2_334", "View_SBCon_comattr_borders2_335",
  "View_SBCon_comattr_borders2_336", "View_SBCon_comattr_borders2_337", "View_SBCon_comattr_borders2_338", "View_SBCon_comattr_borders2_339", "View_SBCon_comattr_borders2_340",
  "View_SBCon_comattr_borders2_341", "View_SBCon_comattr_borders2_342", "View_SBCon_comattr_borders2_343", "View_SBCon_comattr_borders2_344", "View_SBCon_comattr_borders2_345",
  "View_SBCon_comattr_borders2_346", "View_SBCon_comattr_borders2_347", "View_SBCon_comattr_borders2_348", "View_SBCon_comattr_borders2_349", "View_SBCon_comattr_borders2_350",
  "View_SBCon_comattr_borders2_351", "View_SBCon_comattr_borders2_352", "View_SBCon_comattr_borders2_353", "View_SBCon_comattr_borders2_354", "View_SBCon_comattr_borders2_355",
  "View_SBCon_comattr_borders2_356", "View_SBCon_comattr_borders2_357", "View_SBCon_comattr_borders2_358", "View_SBCon_comattr_borders2_359", "View_SBCon_comattr_borders2_360",
  "View_SBCon_comattr_borders2_361", "View_SBCon_comattr_borders2_362", "View_SBCon_comattr_borders2_363", "View_SBCon_comattr_borders2_364", "View_SBCon_comattr_borders2_365",
  "View_SBCon_comattr_borders2_366", "View_SBCon_comattr_borders2_367", "View_SBCon_comattr_borders2_368", "View_SBCon_comattr_borders2_369", "View_SBCon_comattr_borders2_370",
  "View_SBCon_comattr_borders2_371", "View_SBCon_comattr_borders2_372", "View_SBCon_comattr_borders2_373", "View_SBCon_comattr_borders2_374", "View_SBCon_comattr_borders2_375",
  "View_SBCon_comattr_borders2_376", "View_SBCon_comattr_borders2_377", "View_SBCon_comattr_borders2_378", "View_SBCon_comattr_borders2_379", "View_SBCon_comattr_borders2_380",
  "View_SBCon_comattr_borders2_381", "View_SBCon_comattr_borders2_382", "View_SBCon_comattr_borders2_383", "View_SBCon_comattr_borders2_384", "View_SBCon_comattr_borders2_385",
  "View_SBCon_comattr_borders2_386", "View_SBCon_comattr_borders2_387", "View_SBCon_comattr_borders2_388", "View_SBCon_comattr_borders2_389", "View_SBCon_comattr_borders2_390",
  "View_SBCon_comattr_borders2_391", "View_SBCon_comattr_borders2_392", "View_SBCon_comattr_borders2_393", "View_SBCon_comattr_borders2_394", "View_SBCon_comattr_borders2_395",
  "View_SBCon_comattr_borders2_396", "View_SBCon_comattr_borders2_397", "View_SBCon_comattr_borders2_398", "View_SBCon_comattr_borders2_399", "View_SBCon_comattr_borders2_400" ],
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
