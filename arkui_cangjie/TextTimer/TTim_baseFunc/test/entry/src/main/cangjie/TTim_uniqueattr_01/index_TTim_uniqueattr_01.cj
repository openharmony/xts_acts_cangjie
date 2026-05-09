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

package ohos_app_cangjie_entry.TTim_uniqueattr_01

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
class index_TTim_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextTimer_unique1_1", "View_TextTimer_unique1_2", "View_TextTimer_unique1_3", "View_TextTimer_unique1_4", "View_TextTimer_unique1_5",
  "View_TextTimer_unique1_6", "View_TextTimer_unique1_7", "View_TextTimer_unique1_8", "View_TextTimer_unique1_9", "View_TextTimer_unique1_10",
  "View_TextTimer_unique1_11", "View_TextTimer_unique1_12", "View_TextTimer_unique1_13", "View_TextTimer_unique1_14", "View_TextTimer_unique1_15",
  "View_TextTimer_unique1_16", "View_TextTimer_unique1_17", "View_TextTimer_unique1_18", "View_TextTimer_unique1_19", "View_TextTimer_unique1_20",
  "View_TextTimer_unique1_21", "View_TextTimer_unique1_22", "View_TextTimer_unique1_23", "View_TextTimer_unique1_24", "View_TextTimer_unique1_25",
  "View_TextTimer_unique1_26", "View_TextTimer_unique1_27", "View_TextTimer_unique1_28", "View_TextTimer_unique1_29", "View_TextTimer_unique1_30",
  "View_TextTimer_unique1_31", "View_TextTimer_unique1_32", "View_TextTimer_unique1_33", "View_TextTimer_unique1_34", "View_TextTimer_unique1_35",
  "View_TextTimer_unique1_36", "View_TextTimer_unique1_37", "View_TextTimer_unique1_38", "View_TextTimer_unique1_39", "View_TextTimer_unique1_40",
  "View_TextTimer_unique1_41", "View_TextTimer_unique1_42", "View_TextTimer_unique1_43", "View_TextTimer_unique1_44", "View_TextTimer_unique1_45",
  "View_TextTimer_unique1_46", "View_TextTimer_unique1_47", "View_TextTimer_unique1_48", "View_TextTimer_unique1_49", "View_TextTimer_unique1_50",
  "View_TextTimer_unique1_51", "View_TextTimer_unique1_52", "View_TextTimer_unique1_53", "View_TextTimer_unique1_54", "View_TextTimer_unique1_55",
  "View_TextTimer_unique1_56", "View_TextTimer_unique1_57", "View_TextTimer_unique1_58", "View_TextTimer_unique1_59", "View_TextTimer_unique1_60",
  "View_TextTimer_unique1_61", "View_TextTimer_unique1_62", "View_TextTimer_unique1_63", "View_TextTimer_unique1_64", "View_TextTimer_unique1_65",
  "View_TextTimer_unique1_66", "View_TextTimer_unique1_67", "View_TextTimer_unique1_68", "View_TextTimer_unique1_69", "View_TextTimer_unique1_70",
  "View_TextTimer_unique1_71", "View_TextTimer_unique1_72", "View_TextTimer_unique1_73", "View_TextTimer_unique1_74", "View_TextTimer_unique1_75",
  "View_TextTimer_unique1_76", "View_TextTimer_unique1_77", "View_TextTimer_unique1_78", "View_TextTimer_unique1_79", "View_TextTimer_unique1_80",
  "View_TextTimer_unique1_81", "View_TextTimer_unique1_82", "View_TextTimer_unique1_83", "View_TextTimer_unique1_84", "View_TextTimer_unique1_85",
  "View_TextTimer_unique1_86", "View_TextTimer_unique1_87", "View_TextTimer_unique1_88", "View_TextTimer_unique1_89", "View_TextTimer_unique1_90",
  "View_TextTimer_unique1_91", "View_TextTimer_unique1_92", "View_TextTimer_unique1_93", "View_TextTimer_unique1_94", "View_TextTimer_unique1_95",
  "View_TextTimer_unique1_96", "View_TextTimer_unique1_97", "View_TextTimer_unique1_98", "View_TextTimer_unique1_99", "View_TextTimer_unique1_100",
  "View_TextTimer_unique1_101", "View_TextTimer_unique1_102", "View_TextTimer_unique1_103", "View_TextTimer_unique1_104", "View_TextTimer_unique1_105",
  "View_TextTimer_unique1_106", "View_TextTimer_unique1_107", "View_TextTimer_unique1_108", "View_TextTimer_unique1_109", "View_TextTimer_unique1_110",
  "View_TextTimer_unique1_111", "View_TextTimer_unique1_112", "View_TextTimer_unique1_113", "View_TextTimer_unique1_114", "View_TextTimer_unique1_115",
  "View_TextTimer_unique1_116", "View_TextTimer_unique1_117", "View_TextTimer_unique1_118", "View_TextTimer_unique1_119", "View_TextTimer_unique1_120",
  "View_TextTimer_unique1_121", "View_TextTimer_unique1_122", "View_TextTimer_unique1_123", "View_TextTimer_unique1_124", "View_TextTimer_unique1_125",
  "View_TextTimer_unique1_126", "View_TextTimer_unique1_127", "View_TextTimer_unique1_128", "View_TextTimer_unique1_129", "View_TextTimer_unique1_130",
  "View_TextTimer_unique1_131", "View_TextTimer_unique1_132", "View_TextTimer_unique1_133", "View_TextTimer_unique1_134", "View_TextTimer_unique1_135",
  "View_TextTimer_unique1_136", "View_TextTimer_unique1_137", "View_TextTimer_unique1_138", "View_TextTimer_unique1_139", "View_TextTimer_unique1_140",
  "View_TextTimer_unique1_141", "View_TextTimer_unique1_142", "View_TextTimer_unique1_143", "View_TextTimer_unique1_144", "View_TextTimer_unique1_145",
  "View_TextTimer_unique1_146", "View_TextTimer_unique1_147", "View_TextTimer_unique1_148", "View_TextTimer_unique1_149", "View_TextTimer_unique1_150",
  "View_TextTimer_unique1_151", "View_TextTimer_unique1_152", "View_TextTimer_unique1_153", "View_TextTimer_unique1_154", "View_TextTimer_unique1_155",
  "View_TextTimer_unique1_156", "View_TextTimer_unique1_157", "View_TextTimer_unique1_158", "View_TextTimer_unique1_159", "View_TextTimer_unique1_160",
  "View_TextTimer_unique1_161", "View_TextTimer_unique1_162", "View_TextTimer_unique1_163", "View_TextTimer_unique1_164", "View_TextTimer_unique1_165",
  "View_TextTimer_unique1_166", "View_TextTimer_unique1_167", "View_TextTimer_unique1_168", "View_TextTimer_unique1_169", "View_TextTimer_unique1_170",
  "View_TextTimer_unique1_171", "View_TextTimer_unique1_172", "View_TextTimer_unique1_173", "View_TextTimer_unique1_174", "View_TextTimer_unique1_175",
  "View_TextTimer_unique1_176", "View_TextTimer_unique1_177", "View_TextTimer_unique1_178", "View_TextTimer_unique1_179", "View_TextTimer_unique1_180",
  "View_TextTimer_unique1_181", "View_TextTimer_unique1_182", "View_TextTimer_unique1_183", "View_TextTimer_unique1_184", "View_TextTimer_unique1_185",
  "View_TextTimer_unique1_186", "View_TextTimer_unique1_187", "View_TextTimer_unique1_188", "View_TextTimer_unique1_189", "View_TextTimer_unique1_190",
  "View_TextTimer_unique1_191", "View_TextTimer_unique1_192", "View_TextTimer_unique1_193", "View_TextTimer_unique1_194", "View_TextTimer_unique1_195",
  "View_TextTimer_unique1_196", "View_TextTimer_unique1_197", "View_TextTimer_unique1_198", "View_TextTimer_unique1_199", "View_TextTimer_unique1_200",
  "View_TextTimer_unique1_201", "View_TextTimer_unique1_202", "View_TextTimer_unique1_203", "View_TextTimer_unique1_204", "View_TextTimer_unique1_205",
  "View_TextTimer_unique1_206", "View_TextTimer_unique1_207", "View_TextTimer_unique1_208", "View_TextTimer_unique1_209", "View_TextTimer_unique1_210",
  "View_TextTimer_unique1_211", "View_TextTimer_unique1_212", "View_TextTimer_unique1_213", "View_TextTimer_unique1_214", "View_TextTimer_unique1_215",
  "View_TextTimer_unique1_216", "View_TextTimer_unique1_217", "View_TextTimer_unique1_218", "View_TextTimer_unique1_219", "View_TextTimer_unique1_220",
  "View_TextTimer_unique1_221", "View_TextTimer_unique1_222", "View_TextTimer_unique1_223", "View_TextTimer_unique1_224", "View_TextTimer_unique1_225",
  "View_TextTimer_unique1_226", "View_TextTimer_unique1_227", "View_TextTimer_unique1_228", "View_TextTimer_unique1_229", "View_TextTimer_unique1_230",
  "View_TextTimer_unique1_231", "View_TextTimer_unique1_232", "View_TextTimer_unique1_233", "View_TextTimer_unique1_234", "View_TextTimer_unique1_235",
  "View_TextTimer_unique1_236", "View_TextTimer_unique1_237", "View_TextTimer_unique1_238", "View_TextTimer_unique1_239", "View_TextTimer_unique1_240",
  "View_TextTimer_unique1_241", "View_TextTimer_unique1_242", "View_TextTimer_unique1_243", "View_TextTimer_unique1_244", "View_TextTimer_unique1_245",
  "View_TextTimer_unique1_246", "View_TextTimer_unique1_247", "View_TextTimer_unique1_248", "View_TextTimer_unique1_249", "View_TextTimer_unique1_250",
  "View_TextTimer_unique1_251", "View_TextTimer_unique1_252", "View_TextTimer_unique1_253", "View_TextTimer_unique1_254", "View_TextTimer_unique1_255",
  "View_TextTimer_unique1_256", "View_TextTimer_unique1_257", "View_TextTimer_unique1_258", "View_TextTimer_unique1_259", "View_TextTimer_unique1_260",
  "View_TextTimer_unique1_261", "View_TextTimer_unique1_262", "View_TextTimer_unique1_263", "View_TextTimer_unique1_264", "View_TextTimer_unique1_265",
  "View_TextTimer_unique1_266", "View_TextTimer_unique1_267", "View_TextTimer_unique1_268", "View_TextTimer_unique1_269", "View_TextTimer_unique1_270",
  "View_TextTimer_unique1_271", "View_TextTimer_unique1_272", "View_TextTimer_unique1_273", "View_TextTimer_unique1_274", "View_TextTimer_unique1_275",
  "View_TextTimer_unique1_276", "View_TextTimer_unique1_277", "View_TextTimer_unique1_278", "View_TextTimer_unique1_279", "View_TextTimer_unique1_280",
  "View_TextTimer_unique1_281", "View_TextTimer_unique1_282", "View_TextTimer_unique1_283", "View_TextTimer_unique1_284", "View_TextTimer_unique1_285",
  "View_TextTimer_unique1_286", "View_TextTimer_unique1_287", "View_TextTimer_unique1_288", "View_TextTimer_unique1_289", "View_TextTimer_unique1_290",
  "View_TextTimer_unique1_291", "View_TextTimer_unique1_292", "View_TextTimer_unique1_293", "View_TextTimer_unique1_294", "View_TextTimer_unique1_295",
  "View_TextTimer_unique1_296", "View_TextTimer_unique1_297", "View_TextTimer_unique1_298", "View_TextTimer_unique1_299", "View_TextTimer_unique1_300" ],
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
