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

package ohos_app_cangjie_entry.RCon_ca_responseRegion_01

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
class index_RCon_ca_responseRegion_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RelCon_comattr_responseregion_1", "View_RelCon_comattr_responseregion_2", "View_RelCon_comattr_responseregion_3", "View_RelCon_comattr_responseregion_4", "View_RelCon_comattr_responseregion_5",
  "View_RelCon_comattr_responseregion_6", "View_RelCon_comattr_responseregion_7", "View_RelCon_comattr_responseregion_8", "View_RelCon_comattr_responseregion_9", "View_RelCon_comattr_responseregion_10",
  "View_RelCon_comattr_responseregion_11", "View_RelCon_comattr_responseregion_12", "View_RelCon_comattr_responseregion_13", "View_RelCon_comattr_responseregion_14", "View_RelCon_comattr_responseregion_15",
  "View_RelCon_comattr_responseregion_16", "View_RelCon_comattr_responseregion_17", "View_RelCon_comattr_responseregion_18", "View_RelCon_comattr_responseregion_19", "View_RelCon_comattr_responseregion_20",
  "View_RelCon_comattr_responseregion_21", "View_RelCon_comattr_responseregion_22", "View_RelCon_comattr_responseregion_23", "View_RelCon_comattr_responseregion_24", "View_RelCon_comattr_responseregion_25",
  "View_RelCon_comattr_responseregion_26", "View_RelCon_comattr_responseregion_27", "View_RelCon_comattr_responseregion_28", "View_RelCon_comattr_responseregion_29", "View_RelCon_comattr_responseregion_30",
  "View_RelCon_comattr_responseregion_31", "View_RelCon_comattr_responseregion_32", "View_RelCon_comattr_responseregion_33", "View_RelCon_comattr_responseregion_34", "View_RelCon_comattr_responseregion_35",
  "View_RelCon_comattr_responseregion_36", "View_RelCon_comattr_responseregion_37", "View_RelCon_comattr_responseregion_38", "View_RelCon_comattr_responseregion_39", "View_RelCon_comattr_responseregion_40",
  "View_RelCon_comattr_responseregion_41", "View_RelCon_comattr_responseregion_42", "View_RelCon_comattr_responseregion_43", "View_RelCon_comattr_responseregion_44", "View_RelCon_comattr_responseregion_45",
  "View_RelCon_comattr_responseregion_46", "View_RelCon_comattr_responseregion_47", "View_RelCon_comattr_responseregion_48", "View_RelCon_comattr_responseregion_49", "View_RelCon_comattr_responseregion_50",
  "View_RelCon_comattr_responseregion_51", "View_RelCon_comattr_responseregion_52", "View_RelCon_comattr_responseregion_53", "View_RelCon_comattr_responseregion_54", "View_RelCon_comattr_responseregion_55",
  "View_RelCon_comattr_responseregion_56", "View_RelCon_comattr_responseregion_57", "View_RelCon_comattr_responseregion_58", "View_RelCon_comattr_responseregion_59", "View_RelCon_comattr_responseregion_60",
  "View_RelCon_comattr_responseregion_61", "View_RelCon_comattr_responseregion_62", "View_RelCon_comattr_responseregion_63", "View_RelCon_comattr_responseregion_64", "View_RelCon_comattr_responseregion_65",
  "View_RelCon_comattr_responseregion_66", "View_RelCon_comattr_responseregion_67", "View_RelCon_comattr_responseregion_68", "View_RelCon_comattr_responseregion_69", "View_RelCon_comattr_responseregion_70",
  "View_RelCon_comattr_responseregion_71", "View_RelCon_comattr_responseregion_72", "View_RelCon_comattr_responseregion_73", "View_RelCon_comattr_responseregion_74", "View_RelCon_comattr_responseregion_75",
  "View_RelCon_comattr_responseregion_76", "View_RelCon_comattr_responseregion_77", "View_RelCon_comattr_responseregion_78", "View_RelCon_comattr_responseregion_79", "View_RelCon_comattr_responseregion_80",
  "View_RelCon_comattr_responseregion_81", "View_RelCon_comattr_responseregion_82", "View_RelCon_comattr_responseregion_83", "View_RelCon_comattr_responseregion_84", "View_RelCon_comattr_responseregion_85",
  "View_RelCon_comattr_responseregion_86", "View_RelCon_comattr_responseregion_87", "View_RelCon_comattr_responseregion_88", "View_RelCon_comattr_responseregion_89", "View_RelCon_comattr_responseregion_90",
  "View_RelCon_comattr_responseregion_91", "View_RelCon_comattr_responseregion_92", "View_RelCon_comattr_responseregion_93", "View_RelCon_comattr_responseregion_94", "View_RelCon_comattr_responseregion_95",
  "View_RelCon_comattr_responseregion_96", "View_RelCon_comattr_responseregion_97", "View_RelCon_comattr_responseregion_98", "View_RelCon_comattr_responseregion_99", "View_RelCon_comattr_responseregion_100",
  "View_RelCon_comattr_responseregion_101", "View_RelCon_comattr_responseregion_102", "View_RelCon_comattr_responseregion_103", "View_RelCon_comattr_responseregion_104", "View_RelCon_comattr_responseregion_105",
  "View_RelCon_comattr_responseregion_106", "View_RelCon_comattr_responseregion_107", "View_RelCon_comattr_responseregion_108", "View_RelCon_comattr_responseregion_109", "View_RelCon_comattr_responseregion_110",
  "View_RelCon_comattr_responseregion_111", "View_RelCon_comattr_responseregion_112", "View_RelCon_comattr_responseregion_113", "View_RelCon_comattr_responseregion_114", "View_RelCon_comattr_responseregion_115",
  "View_RelCon_comattr_responseregion_116", "View_RelCon_comattr_responseregion_117", "View_RelCon_comattr_responseregion_118", "View_RelCon_comattr_responseregion_119", "View_RelCon_comattr_responseregion_120",
  "View_RelCon_comattr_responseregion_121", "View_RelCon_comattr_responseregion_122", "View_RelCon_comattr_responseregion_123", "View_RelCon_comattr_responseregion_124", "View_RelCon_comattr_responseregion_125",
  "View_RelCon_comattr_responseregion_126", "View_RelCon_comattr_responseregion_127", "View_RelCon_comattr_responseregion_128", "View_RelCon_comattr_responseregion_129", "View_RelCon_comattr_responseregion_130",
  "View_RelCon_comattr_responseregion_131", "View_RelCon_comattr_responseregion_132", "View_RelCon_comattr_responseregion_133", "View_RelCon_comattr_responseregion_134", "View_RelCon_comattr_responseregion_135",
  "View_RelCon_comattr_responseregion_136", "View_RelCon_comattr_responseregion_137", "View_RelCon_comattr_responseregion_138", "View_RelCon_comattr_responseregion_139", "View_RelCon_comattr_responseregion_140",
  "View_RelCon_comattr_responseregion_141", "View_RelCon_comattr_responseregion_142", "View_RelCon_comattr_responseregion_143", "View_RelCon_comattr_responseregion_144", "View_RelCon_comattr_responseregion_145",
  "View_RelCon_comattr_responseregion_146", "View_RelCon_comattr_responseregion_147", "View_RelCon_comattr_responseregion_148", "View_RelCon_comattr_responseregion_149", "View_RelCon_comattr_responseregion_150",
  "View_RelCon_comattr_responseregion_151", "View_RelCon_comattr_responseregion_152", "View_RelCon_comattr_responseregion_153", "View_RelCon_comattr_responseregion_154", "View_RelCon_comattr_responseregion_155",
  "View_RelCon_comattr_responseregion_156", "View_RelCon_comattr_responseregion_157", "View_RelCon_comattr_responseregion_158", "View_RelCon_comattr_responseregion_159", "View_RelCon_comattr_responseregion_160",
  "View_RelCon_comattr_responseregion_161", "View_RelCon_comattr_responseregion_162", "View_RelCon_comattr_responseregion_163", "View_RelCon_comattr_responseregion_164", "View_RelCon_comattr_responseregion_165",
  "View_RelCon_comattr_responseregion_166", "View_RelCon_comattr_responseregion_167", "View_RelCon_comattr_responseregion_168", "View_RelCon_comattr_responseregion_169", "View_RelCon_comattr_responseregion_170",
  "View_RelCon_comattr_responseregion_171", "View_RelCon_comattr_responseregion_172", "View_RelCon_comattr_responseregion_173", "View_RelCon_comattr_responseregion_174", "View_RelCon_comattr_responseregion_175",
  "View_RelCon_comattr_responseregion_176", "View_RelCon_comattr_responseregion_177", "View_RelCon_comattr_responseregion_178", "View_RelCon_comattr_responseregion_179", "View_RelCon_comattr_responseregion_180",
  "View_RelCon_comattr_responseregion_181", "View_RelCon_comattr_responseregion_182", "View_RelCon_comattr_responseregion_183", "View_RelCon_comattr_responseregion_184", "View_RelCon_comattr_responseregion_185",
  "View_RelCon_comattr_responseregion_186", "View_RelCon_comattr_responseregion_187", "View_RelCon_comattr_responseregion_188", "View_RelCon_comattr_responseregion_189", "View_RelCon_comattr_responseregion_190",
  "View_RelCon_comattr_responseregion_191", "View_RelCon_comattr_responseregion_192", "View_RelCon_comattr_responseregion_193", "View_RelCon_comattr_responseregion_194", "View_RelCon_comattr_responseregion_195",
  "View_RelCon_comattr_responseregion_196", "View_RelCon_comattr_responseregion_197", "View_RelCon_comattr_responseregion_198", "View_RelCon_comattr_responseregion_199", "View_RelCon_comattr_responseregion_200",
  "View_RelCon_comattr_responseregion_201", "View_RelCon_comattr_responseregion_202", "View_RelCon_comattr_responseregion_203", "View_RelCon_comattr_responseregion_204", "View_RelCon_comattr_responseregion_205",
  "View_RelCon_comattr_responseregion_206", "View_RelCon_comattr_responseregion_207", "View_RelCon_comattr_responseregion_208", "View_RelCon_comattr_responseregion_209", "View_RelCon_comattr_responseregion_210",
  "View_RelCon_comattr_responseregion_211", "View_RelCon_comattr_responseregion_212", "View_RelCon_comattr_responseregion_213", "View_RelCon_comattr_responseregion_214", "View_RelCon_comattr_responseregion_215",
  "View_RelCon_comattr_responseregion_216", "View_RelCon_comattr_responseregion_217", "View_RelCon_comattr_responseregion_218", "View_RelCon_comattr_responseregion_219", "View_RelCon_comattr_responseregion_220",
  "View_RelCon_comattr_responseregion_221", "View_RelCon_comattr_responseregion_222", "View_RelCon_comattr_responseregion_223", "View_RelCon_comattr_responseregion_224", "View_RelCon_comattr_responseregion_225",
  "View_RelCon_comattr_responseregion_226", "View_RelCon_comattr_responseregion_227", "View_RelCon_comattr_responseregion_228", "View_RelCon_comattr_responseregion_229", "View_RelCon_comattr_responseregion_230",
  "View_RelCon_comattr_responseregion_231", "View_RelCon_comattr_responseregion_232", "View_RelCon_comattr_responseregion_233", "View_RelCon_comattr_responseregion_234", "View_RelCon_comattr_responseregion_235",
  "View_RelCon_comattr_responseregion_236", "View_RelCon_comattr_responseregion_237", "View_RelCon_comattr_responseregion_238", "View_RelCon_comattr_responseregion_239", "View_RelCon_comattr_responseregion_240",
  "View_RelCon_comattr_responseregion_241", "View_RelCon_comattr_responseregion_242", "View_RelCon_comattr_responseregion_243", "View_RelCon_comattr_responseregion_244", "View_RelCon_comattr_responseregion_245",
  "View_RelCon_comattr_responseregion_246", "View_RelCon_comattr_responseregion_247", "View_RelCon_comattr_responseregion_248", "View_RelCon_comattr_responseregion_249", "View_RelCon_comattr_responseregion_250",
  "View_RelCon_comattr_responseregion_251", "View_RelCon_comattr_responseregion_252", "View_RelCon_comattr_responseregion_253", "View_RelCon_comattr_responseregion_254", "View_RelCon_comattr_responseregion_255",
  "View_RelCon_comattr_responseregion_256", "View_RelCon_comattr_responseregion_257", "View_RelCon_comattr_responseregion_258", "View_RelCon_comattr_responseregion_259", "View_RelCon_comattr_responseregion_260",
  "View_RelCon_comattr_responseregion_261", "View_RelCon_comattr_responseregion_262", "View_RelCon_comattr_responseregion_263", "View_RelCon_comattr_responseregion_264", "View_RelCon_comattr_responseregion_265",
  "View_RelCon_comattr_responseregion_266", "View_RelCon_comattr_responseregion_267", "View_RelCon_comattr_responseregion_268", "View_RelCon_comattr_responseregion_269", "View_RelCon_comattr_responseregion_270",
  "View_RelCon_comattr_responseregion_271", "View_RelCon_comattr_responseregion_272", "View_RelCon_comattr_responseregion_273", "View_RelCon_comattr_responseregion_274", "View_RelCon_comattr_responseregion_275",
  "View_RelCon_comattr_responseregion_276", "View_RelCon_comattr_responseregion_277", "View_RelCon_comattr_responseregion_278", "View_RelCon_comattr_responseregion_279", "View_RelCon_comattr_responseregion_280",
  "View_RelCon_comattr_responseregion_281", "View_RelCon_comattr_responseregion_282", "View_RelCon_comattr_responseregion_283", "View_RelCon_comattr_responseregion_284", "View_RelCon_comattr_responseregion_285",
  "View_RelCon_comattr_responseregion_286", "View_RelCon_comattr_responseregion_287", "View_RelCon_comattr_responseregion_288", "View_RelCon_comattr_responseregion_289", "View_RelCon_comattr_responseregion_290",
  "View_RelCon_comattr_responseregion_291", "View_RelCon_comattr_responseregion_292", "View_RelCon_comattr_responseregion_293", "View_RelCon_comattr_responseregion_294", "View_RelCon_comattr_responseregion_295",
  "View_RelCon_comattr_responseregion_296", "View_RelCon_comattr_responseregion_297", "View_RelCon_comattr_responseregion_298", "View_RelCon_comattr_responseregion_299", "View_RelCon_comattr_responseregion_300",
  "View_RelCon_comattr_responseregion_301", "View_RelCon_comattr_responseregion_302", "View_RelCon_comattr_responseregion_303", "View_RelCon_comattr_responseregion_304", "View_RelCon_comattr_responseregion_305",
  "View_RelCon_comattr_responseregion_306", "View_RelCon_comattr_responseregion_307", "View_RelCon_comattr_responseregion_308", "View_RelCon_comattr_responseregion_309", "View_RelCon_comattr_responseregion_310",
  "View_RelCon_comattr_responseregion_311", "View_RelCon_comattr_responseregion_312", "View_RelCon_comattr_responseregion_313", "View_RelCon_comattr_responseregion_314", "View_RelCon_comattr_responseregion_315",
  "View_RelCon_comattr_responseregion_316", "View_RelCon_comattr_responseregion_317", "View_RelCon_comattr_responseregion_318", "View_RelCon_comattr_responseregion_319", "View_RelCon_comattr_responseregion_320",
  "View_RelCon_comattr_responseregion_321", "View_RelCon_comattr_responseregion_322", "View_RelCon_comattr_responseregion_323", "View_RelCon_comattr_responseregion_324", "View_RelCon_comattr_responseregion_325",
  "View_RelCon_comattr_responseregion_326", "View_RelCon_comattr_responseregion_327", "View_RelCon_comattr_responseregion_328", "View_RelCon_comattr_responseregion_329", "View_RelCon_comattr_responseregion_330",
  "View_RelCon_comattr_responseregion_331", "View_RelCon_comattr_responseregion_332", "View_RelCon_comattr_responseregion_333", "View_RelCon_comattr_responseregion_334", "View_RelCon_comattr_responseregion_335",
  "View_RelCon_comattr_responseregion_336", "View_RelCon_comattr_responseregion_337", "View_RelCon_comattr_responseregion_338", "View_RelCon_comattr_responseregion_339", "View_RelCon_comattr_responseregion_340",
  "View_RelCon_comattr_responseregion_341", "View_RelCon_comattr_responseregion_342", "View_RelCon_comattr_responseregion_343", "View_RelCon_comattr_responseregion_344", "View_RelCon_comattr_responseregion_345",
  "View_RelCon_comattr_responseregion_346", "View_RelCon_comattr_responseregion_347", "View_RelCon_comattr_responseregion_348", "View_RelCon_comattr_responseregion_349", "View_RelCon_comattr_responseregion_350",
  "View_RelCon_comattr_responseregion_351", "View_RelCon_comattr_responseregion_352", "View_RelCon_comattr_responseregion_353", "View_RelCon_comattr_responseregion_354", "View_RelCon_comattr_responseregion_355",
  "View_RelCon_comattr_responseregion_356", "View_RelCon_comattr_responseregion_357", "View_RelCon_comattr_responseregion_358", "View_RelCon_comattr_responseregion_359", "View_RelCon_comattr_responseregion_360",
  "View_RelCon_comattr_responseregion_361", "View_RelCon_comattr_responseregion_362", "View_RelCon_comattr_responseregion_363", "View_RelCon_comattr_responseregion_364", "View_RelCon_comattr_responseregion_365",
  "View_RelCon_comattr_responseregion_366", "View_RelCon_comattr_responseregion_367", "View_RelCon_comattr_responseregion_368", "View_RelCon_comattr_responseregion_369", "View_RelCon_comattr_responseregion_370",
  "View_RelCon_comattr_responseregion_371", "View_RelCon_comattr_responseregion_372", "View_RelCon_comattr_responseregion_373", "View_RelCon_comattr_responseregion_374", "View_RelCon_comattr_responseregion_375",
  "View_RelCon_comattr_responseregion_376", "View_RelCon_comattr_responseregion_377", "View_RelCon_comattr_responseregion_378", "View_RelCon_comattr_responseregion_379", "View_RelCon_comattr_responseregion_380",
  "View_RelCon_comattr_responseregion_381", "View_RelCon_comattr_responseregion_382", "View_RelCon_comattr_responseregion_383", "View_RelCon_comattr_responseregion_384", "View_RelCon_comattr_responseregion_385",
  "View_RelCon_comattr_responseregion_386", "View_RelCon_comattr_responseregion_387", "View_RelCon_comattr_responseregion_388", "View_RelCon_comattr_responseregion_389", "View_RelCon_comattr_responseregion_390",
  "View_RelCon_comattr_responseregion_391", "View_RelCon_comattr_responseregion_392", "View_RelCon_comattr_responseregion_393", "View_RelCon_comattr_responseregion_394", "View_RelCon_comattr_responseregion_395",
  "View_RelCon_comattr_responseregion_396", "View_RelCon_comattr_responseregion_397", "View_RelCon_comattr_responseregion_398", "View_RelCon_comattr_responseregion_399", "View_RelCon_comattr_responseregion_400" ],
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
