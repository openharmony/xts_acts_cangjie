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

package ohos_app_cangjie_entry.Bad_init2_02

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
class index_Bad_init2_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Badge_init2_1", "View_Badge_init2_2", "View_Badge_init2_3", "View_Badge_init2_4", "View_Badge_init2_5",
  "View_Badge_init2_6", "View_Badge_init2_7", "View_Badge_init2_8", "View_Badge_init2_9", "View_Badge_init2_10",
  "View_Badge_init2_11", "View_Badge_init2_12", "View_Badge_init2_13", "View_Badge_init2_14", "View_Badge_init2_15",
  "View_Badge_init2_16", "View_Badge_init2_17", "View_Badge_init2_18", "View_Badge_init2_19", "View_Badge_init2_20",
  "View_Badge_init2_21", "View_Badge_init2_22", "View_Badge_init2_23", "View_Badge_init2_24", "View_Badge_init2_25",
  "View_Badge_init2_26", "View_Badge_init2_27", "View_Badge_init2_28", "View_Badge_init2_29", "View_Badge_init2_30",
  "View_Badge_init2_31", "View_Badge_init2_32", "View_Badge_init2_33", "View_Badge_init2_34", "View_Badge_init2_35",
  "View_Badge_init2_36", "View_Badge_init2_37", "View_Badge_init2_38", "View_Badge_init2_39", "View_Badge_init2_40",
  "View_Badge_init2_41", "View_Badge_init2_42", "View_Badge_init2_43", "View_Badge_init2_44", "View_Badge_init2_45",
  "View_Badge_init2_46", "View_Badge_init2_47", "View_Badge_init2_48", "View_Badge_init2_49", "View_Badge_init2_50",
  "View_Badge_init2_51", "View_Badge_init2_52", "View_Badge_init2_53", "View_Badge_init2_54", "View_Badge_init2_55",
  "View_Badge_init2_56", "View_Badge_init2_57", "View_Badge_init2_58", "View_Badge_init2_59", "View_Badge_init2_60",
  "View_Badge_init2_61", "View_Badge_init2_62", "View_Badge_init2_63", "View_Badge_init2_64", "View_Badge_init2_65",
  "View_Badge_init2_66", "View_Badge_init2_67", "View_Badge_init2_68", "View_Badge_init2_69", "View_Badge_init2_70",
  "View_Badge_init2_71", "View_Badge_init2_72", "View_Badge_init2_73", "View_Badge_init2_74", "View_Badge_init2_75",
  "View_Badge_init2_76", "View_Badge_init2_77", "View_Badge_init2_78", "View_Badge_init2_79", "View_Badge_init2_80",
  "View_Badge_init2_81", "View_Badge_init2_82", "View_Badge_init2_83", "View_Badge_init2_84", "View_Badge_init2_85",
  "View_Badge_init2_86", "View_Badge_init2_87", "View_Badge_init2_88", "View_Badge_init2_89", "View_Badge_init2_90",
  "View_Badge_init2_91", "View_Badge_init2_92", "View_Badge_init2_93", "View_Badge_init2_94", "View_Badge_init2_95",
  "View_Badge_init2_96", "View_Badge_init2_97", "View_Badge_init2_98", "View_Badge_init2_99", "View_Badge_init2_100",
  "View_Badge_init2_101", "View_Badge_init2_102", "View_Badge_init2_103", "View_Badge_init2_104", "View_Badge_init2_105",
  "View_Badge_init2_106", "View_Badge_init2_107", "View_Badge_init2_108", "View_Badge_init2_109", "View_Badge_init2_110",
  "View_Badge_init2_111", "View_Badge_init2_112", "View_Badge_init2_113", "View_Badge_init2_114", "View_Badge_init2_115",
  "View_Badge_init2_116", "View_Badge_init2_117", "View_Badge_init2_118", "View_Badge_init2_119", "View_Badge_init2_120",
  "View_Badge_init2_121", "View_Badge_init2_122", "View_Badge_init2_123", "View_Badge_init2_124", "View_Badge_init2_125",
  "View_Badge_init2_126", "View_Badge_init2_127", "View_Badge_init2_128", "View_Badge_init2_129", "View_Badge_init2_130",
  "View_Badge_init2_131", "View_Badge_init2_132", "View_Badge_init2_133", "View_Badge_init2_134", "View_Badge_init2_135",
  "View_Badge_init2_136", "View_Badge_init2_137", "View_Badge_init2_138", "View_Badge_init2_139", "View_Badge_init2_140",
  "View_Badge_init2_141", "View_Badge_init2_142", "View_Badge_init2_143", "View_Badge_init2_144", "View_Badge_init2_145",
  "View_Badge_init2_146", "View_Badge_init2_147", "View_Badge_init2_148", "View_Badge_init2_149", "View_Badge_init2_150",
  "View_Badge_init2_151", "View_Badge_init2_152", "View_Badge_init2_153", "View_Badge_init2_154", "View_Badge_init2_155",
  "View_Badge_init2_156", "View_Badge_init2_157", "View_Badge_init2_158", "View_Badge_init2_159", "View_Badge_init2_160",
  "View_Badge_init2_161", "View_Badge_init2_162", "View_Badge_init2_163", "View_Badge_init2_164", "View_Badge_init2_165",
  "View_Badge_init2_166", "View_Badge_init2_167", "View_Badge_init2_168", "View_Badge_init2_169", "View_Badge_init2_170",
  "View_Badge_init2_171", "View_Badge_init2_172", "View_Badge_init2_173", "View_Badge_init2_174", "View_Badge_init2_175",
  "View_Badge_init2_176", "View_Badge_init2_177", "View_Badge_init2_178", "View_Badge_init2_179", "View_Badge_init2_180",
  "View_Badge_init2_181", "View_Badge_init2_182", "View_Badge_init2_183", "View_Badge_init2_184", "View_Badge_init2_185",
  "View_Badge_init2_186", "View_Badge_init2_187", "View_Badge_init2_188", "View_Badge_init2_189", "View_Badge_init2_190",
  "View_Badge_init2_191", "View_Badge_init2_192", "View_Badge_init2_193", "View_Badge_init2_194", "View_Badge_init2_195",
  "View_Badge_init2_196", "View_Badge_init2_197", "View_Badge_init2_198", "View_Badge_init2_199", "View_Badge_init2_200",
  "View_Badge_init2_201", "View_Badge_init2_202", "View_Badge_init2_203", "View_Badge_init2_204", "View_Badge_init2_205",
  "View_Badge_init2_206", "View_Badge_init2_207", "View_Badge_init2_208", "View_Badge_init2_209", "View_Badge_init2_210",
  "View_Badge_init2_211", "View_Badge_init2_212", "View_Badge_init2_213", "View_Badge_init2_214", "View_Badge_init2_215",
  "View_Badge_init2_216", "View_Badge_init2_217", "View_Badge_init2_218", "View_Badge_init2_219", "View_Badge_init2_220",
  "View_Badge_init2_221", "View_Badge_init2_222", "View_Badge_init2_223", "View_Badge_init2_224", "View_Badge_init2_225",
  "View_Badge_init2_226", "View_Badge_init2_227", "View_Badge_init2_228", "View_Badge_init2_229", "View_Badge_init2_230",
  "View_Badge_init2_231", "View_Badge_init2_232", "View_Badge_init2_233", "View_Badge_init2_234", "View_Badge_init2_235",
  "View_Badge_init2_236", "View_Badge_init2_237", "View_Badge_init2_238", "View_Badge_init2_239", "View_Badge_init2_240",
  "View_Badge_init2_241", "View_Badge_init2_242", "View_Badge_init2_243", "View_Badge_init2_244", "View_Badge_init2_245",
  "View_Badge_init2_246", "View_Badge_init2_247", "View_Badge_init2_248", "View_Badge_init2_249", "View_Badge_init2_250",
  "View_Badge_init2_251", "View_Badge_init2_252", "View_Badge_init2_253", "View_Badge_init2_254", "View_Badge_init2_255",
  "View_Badge_init2_256", "View_Badge_init2_257", "View_Badge_init2_258", "View_Badge_init2_259", "View_Badge_init2_260",
  "View_Badge_init2_261", "View_Badge_init2_262", "View_Badge_init2_263", "View_Badge_init2_264", "View_Badge_init2_265",
  "View_Badge_init2_266", "View_Badge_init2_267", "View_Badge_init2_268", "View_Badge_init2_269", "View_Badge_init2_270",
  "View_Badge_init2_271", "View_Badge_init2_272", "View_Badge_init2_273", "View_Badge_init2_274", "View_Badge_init2_275",
  "View_Badge_init2_276", "View_Badge_init2_277", "View_Badge_init2_278", "View_Badge_init2_279", "View_Badge_init2_280",
  "View_Badge_init2_281", "View_Badge_init2_282", "View_Badge_init2_283", "View_Badge_init2_284", "View_Badge_init2_285",
  "View_Badge_init2_286", "View_Badge_init2_287", "View_Badge_init2_288", "View_Badge_init2_289", "View_Badge_init2_290",
  "View_Badge_init2_291", "View_Badge_init2_292", "View_Badge_init2_293", "View_Badge_init2_294", "View_Badge_init2_295",
  "View_Badge_init2_296", "View_Badge_init2_297", "View_Badge_init2_298", "View_Badge_init2_299", "View_Badge_init2_300",
  "View_Badge_init2_301" ],
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
