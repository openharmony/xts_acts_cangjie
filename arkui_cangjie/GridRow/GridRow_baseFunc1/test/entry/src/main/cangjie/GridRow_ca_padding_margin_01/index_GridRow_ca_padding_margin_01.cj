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

package ohos_app_cangjie_entry.GridRow_ca_padding_margin_01

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
class index_GridRow_ca_padding_margin_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_comattr_padding_margin_1", "View_GridRow_comattr_padding_margin_2", "View_GridRow_comattr_padding_margin_3", "View_GridRow_comattr_padding_margin_4", "View_GridRow_comattr_padding_margin_5",
  "View_GridRow_comattr_padding_margin_6", "View_GridRow_comattr_padding_margin_7", "View_GridRow_comattr_padding_margin_8", "View_GridRow_comattr_padding_margin_9", "View_GridRow_comattr_padding_margin_10",
  "View_GridRow_comattr_padding_margin_11", "View_GridRow_comattr_padding_margin_12", "View_GridRow_comattr_padding_margin_13", "View_GridRow_comattr_padding_margin_14", "View_GridRow_comattr_padding_margin_15",
  "View_GridRow_comattr_padding_margin_16", "View_GridRow_comattr_padding_margin_17", "View_GridRow_comattr_padding_margin_18", "View_GridRow_comattr_padding_margin_19", "View_GridRow_comattr_padding_margin_20",
  "View_GridRow_comattr_padding_margin_21", "View_GridRow_comattr_padding_margin_22", "View_GridRow_comattr_padding_margin_23", "View_GridRow_comattr_padding_margin_24", "View_GridRow_comattr_padding_margin_25",
  "View_GridRow_comattr_padding_margin_26", "View_GridRow_comattr_padding_margin_27", "View_GridRow_comattr_padding_margin_28", "View_GridRow_comattr_padding_margin_29", "View_GridRow_comattr_padding_margin_30",
  "View_GridRow_comattr_padding_margin_31", "View_GridRow_comattr_padding_margin_32", "View_GridRow_comattr_padding_margin_33", "View_GridRow_comattr_padding_margin_34", "View_GridRow_comattr_padding_margin_35",
  "View_GridRow_comattr_padding_margin_36", "View_GridRow_comattr_padding_margin_37", "View_GridRow_comattr_padding_margin_38", "View_GridRow_comattr_padding_margin_39", "View_GridRow_comattr_padding_margin_40",
  "View_GridRow_comattr_padding_margin_41", "View_GridRow_comattr_padding_margin_42", "View_GridRow_comattr_padding_margin_43", "View_GridRow_comattr_padding_margin_44", "View_GridRow_comattr_padding_margin_45",
  "View_GridRow_comattr_padding_margin_46", "View_GridRow_comattr_padding_margin_47", "View_GridRow_comattr_padding_margin_48", "View_GridRow_comattr_padding_margin_49", "View_GridRow_comattr_padding_margin_50",
  "View_GridRow_comattr_padding_margin_51", "View_GridRow_comattr_padding_margin_52", "View_GridRow_comattr_padding_margin_53", "View_GridRow_comattr_padding_margin_54", "View_GridRow_comattr_padding_margin_55",
  "View_GridRow_comattr_padding_margin_56", "View_GridRow_comattr_padding_margin_57", "View_GridRow_comattr_padding_margin_58", "View_GridRow_comattr_padding_margin_59", "View_GridRow_comattr_padding_margin_60",
  "View_GridRow_comattr_padding_margin_61", "View_GridRow_comattr_padding_margin_62", "View_GridRow_comattr_padding_margin_63", "View_GridRow_comattr_padding_margin_64", "View_GridRow_comattr_padding_margin_65",
  "View_GridRow_comattr_padding_margin_66", "View_GridRow_comattr_padding_margin_67", "View_GridRow_comattr_padding_margin_68", "View_GridRow_comattr_padding_margin_69", "View_GridRow_comattr_padding_margin_70",
  "View_GridRow_comattr_padding_margin_71", "View_GridRow_comattr_padding_margin_72", "View_GridRow_comattr_padding_margin_73", "View_GridRow_comattr_padding_margin_74", "View_GridRow_comattr_padding_margin_75",
  "View_GridRow_comattr_padding_margin_76", "View_GridRow_comattr_padding_margin_77", "View_GridRow_comattr_padding_margin_78", "View_GridRow_comattr_padding_margin_79", "View_GridRow_comattr_padding_margin_80",
  "View_GridRow_comattr_padding_margin_81", "View_GridRow_comattr_padding_margin_82", "View_GridRow_comattr_padding_margin_83", "View_GridRow_comattr_padding_margin_84", "View_GridRow_comattr_padding_margin_85",
  "View_GridRow_comattr_padding_margin_86", "View_GridRow_comattr_padding_margin_87", "View_GridRow_comattr_padding_margin_88", "View_GridRow_comattr_padding_margin_89", "View_GridRow_comattr_padding_margin_90",
  "View_GridRow_comattr_padding_margin_91", "View_GridRow_comattr_padding_margin_92", "View_GridRow_comattr_padding_margin_93", "View_GridRow_comattr_padding_margin_94", "View_GridRow_comattr_padding_margin_95",
  "View_GridRow_comattr_padding_margin_96", "View_GridRow_comattr_padding_margin_97", "View_GridRow_comattr_padding_margin_98", "View_GridRow_comattr_padding_margin_99", "View_GridRow_comattr_padding_margin_100",
  "View_GridRow_comattr_padding_margin_101", "View_GridRow_comattr_padding_margin_102", "View_GridRow_comattr_padding_margin_103", "View_GridRow_comattr_padding_margin_104", "View_GridRow_comattr_padding_margin_105",
  "View_GridRow_comattr_padding_margin_106", "View_GridRow_comattr_padding_margin_107", "View_GridRow_comattr_padding_margin_108", "View_GridRow_comattr_padding_margin_109", "View_GridRow_comattr_padding_margin_110",
  "View_GridRow_comattr_padding_margin_111", "View_GridRow_comattr_padding_margin_112", "View_GridRow_comattr_padding_margin_113", "View_GridRow_comattr_padding_margin_114", "View_GridRow_comattr_padding_margin_115",
  "View_GridRow_comattr_padding_margin_116", "View_GridRow_comattr_padding_margin_117", "View_GridRow_comattr_padding_margin_118", "View_GridRow_comattr_padding_margin_119", "View_GridRow_comattr_padding_margin_120",
  "View_GridRow_comattr_padding_margin_121", "View_GridRow_comattr_padding_margin_122", "View_GridRow_comattr_padding_margin_123", "View_GridRow_comattr_padding_margin_124", "View_GridRow_comattr_padding_margin_125",
  "View_GridRow_comattr_padding_margin_126", "View_GridRow_comattr_padding_margin_127", "View_GridRow_comattr_padding_margin_128", "View_GridRow_comattr_padding_margin_129", "View_GridRow_comattr_padding_margin_130",
  "View_GridRow_comattr_padding_margin_131", "View_GridRow_comattr_padding_margin_132", "View_GridRow_comattr_padding_margin_133", "View_GridRow_comattr_padding_margin_134", "View_GridRow_comattr_padding_margin_135",
  "View_GridRow_comattr_padding_margin_136", "View_GridRow_comattr_padding_margin_137", "View_GridRow_comattr_padding_margin_138", "View_GridRow_comattr_padding_margin_139", "View_GridRow_comattr_padding_margin_140",
  "View_GridRow_comattr_padding_margin_141", "View_GridRow_comattr_padding_margin_142", "View_GridRow_comattr_padding_margin_143", "View_GridRow_comattr_padding_margin_144", "View_GridRow_comattr_padding_margin_145",
  "View_GridRow_comattr_padding_margin_146", "View_GridRow_comattr_padding_margin_147", "View_GridRow_comattr_padding_margin_148", "View_GridRow_comattr_padding_margin_149", "View_GridRow_comattr_padding_margin_150",
  "View_GridRow_comattr_padding_margin_151", "View_GridRow_comattr_padding_margin_152", "View_GridRow_comattr_padding_margin_153", "View_GridRow_comattr_padding_margin_154", "View_GridRow_comattr_padding_margin_155",
  "View_GridRow_comattr_padding_margin_156", "View_GridRow_comattr_padding_margin_157", "View_GridRow_comattr_padding_margin_158", "View_GridRow_comattr_padding_margin_159", "View_GridRow_comattr_padding_margin_160",
  "View_GridRow_comattr_padding_margin_161", "View_GridRow_comattr_padding_margin_162", "View_GridRow_comattr_padding_margin_163", "View_GridRow_comattr_padding_margin_164", "View_GridRow_comattr_padding_margin_165",
  "View_GridRow_comattr_padding_margin_166", "View_GridRow_comattr_padding_margin_167", "View_GridRow_comattr_padding_margin_168", "View_GridRow_comattr_padding_margin_169", "View_GridRow_comattr_padding_margin_170",
  "View_GridRow_comattr_padding_margin_171", "View_GridRow_comattr_padding_margin_172", "View_GridRow_comattr_padding_margin_173", "View_GridRow_comattr_padding_margin_174", "View_GridRow_comattr_padding_margin_175",
  "View_GridRow_comattr_padding_margin_176", "View_GridRow_comattr_padding_margin_177", "View_GridRow_comattr_padding_margin_178", "View_GridRow_comattr_padding_margin_179", "View_GridRow_comattr_padding_margin_180",
  "View_GridRow_comattr_padding_margin_181", "View_GridRow_comattr_padding_margin_182", "View_GridRow_comattr_padding_margin_183", "View_GridRow_comattr_padding_margin_184", "View_GridRow_comattr_padding_margin_185",
  "View_GridRow_comattr_padding_margin_186", "View_GridRow_comattr_padding_margin_187", "View_GridRow_comattr_padding_margin_188", "View_GridRow_comattr_padding_margin_189", "View_GridRow_comattr_padding_margin_190",
  "View_GridRow_comattr_padding_margin_191", "View_GridRow_comattr_padding_margin_192", "View_GridRow_comattr_padding_margin_193", "View_GridRow_comattr_padding_margin_194", "View_GridRow_comattr_padding_margin_195",
  "View_GridRow_comattr_padding_margin_196", "View_GridRow_comattr_padding_margin_197", "View_GridRow_comattr_padding_margin_198", "View_GridRow_comattr_padding_margin_199", "View_GridRow_comattr_padding_margin_200",
  "View_GridRow_comattr_padding_margin_201", "View_GridRow_comattr_padding_margin_202", "View_GridRow_comattr_padding_margin_203", "View_GridRow_comattr_padding_margin_204", "View_GridRow_comattr_padding_margin_205",
  "View_GridRow_comattr_padding_margin_206", "View_GridRow_comattr_padding_margin_207", "View_GridRow_comattr_padding_margin_208", "View_GridRow_comattr_padding_margin_209", "View_GridRow_comattr_padding_margin_210",
  "View_GridRow_comattr_padding_margin_211", "View_GridRow_comattr_padding_margin_212", "View_GridRow_comattr_padding_margin_213", "View_GridRow_comattr_padding_margin_214", "View_GridRow_comattr_padding_margin_215",
  "View_GridRow_comattr_padding_margin_216", "View_GridRow_comattr_padding_margin_217", "View_GridRow_comattr_padding_margin_218", "View_GridRow_comattr_padding_margin_219", "View_GridRow_comattr_padding_margin_220",
  "View_GridRow_comattr_padding_margin_221", "View_GridRow_comattr_padding_margin_222", "View_GridRow_comattr_padding_margin_223", "View_GridRow_comattr_padding_margin_224", "View_GridRow_comattr_padding_margin_225",
  "View_GridRow_comattr_padding_margin_226", "View_GridRow_comattr_padding_margin_227", "View_GridRow_comattr_padding_margin_228", "View_GridRow_comattr_padding_margin_229", "View_GridRow_comattr_padding_margin_230",
  "View_GridRow_comattr_padding_margin_231", "View_GridRow_comattr_padding_margin_232", "View_GridRow_comattr_padding_margin_233", "View_GridRow_comattr_padding_margin_234", "View_GridRow_comattr_padding_margin_235",
  "View_GridRow_comattr_padding_margin_236", "View_GridRow_comattr_padding_margin_237", "View_GridRow_comattr_padding_margin_238", "View_GridRow_comattr_padding_margin_239", "View_GridRow_comattr_padding_margin_240",
  "View_GridRow_comattr_padding_margin_241", "View_GridRow_comattr_padding_margin_242", "View_GridRow_comattr_padding_margin_243", "View_GridRow_comattr_padding_margin_244", "View_GridRow_comattr_padding_margin_245",
  "View_GridRow_comattr_padding_margin_246", "View_GridRow_comattr_padding_margin_247", "View_GridRow_comattr_padding_margin_248", "View_GridRow_comattr_padding_margin_249", "View_GridRow_comattr_padding_margin_250",
  "View_GridRow_comattr_padding_margin_251", "View_GridRow_comattr_padding_margin_252", "View_GridRow_comattr_padding_margin_253", "View_GridRow_comattr_padding_margin_254", "View_GridRow_comattr_padding_margin_255",
  "View_GridRow_comattr_padding_margin_256", "View_GridRow_comattr_padding_margin_257", "View_GridRow_comattr_padding_margin_258", "View_GridRow_comattr_padding_margin_259", "View_GridRow_comattr_padding_margin_260",
  "View_GridRow_comattr_padding_margin_261", "View_GridRow_comattr_padding_margin_262", "View_GridRow_comattr_padding_margin_263", "View_GridRow_comattr_padding_margin_264", "View_GridRow_comattr_padding_margin_265",
  "View_GridRow_comattr_padding_margin_266", "View_GridRow_comattr_padding_margin_267", "View_GridRow_comattr_padding_margin_268", "View_GridRow_comattr_padding_margin_269", "View_GridRow_comattr_padding_margin_270",
  "View_GridRow_comattr_padding_margin_271", "View_GridRow_comattr_padding_margin_272", "View_GridRow_comattr_padding_margin_273", "View_GridRow_comattr_padding_margin_274", "View_GridRow_comattr_padding_margin_275",
  "View_GridRow_comattr_padding_margin_276", "View_GridRow_comattr_padding_margin_277", "View_GridRow_comattr_padding_margin_278", "View_GridRow_comattr_padding_margin_279", "View_GridRow_comattr_padding_margin_280",
  "View_GridRow_comattr_padding_margin_281", "View_GridRow_comattr_padding_margin_282", "View_GridRow_comattr_padding_margin_283", "View_GridRow_comattr_padding_margin_284", "View_GridRow_comattr_padding_margin_285",
  "View_GridRow_comattr_padding_margin_286", "View_GridRow_comattr_padding_margin_287", "View_GridRow_comattr_padding_margin_288", "View_GridRow_comattr_padding_margin_289", "View_GridRow_comattr_padding_margin_290",
  "View_GridRow_comattr_padding_margin_291", "View_GridRow_comattr_padding_margin_292", "View_GridRow_comattr_padding_margin_293", "View_GridRow_comattr_padding_margin_294", "View_GridRow_comattr_padding_margin_295",
  "View_GridRow_comattr_padding_margin_296", "View_GridRow_comattr_padding_margin_297", "View_GridRow_comattr_padding_margin_298", "View_GridRow_comattr_padding_margin_299", "View_GridRow_comattr_padding_margin_300",
  "View_GridRow_comattr_padding_margin_301", "View_GridRow_comattr_padding_margin_302", "View_GridRow_comattr_padding_margin_303", "View_GridRow_comattr_padding_margin_304", "View_GridRow_comattr_padding_margin_305",
  "View_GridRow_comattr_padding_margin_306", "View_GridRow_comattr_padding_margin_307", "View_GridRow_comattr_padding_margin_308", "View_GridRow_comattr_padding_margin_309", "View_GridRow_comattr_padding_margin_310",
  "View_GridRow_comattr_padding_margin_311", "View_GridRow_comattr_padding_margin_312", "View_GridRow_comattr_padding_margin_313", "View_GridRow_comattr_padding_margin_314", "View_GridRow_comattr_padding_margin_315",
  "View_GridRow_comattr_padding_margin_316", "View_GridRow_comattr_padding_margin_317", "View_GridRow_comattr_padding_margin_318", "View_GridRow_comattr_padding_margin_319", "View_GridRow_comattr_padding_margin_320",
  "View_GridRow_comattr_padding_margin_321", "View_GridRow_comattr_padding_margin_322", "View_GridRow_comattr_padding_margin_323", "View_GridRow_comattr_padding_margin_324", "View_GridRow_comattr_padding_margin_325",
  "View_GridRow_comattr_padding_margin_326", "View_GridRow_comattr_padding_margin_327", "View_GridRow_comattr_padding_margin_328", "View_GridRow_comattr_padding_margin_329", "View_GridRow_comattr_padding_margin_330",
  "View_GridRow_comattr_padding_margin_331", "View_GridRow_comattr_padding_margin_332", "View_GridRow_comattr_padding_margin_333", "View_GridRow_comattr_padding_margin_334", "View_GridRow_comattr_padding_margin_335",
  "View_GridRow_comattr_padding_margin_336", "View_GridRow_comattr_padding_margin_337", "View_GridRow_comattr_padding_margin_338", "View_GridRow_comattr_padding_margin_339", "View_GridRow_comattr_padding_margin_340",
  "View_GridRow_comattr_padding_margin_341", "View_GridRow_comattr_padding_margin_342", "View_GridRow_comattr_padding_margin_343", "View_GridRow_comattr_padding_margin_344", "View_GridRow_comattr_padding_margin_345",
  "View_GridRow_comattr_padding_margin_346", "View_GridRow_comattr_padding_margin_347", "View_GridRow_comattr_padding_margin_348", "View_GridRow_comattr_padding_margin_349", "View_GridRow_comattr_padding_margin_350",
  "View_GridRow_comattr_padding_margin_351", "View_GridRow_comattr_padding_margin_352", "View_GridRow_comattr_padding_margin_353", "View_GridRow_comattr_padding_margin_354", "View_GridRow_comattr_padding_margin_355",
  "View_GridRow_comattr_padding_margin_356", "View_GridRow_comattr_padding_margin_357", "View_GridRow_comattr_padding_margin_358", "View_GridRow_comattr_padding_margin_359", "View_GridRow_comattr_padding_margin_360",
  "View_GridRow_comattr_padding_margin_361", "View_GridRow_comattr_padding_margin_362", "View_GridRow_comattr_padding_margin_363", "View_GridRow_comattr_padding_margin_364", "View_GridRow_comattr_padding_margin_365",
  "View_GridRow_comattr_padding_margin_366", "View_GridRow_comattr_padding_margin_367", "View_GridRow_comattr_padding_margin_368", "View_GridRow_comattr_padding_margin_369", "View_GridRow_comattr_padding_margin_370",
  "View_GridRow_comattr_padding_margin_371", "View_GridRow_comattr_padding_margin_372", "View_GridRow_comattr_padding_margin_373", "View_GridRow_comattr_padding_margin_374", "View_GridRow_comattr_padding_margin_375",
  "View_GridRow_comattr_padding_margin_376", "View_GridRow_comattr_padding_margin_377", "View_GridRow_comattr_padding_margin_378", "View_GridRow_comattr_padding_margin_379", "View_GridRow_comattr_padding_margin_380",
  "View_GridRow_comattr_padding_margin_381", "View_GridRow_comattr_padding_margin_382", "View_GridRow_comattr_padding_margin_383", "View_GridRow_comattr_padding_margin_384", "View_GridRow_comattr_padding_margin_385",
  "View_GridRow_comattr_padding_margin_386", "View_GridRow_comattr_padding_margin_387", "View_GridRow_comattr_padding_margin_388", "View_GridRow_comattr_padding_margin_389", "View_GridRow_comattr_padding_margin_390",
  "View_GridRow_comattr_padding_margin_391", "View_GridRow_comattr_padding_margin_392", "View_GridRow_comattr_padding_margin_393", "View_GridRow_comattr_padding_margin_394", "View_GridRow_comattr_padding_margin_395",
  "View_GridRow_comattr_padding_margin_396", "View_GridRow_comattr_padding_margin_397", "View_GridRow_comattr_padding_margin_398", "View_GridRow_comattr_padding_margin_399", "View_GridRow_comattr_padding_margin_400" ],
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
