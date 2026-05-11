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

package ohos_app_cangjie_entry.Stack_ca_borders_01

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
class index_Stack_ca_borders_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Stack_comattr_borders_1", "View_Stack_comattr_borders_2", "View_Stack_comattr_borders_3", "View_Stack_comattr_borders_4", "View_Stack_comattr_borders_5",
  "View_Stack_comattr_borders_6", "View_Stack_comattr_borders_7", "View_Stack_comattr_borders_8", "View_Stack_comattr_borders_9", "View_Stack_comattr_borders_10",
  "View_Stack_comattr_borders_11", "View_Stack_comattr_borders_12", "View_Stack_comattr_borders_13", "View_Stack_comattr_borders_14", "View_Stack_comattr_borders_15",
  "View_Stack_comattr_borders_16", "View_Stack_comattr_borders_17", "View_Stack_comattr_borders_18", "View_Stack_comattr_borders_19", "View_Stack_comattr_borders_20",
  "View_Stack_comattr_borders_21", "View_Stack_comattr_borders_22", "View_Stack_comattr_borders_23", "View_Stack_comattr_borders_24", "View_Stack_comattr_borders_25",
  "View_Stack_comattr_borders_26", "View_Stack_comattr_borders_27", "View_Stack_comattr_borders_28", "View_Stack_comattr_borders_29", "View_Stack_comattr_borders_30",
  "View_Stack_comattr_borders_31", "View_Stack_comattr_borders_32", "View_Stack_comattr_borders_33", "View_Stack_comattr_borders_34", "View_Stack_comattr_borders_35",
  "View_Stack_comattr_borders_36", "View_Stack_comattr_borders_37", "View_Stack_comattr_borders_38", "View_Stack_comattr_borders_39", "View_Stack_comattr_borders_40",
  "View_Stack_comattr_borders_41", "View_Stack_comattr_borders_42", "View_Stack_comattr_borders_43", "View_Stack_comattr_borders_44", "View_Stack_comattr_borders_45",
  "View_Stack_comattr_borders_46", "View_Stack_comattr_borders_47", "View_Stack_comattr_borders_48", "View_Stack_comattr_borders_49", "View_Stack_comattr_borders_50",
  "View_Stack_comattr_borders_51", "View_Stack_comattr_borders_52", "View_Stack_comattr_borders_53", "View_Stack_comattr_borders_54", "View_Stack_comattr_borders_55",
  "View_Stack_comattr_borders_56", "View_Stack_comattr_borders_57", "View_Stack_comattr_borders_58", "View_Stack_comattr_borders_59", "View_Stack_comattr_borders_60",
  "View_Stack_comattr_borders_61", "View_Stack_comattr_borders_62", "View_Stack_comattr_borders_63", "View_Stack_comattr_borders_64", "View_Stack_comattr_borders_65",
  "View_Stack_comattr_borders_66", "View_Stack_comattr_borders_67", "View_Stack_comattr_borders_68", "View_Stack_comattr_borders_69", "View_Stack_comattr_borders_70",
  "View_Stack_comattr_borders_71", "View_Stack_comattr_borders_72", "View_Stack_comattr_borders_73", "View_Stack_comattr_borders_74", "View_Stack_comattr_borders_75",
  "View_Stack_comattr_borders_76", "View_Stack_comattr_borders_77", "View_Stack_comattr_borders_78", "View_Stack_comattr_borders_79", "View_Stack_comattr_borders_80",
  "View_Stack_comattr_borders_81", "View_Stack_comattr_borders_82", "View_Stack_comattr_borders_83", "View_Stack_comattr_borders_84", "View_Stack_comattr_borders_85",
  "View_Stack_comattr_borders_86", "View_Stack_comattr_borders_87", "View_Stack_comattr_borders_88", "View_Stack_comattr_borders_89", "View_Stack_comattr_borders_90",
  "View_Stack_comattr_borders_91", "View_Stack_comattr_borders_92", "View_Stack_comattr_borders_93", "View_Stack_comattr_borders_94", "View_Stack_comattr_borders_95",
  "View_Stack_comattr_borders_96", "View_Stack_comattr_borders_97", "View_Stack_comattr_borders_98", "View_Stack_comattr_borders_99", "View_Stack_comattr_borders_100",
  "View_Stack_comattr_borders_101", "View_Stack_comattr_borders_102", "View_Stack_comattr_borders_103", "View_Stack_comattr_borders_104", "View_Stack_comattr_borders_105",
  "View_Stack_comattr_borders_106", "View_Stack_comattr_borders_107", "View_Stack_comattr_borders_108", "View_Stack_comattr_borders_109", "View_Stack_comattr_borders_110",
  "View_Stack_comattr_borders_111", "View_Stack_comattr_borders_112", "View_Stack_comattr_borders_113", "View_Stack_comattr_borders_114", "View_Stack_comattr_borders_115",
  "View_Stack_comattr_borders_116", "View_Stack_comattr_borders_117", "View_Stack_comattr_borders_118", "View_Stack_comattr_borders_119", "View_Stack_comattr_borders_120",
  "View_Stack_comattr_borders_121", "View_Stack_comattr_borders_122", "View_Stack_comattr_borders_123", "View_Stack_comattr_borders_124", "View_Stack_comattr_borders_125",
  "View_Stack_comattr_borders_126", "View_Stack_comattr_borders_127", "View_Stack_comattr_borders_128", "View_Stack_comattr_borders_129", "View_Stack_comattr_borders_130",
  "View_Stack_comattr_borders_131", "View_Stack_comattr_borders_132", "View_Stack_comattr_borders_133", "View_Stack_comattr_borders_134", "View_Stack_comattr_borders_135",
  "View_Stack_comattr_borders_136", "View_Stack_comattr_borders_137", "View_Stack_comattr_borders_138", "View_Stack_comattr_borders_139", "View_Stack_comattr_borders_140",
  "View_Stack_comattr_borders_141", "View_Stack_comattr_borders_142", "View_Stack_comattr_borders_143", "View_Stack_comattr_borders_144", "View_Stack_comattr_borders_145",
  "View_Stack_comattr_borders_146", "View_Stack_comattr_borders_147", "View_Stack_comattr_borders_148", "View_Stack_comattr_borders_149", "View_Stack_comattr_borders_150",
  "View_Stack_comattr_borders_151", "View_Stack_comattr_borders_152", "View_Stack_comattr_borders_153", "View_Stack_comattr_borders_154", "View_Stack_comattr_borders_155",
  "View_Stack_comattr_borders_156", "View_Stack_comattr_borders_157", "View_Stack_comattr_borders_158", "View_Stack_comattr_borders_159", "View_Stack_comattr_borders_160",
  "View_Stack_comattr_borders_161", "View_Stack_comattr_borders_162", "View_Stack_comattr_borders_163", "View_Stack_comattr_borders_164", "View_Stack_comattr_borders_165",
  "View_Stack_comattr_borders_166", "View_Stack_comattr_borders_167", "View_Stack_comattr_borders_168", "View_Stack_comattr_borders_169", "View_Stack_comattr_borders_170",
  "View_Stack_comattr_borders_171", "View_Stack_comattr_borders_172", "View_Stack_comattr_borders_173", "View_Stack_comattr_borders_174", "View_Stack_comattr_borders_175",
  "View_Stack_comattr_borders_176", "View_Stack_comattr_borders_177", "View_Stack_comattr_borders_178", "View_Stack_comattr_borders_179", "View_Stack_comattr_borders_180",
  "View_Stack_comattr_borders_181", "View_Stack_comattr_borders_182", "View_Stack_comattr_borders_183", "View_Stack_comattr_borders_184", "View_Stack_comattr_borders_185",
  "View_Stack_comattr_borders_186", "View_Stack_comattr_borders_187", "View_Stack_comattr_borders_188", "View_Stack_comattr_borders_189", "View_Stack_comattr_borders_190",
  "View_Stack_comattr_borders_191", "View_Stack_comattr_borders_192", "View_Stack_comattr_borders_193", "View_Stack_comattr_borders_194", "View_Stack_comattr_borders_195",
  "View_Stack_comattr_borders_196", "View_Stack_comattr_borders_197", "View_Stack_comattr_borders_198", "View_Stack_comattr_borders_199", "View_Stack_comattr_borders_200",
  "View_Stack_comattr_borders_201", "View_Stack_comattr_borders_202", "View_Stack_comattr_borders_203", "View_Stack_comattr_borders_204", "View_Stack_comattr_borders_205",
  "View_Stack_comattr_borders_206", "View_Stack_comattr_borders_207", "View_Stack_comattr_borders_208", "View_Stack_comattr_borders_209", "View_Stack_comattr_borders_210",
  "View_Stack_comattr_borders_211", "View_Stack_comattr_borders_212", "View_Stack_comattr_borders_213", "View_Stack_comattr_borders_214", "View_Stack_comattr_borders_215",
  "View_Stack_comattr_borders_216", "View_Stack_comattr_borders_217", "View_Stack_comattr_borders_218", "View_Stack_comattr_borders_219", "View_Stack_comattr_borders_220",
  "View_Stack_comattr_borders_221", "View_Stack_comattr_borders_222", "View_Stack_comattr_borders_223", "View_Stack_comattr_borders_224", "View_Stack_comattr_borders_225",
  "View_Stack_comattr_borders_226", "View_Stack_comattr_borders_227", "View_Stack_comattr_borders_228", "View_Stack_comattr_borders_229", "View_Stack_comattr_borders_230",
  "View_Stack_comattr_borders_231", "View_Stack_comattr_borders_232", "View_Stack_comattr_borders_233", "View_Stack_comattr_borders_234", "View_Stack_comattr_borders_235",
  "View_Stack_comattr_borders_236", "View_Stack_comattr_borders_237", "View_Stack_comattr_borders_238", "View_Stack_comattr_borders_239", "View_Stack_comattr_borders_240",
  "View_Stack_comattr_borders_241", "View_Stack_comattr_borders_242", "View_Stack_comattr_borders_243", "View_Stack_comattr_borders_244", "View_Stack_comattr_borders_245",
  "View_Stack_comattr_borders_246", "View_Stack_comattr_borders_247", "View_Stack_comattr_borders_248", "View_Stack_comattr_borders_249", "View_Stack_comattr_borders_250",
  "View_Stack_comattr_borders_251", "View_Stack_comattr_borders_252", "View_Stack_comattr_borders_253", "View_Stack_comattr_borders_254", "View_Stack_comattr_borders_255",
  "View_Stack_comattr_borders_256", "View_Stack_comattr_borders_257", "View_Stack_comattr_borders_258", "View_Stack_comattr_borders_259", "View_Stack_comattr_borders_260",
  "View_Stack_comattr_borders_261", "View_Stack_comattr_borders_262", "View_Stack_comattr_borders_263", "View_Stack_comattr_borders_264", "View_Stack_comattr_borders_265",
  "View_Stack_comattr_borders_266", "View_Stack_comattr_borders_267", "View_Stack_comattr_borders_268", "View_Stack_comattr_borders_269", "View_Stack_comattr_borders_270",
  "View_Stack_comattr_borders_271", "View_Stack_comattr_borders_272", "View_Stack_comattr_borders_273", "View_Stack_comattr_borders_274", "View_Stack_comattr_borders_275",
  "View_Stack_comattr_borders_276", "View_Stack_comattr_borders_277", "View_Stack_comattr_borders_278", "View_Stack_comattr_borders_279", "View_Stack_comattr_borders_280",
  "View_Stack_comattr_borders_281", "View_Stack_comattr_borders_282", "View_Stack_comattr_borders_283", "View_Stack_comattr_borders_284", "View_Stack_comattr_borders_285",
  "View_Stack_comattr_borders_286", "View_Stack_comattr_borders_287", "View_Stack_comattr_borders_288", "View_Stack_comattr_borders_289", "View_Stack_comattr_borders_290",
  "View_Stack_comattr_borders_291", "View_Stack_comattr_borders_292", "View_Stack_comattr_borders_293", "View_Stack_comattr_borders_294", "View_Stack_comattr_borders_295",
  "View_Stack_comattr_borders_296", "View_Stack_comattr_borders_297", "View_Stack_comattr_borders_298", "View_Stack_comattr_borders_299", "View_Stack_comattr_borders_300",
  "View_Stack_comattr_borders_301", "View_Stack_comattr_borders_302", "View_Stack_comattr_borders_303", "View_Stack_comattr_borders_304", "View_Stack_comattr_borders_305",
  "View_Stack_comattr_borders_306", "View_Stack_comattr_borders_307", "View_Stack_comattr_borders_308", "View_Stack_comattr_borders_309", "View_Stack_comattr_borders_310",
  "View_Stack_comattr_borders_311", "View_Stack_comattr_borders_312", "View_Stack_comattr_borders_313", "View_Stack_comattr_borders_314", "View_Stack_comattr_borders_315",
  "View_Stack_comattr_borders_316", "View_Stack_comattr_borders_317", "View_Stack_comattr_borders_318", "View_Stack_comattr_borders_319", "View_Stack_comattr_borders_320" ],
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
