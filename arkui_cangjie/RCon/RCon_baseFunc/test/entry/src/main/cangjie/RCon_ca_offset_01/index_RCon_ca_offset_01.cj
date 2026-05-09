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

package ohos_app_cangjie_entry.RCon_ca_offset_01

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
class index_RCon_ca_offset_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RelCon_comattr_offset_1", "View_RelCon_comattr_offset_2", "View_RelCon_comattr_offset_3", "View_RelCon_comattr_offset_4", "View_RelCon_comattr_offset_5",
  "View_RelCon_comattr_offset_6", "View_RelCon_comattr_offset_7", "View_RelCon_comattr_offset_8", "View_RelCon_comattr_offset_9", "View_RelCon_comattr_offset_10",
  "View_RelCon_comattr_offset_11", "View_RelCon_comattr_offset_12", "View_RelCon_comattr_offset_13", "View_RelCon_comattr_offset_14", "View_RelCon_comattr_offset_15",
  "View_RelCon_comattr_offset_16", "View_RelCon_comattr_offset_17", "View_RelCon_comattr_offset_18", "View_RelCon_comattr_offset_19", "View_RelCon_comattr_offset_20",
  "View_RelCon_comattr_offset_21", "View_RelCon_comattr_offset_22", "View_RelCon_comattr_offset_23", "View_RelCon_comattr_offset_24", "View_RelCon_comattr_offset_25",
  "View_RelCon_comattr_offset_26", "View_RelCon_comattr_offset_27", "View_RelCon_comattr_offset_28", "View_RelCon_comattr_offset_29", "View_RelCon_comattr_offset_30",
  "View_RelCon_comattr_offset_31", "View_RelCon_comattr_offset_32", "View_RelCon_comattr_offset_33", "View_RelCon_comattr_offset_34", "View_RelCon_comattr_offset_35",
  "View_RelCon_comattr_offset_36", "View_RelCon_comattr_offset_37", "View_RelCon_comattr_offset_38", "View_RelCon_comattr_offset_39", "View_RelCon_comattr_offset_40",
  "View_RelCon_comattr_offset_41", "View_RelCon_comattr_offset_42", "View_RelCon_comattr_offset_43", "View_RelCon_comattr_offset_44", "View_RelCon_comattr_offset_45",
  "View_RelCon_comattr_offset_46", "View_RelCon_comattr_offset_47", "View_RelCon_comattr_offset_48", "View_RelCon_comattr_offset_49", "View_RelCon_comattr_offset_50",
  "View_RelCon_comattr_offset_51", "View_RelCon_comattr_offset_52", "View_RelCon_comattr_offset_53", "View_RelCon_comattr_offset_54", "View_RelCon_comattr_offset_55",
  "View_RelCon_comattr_offset_56", "View_RelCon_comattr_offset_57", "View_RelCon_comattr_offset_58", "View_RelCon_comattr_offset_59", "View_RelCon_comattr_offset_60",
  "View_RelCon_comattr_offset_61", "View_RelCon_comattr_offset_62", "View_RelCon_comattr_offset_63", "View_RelCon_comattr_offset_64", "View_RelCon_comattr_offset_65",
  "View_RelCon_comattr_offset_66", "View_RelCon_comattr_offset_67", "View_RelCon_comattr_offset_68", "View_RelCon_comattr_offset_69", "View_RelCon_comattr_offset_70",
  "View_RelCon_comattr_offset_71", "View_RelCon_comattr_offset_72", "View_RelCon_comattr_offset_73", "View_RelCon_comattr_offset_74", "View_RelCon_comattr_offset_75",
  "View_RelCon_comattr_offset_76", "View_RelCon_comattr_offset_77", "View_RelCon_comattr_offset_78", "View_RelCon_comattr_offset_79", "View_RelCon_comattr_offset_80",
  "View_RelCon_comattr_offset_81", "View_RelCon_comattr_offset_82", "View_RelCon_comattr_offset_83", "View_RelCon_comattr_offset_84", "View_RelCon_comattr_offset_85",
  "View_RelCon_comattr_offset_86", "View_RelCon_comattr_offset_87", "View_RelCon_comattr_offset_88", "View_RelCon_comattr_offset_89", "View_RelCon_comattr_offset_90",
  "View_RelCon_comattr_offset_91", "View_RelCon_comattr_offset_92", "View_RelCon_comattr_offset_93", "View_RelCon_comattr_offset_94", "View_RelCon_comattr_offset_95",
  "View_RelCon_comattr_offset_96", "View_RelCon_comattr_offset_97", "View_RelCon_comattr_offset_98", "View_RelCon_comattr_offset_99", "View_RelCon_comattr_offset_100",
  "View_RelCon_comattr_offset_101", "View_RelCon_comattr_offset_102", "View_RelCon_comattr_offset_103", "View_RelCon_comattr_offset_104", "View_RelCon_comattr_offset_105",
  "View_RelCon_comattr_offset_106", "View_RelCon_comattr_offset_107", "View_RelCon_comattr_offset_108", "View_RelCon_comattr_offset_109", "View_RelCon_comattr_offset_110",
  "View_RelCon_comattr_offset_111", "View_RelCon_comattr_offset_112", "View_RelCon_comattr_offset_113", "View_RelCon_comattr_offset_114", "View_RelCon_comattr_offset_115",
  "View_RelCon_comattr_offset_116", "View_RelCon_comattr_offset_117", "View_RelCon_comattr_offset_118", "View_RelCon_comattr_offset_119", "View_RelCon_comattr_offset_120",
  "View_RelCon_comattr_offset_121", "View_RelCon_comattr_offset_122", "View_RelCon_comattr_offset_123", "View_RelCon_comattr_offset_124", "View_RelCon_comattr_offset_125",
  "View_RelCon_comattr_offset_126", "View_RelCon_comattr_offset_127", "View_RelCon_comattr_offset_128", "View_RelCon_comattr_offset_129", "View_RelCon_comattr_offset_130",
  "View_RelCon_comattr_offset_131", "View_RelCon_comattr_offset_132", "View_RelCon_comattr_offset_133", "View_RelCon_comattr_offset_134", "View_RelCon_comattr_offset_135",
  "View_RelCon_comattr_offset_136", "View_RelCon_comattr_offset_137", "View_RelCon_comattr_offset_138", "View_RelCon_comattr_offset_139", "View_RelCon_comattr_offset_140",
  "View_RelCon_comattr_offset_141", "View_RelCon_comattr_offset_142", "View_RelCon_comattr_offset_143", "View_RelCon_comattr_offset_144", "View_RelCon_comattr_offset_145",
  "View_RelCon_comattr_offset_146", "View_RelCon_comattr_offset_147", "View_RelCon_comattr_offset_148", "View_RelCon_comattr_offset_149", "View_RelCon_comattr_offset_150",
  "View_RelCon_comattr_offset_151", "View_RelCon_comattr_offset_152", "View_RelCon_comattr_offset_153", "View_RelCon_comattr_offset_154", "View_RelCon_comattr_offset_155",
  "View_RelCon_comattr_offset_156", "View_RelCon_comattr_offset_157", "View_RelCon_comattr_offset_158", "View_RelCon_comattr_offset_159", "View_RelCon_comattr_offset_160",
  "View_RelCon_comattr_offset_161", "View_RelCon_comattr_offset_162", "View_RelCon_comattr_offset_163", "View_RelCon_comattr_offset_164", "View_RelCon_comattr_offset_165",
  "View_RelCon_comattr_offset_166", "View_RelCon_comattr_offset_167", "View_RelCon_comattr_offset_168", "View_RelCon_comattr_offset_169", "View_RelCon_comattr_offset_170",
  "View_RelCon_comattr_offset_171", "View_RelCon_comattr_offset_172", "View_RelCon_comattr_offset_173", "View_RelCon_comattr_offset_174", "View_RelCon_comattr_offset_175",
  "View_RelCon_comattr_offset_176", "View_RelCon_comattr_offset_177", "View_RelCon_comattr_offset_178", "View_RelCon_comattr_offset_179", "View_RelCon_comattr_offset_180",
  "View_RelCon_comattr_offset_181", "View_RelCon_comattr_offset_182", "View_RelCon_comattr_offset_183", "View_RelCon_comattr_offset_184", "View_RelCon_comattr_offset_185",
  "View_RelCon_comattr_offset_186", "View_RelCon_comattr_offset_187", "View_RelCon_comattr_offset_188", "View_RelCon_comattr_offset_189", "View_RelCon_comattr_offset_190",
  "View_RelCon_comattr_offset_191", "View_RelCon_comattr_offset_192", "View_RelCon_comattr_offset_193", "View_RelCon_comattr_offset_194", "View_RelCon_comattr_offset_195",
  "View_RelCon_comattr_offset_196", "View_RelCon_comattr_offset_197", "View_RelCon_comattr_offset_198", "View_RelCon_comattr_offset_199", "View_RelCon_comattr_offset_200",
  "View_RelCon_comattr_offset_201", "View_RelCon_comattr_offset_202", "View_RelCon_comattr_offset_203", "View_RelCon_comattr_offset_204", "View_RelCon_comattr_offset_205",
  "View_RelCon_comattr_offset_206", "View_RelCon_comattr_offset_207", "View_RelCon_comattr_offset_208", "View_RelCon_comattr_offset_209", "View_RelCon_comattr_offset_210",
  "View_RelCon_comattr_offset_211", "View_RelCon_comattr_offset_212", "View_RelCon_comattr_offset_213", "View_RelCon_comattr_offset_214", "View_RelCon_comattr_offset_215",
  "View_RelCon_comattr_offset_216", "View_RelCon_comattr_offset_217", "View_RelCon_comattr_offset_218", "View_RelCon_comattr_offset_219", "View_RelCon_comattr_offset_220",
  "View_RelCon_comattr_offset_221", "View_RelCon_comattr_offset_222", "View_RelCon_comattr_offset_223", "View_RelCon_comattr_offset_224", "View_RelCon_comattr_offset_225",
  "View_RelCon_comattr_offset_226", "View_RelCon_comattr_offset_227", "View_RelCon_comattr_offset_228", "View_RelCon_comattr_offset_229", "View_RelCon_comattr_offset_230",
  "View_RelCon_comattr_offset_231", "View_RelCon_comattr_offset_232", "View_RelCon_comattr_offset_233", "View_RelCon_comattr_offset_234", "View_RelCon_comattr_offset_235",
  "View_RelCon_comattr_offset_236", "View_RelCon_comattr_offset_237", "View_RelCon_comattr_offset_238", "View_RelCon_comattr_offset_239", "View_RelCon_comattr_offset_240",
  "View_RelCon_comattr_offset_241", "View_RelCon_comattr_offset_242", "View_RelCon_comattr_offset_243", "View_RelCon_comattr_offset_244", "View_RelCon_comattr_offset_245",
  "View_RelCon_comattr_offset_246", "View_RelCon_comattr_offset_247", "View_RelCon_comattr_offset_248", "View_RelCon_comattr_offset_249", "View_RelCon_comattr_offset_250",
  "View_RelCon_comattr_offset_251", "View_RelCon_comattr_offset_252", "View_RelCon_comattr_offset_253", "View_RelCon_comattr_offset_254", "View_RelCon_comattr_offset_255",
  "View_RelCon_comattr_offset_256", "View_RelCon_comattr_offset_257", "View_RelCon_comattr_offset_258", "View_RelCon_comattr_offset_259", "View_RelCon_comattr_offset_260",
  "View_RelCon_comattr_offset_261", "View_RelCon_comattr_offset_262", "View_RelCon_comattr_offset_263", "View_RelCon_comattr_offset_264", "View_RelCon_comattr_offset_265",
  "View_RelCon_comattr_offset_266", "View_RelCon_comattr_offset_267", "View_RelCon_comattr_offset_268", "View_RelCon_comattr_offset_269", "View_RelCon_comattr_offset_270",
  "View_RelCon_comattr_offset_271", "View_RelCon_comattr_offset_272", "View_RelCon_comattr_offset_273", "View_RelCon_comattr_offset_274", "View_RelCon_comattr_offset_275",
  "View_RelCon_comattr_offset_276", "View_RelCon_comattr_offset_277", "View_RelCon_comattr_offset_278", "View_RelCon_comattr_offset_279", "View_RelCon_comattr_offset_280",
  "View_RelCon_comattr_offset_281", "View_RelCon_comattr_offset_282", "View_RelCon_comattr_offset_283", "View_RelCon_comattr_offset_284", "View_RelCon_comattr_offset_285",
  "View_RelCon_comattr_offset_286", "View_RelCon_comattr_offset_287", "View_RelCon_comattr_offset_288", "View_RelCon_comattr_offset_289", "View_RelCon_comattr_offset_290",
  "View_RelCon_comattr_offset_291", "View_RelCon_comattr_offset_292", "View_RelCon_comattr_offset_293", "View_RelCon_comattr_offset_294", "View_RelCon_comattr_offset_295",
  "View_RelCon_comattr_offset_296", "View_RelCon_comattr_offset_297", "View_RelCon_comattr_offset_298", "View_RelCon_comattr_offset_299", "View_RelCon_comattr_offset_300",
  "View_RelCon_comattr_offset_301", "View_RelCon_comattr_offset_302", "View_RelCon_comattr_offset_303", "View_RelCon_comattr_offset_304", "View_RelCon_comattr_offset_305",
  "View_RelCon_comattr_offset_306", "View_RelCon_comattr_offset_307", "View_RelCon_comattr_offset_308", "View_RelCon_comattr_offset_309", "View_RelCon_comattr_offset_310",
  "View_RelCon_comattr_offset_311", "View_RelCon_comattr_offset_312", "View_RelCon_comattr_offset_313", "View_RelCon_comattr_offset_314", "View_RelCon_comattr_offset_315",
  "View_RelCon_comattr_offset_316", "View_RelCon_comattr_offset_317", "View_RelCon_comattr_offset_318", "View_RelCon_comattr_offset_319", "View_RelCon_comattr_offset_320",
  "View_RelCon_comattr_offset_321", "View_RelCon_comattr_offset_322", "View_RelCon_comattr_offset_323", "View_RelCon_comattr_offset_324", "View_RelCon_comattr_offset_325",
  "View_RelCon_comattr_offset_326", "View_RelCon_comattr_offset_327", "View_RelCon_comattr_offset_328", "View_RelCon_comattr_offset_329", "View_RelCon_comattr_offset_330",
  "View_RelCon_comattr_offset_331", "View_RelCon_comattr_offset_332", "View_RelCon_comattr_offset_333", "View_RelCon_comattr_offset_334", "View_RelCon_comattr_offset_335",
  "View_RelCon_comattr_offset_336", "View_RelCon_comattr_offset_337", "View_RelCon_comattr_offset_338", "View_RelCon_comattr_offset_339", "View_RelCon_comattr_offset_340",
  "View_RelCon_comattr_offset_341", "View_RelCon_comattr_offset_342", "View_RelCon_comattr_offset_343", "View_RelCon_comattr_offset_344", "View_RelCon_comattr_offset_345",
  "View_RelCon_comattr_offset_346", "View_RelCon_comattr_offset_347", "View_RelCon_comattr_offset_348", "View_RelCon_comattr_offset_349", "View_RelCon_comattr_offset_350",
  "View_RelCon_comattr_offset_351", "View_RelCon_comattr_offset_352", "View_RelCon_comattr_offset_353", "View_RelCon_comattr_offset_354", "View_RelCon_comattr_offset_355",
  "View_RelCon_comattr_offset_356", "View_RelCon_comattr_offset_357", "View_RelCon_comattr_offset_358", "View_RelCon_comattr_offset_359", "View_RelCon_comattr_offset_360",
  "View_RelCon_comattr_offset_361", "View_RelCon_comattr_offset_362", "View_RelCon_comattr_offset_363", "View_RelCon_comattr_offset_364", "View_RelCon_comattr_offset_365",
  "View_RelCon_comattr_offset_366", "View_RelCon_comattr_offset_367", "View_RelCon_comattr_offset_368", "View_RelCon_comattr_offset_369", "View_RelCon_comattr_offset_370",
  "View_RelCon_comattr_offset_371", "View_RelCon_comattr_offset_372", "View_RelCon_comattr_offset_373", "View_RelCon_comattr_offset_374", "View_RelCon_comattr_offset_375",
  "View_RelCon_comattr_offset_376", "View_RelCon_comattr_offset_377", "View_RelCon_comattr_offset_378", "View_RelCon_comattr_offset_379", "View_RelCon_comattr_offset_380",
  "View_RelCon_comattr_offset_381", "View_RelCon_comattr_offset_382", "View_RelCon_comattr_offset_383", "View_RelCon_comattr_offset_384", "View_RelCon_comattr_offset_385",
  "View_RelCon_comattr_offset_386", "View_RelCon_comattr_offset_387", "View_RelCon_comattr_offset_388", "View_RelCon_comattr_offset_389", "View_RelCon_comattr_offset_390",
  "View_RelCon_comattr_offset_391", "View_RelCon_comattr_offset_392", "View_RelCon_comattr_offset_393", "View_RelCon_comattr_offset_394", "View_RelCon_comattr_offset_395",
  "View_RelCon_comattr_offset_396", "View_RelCon_comattr_offset_397", "View_RelCon_comattr_offset_398", "View_RelCon_comattr_offset_399", "View_RelCon_comattr_offset_400" ],
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
