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

package ohos_app_cangjie_entry.RowSpl_ca_borders_02

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
class index_RowSpl_ca_borders_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RowSplit_comattr_borders2_1", "View_RowSplit_comattr_borders2_2", "View_RowSplit_comattr_borders2_3", "View_RowSplit_comattr_borders2_4", "View_RowSplit_comattr_borders2_5",
  "View_RowSplit_comattr_borders2_6", "View_RowSplit_comattr_borders2_7", "View_RowSplit_comattr_borders2_8", "View_RowSplit_comattr_borders2_9", "View_RowSplit_comattr_borders2_10",
  "View_RowSplit_comattr_borders2_11", "View_RowSplit_comattr_borders2_12", "View_RowSplit_comattr_borders2_13", "View_RowSplit_comattr_borders2_14", "View_RowSplit_comattr_borders2_15",
  "View_RowSplit_comattr_borders2_16", "View_RowSplit_comattr_borders2_17", "View_RowSplit_comattr_borders2_18", "View_RowSplit_comattr_borders2_19", "View_RowSplit_comattr_borders2_20",
  "View_RowSplit_comattr_borders2_21", "View_RowSplit_comattr_borders2_22", "View_RowSplit_comattr_borders2_23", "View_RowSplit_comattr_borders2_24", "View_RowSplit_comattr_borders2_25",
  "View_RowSplit_comattr_borders2_26", "View_RowSplit_comattr_borders2_27", "View_RowSplit_comattr_borders2_28", "View_RowSplit_comattr_borders2_29", "View_RowSplit_comattr_borders2_30",
  "View_RowSplit_comattr_borders2_31", "View_RowSplit_comattr_borders2_32", "View_RowSplit_comattr_borders2_33", "View_RowSplit_comattr_borders2_34", "View_RowSplit_comattr_borders2_35",
  "View_RowSplit_comattr_borders2_36", "View_RowSplit_comattr_borders2_37", "View_RowSplit_comattr_borders2_38", "View_RowSplit_comattr_borders2_39", "View_RowSplit_comattr_borders2_40",
  "View_RowSplit_comattr_borders2_41", "View_RowSplit_comattr_borders2_42", "View_RowSplit_comattr_borders2_43", "View_RowSplit_comattr_borders2_44", "View_RowSplit_comattr_borders2_45",
  "View_RowSplit_comattr_borders2_46", "View_RowSplit_comattr_borders2_47", "View_RowSplit_comattr_borders2_48", "View_RowSplit_comattr_borders2_49", "View_RowSplit_comattr_borders2_50",
  "View_RowSplit_comattr_borders2_51", "View_RowSplit_comattr_borders2_52", "View_RowSplit_comattr_borders2_53", "View_RowSplit_comattr_borders2_54", "View_RowSplit_comattr_borders2_55",
  "View_RowSplit_comattr_borders2_56", "View_RowSplit_comattr_borders2_57", "View_RowSplit_comattr_borders2_58", "View_RowSplit_comattr_borders2_59", "View_RowSplit_comattr_borders2_60",
  "View_RowSplit_comattr_borders2_61", "View_RowSplit_comattr_borders2_62", "View_RowSplit_comattr_borders2_63", "View_RowSplit_comattr_borders2_64", "View_RowSplit_comattr_borders2_65",
  "View_RowSplit_comattr_borders2_66", "View_RowSplit_comattr_borders2_67", "View_RowSplit_comattr_borders2_68", "View_RowSplit_comattr_borders2_69", "View_RowSplit_comattr_borders2_70",
  "View_RowSplit_comattr_borders2_71", "View_RowSplit_comattr_borders2_72", "View_RowSplit_comattr_borders2_73", "View_RowSplit_comattr_borders2_74", "View_RowSplit_comattr_borders2_75",
  "View_RowSplit_comattr_borders2_76", "View_RowSplit_comattr_borders2_77", "View_RowSplit_comattr_borders2_78", "View_RowSplit_comattr_borders2_79", "View_RowSplit_comattr_borders2_80",
  "View_RowSplit_comattr_borders2_81", "View_RowSplit_comattr_borders2_82", "View_RowSplit_comattr_borders2_83", "View_RowSplit_comattr_borders2_84", "View_RowSplit_comattr_borders2_85",
  "View_RowSplit_comattr_borders2_86", "View_RowSplit_comattr_borders2_87", "View_RowSplit_comattr_borders2_88", "View_RowSplit_comattr_borders2_89", "View_RowSplit_comattr_borders2_90",
  "View_RowSplit_comattr_borders2_91", "View_RowSplit_comattr_borders2_92", "View_RowSplit_comattr_borders2_93", "View_RowSplit_comattr_borders2_94", "View_RowSplit_comattr_borders2_95",
  "View_RowSplit_comattr_borders2_96", "View_RowSplit_comattr_borders2_97", "View_RowSplit_comattr_borders2_98", "View_RowSplit_comattr_borders2_99", "View_RowSplit_comattr_borders2_100",
  "View_RowSplit_comattr_borders2_101", "View_RowSplit_comattr_borders2_102", "View_RowSplit_comattr_borders2_103", "View_RowSplit_comattr_borders2_104", "View_RowSplit_comattr_borders2_105",
  "View_RowSplit_comattr_borders2_106", "View_RowSplit_comattr_borders2_107", "View_RowSplit_comattr_borders2_108", "View_RowSplit_comattr_borders2_109", "View_RowSplit_comattr_borders2_110",
  "View_RowSplit_comattr_borders2_111", "View_RowSplit_comattr_borders2_112", "View_RowSplit_comattr_borders2_113", "View_RowSplit_comattr_borders2_114", "View_RowSplit_comattr_borders2_115",
  "View_RowSplit_comattr_borders2_116", "View_RowSplit_comattr_borders2_117", "View_RowSplit_comattr_borders2_118", "View_RowSplit_comattr_borders2_119", "View_RowSplit_comattr_borders2_120",
  "View_RowSplit_comattr_borders2_121", "View_RowSplit_comattr_borders2_122", "View_RowSplit_comattr_borders2_123", "View_RowSplit_comattr_borders2_124", "View_RowSplit_comattr_borders2_125",
  "View_RowSplit_comattr_borders2_126", "View_RowSplit_comattr_borders2_127", "View_RowSplit_comattr_borders2_128", "View_RowSplit_comattr_borders2_129", "View_RowSplit_comattr_borders2_130",
  "View_RowSplit_comattr_borders2_131", "View_RowSplit_comattr_borders2_132", "View_RowSplit_comattr_borders2_133", "View_RowSplit_comattr_borders2_134", "View_RowSplit_comattr_borders2_135",
  "View_RowSplit_comattr_borders2_136", "View_RowSplit_comattr_borders2_137", "View_RowSplit_comattr_borders2_138", "View_RowSplit_comattr_borders2_139", "View_RowSplit_comattr_borders2_140",
  "View_RowSplit_comattr_borders2_141", "View_RowSplit_comattr_borders2_142", "View_RowSplit_comattr_borders2_143", "View_RowSplit_comattr_borders2_144", "View_RowSplit_comattr_borders2_145",
  "View_RowSplit_comattr_borders2_146", "View_RowSplit_comattr_borders2_147", "View_RowSplit_comattr_borders2_148", "View_RowSplit_comattr_borders2_149", "View_RowSplit_comattr_borders2_150",
  "View_RowSplit_comattr_borders2_151", "View_RowSplit_comattr_borders2_152", "View_RowSplit_comattr_borders2_153", "View_RowSplit_comattr_borders2_154", "View_RowSplit_comattr_borders2_155",
  "View_RowSplit_comattr_borders2_156", "View_RowSplit_comattr_borders2_157", "View_RowSplit_comattr_borders2_158", "View_RowSplit_comattr_borders2_159", "View_RowSplit_comattr_borders2_160",
  "View_RowSplit_comattr_borders2_161", "View_RowSplit_comattr_borders2_162", "View_RowSplit_comattr_borders2_163", "View_RowSplit_comattr_borders2_164", "View_RowSplit_comattr_borders2_165",
  "View_RowSplit_comattr_borders2_166", "View_RowSplit_comattr_borders2_167", "View_RowSplit_comattr_borders2_168", "View_RowSplit_comattr_borders2_169", "View_RowSplit_comattr_borders2_170",
  "View_RowSplit_comattr_borders2_171", "View_RowSplit_comattr_borders2_172", "View_RowSplit_comattr_borders2_173", "View_RowSplit_comattr_borders2_174", "View_RowSplit_comattr_borders2_175",
  "View_RowSplit_comattr_borders2_176", "View_RowSplit_comattr_borders2_177", "View_RowSplit_comattr_borders2_178", "View_RowSplit_comattr_borders2_179", "View_RowSplit_comattr_borders2_180",
  "View_RowSplit_comattr_borders2_181", "View_RowSplit_comattr_borders2_182", "View_RowSplit_comattr_borders2_183", "View_RowSplit_comattr_borders2_184", "View_RowSplit_comattr_borders2_185",
  "View_RowSplit_comattr_borders2_186", "View_RowSplit_comattr_borders2_187", "View_RowSplit_comattr_borders2_188", "View_RowSplit_comattr_borders2_189", "View_RowSplit_comattr_borders2_190",
  "View_RowSplit_comattr_borders2_191", "View_RowSplit_comattr_borders2_192", "View_RowSplit_comattr_borders2_193", "View_RowSplit_comattr_borders2_194", "View_RowSplit_comattr_borders2_195",
  "View_RowSplit_comattr_borders2_196", "View_RowSplit_comattr_borders2_197", "View_RowSplit_comattr_borders2_198", "View_RowSplit_comattr_borders2_199", "View_RowSplit_comattr_borders2_200",
  "View_RowSplit_comattr_borders2_201", "View_RowSplit_comattr_borders2_202", "View_RowSplit_comattr_borders2_203", "View_RowSplit_comattr_borders2_204", "View_RowSplit_comattr_borders2_205",
  "View_RowSplit_comattr_borders2_206", "View_RowSplit_comattr_borders2_207", "View_RowSplit_comattr_borders2_208", "View_RowSplit_comattr_borders2_209", "View_RowSplit_comattr_borders2_210",
  "View_RowSplit_comattr_borders2_211", "View_RowSplit_comattr_borders2_212", "View_RowSplit_comattr_borders2_213", "View_RowSplit_comattr_borders2_214", "View_RowSplit_comattr_borders2_215",
  "View_RowSplit_comattr_borders2_216", "View_RowSplit_comattr_borders2_217", "View_RowSplit_comattr_borders2_218", "View_RowSplit_comattr_borders2_219", "View_RowSplit_comattr_borders2_220",
  "View_RowSplit_comattr_borders2_221", "View_RowSplit_comattr_borders2_222", "View_RowSplit_comattr_borders2_223", "View_RowSplit_comattr_borders2_224", "View_RowSplit_comattr_borders2_225",
  "View_RowSplit_comattr_borders2_226", "View_RowSplit_comattr_borders2_227", "View_RowSplit_comattr_borders2_228", "View_RowSplit_comattr_borders2_229", "View_RowSplit_comattr_borders2_230",
  "View_RowSplit_comattr_borders2_231", "View_RowSplit_comattr_borders2_232", "View_RowSplit_comattr_borders2_233", "View_RowSplit_comattr_borders2_234", "View_RowSplit_comattr_borders2_235",
  "View_RowSplit_comattr_borders2_236", "View_RowSplit_comattr_borders2_237", "View_RowSplit_comattr_borders2_238", "View_RowSplit_comattr_borders2_239", "View_RowSplit_comattr_borders2_240",
  "View_RowSplit_comattr_borders2_241", "View_RowSplit_comattr_borders2_242", "View_RowSplit_comattr_borders2_243", "View_RowSplit_comattr_borders2_244", "View_RowSplit_comattr_borders2_245",
  "View_RowSplit_comattr_borders2_246", "View_RowSplit_comattr_borders2_247", "View_RowSplit_comattr_borders2_248", "View_RowSplit_comattr_borders2_249", "View_RowSplit_comattr_borders2_250",
  "View_RowSplit_comattr_borders2_251", "View_RowSplit_comattr_borders2_252", "View_RowSplit_comattr_borders2_253", "View_RowSplit_comattr_borders2_254", "View_RowSplit_comattr_borders2_255",
  "View_RowSplit_comattr_borders2_256", "View_RowSplit_comattr_borders2_257", "View_RowSplit_comattr_borders2_258", "View_RowSplit_comattr_borders2_259", "View_RowSplit_comattr_borders2_260",
  "View_RowSplit_comattr_borders2_261", "View_RowSplit_comattr_borders2_262", "View_RowSplit_comattr_borders2_263", "View_RowSplit_comattr_borders2_264", "View_RowSplit_comattr_borders2_265",
  "View_RowSplit_comattr_borders2_266", "View_RowSplit_comattr_borders2_267", "View_RowSplit_comattr_borders2_268", "View_RowSplit_comattr_borders2_269", "View_RowSplit_comattr_borders2_270",
  "View_RowSplit_comattr_borders2_271", "View_RowSplit_comattr_borders2_272", "View_RowSplit_comattr_borders2_273", "View_RowSplit_comattr_borders2_274", "View_RowSplit_comattr_borders2_275",
  "View_RowSplit_comattr_borders2_276", "View_RowSplit_comattr_borders2_277", "View_RowSplit_comattr_borders2_278", "View_RowSplit_comattr_borders2_279", "View_RowSplit_comattr_borders2_280",
  "View_RowSplit_comattr_borders2_281", "View_RowSplit_comattr_borders2_282", "View_RowSplit_comattr_borders2_283", "View_RowSplit_comattr_borders2_284", "View_RowSplit_comattr_borders2_285",
  "View_RowSplit_comattr_borders2_286", "View_RowSplit_comattr_borders2_287", "View_RowSplit_comattr_borders2_288", "View_RowSplit_comattr_borders2_289", "View_RowSplit_comattr_borders2_290",
  "View_RowSplit_comattr_borders2_291", "View_RowSplit_comattr_borders2_292", "View_RowSplit_comattr_borders2_293", "View_RowSplit_comattr_borders2_294", "View_RowSplit_comattr_borders2_295",
  "View_RowSplit_comattr_borders2_296", "View_RowSplit_comattr_borders2_297", "View_RowSplit_comattr_borders2_298", "View_RowSplit_comattr_borders2_299", "View_RowSplit_comattr_borders2_300",
  "View_RowSplit_comattr_borders2_301", "View_RowSplit_comattr_borders2_302", "View_RowSplit_comattr_borders2_303", "View_RowSplit_comattr_borders2_304", "View_RowSplit_comattr_borders2_305",
  "View_RowSplit_comattr_borders2_306", "View_RowSplit_comattr_borders2_307", "View_RowSplit_comattr_borders2_308", "View_RowSplit_comattr_borders2_309", "View_RowSplit_comattr_borders2_310",
  "View_RowSplit_comattr_borders2_311", "View_RowSplit_comattr_borders2_312", "View_RowSplit_comattr_borders2_313", "View_RowSplit_comattr_borders2_314", "View_RowSplit_comattr_borders2_315",
  "View_RowSplit_comattr_borders2_316", "View_RowSplit_comattr_borders2_317", "View_RowSplit_comattr_borders2_318", "View_RowSplit_comattr_borders2_319", "View_RowSplit_comattr_borders2_320",
  "View_RowSplit_comattr_borders2_321", "View_RowSplit_comattr_borders2_322", "View_RowSplit_comattr_borders2_323", "View_RowSplit_comattr_borders2_324", "View_RowSplit_comattr_borders2_325",
  "View_RowSplit_comattr_borders2_326", "View_RowSplit_comattr_borders2_327", "View_RowSplit_comattr_borders2_328", "View_RowSplit_comattr_borders2_329", "View_RowSplit_comattr_borders2_330",
  "View_RowSplit_comattr_borders2_331", "View_RowSplit_comattr_borders2_332", "View_RowSplit_comattr_borders2_333", "View_RowSplit_comattr_borders2_334", "View_RowSplit_comattr_borders2_335",
  "View_RowSplit_comattr_borders2_336", "View_RowSplit_comattr_borders2_337", "View_RowSplit_comattr_borders2_338", "View_RowSplit_comattr_borders2_339", "View_RowSplit_comattr_borders2_340",
  "View_RowSplit_comattr_borders2_341", "View_RowSplit_comattr_borders2_342", "View_RowSplit_comattr_borders2_343", "View_RowSplit_comattr_borders2_344", "View_RowSplit_comattr_borders2_345",
  "View_RowSplit_comattr_borders2_346", "View_RowSplit_comattr_borders2_347", "View_RowSplit_comattr_borders2_348", "View_RowSplit_comattr_borders2_349", "View_RowSplit_comattr_borders2_350",
  "View_RowSplit_comattr_borders2_351", "View_RowSplit_comattr_borders2_352", "View_RowSplit_comattr_borders2_353", "View_RowSplit_comattr_borders2_354", "View_RowSplit_comattr_borders2_355",
  "View_RowSplit_comattr_borders2_356", "View_RowSplit_comattr_borders2_357", "View_RowSplit_comattr_borders2_358", "View_RowSplit_comattr_borders2_359", "View_RowSplit_comattr_borders2_360",
  "View_RowSplit_comattr_borders2_361", "View_RowSplit_comattr_borders2_362", "View_RowSplit_comattr_borders2_363", "View_RowSplit_comattr_borders2_364", "View_RowSplit_comattr_borders2_365",
  "View_RowSplit_comattr_borders2_366", "View_RowSplit_comattr_borders2_367", "View_RowSplit_comattr_borders2_368", "View_RowSplit_comattr_borders2_369", "View_RowSplit_comattr_borders2_370",
  "View_RowSplit_comattr_borders2_371", "View_RowSplit_comattr_borders2_372", "View_RowSplit_comattr_borders2_373", "View_RowSplit_comattr_borders2_374", "View_RowSplit_comattr_borders2_375",
  "View_RowSplit_comattr_borders2_376", "View_RowSplit_comattr_borders2_377", "View_RowSplit_comattr_borders2_378", "View_RowSplit_comattr_borders2_379", "View_RowSplit_comattr_borders2_380",
  "View_RowSplit_comattr_borders2_381", "View_RowSplit_comattr_borders2_382", "View_RowSplit_comattr_borders2_383", "View_RowSplit_comattr_borders2_384", "View_RowSplit_comattr_borders2_385",
  "View_RowSplit_comattr_borders2_386", "View_RowSplit_comattr_borders2_387", "View_RowSplit_comattr_borders2_388", "View_RowSplit_comattr_borders2_389", "View_RowSplit_comattr_borders2_390",
  "View_RowSplit_comattr_borders2_391", "View_RowSplit_comattr_borders2_392", "View_RowSplit_comattr_borders2_393", "View_RowSplit_comattr_borders2_394", "View_RowSplit_comattr_borders2_395",
  "View_RowSplit_comattr_borders2_396", "View_RowSplit_comattr_borders2_397", "View_RowSplit_comattr_borders2_398", "View_RowSplit_comattr_borders2_399", "View_RowSplit_comattr_borders2_400" ],
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
