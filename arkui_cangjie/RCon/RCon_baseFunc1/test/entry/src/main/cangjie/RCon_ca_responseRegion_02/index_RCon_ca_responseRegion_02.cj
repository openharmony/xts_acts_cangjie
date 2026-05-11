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

package ohos_app_cangjie_entry.RCon_ca_responseRegion_02

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
class index_RCon_ca_responseRegion_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RelCon_comattr_responseregion2_1", "View_RelCon_comattr_responseregion2_2", "View_RelCon_comattr_responseregion2_3", "View_RelCon_comattr_responseregion2_4", "View_RelCon_comattr_responseregion2_5",
  "View_RelCon_comattr_responseregion2_6", "View_RelCon_comattr_responseregion2_7", "View_RelCon_comattr_responseregion2_8", "View_RelCon_comattr_responseregion2_9", "View_RelCon_comattr_responseregion2_10",
  "View_RelCon_comattr_responseregion2_11", "View_RelCon_comattr_responseregion2_12", "View_RelCon_comattr_responseregion2_13", "View_RelCon_comattr_responseregion2_14", "View_RelCon_comattr_responseregion2_15",
  "View_RelCon_comattr_responseregion2_16", "View_RelCon_comattr_responseregion2_17", "View_RelCon_comattr_responseregion2_18", "View_RelCon_comattr_responseregion2_19", "View_RelCon_comattr_responseregion2_20",
  "View_RelCon_comattr_responseregion2_21", "View_RelCon_comattr_responseregion2_22", "View_RelCon_comattr_responseregion2_23", "View_RelCon_comattr_responseregion2_24", "View_RelCon_comattr_responseregion2_25",
  "View_RelCon_comattr_responseregion2_26", "View_RelCon_comattr_responseregion2_27", "View_RelCon_comattr_responseregion2_28", "View_RelCon_comattr_responseregion2_29", "View_RelCon_comattr_responseregion2_30",
  "View_RelCon_comattr_responseregion2_31", "View_RelCon_comattr_responseregion2_32", "View_RelCon_comattr_responseregion2_33", "View_RelCon_comattr_responseregion2_34", "View_RelCon_comattr_responseregion2_35",
  "View_RelCon_comattr_responseregion2_36", "View_RelCon_comattr_responseregion2_37", "View_RelCon_comattr_responseregion2_38", "View_RelCon_comattr_responseregion2_39", "View_RelCon_comattr_responseregion2_40",
  "View_RelCon_comattr_responseregion2_41", "View_RelCon_comattr_responseregion2_42", "View_RelCon_comattr_responseregion2_43", "View_RelCon_comattr_responseregion2_44", "View_RelCon_comattr_responseregion2_45",
  "View_RelCon_comattr_responseregion2_46", "View_RelCon_comattr_responseregion2_47", "View_RelCon_comattr_responseregion2_48", "View_RelCon_comattr_responseregion2_49", "View_RelCon_comattr_responseregion2_50",
  "View_RelCon_comattr_responseregion2_51", "View_RelCon_comattr_responseregion2_52", "View_RelCon_comattr_responseregion2_53", "View_RelCon_comattr_responseregion2_54", "View_RelCon_comattr_responseregion2_55",
  "View_RelCon_comattr_responseregion2_56", "View_RelCon_comattr_responseregion2_57", "View_RelCon_comattr_responseregion2_58", "View_RelCon_comattr_responseregion2_59", "View_RelCon_comattr_responseregion2_60",
  "View_RelCon_comattr_responseregion2_61", "View_RelCon_comattr_responseregion2_62", "View_RelCon_comattr_responseregion2_63", "View_RelCon_comattr_responseregion2_64", "View_RelCon_comattr_responseregion2_65",
  "View_RelCon_comattr_responseregion2_66", "View_RelCon_comattr_responseregion2_67", "View_RelCon_comattr_responseregion2_68", "View_RelCon_comattr_responseregion2_69", "View_RelCon_comattr_responseregion2_70",
  "View_RelCon_comattr_responseregion2_71", "View_RelCon_comattr_responseregion2_72", "View_RelCon_comattr_responseregion2_73", "View_RelCon_comattr_responseregion2_74", "View_RelCon_comattr_responseregion2_75",
  "View_RelCon_comattr_responseregion2_76", "View_RelCon_comattr_responseregion2_77", "View_RelCon_comattr_responseregion2_78", "View_RelCon_comattr_responseregion2_79", "View_RelCon_comattr_responseregion2_80",
  "View_RelCon_comattr_responseregion2_81", "View_RelCon_comattr_responseregion2_82", "View_RelCon_comattr_responseregion2_83", "View_RelCon_comattr_responseregion2_84", "View_RelCon_comattr_responseregion2_85",
  "View_RelCon_comattr_responseregion2_86", "View_RelCon_comattr_responseregion2_87", "View_RelCon_comattr_responseregion2_88", "View_RelCon_comattr_responseregion2_89", "View_RelCon_comattr_responseregion2_90",
  "View_RelCon_comattr_responseregion2_91", "View_RelCon_comattr_responseregion2_92", "View_RelCon_comattr_responseregion2_93", "View_RelCon_comattr_responseregion2_94", "View_RelCon_comattr_responseregion2_95",
  "View_RelCon_comattr_responseregion2_96", "View_RelCon_comattr_responseregion2_97", "View_RelCon_comattr_responseregion2_98", "View_RelCon_comattr_responseregion2_99", "View_RelCon_comattr_responseregion2_100",
  "View_RelCon_comattr_responseregion2_101", "View_RelCon_comattr_responseregion2_102", "View_RelCon_comattr_responseregion2_103", "View_RelCon_comattr_responseregion2_104", "View_RelCon_comattr_responseregion2_105",
  "View_RelCon_comattr_responseregion2_106", "View_RelCon_comattr_responseregion2_107", "View_RelCon_comattr_responseregion2_108", "View_RelCon_comattr_responseregion2_109", "View_RelCon_comattr_responseregion2_110",
  "View_RelCon_comattr_responseregion2_111", "View_RelCon_comattr_responseregion2_112", "View_RelCon_comattr_responseregion2_113", "View_RelCon_comattr_responseregion2_114", "View_RelCon_comattr_responseregion2_115",
  "View_RelCon_comattr_responseregion2_116", "View_RelCon_comattr_responseregion2_117", "View_RelCon_comattr_responseregion2_118", "View_RelCon_comattr_responseregion2_119", "View_RelCon_comattr_responseregion2_120",
  "View_RelCon_comattr_responseregion2_121", "View_RelCon_comattr_responseregion2_122", "View_RelCon_comattr_responseregion2_123", "View_RelCon_comattr_responseregion2_124", "View_RelCon_comattr_responseregion2_125",
  "View_RelCon_comattr_responseregion2_126", "View_RelCon_comattr_responseregion2_127", "View_RelCon_comattr_responseregion2_128", "View_RelCon_comattr_responseregion2_129", "View_RelCon_comattr_responseregion2_130",
  "View_RelCon_comattr_responseregion2_131", "View_RelCon_comattr_responseregion2_132", "View_RelCon_comattr_responseregion2_133", "View_RelCon_comattr_responseregion2_134", "View_RelCon_comattr_responseregion2_135",
  "View_RelCon_comattr_responseregion2_136", "View_RelCon_comattr_responseregion2_137", "View_RelCon_comattr_responseregion2_138", "View_RelCon_comattr_responseregion2_139", "View_RelCon_comattr_responseregion2_140",
  "View_RelCon_comattr_responseregion2_141", "View_RelCon_comattr_responseregion2_142", "View_RelCon_comattr_responseregion2_143", "View_RelCon_comattr_responseregion2_144", "View_RelCon_comattr_responseregion2_145",
  "View_RelCon_comattr_responseregion2_146", "View_RelCon_comattr_responseregion2_147", "View_RelCon_comattr_responseregion2_148", "View_RelCon_comattr_responseregion2_149", "View_RelCon_comattr_responseregion2_150",
  "View_RelCon_comattr_responseregion2_151", "View_RelCon_comattr_responseregion2_152", "View_RelCon_comattr_responseregion2_153", "View_RelCon_comattr_responseregion2_154", "View_RelCon_comattr_responseregion2_155",
  "View_RelCon_comattr_responseregion2_156", "View_RelCon_comattr_responseregion2_157", "View_RelCon_comattr_responseregion2_158", "View_RelCon_comattr_responseregion2_159", "View_RelCon_comattr_responseregion2_160",
  "View_RelCon_comattr_responseregion2_161", "View_RelCon_comattr_responseregion2_162", "View_RelCon_comattr_responseregion2_163", "View_RelCon_comattr_responseregion2_164", "View_RelCon_comattr_responseregion2_165",
  "View_RelCon_comattr_responseregion2_166", "View_RelCon_comattr_responseregion2_167", "View_RelCon_comattr_responseregion2_168", "View_RelCon_comattr_responseregion2_169", "View_RelCon_comattr_responseregion2_170",
  "View_RelCon_comattr_responseregion2_171", "View_RelCon_comattr_responseregion2_172", "View_RelCon_comattr_responseregion2_173", "View_RelCon_comattr_responseregion2_174", "View_RelCon_comattr_responseregion2_175",
  "View_RelCon_comattr_responseregion2_176", "View_RelCon_comattr_responseregion2_177", "View_RelCon_comattr_responseregion2_178", "View_RelCon_comattr_responseregion2_179", "View_RelCon_comattr_responseregion2_180",
  "View_RelCon_comattr_responseregion2_181", "View_RelCon_comattr_responseregion2_182", "View_RelCon_comattr_responseregion2_183", "View_RelCon_comattr_responseregion2_184", "View_RelCon_comattr_responseregion2_185",
  "View_RelCon_comattr_responseregion2_186", "View_RelCon_comattr_responseregion2_187", "View_RelCon_comattr_responseregion2_188", "View_RelCon_comattr_responseregion2_189", "View_RelCon_comattr_responseregion2_190",
  "View_RelCon_comattr_responseregion2_191", "View_RelCon_comattr_responseregion2_192", "View_RelCon_comattr_responseregion2_193", "View_RelCon_comattr_responseregion2_194", "View_RelCon_comattr_responseregion2_195",
  "View_RelCon_comattr_responseregion2_196", "View_RelCon_comattr_responseregion2_197", "View_RelCon_comattr_responseregion2_198", "View_RelCon_comattr_responseregion2_199", "View_RelCon_comattr_responseregion2_200",
  "View_RelCon_comattr_responseregion2_201", "View_RelCon_comattr_responseregion2_202", "View_RelCon_comattr_responseregion2_203", "View_RelCon_comattr_responseregion2_204", "View_RelCon_comattr_responseregion2_205",
  "View_RelCon_comattr_responseregion2_206", "View_RelCon_comattr_responseregion2_207", "View_RelCon_comattr_responseregion2_208", "View_RelCon_comattr_responseregion2_209", "View_RelCon_comattr_responseregion2_210",
  "View_RelCon_comattr_responseregion2_211", "View_RelCon_comattr_responseregion2_212", "View_RelCon_comattr_responseregion2_213", "View_RelCon_comattr_responseregion2_214", "View_RelCon_comattr_responseregion2_215",
  "View_RelCon_comattr_responseregion2_216", "View_RelCon_comattr_responseregion2_217", "View_RelCon_comattr_responseregion2_218", "View_RelCon_comattr_responseregion2_219", "View_RelCon_comattr_responseregion2_220",
  "View_RelCon_comattr_responseregion2_221", "View_RelCon_comattr_responseregion2_222", "View_RelCon_comattr_responseregion2_223", "View_RelCon_comattr_responseregion2_224", "View_RelCon_comattr_responseregion2_225",
  "View_RelCon_comattr_responseregion2_226", "View_RelCon_comattr_responseregion2_227", "View_RelCon_comattr_responseregion2_228", "View_RelCon_comattr_responseregion2_229", "View_RelCon_comattr_responseregion2_230",
  "View_RelCon_comattr_responseregion2_231", "View_RelCon_comattr_responseregion2_232", "View_RelCon_comattr_responseregion2_233", "View_RelCon_comattr_responseregion2_234", "View_RelCon_comattr_responseregion2_235",
  "View_RelCon_comattr_responseregion2_236", "View_RelCon_comattr_responseregion2_237", "View_RelCon_comattr_responseregion2_238", "View_RelCon_comattr_responseregion2_239", "View_RelCon_comattr_responseregion2_240",
  "View_RelCon_comattr_responseregion2_241", "View_RelCon_comattr_responseregion2_242", "View_RelCon_comattr_responseregion2_243", "View_RelCon_comattr_responseregion2_244", "View_RelCon_comattr_responseregion2_245",
  "View_RelCon_comattr_responseregion2_246", "View_RelCon_comattr_responseregion2_247", "View_RelCon_comattr_responseregion2_248", "View_RelCon_comattr_responseregion2_249", "View_RelCon_comattr_responseregion2_250",
  "View_RelCon_comattr_responseregion2_251", "View_RelCon_comattr_responseregion2_252", "View_RelCon_comattr_responseregion2_253", "View_RelCon_comattr_responseregion2_254", "View_RelCon_comattr_responseregion2_255",
  "View_RelCon_comattr_responseregion2_256", "View_RelCon_comattr_responseregion2_257", "View_RelCon_comattr_responseregion2_258", "View_RelCon_comattr_responseregion2_259", "View_RelCon_comattr_responseregion2_260",
  "View_RelCon_comattr_responseregion2_261", "View_RelCon_comattr_responseregion2_262", "View_RelCon_comattr_responseregion2_263", "View_RelCon_comattr_responseregion2_264", "View_RelCon_comattr_responseregion2_265",
  "View_RelCon_comattr_responseregion2_266", "View_RelCon_comattr_responseregion2_267", "View_RelCon_comattr_responseregion2_268", "View_RelCon_comattr_responseregion2_269", "View_RelCon_comattr_responseregion2_270",
  "View_RelCon_comattr_responseregion2_271", "View_RelCon_comattr_responseregion2_272", "View_RelCon_comattr_responseregion2_273", "View_RelCon_comattr_responseregion2_274", "View_RelCon_comattr_responseregion2_275",
  "View_RelCon_comattr_responseregion2_276", "View_RelCon_comattr_responseregion2_277", "View_RelCon_comattr_responseregion2_278", "View_RelCon_comattr_responseregion2_279", "View_RelCon_comattr_responseregion2_280",
  "View_RelCon_comattr_responseregion2_281", "View_RelCon_comattr_responseregion2_282", "View_RelCon_comattr_responseregion2_283", "View_RelCon_comattr_responseregion2_284", "View_RelCon_comattr_responseregion2_285",
  "View_RelCon_comattr_responseregion2_286", "View_RelCon_comattr_responseregion2_287", "View_RelCon_comattr_responseregion2_288", "View_RelCon_comattr_responseregion2_289", "View_RelCon_comattr_responseregion2_290",
  "View_RelCon_comattr_responseregion2_291", "View_RelCon_comattr_responseregion2_292", "View_RelCon_comattr_responseregion2_293", "View_RelCon_comattr_responseregion2_294", "View_RelCon_comattr_responseregion2_295",
  "View_RelCon_comattr_responseregion2_296", "View_RelCon_comattr_responseregion2_297", "View_RelCon_comattr_responseregion2_298", "View_RelCon_comattr_responseregion2_299", "View_RelCon_comattr_responseregion2_300",
  "View_RelCon_comattr_responseregion2_301", "View_RelCon_comattr_responseregion2_302", "View_RelCon_comattr_responseregion2_303", "View_RelCon_comattr_responseregion2_304", "View_RelCon_comattr_responseregion2_305",
  "View_RelCon_comattr_responseregion2_306", "View_RelCon_comattr_responseregion2_307", "View_RelCon_comattr_responseregion2_308", "View_RelCon_comattr_responseregion2_309", "View_RelCon_comattr_responseregion2_310",
  "View_RelCon_comattr_responseregion2_311", "View_RelCon_comattr_responseregion2_312", "View_RelCon_comattr_responseregion2_313", "View_RelCon_comattr_responseregion2_314", "View_RelCon_comattr_responseregion2_315",
  "View_RelCon_comattr_responseregion2_316", "View_RelCon_comattr_responseregion2_317", "View_RelCon_comattr_responseregion2_318", "View_RelCon_comattr_responseregion2_319", "View_RelCon_comattr_responseregion2_320",
  "View_RelCon_comattr_responseregion2_321", "View_RelCon_comattr_responseregion2_322", "View_RelCon_comattr_responseregion2_323", "View_RelCon_comattr_responseregion2_324", "View_RelCon_comattr_responseregion2_325",
  "View_RelCon_comattr_responseregion2_326", "View_RelCon_comattr_responseregion2_327", "View_RelCon_comattr_responseregion2_328", "View_RelCon_comattr_responseregion2_329", "View_RelCon_comattr_responseregion2_330",
  "View_RelCon_comattr_responseregion2_331", "View_RelCon_comattr_responseregion2_332", "View_RelCon_comattr_responseregion2_333", "View_RelCon_comattr_responseregion2_334", "View_RelCon_comattr_responseregion2_335",
  "View_RelCon_comattr_responseregion2_336", "View_RelCon_comattr_responseregion2_337", "View_RelCon_comattr_responseregion2_338", "View_RelCon_comattr_responseregion2_339", "View_RelCon_comattr_responseregion2_340",
  "View_RelCon_comattr_responseregion2_341", "View_RelCon_comattr_responseregion2_342", "View_RelCon_comattr_responseregion2_343", "View_RelCon_comattr_responseregion2_344", "View_RelCon_comattr_responseregion2_345",
  "View_RelCon_comattr_responseregion2_346", "View_RelCon_comattr_responseregion2_347", "View_RelCon_comattr_responseregion2_348", "View_RelCon_comattr_responseregion2_349", "View_RelCon_comattr_responseregion2_350",
  "View_RelCon_comattr_responseregion2_351", "View_RelCon_comattr_responseregion2_352", "View_RelCon_comattr_responseregion2_353", "View_RelCon_comattr_responseregion2_354", "View_RelCon_comattr_responseregion2_355",
  "View_RelCon_comattr_responseregion2_356", "View_RelCon_comattr_responseregion2_357", "View_RelCon_comattr_responseregion2_358", "View_RelCon_comattr_responseregion2_359", "View_RelCon_comattr_responseregion2_360",
  "View_RelCon_comattr_responseregion2_361", "View_RelCon_comattr_responseregion2_362", "View_RelCon_comattr_responseregion2_363", "View_RelCon_comattr_responseregion2_364", "View_RelCon_comattr_responseregion2_365",
  "View_RelCon_comattr_responseregion2_366", "View_RelCon_comattr_responseregion2_367", "View_RelCon_comattr_responseregion2_368", "View_RelCon_comattr_responseregion2_369", "View_RelCon_comattr_responseregion2_370",
  "View_RelCon_comattr_responseregion2_371", "View_RelCon_comattr_responseregion2_372", "View_RelCon_comattr_responseregion2_373", "View_RelCon_comattr_responseregion2_374", "View_RelCon_comattr_responseregion2_375",
  "View_RelCon_comattr_responseregion2_376", "View_RelCon_comattr_responseregion2_377", "View_RelCon_comattr_responseregion2_378", "View_RelCon_comattr_responseregion2_379", "View_RelCon_comattr_responseregion2_380",
  "View_RelCon_comattr_responseregion2_381", "View_RelCon_comattr_responseregion2_382", "View_RelCon_comattr_responseregion2_383", "View_RelCon_comattr_responseregion2_384", "View_RelCon_comattr_responseregion2_385",
  "View_RelCon_comattr_responseregion2_386", "View_RelCon_comattr_responseregion2_387", "View_RelCon_comattr_responseregion2_388", "View_RelCon_comattr_responseregion2_389", "View_RelCon_comattr_responseregion2_390",
  "View_RelCon_comattr_responseregion2_391", "View_RelCon_comattr_responseregion2_392", "View_RelCon_comattr_responseregion2_393", "View_RelCon_comattr_responseregion2_394", "View_RelCon_comattr_responseregion2_395",
  "View_RelCon_comattr_responseregion2_396", "View_RelCon_comattr_responseregion2_397", "View_RelCon_comattr_responseregion2_398", "View_RelCon_comattr_responseregion2_399", "View_RelCon_comattr_responseregion2_400" ],
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
