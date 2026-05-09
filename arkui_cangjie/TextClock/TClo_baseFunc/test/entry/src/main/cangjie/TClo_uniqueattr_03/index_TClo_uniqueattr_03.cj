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

package ohos_app_cangjie_entry.TClo_uniqueattr_03

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
class index_TClo_uniqueattr_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextClock_unique3_1", "View_TextClock_unique3_2", "View_TextClock_unique3_3", "View_TextClock_unique3_4", "View_TextClock_unique3_5",
  "View_TextClock_unique3_6", "View_TextClock_unique3_7", "View_TextClock_unique3_8", "View_TextClock_unique3_9", "View_TextClock_unique3_10",
  "View_TextClock_unique3_11", "View_TextClock_unique3_12", "View_TextClock_unique3_13", "View_TextClock_unique3_14", "View_TextClock_unique3_15",
  "View_TextClock_unique3_16", "View_TextClock_unique3_17", "View_TextClock_unique3_18", "View_TextClock_unique3_19", "View_TextClock_unique3_20",
  "View_TextClock_unique3_21", "View_TextClock_unique3_22", "View_TextClock_unique3_23", "View_TextClock_unique3_24", "View_TextClock_unique3_25",
  "View_TextClock_unique3_26", "View_TextClock_unique3_27", "View_TextClock_unique3_28", "View_TextClock_unique3_29", "View_TextClock_unique3_30",
  "View_TextClock_unique3_31", "View_TextClock_unique3_32", "View_TextClock_unique3_33", "View_TextClock_unique3_34", "View_TextClock_unique3_35",
  "View_TextClock_unique3_36", "View_TextClock_unique3_37", "View_TextClock_unique3_38", "View_TextClock_unique3_39", "View_TextClock_unique3_40",
  "View_TextClock_unique3_41", "View_TextClock_unique3_42", "View_TextClock_unique3_43", "View_TextClock_unique3_44", "View_TextClock_unique3_45",
  "View_TextClock_unique3_46", "View_TextClock_unique3_47", "View_TextClock_unique3_48", "View_TextClock_unique3_49", "View_TextClock_unique3_50",
  "View_TextClock_unique3_51", "View_TextClock_unique3_52", "View_TextClock_unique3_53", "View_TextClock_unique3_54", "View_TextClock_unique3_55",
  "View_TextClock_unique3_56", "View_TextClock_unique3_57", "View_TextClock_unique3_58", "View_TextClock_unique3_59", "View_TextClock_unique3_60",
  "View_TextClock_unique3_61", "View_TextClock_unique3_62", "View_TextClock_unique3_63", "View_TextClock_unique3_64", "View_TextClock_unique3_65",
  "View_TextClock_unique3_66", "View_TextClock_unique3_67", "View_TextClock_unique3_68", "View_TextClock_unique3_69", "View_TextClock_unique3_70",
  "View_TextClock_unique3_71", "View_TextClock_unique3_72", "View_TextClock_unique3_73", "View_TextClock_unique3_74", "View_TextClock_unique3_75",
  "View_TextClock_unique3_76", "View_TextClock_unique3_77", "View_TextClock_unique3_78", "View_TextClock_unique3_79", "View_TextClock_unique3_80",
  "View_TextClock_unique3_81", "View_TextClock_unique3_82", "View_TextClock_unique3_83", "View_TextClock_unique3_84", "View_TextClock_unique3_85",
  "View_TextClock_unique3_86", "View_TextClock_unique3_87", "View_TextClock_unique3_88", "View_TextClock_unique3_89", "View_TextClock_unique3_90",
  "View_TextClock_unique3_91", "View_TextClock_unique3_92", "View_TextClock_unique3_93", "View_TextClock_unique3_94", "View_TextClock_unique3_95",
  "View_TextClock_unique3_96", "View_TextClock_unique3_97", "View_TextClock_unique3_98", "View_TextClock_unique3_99", "View_TextClock_unique3_100",
  "View_TextClock_unique3_101", "View_TextClock_unique3_102", "View_TextClock_unique3_103", "View_TextClock_unique3_104", "View_TextClock_unique3_105",
  "View_TextClock_unique3_106", "View_TextClock_unique3_107", "View_TextClock_unique3_108", "View_TextClock_unique3_109", "View_TextClock_unique3_110",
  "View_TextClock_unique3_111", "View_TextClock_unique3_112", "View_TextClock_unique3_113", "View_TextClock_unique3_114", "View_TextClock_unique3_115",
  "View_TextClock_unique3_116", "View_TextClock_unique3_117", "View_TextClock_unique3_118", "View_TextClock_unique3_119", "View_TextClock_unique3_120",
  "View_TextClock_unique3_121", "View_TextClock_unique3_122", "View_TextClock_unique3_123", "View_TextClock_unique3_124", "View_TextClock_unique3_125",
  "View_TextClock_unique3_126", "View_TextClock_unique3_127", "View_TextClock_unique3_128", "View_TextClock_unique3_129", "View_TextClock_unique3_130",
  "View_TextClock_unique3_131", "View_TextClock_unique3_132", "View_TextClock_unique3_133", "View_TextClock_unique3_134", "View_TextClock_unique3_135",
  "View_TextClock_unique3_136", "View_TextClock_unique3_137", "View_TextClock_unique3_138", "View_TextClock_unique3_139", "View_TextClock_unique3_140",
  "View_TextClock_unique3_141", "View_TextClock_unique3_142", "View_TextClock_unique3_143", "View_TextClock_unique3_144", "View_TextClock_unique3_145",
  "View_TextClock_unique3_146", "View_TextClock_unique3_147", "View_TextClock_unique3_148", "View_TextClock_unique3_149", "View_TextClock_unique3_150",
  "View_TextClock_unique3_151", "View_TextClock_unique3_152", "View_TextClock_unique3_153", "View_TextClock_unique3_154", "View_TextClock_unique3_155",
  "View_TextClock_unique3_156", "View_TextClock_unique3_157", "View_TextClock_unique3_158", "View_TextClock_unique3_159", "View_TextClock_unique3_160",
  "View_TextClock_unique3_161", "View_TextClock_unique3_162", "View_TextClock_unique3_163", "View_TextClock_unique3_164", "View_TextClock_unique3_165",
  "View_TextClock_unique3_166", "View_TextClock_unique3_167", "View_TextClock_unique3_168", "View_TextClock_unique3_169", "View_TextClock_unique3_170",
  "View_TextClock_unique3_171", "View_TextClock_unique3_172", "View_TextClock_unique3_173", "View_TextClock_unique3_174", "View_TextClock_unique3_175",
  "View_TextClock_unique3_176", "View_TextClock_unique3_177", "View_TextClock_unique3_178", "View_TextClock_unique3_179", "View_TextClock_unique3_180",
  "View_TextClock_unique3_181", "View_TextClock_unique3_182", "View_TextClock_unique3_183", "View_TextClock_unique3_184", "View_TextClock_unique3_185",
  "View_TextClock_unique3_186", "View_TextClock_unique3_187", "View_TextClock_unique3_188", "View_TextClock_unique3_189", "View_TextClock_unique3_190",
  "View_TextClock_unique3_191", "View_TextClock_unique3_192", "View_TextClock_unique3_193", "View_TextClock_unique3_194", "View_TextClock_unique3_195",
  "View_TextClock_unique3_196", "View_TextClock_unique3_197", "View_TextClock_unique3_198", "View_TextClock_unique3_199", "View_TextClock_unique3_200",
  "View_TextClock_unique3_201", "View_TextClock_unique3_202", "View_TextClock_unique3_203", "View_TextClock_unique3_204", "View_TextClock_unique3_205",
  "View_TextClock_unique3_206", "View_TextClock_unique3_207", "View_TextClock_unique3_208", "View_TextClock_unique3_209", "View_TextClock_unique3_210",
  "View_TextClock_unique3_211", "View_TextClock_unique3_212", "View_TextClock_unique3_213", "View_TextClock_unique3_214", "View_TextClock_unique3_215",
  "View_TextClock_unique3_216", "View_TextClock_unique3_217", "View_TextClock_unique3_218", "View_TextClock_unique3_219", "View_TextClock_unique3_220",
  "View_TextClock_unique3_221", "View_TextClock_unique3_222", "View_TextClock_unique3_223", "View_TextClock_unique3_224", "View_TextClock_unique3_225",
  "View_TextClock_unique3_226", "View_TextClock_unique3_227", "View_TextClock_unique3_228", "View_TextClock_unique3_229", "View_TextClock_unique3_230",
  "View_TextClock_unique3_231", "View_TextClock_unique3_232", "View_TextClock_unique3_233", "View_TextClock_unique3_234", "View_TextClock_unique3_235",
  "View_TextClock_unique3_236", "View_TextClock_unique3_237", "View_TextClock_unique3_238", "View_TextClock_unique3_239", "View_TextClock_unique3_240",
  "View_TextClock_unique3_241", "View_TextClock_unique3_242", "View_TextClock_unique3_243", "View_TextClock_unique3_244", "View_TextClock_unique3_245",
  "View_TextClock_unique3_246", "View_TextClock_unique3_247", "View_TextClock_unique3_248", "View_TextClock_unique3_249", "View_TextClock_unique3_250",
  "View_TextClock_unique3_251", "View_TextClock_unique3_252", "View_TextClock_unique3_253", "View_TextClock_unique3_254", "View_TextClock_unique3_255",
  "View_TextClock_unique3_256", "View_TextClock_unique3_257", "View_TextClock_unique3_258", "View_TextClock_unique3_259", "View_TextClock_unique3_260",
  "View_TextClock_unique3_261", "View_TextClock_unique3_262", "View_TextClock_unique3_263", "View_TextClock_unique3_264", "View_TextClock_unique3_265",
  "View_TextClock_unique3_266", "View_TextClock_unique3_267", "View_TextClock_unique3_268", "View_TextClock_unique3_269", "View_TextClock_unique3_270",
  "View_TextClock_unique3_271", "View_TextClock_unique3_272", "View_TextClock_unique3_273", "View_TextClock_unique3_274", "View_TextClock_unique3_275",
  "View_TextClock_unique3_276", "View_TextClock_unique3_277", "View_TextClock_unique3_278", "View_TextClock_unique3_279", "View_TextClock_unique3_280",
  "View_TextClock_unique3_281", "View_TextClock_unique3_282", "View_TextClock_unique3_283", "View_TextClock_unique3_284", "View_TextClock_unique3_285",
  "View_TextClock_unique3_286", "View_TextClock_unique3_287", "View_TextClock_unique3_288", "View_TextClock_unique3_289", "View_TextClock_unique3_290",
  "View_TextClock_unique3_291", "View_TextClock_unique3_292", "View_TextClock_unique3_293", "View_TextClock_unique3_294", "View_TextClock_unique3_295",
  "View_TextClock_unique3_296", "View_TextClock_unique3_297", "View_TextClock_unique3_298", "View_TextClock_unique3_299", "View_TextClock_unique3_300" ],
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
