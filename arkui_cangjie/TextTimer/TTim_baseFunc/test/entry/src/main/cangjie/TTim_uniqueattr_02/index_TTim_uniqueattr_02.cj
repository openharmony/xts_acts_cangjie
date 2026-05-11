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

package ohos_app_cangjie_entry.TTim_uniqueattr_02

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
class index_TTim_uniqueattr_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextTimer_unique2_1", "View_TextTimer_unique2_2", "View_TextTimer_unique2_3", "View_TextTimer_unique2_4", "View_TextTimer_unique2_5",
  "View_TextTimer_unique2_6", "View_TextTimer_unique2_7", "View_TextTimer_unique2_8", "View_TextTimer_unique2_9", "View_TextTimer_unique2_10",
  "View_TextTimer_unique2_11", "View_TextTimer_unique2_12", "View_TextTimer_unique2_13", "View_TextTimer_unique2_14", "View_TextTimer_unique2_15",
  "View_TextTimer_unique2_16", "View_TextTimer_unique2_17", "View_TextTimer_unique2_18", "View_TextTimer_unique2_19", "View_TextTimer_unique2_20",
  "View_TextTimer_unique2_21", "View_TextTimer_unique2_22", "View_TextTimer_unique2_23", "View_TextTimer_unique2_24", "View_TextTimer_unique2_25",
  "View_TextTimer_unique2_26", "View_TextTimer_unique2_27", "View_TextTimer_unique2_28", "View_TextTimer_unique2_29", "View_TextTimer_unique2_30",
  "View_TextTimer_unique2_31", "View_TextTimer_unique2_32", "View_TextTimer_unique2_33", "View_TextTimer_unique2_34", "View_TextTimer_unique2_35",
  "View_TextTimer_unique2_36", "View_TextTimer_unique2_37", "View_TextTimer_unique2_38", "View_TextTimer_unique2_39", "View_TextTimer_unique2_40",
  "View_TextTimer_unique2_41", "View_TextTimer_unique2_42", "View_TextTimer_unique2_43", "View_TextTimer_unique2_44", "View_TextTimer_unique2_45",
  "View_TextTimer_unique2_46", "View_TextTimer_unique2_47", "View_TextTimer_unique2_48", "View_TextTimer_unique2_49", "View_TextTimer_unique2_50",
  "View_TextTimer_unique2_51", "View_TextTimer_unique2_52", "View_TextTimer_unique2_53", "View_TextTimer_unique2_54", "View_TextTimer_unique2_55",
  "View_TextTimer_unique2_56", "View_TextTimer_unique2_57", "View_TextTimer_unique2_58", "View_TextTimer_unique2_59", "View_TextTimer_unique2_60",
  "View_TextTimer_unique2_61", "View_TextTimer_unique2_62", "View_TextTimer_unique2_63", "View_TextTimer_unique2_64", "View_TextTimer_unique2_65",
  "View_TextTimer_unique2_66", "View_TextTimer_unique2_67", "View_TextTimer_unique2_68", "View_TextTimer_unique2_69", "View_TextTimer_unique2_70",
  "View_TextTimer_unique2_71", "View_TextTimer_unique2_72", "View_TextTimer_unique2_73", "View_TextTimer_unique2_74", "View_TextTimer_unique2_75",
  "View_TextTimer_unique2_76", "View_TextTimer_unique2_77", "View_TextTimer_unique2_78", "View_TextTimer_unique2_79", "View_TextTimer_unique2_80",
  "View_TextTimer_unique2_81", "View_TextTimer_unique2_82", "View_TextTimer_unique2_83", "View_TextTimer_unique2_84", "View_TextTimer_unique2_85",
  "View_TextTimer_unique2_86", "View_TextTimer_unique2_87", "View_TextTimer_unique2_88", "View_TextTimer_unique2_89", "View_TextTimer_unique2_90",
  "View_TextTimer_unique2_91", "View_TextTimer_unique2_92", "View_TextTimer_unique2_93", "View_TextTimer_unique2_94", "View_TextTimer_unique2_95",
  "View_TextTimer_unique2_96", "View_TextTimer_unique2_97", "View_TextTimer_unique2_98", "View_TextTimer_unique2_99", "View_TextTimer_unique2_100",
  "View_TextTimer_unique2_101", "View_TextTimer_unique2_102", "View_TextTimer_unique2_103", "View_TextTimer_unique2_104", "View_TextTimer_unique2_105",
  "View_TextTimer_unique2_106", "View_TextTimer_unique2_107", "View_TextTimer_unique2_108", "View_TextTimer_unique2_109", "View_TextTimer_unique2_110",
  "View_TextTimer_unique2_111", "View_TextTimer_unique2_112", "View_TextTimer_unique2_113", "View_TextTimer_unique2_114", "View_TextTimer_unique2_115",
  "View_TextTimer_unique2_116", "View_TextTimer_unique2_117", "View_TextTimer_unique2_118", "View_TextTimer_unique2_119", "View_TextTimer_unique2_120",
  "View_TextTimer_unique2_121", "View_TextTimer_unique2_122", "View_TextTimer_unique2_123", "View_TextTimer_unique2_124", "View_TextTimer_unique2_125",
  "View_TextTimer_unique2_126", "View_TextTimer_unique2_127", "View_TextTimer_unique2_128", "View_TextTimer_unique2_129", "View_TextTimer_unique2_130",
  "View_TextTimer_unique2_131", "View_TextTimer_unique2_132", "View_TextTimer_unique2_133", "View_TextTimer_unique2_134", "View_TextTimer_unique2_135",
  "View_TextTimer_unique2_136", "View_TextTimer_unique2_137", "View_TextTimer_unique2_138", "View_TextTimer_unique2_139", "View_TextTimer_unique2_140",
  "View_TextTimer_unique2_141", "View_TextTimer_unique2_142", "View_TextTimer_unique2_143", "View_TextTimer_unique2_144", "View_TextTimer_unique2_145",
  "View_TextTimer_unique2_146", "View_TextTimer_unique2_147", "View_TextTimer_unique2_148", "View_TextTimer_unique2_149", "View_TextTimer_unique2_150",
  "View_TextTimer_unique2_151", "View_TextTimer_unique2_152", "View_TextTimer_unique2_153", "View_TextTimer_unique2_154", "View_TextTimer_unique2_155",
  "View_TextTimer_unique2_156", "View_TextTimer_unique2_157", "View_TextTimer_unique2_158", "View_TextTimer_unique2_159", "View_TextTimer_unique2_160",
  "View_TextTimer_unique2_161", "View_TextTimer_unique2_162", "View_TextTimer_unique2_163", "View_TextTimer_unique2_164", "View_TextTimer_unique2_165",
  "View_TextTimer_unique2_166", "View_TextTimer_unique2_167", "View_TextTimer_unique2_168", "View_TextTimer_unique2_169", "View_TextTimer_unique2_170",
  "View_TextTimer_unique2_171", "View_TextTimer_unique2_172", "View_TextTimer_unique2_173", "View_TextTimer_unique2_174", "View_TextTimer_unique2_175",
  "View_TextTimer_unique2_176", "View_TextTimer_unique2_177", "View_TextTimer_unique2_178", "View_TextTimer_unique2_179", "View_TextTimer_unique2_180",
  "View_TextTimer_unique2_181", "View_TextTimer_unique2_182", "View_TextTimer_unique2_183", "View_TextTimer_unique2_184", "View_TextTimer_unique2_185",
  "View_TextTimer_unique2_186", "View_TextTimer_unique2_187", "View_TextTimer_unique2_188", "View_TextTimer_unique2_189", "View_TextTimer_unique2_190",
  "View_TextTimer_unique2_191", "View_TextTimer_unique2_192", "View_TextTimer_unique2_193", "View_TextTimer_unique2_194", "View_TextTimer_unique2_195",
  "View_TextTimer_unique2_196", "View_TextTimer_unique2_197", "View_TextTimer_unique2_198", "View_TextTimer_unique2_199", "View_TextTimer_unique2_200",
  "View_TextTimer_unique2_201", "View_TextTimer_unique2_202", "View_TextTimer_unique2_203", "View_TextTimer_unique2_204", "View_TextTimer_unique2_205",
  "View_TextTimer_unique2_206", "View_TextTimer_unique2_207", "View_TextTimer_unique2_208", "View_TextTimer_unique2_209", "View_TextTimer_unique2_210",
  "View_TextTimer_unique2_211", "View_TextTimer_unique2_212", "View_TextTimer_unique2_213", "View_TextTimer_unique2_214", "View_TextTimer_unique2_215",
  "View_TextTimer_unique2_216", "View_TextTimer_unique2_217", "View_TextTimer_unique2_218", "View_TextTimer_unique2_219", "View_TextTimer_unique2_220",
  "View_TextTimer_unique2_221", "View_TextTimer_unique2_222", "View_TextTimer_unique2_223", "View_TextTimer_unique2_224", "View_TextTimer_unique2_225",
  "View_TextTimer_unique2_226", "View_TextTimer_unique2_227", "View_TextTimer_unique2_228", "View_TextTimer_unique2_229", "View_TextTimer_unique2_230",
  "View_TextTimer_unique2_231", "View_TextTimer_unique2_232", "View_TextTimer_unique2_233", "View_TextTimer_unique2_234", "View_TextTimer_unique2_235",
  "View_TextTimer_unique2_236", "View_TextTimer_unique2_237", "View_TextTimer_unique2_238", "View_TextTimer_unique2_239", "View_TextTimer_unique2_240",
  "View_TextTimer_unique2_241", "View_TextTimer_unique2_242", "View_TextTimer_unique2_243", "View_TextTimer_unique2_244", "View_TextTimer_unique2_245",
  "View_TextTimer_unique2_246", "View_TextTimer_unique2_247", "View_TextTimer_unique2_248", "View_TextTimer_unique2_249", "View_TextTimer_unique2_250",
  "View_TextTimer_unique2_251", "View_TextTimer_unique2_252", "View_TextTimer_unique2_253", "View_TextTimer_unique2_254", "View_TextTimer_unique2_255",
  "View_TextTimer_unique2_256", "View_TextTimer_unique2_257", "View_TextTimer_unique2_258", "View_TextTimer_unique2_259", "View_TextTimer_unique2_260",
  "View_TextTimer_unique2_261", "View_TextTimer_unique2_262", "View_TextTimer_unique2_263", "View_TextTimer_unique2_264", "View_TextTimer_unique2_265",
  "View_TextTimer_unique2_266", "View_TextTimer_unique2_267", "View_TextTimer_unique2_268", "View_TextTimer_unique2_269", "View_TextTimer_unique2_270",
  "View_TextTimer_unique2_271", "View_TextTimer_unique2_272", "View_TextTimer_unique2_273", "View_TextTimer_unique2_274", "View_TextTimer_unique2_275",
  "View_TextTimer_unique2_276", "View_TextTimer_unique2_277", "View_TextTimer_unique2_278", "View_TextTimer_unique2_279", "View_TextTimer_unique2_280",
  "View_TextTimer_unique2_281", "View_TextTimer_unique2_282", "View_TextTimer_unique2_283", "View_TextTimer_unique2_284", "View_TextTimer_unique2_285",
  "View_TextTimer_unique2_286", "View_TextTimer_unique2_287", "View_TextTimer_unique2_288", "View_TextTimer_unique2_289", "View_TextTimer_unique2_290",
  "View_TextTimer_unique2_291", "View_TextTimer_unique2_292", "View_TextTimer_unique2_293", "View_TextTimer_unique2_294", "View_TextTimer_unique2_295",
  "View_TextTimer_unique2_296", "View_TextTimer_unique2_297", "View_TextTimer_unique2_298", "View_TextTimer_unique2_299", "View_TextTimer_unique2_300",
  "View_TextTimer_unique2_301", "View_TextTimer_unique2_302" ],
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
