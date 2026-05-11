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

package ohos_app_cangjie_entry.RCon_ca_markanchor_01

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
class index_RCon_ca_markanchor_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RelCon_comattr_markanchor_1", "View_RelCon_comattr_markanchor_2", "View_RelCon_comattr_markanchor_3", "View_RelCon_comattr_markanchor_4", "View_RelCon_comattr_markanchor_5",
  "View_RelCon_comattr_markanchor_6", "View_RelCon_comattr_markanchor_7", "View_RelCon_comattr_markanchor_8", "View_RelCon_comattr_markanchor_9", "View_RelCon_comattr_markanchor_10",
  "View_RelCon_comattr_markanchor_11", "View_RelCon_comattr_markanchor_12", "View_RelCon_comattr_markanchor_13", "View_RelCon_comattr_markanchor_14", "View_RelCon_comattr_markanchor_15",
  "View_RelCon_comattr_markanchor_16", "View_RelCon_comattr_markanchor_17", "View_RelCon_comattr_markanchor_18", "View_RelCon_comattr_markanchor_19", "View_RelCon_comattr_markanchor_20",
  "View_RelCon_comattr_markanchor_21", "View_RelCon_comattr_markanchor_22", "View_RelCon_comattr_markanchor_23", "View_RelCon_comattr_markanchor_24", "View_RelCon_comattr_markanchor_25",
  "View_RelCon_comattr_markanchor_26", "View_RelCon_comattr_markanchor_27", "View_RelCon_comattr_markanchor_28", "View_RelCon_comattr_markanchor_29", "View_RelCon_comattr_markanchor_30",
  "View_RelCon_comattr_markanchor_31", "View_RelCon_comattr_markanchor_32", "View_RelCon_comattr_markanchor_33", "View_RelCon_comattr_markanchor_34", "View_RelCon_comattr_markanchor_35",
  "View_RelCon_comattr_markanchor_36", "View_RelCon_comattr_markanchor_37", "View_RelCon_comattr_markanchor_38", "View_RelCon_comattr_markanchor_39", "View_RelCon_comattr_markanchor_40",
  "View_RelCon_comattr_markanchor_41", "View_RelCon_comattr_markanchor_42", "View_RelCon_comattr_markanchor_43", "View_RelCon_comattr_markanchor_44", "View_RelCon_comattr_markanchor_45",
  "View_RelCon_comattr_markanchor_46", "View_RelCon_comattr_markanchor_47", "View_RelCon_comattr_markanchor_48", "View_RelCon_comattr_markanchor_49", "View_RelCon_comattr_markanchor_50",
  "View_RelCon_comattr_markanchor_51", "View_RelCon_comattr_markanchor_52", "View_RelCon_comattr_markanchor_53", "View_RelCon_comattr_markanchor_54", "View_RelCon_comattr_markanchor_55",
  "View_RelCon_comattr_markanchor_56", "View_RelCon_comattr_markanchor_57", "View_RelCon_comattr_markanchor_58", "View_RelCon_comattr_markanchor_59", "View_RelCon_comattr_markanchor_60",
  "View_RelCon_comattr_markanchor_61", "View_RelCon_comattr_markanchor_62", "View_RelCon_comattr_markanchor_63", "View_RelCon_comattr_markanchor_64", "View_RelCon_comattr_markanchor_65",
  "View_RelCon_comattr_markanchor_66", "View_RelCon_comattr_markanchor_67", "View_RelCon_comattr_markanchor_68", "View_RelCon_comattr_markanchor_69", "View_RelCon_comattr_markanchor_70",
  "View_RelCon_comattr_markanchor_71", "View_RelCon_comattr_markanchor_72", "View_RelCon_comattr_markanchor_73", "View_RelCon_comattr_markanchor_74", "View_RelCon_comattr_markanchor_75",
  "View_RelCon_comattr_markanchor_76", "View_RelCon_comattr_markanchor_77", "View_RelCon_comattr_markanchor_78", "View_RelCon_comattr_markanchor_79", "View_RelCon_comattr_markanchor_80",
  "View_RelCon_comattr_markanchor_81", "View_RelCon_comattr_markanchor_82", "View_RelCon_comattr_markanchor_83", "View_RelCon_comattr_markanchor_84", "View_RelCon_comattr_markanchor_85",
  "View_RelCon_comattr_markanchor_86", "View_RelCon_comattr_markanchor_87", "View_RelCon_comattr_markanchor_88", "View_RelCon_comattr_markanchor_89", "View_RelCon_comattr_markanchor_90",
  "View_RelCon_comattr_markanchor_91", "View_RelCon_comattr_markanchor_92", "View_RelCon_comattr_markanchor_93", "View_RelCon_comattr_markanchor_94", "View_RelCon_comattr_markanchor_95",
  "View_RelCon_comattr_markanchor_96", "View_RelCon_comattr_markanchor_97", "View_RelCon_comattr_markanchor_98", "View_RelCon_comattr_markanchor_99", "View_RelCon_comattr_markanchor_100",
  "View_RelCon_comattr_markanchor_101", "View_RelCon_comattr_markanchor_102", "View_RelCon_comattr_markanchor_103", "View_RelCon_comattr_markanchor_104", "View_RelCon_comattr_markanchor_105",
  "View_RelCon_comattr_markanchor_106", "View_RelCon_comattr_markanchor_107", "View_RelCon_comattr_markanchor_108", "View_RelCon_comattr_markanchor_109", "View_RelCon_comattr_markanchor_110",
  "View_RelCon_comattr_markanchor_111", "View_RelCon_comattr_markanchor_112", "View_RelCon_comattr_markanchor_113", "View_RelCon_comattr_markanchor_114", "View_RelCon_comattr_markanchor_115",
  "View_RelCon_comattr_markanchor_116", "View_RelCon_comattr_markanchor_117", "View_RelCon_comattr_markanchor_118", "View_RelCon_comattr_markanchor_119", "View_RelCon_comattr_markanchor_120",
  "View_RelCon_comattr_markanchor_121", "View_RelCon_comattr_markanchor_122", "View_RelCon_comattr_markanchor_123", "View_RelCon_comattr_markanchor_124", "View_RelCon_comattr_markanchor_125",
  "View_RelCon_comattr_markanchor_126", "View_RelCon_comattr_markanchor_127", "View_RelCon_comattr_markanchor_128", "View_RelCon_comattr_markanchor_129", "View_RelCon_comattr_markanchor_130",
  "View_RelCon_comattr_markanchor_131", "View_RelCon_comattr_markanchor_132", "View_RelCon_comattr_markanchor_133", "View_RelCon_comattr_markanchor_134", "View_RelCon_comattr_markanchor_135",
  "View_RelCon_comattr_markanchor_136", "View_RelCon_comattr_markanchor_137", "View_RelCon_comattr_markanchor_138", "View_RelCon_comattr_markanchor_139", "View_RelCon_comattr_markanchor_140",
  "View_RelCon_comattr_markanchor_141", "View_RelCon_comattr_markanchor_142", "View_RelCon_comattr_markanchor_143", "View_RelCon_comattr_markanchor_144", "View_RelCon_comattr_markanchor_145",
  "View_RelCon_comattr_markanchor_146", "View_RelCon_comattr_markanchor_147", "View_RelCon_comattr_markanchor_148", "View_RelCon_comattr_markanchor_149", "View_RelCon_comattr_markanchor_150",
  "View_RelCon_comattr_markanchor_151", "View_RelCon_comattr_markanchor_152", "View_RelCon_comattr_markanchor_153", "View_RelCon_comattr_markanchor_154", "View_RelCon_comattr_markanchor_155",
  "View_RelCon_comattr_markanchor_156", "View_RelCon_comattr_markanchor_157", "View_RelCon_comattr_markanchor_158", "View_RelCon_comattr_markanchor_159", "View_RelCon_comattr_markanchor_160",
  "View_RelCon_comattr_markanchor_161", "View_RelCon_comattr_markanchor_162", "View_RelCon_comattr_markanchor_163", "View_RelCon_comattr_markanchor_164", "View_RelCon_comattr_markanchor_165",
  "View_RelCon_comattr_markanchor_166", "View_RelCon_comattr_markanchor_167", "View_RelCon_comattr_markanchor_168", "View_RelCon_comattr_markanchor_169", "View_RelCon_comattr_markanchor_170",
  "View_RelCon_comattr_markanchor_171", "View_RelCon_comattr_markanchor_172", "View_RelCon_comattr_markanchor_173", "View_RelCon_comattr_markanchor_174", "View_RelCon_comattr_markanchor_175",
  "View_RelCon_comattr_markanchor_176", "View_RelCon_comattr_markanchor_177", "View_RelCon_comattr_markanchor_178", "View_RelCon_comattr_markanchor_179", "View_RelCon_comattr_markanchor_180",
  "View_RelCon_comattr_markanchor_181", "View_RelCon_comattr_markanchor_182", "View_RelCon_comattr_markanchor_183", "View_RelCon_comattr_markanchor_184", "View_RelCon_comattr_markanchor_185",
  "View_RelCon_comattr_markanchor_186", "View_RelCon_comattr_markanchor_187", "View_RelCon_comattr_markanchor_188", "View_RelCon_comattr_markanchor_189", "View_RelCon_comattr_markanchor_190",
  "View_RelCon_comattr_markanchor_191", "View_RelCon_comattr_markanchor_192", "View_RelCon_comattr_markanchor_193", "View_RelCon_comattr_markanchor_194", "View_RelCon_comattr_markanchor_195",
  "View_RelCon_comattr_markanchor_196", "View_RelCon_comattr_markanchor_197", "View_RelCon_comattr_markanchor_198", "View_RelCon_comattr_markanchor_199", "View_RelCon_comattr_markanchor_200",
  "View_RelCon_comattr_markanchor_201", "View_RelCon_comattr_markanchor_202", "View_RelCon_comattr_markanchor_203", "View_RelCon_comattr_markanchor_204", "View_RelCon_comattr_markanchor_205",
  "View_RelCon_comattr_markanchor_206", "View_RelCon_comattr_markanchor_207", "View_RelCon_comattr_markanchor_208", "View_RelCon_comattr_markanchor_209", "View_RelCon_comattr_markanchor_210",
  "View_RelCon_comattr_markanchor_211", "View_RelCon_comattr_markanchor_212", "View_RelCon_comattr_markanchor_213", "View_RelCon_comattr_markanchor_214", "View_RelCon_comattr_markanchor_215",
  "View_RelCon_comattr_markanchor_216", "View_RelCon_comattr_markanchor_217", "View_RelCon_comattr_markanchor_218", "View_RelCon_comattr_markanchor_219", "View_RelCon_comattr_markanchor_220",
  "View_RelCon_comattr_markanchor_221", "View_RelCon_comattr_markanchor_222", "View_RelCon_comattr_markanchor_223", "View_RelCon_comattr_markanchor_224", "View_RelCon_comattr_markanchor_225",
  "View_RelCon_comattr_markanchor_226", "View_RelCon_comattr_markanchor_227", "View_RelCon_comattr_markanchor_228", "View_RelCon_comattr_markanchor_229", "View_RelCon_comattr_markanchor_230",
  "View_RelCon_comattr_markanchor_231", "View_RelCon_comattr_markanchor_232", "View_RelCon_comattr_markanchor_233", "View_RelCon_comattr_markanchor_234", "View_RelCon_comattr_markanchor_235",
  "View_RelCon_comattr_markanchor_236", "View_RelCon_comattr_markanchor_237", "View_RelCon_comattr_markanchor_238", "View_RelCon_comattr_markanchor_239", "View_RelCon_comattr_markanchor_240",
  "View_RelCon_comattr_markanchor_241", "View_RelCon_comattr_markanchor_242", "View_RelCon_comattr_markanchor_243", "View_RelCon_comattr_markanchor_244", "View_RelCon_comattr_markanchor_245",
  "View_RelCon_comattr_markanchor_246", "View_RelCon_comattr_markanchor_247", "View_RelCon_comattr_markanchor_248", "View_RelCon_comattr_markanchor_249", "View_RelCon_comattr_markanchor_250",
  "View_RelCon_comattr_markanchor_251", "View_RelCon_comattr_markanchor_252", "View_RelCon_comattr_markanchor_253", "View_RelCon_comattr_markanchor_254", "View_RelCon_comattr_markanchor_255",
  "View_RelCon_comattr_markanchor_256", "View_RelCon_comattr_markanchor_257", "View_RelCon_comattr_markanchor_258", "View_RelCon_comattr_markanchor_259", "View_RelCon_comattr_markanchor_260",
  "View_RelCon_comattr_markanchor_261", "View_RelCon_comattr_markanchor_262", "View_RelCon_comattr_markanchor_263", "View_RelCon_comattr_markanchor_264", "View_RelCon_comattr_markanchor_265",
  "View_RelCon_comattr_markanchor_266", "View_RelCon_comattr_markanchor_267", "View_RelCon_comattr_markanchor_268", "View_RelCon_comattr_markanchor_269", "View_RelCon_comattr_markanchor_270",
  "View_RelCon_comattr_markanchor_271", "View_RelCon_comattr_markanchor_272", "View_RelCon_comattr_markanchor_273", "View_RelCon_comattr_markanchor_274", "View_RelCon_comattr_markanchor_275",
  "View_RelCon_comattr_markanchor_276", "View_RelCon_comattr_markanchor_277", "View_RelCon_comattr_markanchor_278", "View_RelCon_comattr_markanchor_279", "View_RelCon_comattr_markanchor_280",
  "View_RelCon_comattr_markanchor_281", "View_RelCon_comattr_markanchor_282", "View_RelCon_comattr_markanchor_283", "View_RelCon_comattr_markanchor_284", "View_RelCon_comattr_markanchor_285",
  "View_RelCon_comattr_markanchor_286", "View_RelCon_comattr_markanchor_287", "View_RelCon_comattr_markanchor_288", "View_RelCon_comattr_markanchor_289", "View_RelCon_comattr_markanchor_290",
  "View_RelCon_comattr_markanchor_291", "View_RelCon_comattr_markanchor_292", "View_RelCon_comattr_markanchor_293", "View_RelCon_comattr_markanchor_294", "View_RelCon_comattr_markanchor_295",
  "View_RelCon_comattr_markanchor_296", "View_RelCon_comattr_markanchor_297", "View_RelCon_comattr_markanchor_298", "View_RelCon_comattr_markanchor_299", "View_RelCon_comattr_markanchor_300",
  "View_RelCon_comattr_markanchor_301", "View_RelCon_comattr_markanchor_302", "View_RelCon_comattr_markanchor_303", "View_RelCon_comattr_markanchor_304", "View_RelCon_comattr_markanchor_305",
  "View_RelCon_comattr_markanchor_306", "View_RelCon_comattr_markanchor_307", "View_RelCon_comattr_markanchor_308", "View_RelCon_comattr_markanchor_309", "View_RelCon_comattr_markanchor_310",
  "View_RelCon_comattr_markanchor_311", "View_RelCon_comattr_markanchor_312", "View_RelCon_comattr_markanchor_313", "View_RelCon_comattr_markanchor_314", "View_RelCon_comattr_markanchor_315",
  "View_RelCon_comattr_markanchor_316", "View_RelCon_comattr_markanchor_317", "View_RelCon_comattr_markanchor_318", "View_RelCon_comattr_markanchor_319", "View_RelCon_comattr_markanchor_320",
  "View_RelCon_comattr_markanchor_321", "View_RelCon_comattr_markanchor_322", "View_RelCon_comattr_markanchor_323", "View_RelCon_comattr_markanchor_324", "View_RelCon_comattr_markanchor_325",
  "View_RelCon_comattr_markanchor_326", "View_RelCon_comattr_markanchor_327", "View_RelCon_comattr_markanchor_328", "View_RelCon_comattr_markanchor_329", "View_RelCon_comattr_markanchor_330",
  "View_RelCon_comattr_markanchor_331", "View_RelCon_comattr_markanchor_332", "View_RelCon_comattr_markanchor_333", "View_RelCon_comattr_markanchor_334", "View_RelCon_comattr_markanchor_335",
  "View_RelCon_comattr_markanchor_336", "View_RelCon_comattr_markanchor_337", "View_RelCon_comattr_markanchor_338", "View_RelCon_comattr_markanchor_339", "View_RelCon_comattr_markanchor_340",
  "View_RelCon_comattr_markanchor_341", "View_RelCon_comattr_markanchor_342", "View_RelCon_comattr_markanchor_343", "View_RelCon_comattr_markanchor_344", "View_RelCon_comattr_markanchor_345",
  "View_RelCon_comattr_markanchor_346", "View_RelCon_comattr_markanchor_347", "View_RelCon_comattr_markanchor_348", "View_RelCon_comattr_markanchor_349", "View_RelCon_comattr_markanchor_350",
  "View_RelCon_comattr_markanchor_351", "View_RelCon_comattr_markanchor_352", "View_RelCon_comattr_markanchor_353", "View_RelCon_comattr_markanchor_354", "View_RelCon_comattr_markanchor_355",
  "View_RelCon_comattr_markanchor_356", "View_RelCon_comattr_markanchor_357", "View_RelCon_comattr_markanchor_358", "View_RelCon_comattr_markanchor_359", "View_RelCon_comattr_markanchor_360",
  "View_RelCon_comattr_markanchor_361", "View_RelCon_comattr_markanchor_362", "View_RelCon_comattr_markanchor_363", "View_RelCon_comattr_markanchor_364", "View_RelCon_comattr_markanchor_365",
  "View_RelCon_comattr_markanchor_366", "View_RelCon_comattr_markanchor_367", "View_RelCon_comattr_markanchor_368", "View_RelCon_comattr_markanchor_369", "View_RelCon_comattr_markanchor_370",
  "View_RelCon_comattr_markanchor_371", "View_RelCon_comattr_markanchor_372", "View_RelCon_comattr_markanchor_373", "View_RelCon_comattr_markanchor_374", "View_RelCon_comattr_markanchor_375",
  "View_RelCon_comattr_markanchor_376", "View_RelCon_comattr_markanchor_377", "View_RelCon_comattr_markanchor_378", "View_RelCon_comattr_markanchor_379", "View_RelCon_comattr_markanchor_380",
  "View_RelCon_comattr_markanchor_381", "View_RelCon_comattr_markanchor_382", "View_RelCon_comattr_markanchor_383", "View_RelCon_comattr_markanchor_384", "View_RelCon_comattr_markanchor_385",
  "View_RelCon_comattr_markanchor_386", "View_RelCon_comattr_markanchor_387", "View_RelCon_comattr_markanchor_388", "View_RelCon_comattr_markanchor_389", "View_RelCon_comattr_markanchor_390",
  "View_RelCon_comattr_markanchor_391", "View_RelCon_comattr_markanchor_392", "View_RelCon_comattr_markanchor_393", "View_RelCon_comattr_markanchor_394", "View_RelCon_comattr_markanchor_395",
  "View_RelCon_comattr_markanchor_396", "View_RelCon_comattr_markanchor_397", "View_RelCon_comattr_markanchor_398", "View_RelCon_comattr_markanchor_399", "View_RelCon_comattr_markanchor_400" ],
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
