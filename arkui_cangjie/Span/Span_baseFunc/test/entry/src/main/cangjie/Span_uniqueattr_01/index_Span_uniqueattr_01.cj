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

package ohos_app_cangjie_entry.Span_uniqueattr_01

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
class index_Span_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Span_uniqueattr_1", "View_Span_uniqueattr_2", "View_Span_uniqueattr_3", "View_Span_uniqueattr_4", "View_Span_uniqueattr_5",
  "View_Span_uniqueattr_6", "View_Span_uniqueattr_7", "View_Span_uniqueattr_8", "View_Span_uniqueattr_9", "View_Span_uniqueattr_10",
  "View_Span_uniqueattr_11", "View_Span_uniqueattr_12", "View_Span_uniqueattr_13", "View_Span_uniqueattr_14", "View_Span_uniqueattr_15",
  "View_Span_uniqueattr_16", "View_Span_uniqueattr_17", "View_Span_uniqueattr_18", "View_Span_uniqueattr_19", "View_Span_uniqueattr_20",
  "View_Span_uniqueattr_21", "View_Span_uniqueattr_22", "View_Span_uniqueattr_23", "View_Span_uniqueattr_24", "View_Span_uniqueattr_25",
  "View_Span_uniqueattr_26", "View_Span_uniqueattr_27", "View_Span_uniqueattr_28", "View_Span_uniqueattr_29", "View_Span_uniqueattr_30",
  "View_Span_uniqueattr_31", "View_Span_uniqueattr_32", "View_Span_uniqueattr_33", "View_Span_uniqueattr_34", "View_Span_uniqueattr_35",
  "View_Span_uniqueattr_36", "View_Span_uniqueattr_37", "View_Span_uniqueattr_38", "View_Span_uniqueattr_39", "View_Span_uniqueattr_40",
  "View_Span_uniqueattr_41", "View_Span_uniqueattr_42", "View_Span_uniqueattr_43", "View_Span_uniqueattr_44", "View_Span_uniqueattr_45",
  "View_Span_uniqueattr_46", "View_Span_uniqueattr_47", "View_Span_uniqueattr_48", "View_Span_uniqueattr_49", "View_Span_uniqueattr_50",
  "View_Span_uniqueattr_51", "View_Span_uniqueattr_52", "View_Span_uniqueattr_53", "View_Span_uniqueattr_54", "View_Span_uniqueattr_55",
  "View_Span_uniqueattr_56", "View_Span_uniqueattr_57", "View_Span_uniqueattr_58", "View_Span_uniqueattr_59", "View_Span_uniqueattr_60",
  "View_Span_uniqueattr_61", "View_Span_uniqueattr_62", "View_Span_uniqueattr_63", "View_Span_uniqueattr_64", "View_Span_uniqueattr_65",
  "View_Span_uniqueattr_66", "View_Span_uniqueattr_67", "View_Span_uniqueattr_68", "View_Span_uniqueattr_69", "View_Span_uniqueattr_70",
  "View_Span_uniqueattr_71", "View_Span_uniqueattr_72", "View_Span_uniqueattr_73", "View_Span_uniqueattr_74", "View_Span_uniqueattr_75",
  "View_Span_uniqueattr_76", "View_Span_uniqueattr_77", "View_Span_uniqueattr_78", "View_Span_uniqueattr_79", "View_Span_uniqueattr_80",
  "View_Span_uniqueattr_81", "View_Span_uniqueattr_82", "View_Span_uniqueattr_83", "View_Span_uniqueattr_84", "View_Span_uniqueattr_85",
  "View_Span_uniqueattr_86", "View_Span_uniqueattr_87", "View_Span_uniqueattr_88", "View_Span_uniqueattr_89", "View_Span_uniqueattr_90",
  "View_Span_uniqueattr_91", "View_Span_uniqueattr_92", "View_Span_uniqueattr_93", "View_Span_uniqueattr_94", "View_Span_uniqueattr_95",
  "View_Span_uniqueattr_96", "View_Span_uniqueattr_97", "View_Span_uniqueattr_98", "View_Span_uniqueattr_99", "View_Span_uniqueattr_100",
  "View_Span_uniqueattr_101", "View_Span_uniqueattr_102", "View_Span_uniqueattr_103", "View_Span_uniqueattr_104", "View_Span_uniqueattr_105",
  "View_Span_uniqueattr_106", "View_Span_uniqueattr_107", "View_Span_uniqueattr_108", "View_Span_uniqueattr_109", "View_Span_uniqueattr_110",
  "View_Span_uniqueattr_111", "View_Span_uniqueattr_112", "View_Span_uniqueattr_113", "View_Span_uniqueattr_114", "View_Span_uniqueattr_115",
  "View_Span_uniqueattr_116", "View_Span_uniqueattr_117", "View_Span_uniqueattr_118", "View_Span_uniqueattr_119", "View_Span_uniqueattr_120",
  "View_Span_uniqueattr_121", "View_Span_uniqueattr_122", "View_Span_uniqueattr_123", "View_Span_uniqueattr_124", "View_Span_uniqueattr_125",
  "View_Span_uniqueattr_126", "View_Span_uniqueattr_127", "View_Span_uniqueattr_128", "View_Span_uniqueattr_129", "View_Span_uniqueattr_130",
  "View_Span_uniqueattr_131", "View_Span_uniqueattr_132", "View_Span_uniqueattr_133", "View_Span_uniqueattr_134", "View_Span_uniqueattr_135",
  "View_Span_uniqueattr_136", "View_Span_uniqueattr_137", "View_Span_uniqueattr_138", "View_Span_uniqueattr_139", "View_Span_uniqueattr_140",
  "View_Span_uniqueattr_141", "View_Span_uniqueattr_142", "View_Span_uniqueattr_143", "View_Span_uniqueattr_144", "View_Span_uniqueattr_145",
  "View_Span_uniqueattr_146", "View_Span_uniqueattr_147", "View_Span_uniqueattr_148", "View_Span_uniqueattr_149", "View_Span_uniqueattr_150",
  "View_Span_uniqueattr_151", "View_Span_uniqueattr_152", "View_Span_uniqueattr_153", "View_Span_uniqueattr_154", "View_Span_uniqueattr_155",
  "View_Span_uniqueattr_156", "View_Span_uniqueattr_157", "View_Span_uniqueattr_158", "View_Span_uniqueattr_159", "View_Span_uniqueattr_160",
  "View_Span_uniqueattr_161", "View_Span_uniqueattr_162", "View_Span_uniqueattr_163", "View_Span_uniqueattr_164", "View_Span_uniqueattr_165",
  "View_Span_uniqueattr_166", "View_Span_uniqueattr_167", "View_Span_uniqueattr_168", "View_Span_uniqueattr_169", "View_Span_uniqueattr_170",
  "View_Span_uniqueattr_171", "View_Span_uniqueattr_172", "View_Span_uniqueattr_173", "View_Span_uniqueattr_174", "View_Span_uniqueattr_175",
  "View_Span_uniqueattr_176", "View_Span_uniqueattr_177", "View_Span_uniqueattr_178", "View_Span_uniqueattr_179", "View_Span_uniqueattr_180",
  "View_Span_uniqueattr_181", "View_Span_uniqueattr_182", "View_Span_uniqueattr_183", "View_Span_uniqueattr_184", "View_Span_uniqueattr_185",
  "View_Span_uniqueattr_186", "View_Span_uniqueattr_187", "View_Span_uniqueattr_188", "View_Span_uniqueattr_189", "View_Span_uniqueattr_190",
  "View_Span_uniqueattr_191", "View_Span_uniqueattr_192", "View_Span_uniqueattr_193", "View_Span_uniqueattr_194", "View_Span_uniqueattr_195",
  "View_Span_uniqueattr_196", "View_Span_uniqueattr_197", "View_Span_uniqueattr_198", "View_Span_uniqueattr_199", "View_Span_uniqueattr_200",
  "View_Span_uniqueattr_201", "View_Span_uniqueattr_202", "View_Span_uniqueattr_203", "View_Span_uniqueattr_204", "View_Span_uniqueattr_205",
  "View_Span_uniqueattr_206", "View_Span_uniqueattr_207", "View_Span_uniqueattr_208", "View_Span_uniqueattr_209", "View_Span_uniqueattr_210",
  "View_Span_uniqueattr_211", "View_Span_uniqueattr_212", "View_Span_uniqueattr_213", "View_Span_uniqueattr_214", "View_Span_uniqueattr_215",
  "View_Span_uniqueattr_216", "View_Span_uniqueattr_217", "View_Span_uniqueattr_218", "View_Span_uniqueattr_219", "View_Span_uniqueattr_220",
  "View_Span_uniqueattr_221", "View_Span_uniqueattr_222", "View_Span_uniqueattr_223", "View_Span_uniqueattr_224", "View_Span_uniqueattr_225",
  "View_Span_uniqueattr_226", "View_Span_uniqueattr_227", "View_Span_uniqueattr_228", "View_Span_uniqueattr_229", "View_Span_uniqueattr_230",
  "View_Span_uniqueattr_231", "View_Span_uniqueattr_232", "View_Span_uniqueattr_233", "View_Span_uniqueattr_234", "View_Span_uniqueattr_235",
  "View_Span_uniqueattr_236", "View_Span_uniqueattr_237", "View_Span_uniqueattr_238", "View_Span_uniqueattr_239", "View_Span_uniqueattr_240",
  "View_Span_uniqueattr_241", "View_Span_uniqueattr_242", "View_Span_uniqueattr_243", "View_Span_uniqueattr_244", "View_Span_uniqueattr_245",
  "View_Span_uniqueattr_246", "View_Span_uniqueattr_247", "View_Span_uniqueattr_248", "View_Span_uniqueattr_249", "View_Span_uniqueattr_250",
  "View_Span_uniqueattr_251", "View_Span_uniqueattr_252", "View_Span_uniqueattr_253", "View_Span_uniqueattr_254", "View_Span_uniqueattr_255",
  "View_Span_uniqueattr_256", "View_Span_uniqueattr_257", "View_Span_uniqueattr_258", "View_Span_uniqueattr_259", "View_Span_uniqueattr_260",
  "View_Span_uniqueattr_261", "View_Span_uniqueattr_262", "View_Span_uniqueattr_263", "View_Span_uniqueattr_264", "View_Span_uniqueattr_265",
  "View_Span_uniqueattr_266", "View_Span_uniqueattr_267", "View_Span_uniqueattr_268", "View_Span_uniqueattr_269", "View_Span_uniqueattr_270",
  "View_Span_uniqueattr_271", "View_Span_uniqueattr_272", "View_Span_uniqueattr_273", "View_Span_uniqueattr_274", "View_Span_uniqueattr_275",
  "View_Span_uniqueattr_276", "View_Span_uniqueattr_277", "View_Span_uniqueattr_278", "View_Span_uniqueattr_279", "View_Span_uniqueattr_280",
  "View_Span_uniqueattr_281", "View_Span_uniqueattr_282", "View_Span_uniqueattr_283", "View_Span_uniqueattr_284", "View_Span_uniqueattr_285",
  "View_Span_uniqueattr_286", "View_Span_uniqueattr_287", "View_Span_uniqueattr_288", "View_Span_uniqueattr_289", "View_Span_uniqueattr_290",
  "View_Span_uniqueattr_291", "View_Span_uniqueattr_292", "View_Span_uniqueattr_293", "View_Span_uniqueattr_294", "View_Span_uniqueattr_295",
  "View_Span_uniqueattr_296", "View_Span_uniqueattr_297", "View_Span_uniqueattr_298", "View_Span_uniqueattr_299", "View_Span_uniqueattr_300",
  "View_Span_uniqueattr_301", "View_Span_uniqueattr_302" ],
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
