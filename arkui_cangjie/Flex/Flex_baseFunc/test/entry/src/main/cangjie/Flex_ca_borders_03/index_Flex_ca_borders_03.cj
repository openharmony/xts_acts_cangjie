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

package ohos_app_cangjie_entry.Flex_ca_borders_03

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
class index_Flex_ca_borders_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Flex_comattr_borders3_1", "View_Flex_comattr_borders3_2", "View_Flex_comattr_borders3_3", "View_Flex_comattr_borders3_4", "View_Flex_comattr_borders3_5",
  "View_Flex_comattr_borders3_6", "View_Flex_comattr_borders3_7", "View_Flex_comattr_borders3_8", "View_Flex_comattr_borders3_9", "View_Flex_comattr_borders3_10",
  "View_Flex_comattr_borders3_11", "View_Flex_comattr_borders3_12", "View_Flex_comattr_borders3_13", "View_Flex_comattr_borders3_14", "View_Flex_comattr_borders3_15",
  "View_Flex_comattr_borders3_16", "View_Flex_comattr_borders3_17", "View_Flex_comattr_borders3_18", "View_Flex_comattr_borders3_19", "View_Flex_comattr_borders3_20",
  "View_Flex_comattr_borders3_21", "View_Flex_comattr_borders3_22", "View_Flex_comattr_borders3_23", "View_Flex_comattr_borders3_24", "View_Flex_comattr_borders3_25",
  "View_Flex_comattr_borders3_26", "View_Flex_comattr_borders3_27", "View_Flex_comattr_borders3_28", "View_Flex_comattr_borders3_29", "View_Flex_comattr_borders3_30",
  "View_Flex_comattr_borders3_31", "View_Flex_comattr_borders3_32", "View_Flex_comattr_borders3_33", "View_Flex_comattr_borders3_34", "View_Flex_comattr_borders3_35",
  "View_Flex_comattr_borders3_36", "View_Flex_comattr_borders3_37", "View_Flex_comattr_borders3_38", "View_Flex_comattr_borders3_39", "View_Flex_comattr_borders3_40",
  "View_Flex_comattr_borders3_41", "View_Flex_comattr_borders3_42", "View_Flex_comattr_borders3_43", "View_Flex_comattr_borders3_44", "View_Flex_comattr_borders3_45",
  "View_Flex_comattr_borders3_46", "View_Flex_comattr_borders3_47", "View_Flex_comattr_borders3_48", "View_Flex_comattr_borders3_49", "View_Flex_comattr_borders3_50",
  "View_Flex_comattr_borders3_51", "View_Flex_comattr_borders3_52", "View_Flex_comattr_borders3_53", "View_Flex_comattr_borders3_54", "View_Flex_comattr_borders3_55",
  "View_Flex_comattr_borders3_56", "View_Flex_comattr_borders3_57", "View_Flex_comattr_borders3_58", "View_Flex_comattr_borders3_59", "View_Flex_comattr_borders3_60",
  "View_Flex_comattr_borders3_61", "View_Flex_comattr_borders3_62", "View_Flex_comattr_borders3_63", "View_Flex_comattr_borders3_64", "View_Flex_comattr_borders3_65",
  "View_Flex_comattr_borders3_66", "View_Flex_comattr_borders3_67", "View_Flex_comattr_borders3_68", "View_Flex_comattr_borders3_69", "View_Flex_comattr_borders3_70",
  "View_Flex_comattr_borders3_71", "View_Flex_comattr_borders3_72", "View_Flex_comattr_borders3_73", "View_Flex_comattr_borders3_74", "View_Flex_comattr_borders3_75",
  "View_Flex_comattr_borders3_76", "View_Flex_comattr_borders3_77", "View_Flex_comattr_borders3_78", "View_Flex_comattr_borders3_79", "View_Flex_comattr_borders3_80",
  "View_Flex_comattr_borders3_81", "View_Flex_comattr_borders3_82", "View_Flex_comattr_borders3_83", "View_Flex_comattr_borders3_84", "View_Flex_comattr_borders3_85",
  "View_Flex_comattr_borders3_86", "View_Flex_comattr_borders3_87", "View_Flex_comattr_borders3_88", "View_Flex_comattr_borders3_89", "View_Flex_comattr_borders3_90",
  "View_Flex_comattr_borders3_91", "View_Flex_comattr_borders3_92", "View_Flex_comattr_borders3_93", "View_Flex_comattr_borders3_94", "View_Flex_comattr_borders3_95",
  "View_Flex_comattr_borders3_96", "View_Flex_comattr_borders3_97", "View_Flex_comattr_borders3_98", "View_Flex_comattr_borders3_99", "View_Flex_comattr_borders3_100",
  "View_Flex_comattr_borders3_101", "View_Flex_comattr_borders3_102", "View_Flex_comattr_borders3_103", "View_Flex_comattr_borders3_104", "View_Flex_comattr_borders3_105",
  "View_Flex_comattr_borders3_106", "View_Flex_comattr_borders3_107", "View_Flex_comattr_borders3_108", "View_Flex_comattr_borders3_109", "View_Flex_comattr_borders3_110",
  "View_Flex_comattr_borders3_111", "View_Flex_comattr_borders3_112", "View_Flex_comattr_borders3_113", "View_Flex_comattr_borders3_114", "View_Flex_comattr_borders3_115",
  "View_Flex_comattr_borders3_116", "View_Flex_comattr_borders3_117", "View_Flex_comattr_borders3_118", "View_Flex_comattr_borders3_119", "View_Flex_comattr_borders3_120",
  "View_Flex_comattr_borders3_121", "View_Flex_comattr_borders3_122", "View_Flex_comattr_borders3_123", "View_Flex_comattr_borders3_124", "View_Flex_comattr_borders3_125",
  "View_Flex_comattr_borders3_126", "View_Flex_comattr_borders3_127", "View_Flex_comattr_borders3_128", "View_Flex_comattr_borders3_129", "View_Flex_comattr_borders3_130",
  "View_Flex_comattr_borders3_131", "View_Flex_comattr_borders3_132", "View_Flex_comattr_borders3_133", "View_Flex_comattr_borders3_134", "View_Flex_comattr_borders3_135",
  "View_Flex_comattr_borders3_136", "View_Flex_comattr_borders3_137", "View_Flex_comattr_borders3_138", "View_Flex_comattr_borders3_139", "View_Flex_comattr_borders3_140",
  "View_Flex_comattr_borders3_141", "View_Flex_comattr_borders3_142", "View_Flex_comattr_borders3_143", "View_Flex_comattr_borders3_144", "View_Flex_comattr_borders3_145",
  "View_Flex_comattr_borders3_146", "View_Flex_comattr_borders3_147", "View_Flex_comattr_borders3_148", "View_Flex_comattr_borders3_149", "View_Flex_comattr_borders3_150",
  "View_Flex_comattr_borders3_151", "View_Flex_comattr_borders3_152", "View_Flex_comattr_borders3_153", "View_Flex_comattr_borders3_154", "View_Flex_comattr_borders3_155",
  "View_Flex_comattr_borders3_156", "View_Flex_comattr_borders3_157", "View_Flex_comattr_borders3_158", "View_Flex_comattr_borders3_159", "View_Flex_comattr_borders3_160",
  "View_Flex_comattr_borders3_161", "View_Flex_comattr_borders3_162", "View_Flex_comattr_borders3_163", "View_Flex_comattr_borders3_164", "View_Flex_comattr_borders3_165",
  "View_Flex_comattr_borders3_166", "View_Flex_comattr_borders3_167", "View_Flex_comattr_borders3_168", "View_Flex_comattr_borders3_169", "View_Flex_comattr_borders3_170",
  "View_Flex_comattr_borders3_171", "View_Flex_comattr_borders3_172", "View_Flex_comattr_borders3_173", "View_Flex_comattr_borders3_174", "View_Flex_comattr_borders3_175",
  "View_Flex_comattr_borders3_176", "View_Flex_comattr_borders3_177", "View_Flex_comattr_borders3_178", "View_Flex_comattr_borders3_179", "View_Flex_comattr_borders3_180",
  "View_Flex_comattr_borders3_181", "View_Flex_comattr_borders3_182", "View_Flex_comattr_borders3_183", "View_Flex_comattr_borders3_184", "View_Flex_comattr_borders3_185",
  "View_Flex_comattr_borders3_186", "View_Flex_comattr_borders3_187", "View_Flex_comattr_borders3_188", "View_Flex_comattr_borders3_189", "View_Flex_comattr_borders3_190",
  "View_Flex_comattr_borders3_191", "View_Flex_comattr_borders3_192", "View_Flex_comattr_borders3_193", "View_Flex_comattr_borders3_194", "View_Flex_comattr_borders3_195",
  "View_Flex_comattr_borders3_196", "View_Flex_comattr_borders3_197", "View_Flex_comattr_borders3_198", "View_Flex_comattr_borders3_199", "View_Flex_comattr_borders3_200",
  "View_Flex_comattr_borders3_201", "View_Flex_comattr_borders3_202", "View_Flex_comattr_borders3_203", "View_Flex_comattr_borders3_204", "View_Flex_comattr_borders3_205",
  "View_Flex_comattr_borders3_206", "View_Flex_comattr_borders3_207", "View_Flex_comattr_borders3_208", "View_Flex_comattr_borders3_209", "View_Flex_comattr_borders3_210",
  "View_Flex_comattr_borders3_211", "View_Flex_comattr_borders3_212", "View_Flex_comattr_borders3_213", "View_Flex_comattr_borders3_214", "View_Flex_comattr_borders3_215",
  "View_Flex_comattr_borders3_216", "View_Flex_comattr_borders3_217", "View_Flex_comattr_borders3_218", "View_Flex_comattr_borders3_219", "View_Flex_comattr_borders3_220",
  "View_Flex_comattr_borders3_221", "View_Flex_comattr_borders3_222", "View_Flex_comattr_borders3_223", "View_Flex_comattr_borders3_224", "View_Flex_comattr_borders3_225",
  "View_Flex_comattr_borders3_226", "View_Flex_comattr_borders3_227", "View_Flex_comattr_borders3_228", "View_Flex_comattr_borders3_229", "View_Flex_comattr_borders3_230",
  "View_Flex_comattr_borders3_231", "View_Flex_comattr_borders3_232", "View_Flex_comattr_borders3_233", "View_Flex_comattr_borders3_234", "View_Flex_comattr_borders3_235",
  "View_Flex_comattr_borders3_236", "View_Flex_comattr_borders3_237", "View_Flex_comattr_borders3_238", "View_Flex_comattr_borders3_239", "View_Flex_comattr_borders3_240",
  "View_Flex_comattr_borders3_241", "View_Flex_comattr_borders3_242", "View_Flex_comattr_borders3_243", "View_Flex_comattr_borders3_244", "View_Flex_comattr_borders3_245",
  "View_Flex_comattr_borders3_246", "View_Flex_comattr_borders3_247", "View_Flex_comattr_borders3_248", "View_Flex_comattr_borders3_249", "View_Flex_comattr_borders3_250",
  "View_Flex_comattr_borders3_251", "View_Flex_comattr_borders3_252", "View_Flex_comattr_borders3_253", "View_Flex_comattr_borders3_254", "View_Flex_comattr_borders3_255",
  "View_Flex_comattr_borders3_256", "View_Flex_comattr_borders3_257", "View_Flex_comattr_borders3_258", "View_Flex_comattr_borders3_259", "View_Flex_comattr_borders3_260",
  "View_Flex_comattr_borders3_261", "View_Flex_comattr_borders3_262", "View_Flex_comattr_borders3_263", "View_Flex_comattr_borders3_264", "View_Flex_comattr_borders3_265",
  "View_Flex_comattr_borders3_266", "View_Flex_comattr_borders3_267", "View_Flex_comattr_borders3_268", "View_Flex_comattr_borders3_269", "View_Flex_comattr_borders3_270",
  "View_Flex_comattr_borders3_271", "View_Flex_comattr_borders3_272", "View_Flex_comattr_borders3_273", "View_Flex_comattr_borders3_274", "View_Flex_comattr_borders3_275",
  "View_Flex_comattr_borders3_276", "View_Flex_comattr_borders3_277", "View_Flex_comattr_borders3_278", "View_Flex_comattr_borders3_279", "View_Flex_comattr_borders3_280",
  "View_Flex_comattr_borders3_281", "View_Flex_comattr_borders3_282", "View_Flex_comattr_borders3_283", "View_Flex_comattr_borders3_284", "View_Flex_comattr_borders3_285",
  "View_Flex_comattr_borders3_286", "View_Flex_comattr_borders3_287", "View_Flex_comattr_borders3_288", "View_Flex_comattr_borders3_289", "View_Flex_comattr_borders3_290",
  "View_Flex_comattr_borders3_291", "View_Flex_comattr_borders3_292", "View_Flex_comattr_borders3_293", "View_Flex_comattr_borders3_294", "View_Flex_comattr_borders3_295",
  "View_Flex_comattr_borders3_296", "View_Flex_comattr_borders3_297", "View_Flex_comattr_borders3_298", "View_Flex_comattr_borders3_299", "View_Flex_comattr_borders3_300",
  "View_Flex_comattr_borders3_301", "View_Flex_comattr_borders3_302", "View_Flex_comattr_borders3_303", "View_Flex_comattr_borders3_304", "View_Flex_comattr_borders3_305",
  "View_Flex_comattr_borders3_306", "View_Flex_comattr_borders3_307", "View_Flex_comattr_borders3_308", "View_Flex_comattr_borders3_309", "View_Flex_comattr_borders3_310",
  "View_Flex_comattr_borders3_311", "View_Flex_comattr_borders3_312", "View_Flex_comattr_borders3_313", "View_Flex_comattr_borders3_314", "View_Flex_comattr_borders3_315",
  "View_Flex_comattr_borders3_316", "View_Flex_comattr_borders3_317", "View_Flex_comattr_borders3_318", "View_Flex_comattr_borders3_319", "View_Flex_comattr_borders3_320",
  "View_Flex_comattr_borders3_321", "View_Flex_comattr_borders3_322", "View_Flex_comattr_borders3_323", "View_Flex_comattr_borders3_324", "View_Flex_comattr_borders3_325",
  "View_Flex_comattr_borders3_326", "View_Flex_comattr_borders3_327", "View_Flex_comattr_borders3_328", "View_Flex_comattr_borders3_329", "View_Flex_comattr_borders3_330",
  "View_Flex_comattr_borders3_331", "View_Flex_comattr_borders3_332", "View_Flex_comattr_borders3_333", "View_Flex_comattr_borders3_334", "View_Flex_comattr_borders3_335",
  "View_Flex_comattr_borders3_336", "View_Flex_comattr_borders3_337", "View_Flex_comattr_borders3_338", "View_Flex_comattr_borders3_339", "View_Flex_comattr_borders3_340",
  "View_Flex_comattr_borders3_341", "View_Flex_comattr_borders3_342", "View_Flex_comattr_borders3_343", "View_Flex_comattr_borders3_344", "View_Flex_comattr_borders3_345",
  "View_Flex_comattr_borders3_346", "View_Flex_comattr_borders3_347", "View_Flex_comattr_borders3_348", "View_Flex_comattr_borders3_349", "View_Flex_comattr_borders3_350",
  "View_Flex_comattr_borders3_351", "View_Flex_comattr_borders3_352", "View_Flex_comattr_borders3_353", "View_Flex_comattr_borders3_354", "View_Flex_comattr_borders3_355",
  "View_Flex_comattr_borders3_356", "View_Flex_comattr_borders3_357", "View_Flex_comattr_borders3_358", "View_Flex_comattr_borders3_359", "View_Flex_comattr_borders3_360",
  "View_Flex_comattr_borders3_361", "View_Flex_comattr_borders3_362", "View_Flex_comattr_borders3_363", "View_Flex_comattr_borders3_364", "View_Flex_comattr_borders3_365",
  "View_Flex_comattr_borders3_366", "View_Flex_comattr_borders3_367", "View_Flex_comattr_borders3_368", "View_Flex_comattr_borders3_369", "View_Flex_comattr_borders3_370",
  "View_Flex_comattr_borders3_371", "View_Flex_comattr_borders3_372", "View_Flex_comattr_borders3_373", "View_Flex_comattr_borders3_374", "View_Flex_comattr_borders3_375",
  "View_Flex_comattr_borders3_376", "View_Flex_comattr_borders3_377", "View_Flex_comattr_borders3_378", "View_Flex_comattr_borders3_379", "View_Flex_comattr_borders3_380",
  "View_Flex_comattr_borders3_381", "View_Flex_comattr_borders3_382", "View_Flex_comattr_borders3_383", "View_Flex_comattr_borders3_384", "View_Flex_comattr_borders3_385",
  "View_Flex_comattr_borders3_386", "View_Flex_comattr_borders3_387", "View_Flex_comattr_borders3_388", "View_Flex_comattr_borders3_389", "View_Flex_comattr_borders3_390",
  "View_Flex_comattr_borders3_391", "View_Flex_comattr_borders3_392", "View_Flex_comattr_borders3_393", "View_Flex_comattr_borders3_394", "View_Flex_comattr_borders3_395",
  "View_Flex_comattr_borders3_396", "View_Flex_comattr_borders3_397", "View_Flex_comattr_borders3_398", "View_Flex_comattr_borders3_399", "View_Flex_comattr_borders3_400" ],
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
