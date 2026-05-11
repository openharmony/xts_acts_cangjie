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

package ohos_app_cangjie_entry.Sear_uniqueattr_01

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
class index_Sear_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Search_uniqueattr_1", "View_Search_uniqueattr_2", "View_Search_uniqueattr_3", "View_Search_uniqueattr_4", "View_Search_uniqueattr_5",
  "View_Search_uniqueattr_6", "View_Search_uniqueattr_7", "View_Search_uniqueattr_8", "View_Search_uniqueattr_9", "View_Search_uniqueattr_10",
  "View_Search_uniqueattr_11", "View_Search_uniqueattr_12", "View_Search_uniqueattr_13", "View_Search_uniqueattr_14", "View_Search_uniqueattr_15",
  "View_Search_uniqueattr_16", "View_Search_uniqueattr_17", "View_Search_uniqueattr_18", "View_Search_uniqueattr_19", "View_Search_uniqueattr_20",
  "View_Search_uniqueattr_21", "View_Search_uniqueattr_22", "View_Search_uniqueattr_23", "View_Search_uniqueattr_24", "View_Search_uniqueattr_25",
  "View_Search_uniqueattr_26", "View_Search_uniqueattr_27", "View_Search_uniqueattr_28", "View_Search_uniqueattr_29", "View_Search_uniqueattr_30",
  "View_Search_uniqueattr_31", "View_Search_uniqueattr_32", "View_Search_uniqueattr_33", "View_Search_uniqueattr_34", "View_Search_uniqueattr_35",
  "View_Search_uniqueattr_36", "View_Search_uniqueattr_37", "View_Search_uniqueattr_38", "View_Search_uniqueattr_39", "View_Search_uniqueattr_40",
  "View_Search_uniqueattr_41", "View_Search_uniqueattr_42", "View_Search_uniqueattr_43", "View_Search_uniqueattr_44", "View_Search_uniqueattr_45",
  "View_Search_uniqueattr_46", "View_Search_uniqueattr_47", "View_Search_uniqueattr_48", "View_Search_uniqueattr_49", "View_Search_uniqueattr_50",
  "View_Search_uniqueattr_51", "View_Search_uniqueattr_52", "View_Search_uniqueattr_53", "View_Search_uniqueattr_54", "View_Search_uniqueattr_55",
  "View_Search_uniqueattr_56", "View_Search_uniqueattr_57", "View_Search_uniqueattr_58", "View_Search_uniqueattr_59", "View_Search_uniqueattr_60",
  "View_Search_uniqueattr_61", "View_Search_uniqueattr_62", "View_Search_uniqueattr_63", "View_Search_uniqueattr_64", "View_Search_uniqueattr_65",
  "View_Search_uniqueattr_66", "View_Search_uniqueattr_67", "View_Search_uniqueattr_68", "View_Search_uniqueattr_69", "View_Search_uniqueattr_70",
  "View_Search_uniqueattr_71", "View_Search_uniqueattr_72", "View_Search_uniqueattr_73", "View_Search_uniqueattr_74", "View_Search_uniqueattr_75",
  "View_Search_uniqueattr_76", "View_Search_uniqueattr_77", "View_Search_uniqueattr_78", "View_Search_uniqueattr_79", "View_Search_uniqueattr_80",
  "View_Search_uniqueattr_81", "View_Search_uniqueattr_82", "View_Search_uniqueattr_83", "View_Search_uniqueattr_84", "View_Search_uniqueattr_85",
  "View_Search_uniqueattr_86", "View_Search_uniqueattr_87", "View_Search_uniqueattr_88", "View_Search_uniqueattr_89", "View_Search_uniqueattr_90",
  "View_Search_uniqueattr_91", "View_Search_uniqueattr_92", "View_Search_uniqueattr_93", "View_Search_uniqueattr_94", "View_Search_uniqueattr_95",
  "View_Search_uniqueattr_96", "View_Search_uniqueattr_97", "View_Search_uniqueattr_98", "View_Search_uniqueattr_99", "View_Search_uniqueattr_100",
  "View_Search_uniqueattr_101", "View_Search_uniqueattr_102", "View_Search_uniqueattr_103", "View_Search_uniqueattr_104", "View_Search_uniqueattr_105",
  "View_Search_uniqueattr_106", "View_Search_uniqueattr_107", "View_Search_uniqueattr_108", "View_Search_uniqueattr_109", "View_Search_uniqueattr_110",
  "View_Search_uniqueattr_111", "View_Search_uniqueattr_112", "View_Search_uniqueattr_113", "View_Search_uniqueattr_114", "View_Search_uniqueattr_115",
  "View_Search_uniqueattr_116", "View_Search_uniqueattr_117", "View_Search_uniqueattr_118", "View_Search_uniqueattr_119", "View_Search_uniqueattr_120",
  "View_Search_uniqueattr_121", "View_Search_uniqueattr_122", "View_Search_uniqueattr_123", "View_Search_uniqueattr_124", "View_Search_uniqueattr_125",
  "View_Search_uniqueattr_126", "View_Search_uniqueattr_127", "View_Search_uniqueattr_128", "View_Search_uniqueattr_129", "View_Search_uniqueattr_130",
  "View_Search_uniqueattr_131", "View_Search_uniqueattr_132", "View_Search_uniqueattr_133", "View_Search_uniqueattr_134", "View_Search_uniqueattr_135",
  "View_Search_uniqueattr_136", "View_Search_uniqueattr_137", "View_Search_uniqueattr_138", "View_Search_uniqueattr_139", "View_Search_uniqueattr_140",
  "View_Search_uniqueattr_141", "View_Search_uniqueattr_142", "View_Search_uniqueattr_143", "View_Search_uniqueattr_144", "View_Search_uniqueattr_145",
  "View_Search_uniqueattr_146", "View_Search_uniqueattr_147", "View_Search_uniqueattr_148", "View_Search_uniqueattr_149", "View_Search_uniqueattr_150",
  "View_Search_uniqueattr_151", "View_Search_uniqueattr_152", "View_Search_uniqueattr_153", "View_Search_uniqueattr_154", "View_Search_uniqueattr_155",
  "View_Search_uniqueattr_156", "View_Search_uniqueattr_157", "View_Search_uniqueattr_158", "View_Search_uniqueattr_159", "View_Search_uniqueattr_160",
  "View_Search_uniqueattr_161", "View_Search_uniqueattr_162", "View_Search_uniqueattr_163", "View_Search_uniqueattr_164", "View_Search_uniqueattr_165",
  "View_Search_uniqueattr_166", "View_Search_uniqueattr_167", "View_Search_uniqueattr_168", "View_Search_uniqueattr_169", "View_Search_uniqueattr_170",
  "View_Search_uniqueattr_171", "View_Search_uniqueattr_172", "View_Search_uniqueattr_173", "View_Search_uniqueattr_174", "View_Search_uniqueattr_175",
  "View_Search_uniqueattr_176", "View_Search_uniqueattr_177", "View_Search_uniqueattr_178", "View_Search_uniqueattr_179", "View_Search_uniqueattr_180",
  "View_Search_uniqueattr_181", "View_Search_uniqueattr_182", "View_Search_uniqueattr_183", "View_Search_uniqueattr_184", "View_Search_uniqueattr_185",
  "View_Search_uniqueattr_186", "View_Search_uniqueattr_187", "View_Search_uniqueattr_188", "View_Search_uniqueattr_189", "View_Search_uniqueattr_190",
  "View_Search_uniqueattr_191", "View_Search_uniqueattr_192", "View_Search_uniqueattr_193", "View_Search_uniqueattr_194", "View_Search_uniqueattr_195",
  "View_Search_uniqueattr_196", "View_Search_uniqueattr_197", "View_Search_uniqueattr_198", "View_Search_uniqueattr_199", "View_Search_uniqueattr_200",
  "View_Search_uniqueattr_201", "View_Search_uniqueattr_202", "View_Search_uniqueattr_203", "View_Search_uniqueattr_204", "View_Search_uniqueattr_205",
  "View_Search_uniqueattr_206", "View_Search_uniqueattr_207", "View_Search_uniqueattr_208", "View_Search_uniqueattr_209", "View_Search_uniqueattr_210",
  "View_Search_uniqueattr_211", "View_Search_uniqueattr_212", "View_Search_uniqueattr_213", "View_Search_uniqueattr_214", "View_Search_uniqueattr_215",
  "View_Search_uniqueattr_216", "View_Search_uniqueattr_217", "View_Search_uniqueattr_218", "View_Search_uniqueattr_219", "View_Search_uniqueattr_220",
  "View_Search_uniqueattr_221", "View_Search_uniqueattr_222", "View_Search_uniqueattr_223", "View_Search_uniqueattr_224", "View_Search_uniqueattr_225",
  "View_Search_uniqueattr_226", "View_Search_uniqueattr_227", "View_Search_uniqueattr_228", "View_Search_uniqueattr_229", "View_Search_uniqueattr_230",
  "View_Search_uniqueattr_231", "View_Search_uniqueattr_232", "View_Search_uniqueattr_233", "View_Search_uniqueattr_234", "View_Search_uniqueattr_235",
  "View_Search_uniqueattr_236", "View_Search_uniqueattr_237", "View_Search_uniqueattr_238", "View_Search_uniqueattr_239", "View_Search_uniqueattr_240",
  "View_Search_uniqueattr_241", "View_Search_uniqueattr_242", "View_Search_uniqueattr_243", "View_Search_uniqueattr_244", "View_Search_uniqueattr_245",
  "View_Search_uniqueattr_246", "View_Search_uniqueattr_247", "View_Search_uniqueattr_248", "View_Search_uniqueattr_249", "View_Search_uniqueattr_250",
  "View_Search_uniqueattr_251", "View_Search_uniqueattr_252", "View_Search_uniqueattr_253", "View_Search_uniqueattr_254", "View_Search_uniqueattr_255",
  "View_Search_uniqueattr_256", "View_Search_uniqueattr_257", "View_Search_uniqueattr_258", "View_Search_uniqueattr_259", "View_Search_uniqueattr_260",
  "View_Search_uniqueattr_261", "View_Search_uniqueattr_262", "View_Search_uniqueattr_263", "View_Search_uniqueattr_264", "View_Search_uniqueattr_265",
  "View_Search_uniqueattr_266", "View_Search_uniqueattr_267", "View_Search_uniqueattr_268", "View_Search_uniqueattr_269", "View_Search_uniqueattr_270",
  "View_Search_uniqueattr_271", "View_Search_uniqueattr_272", "View_Search_uniqueattr_273", "View_Search_uniqueattr_274", "View_Search_uniqueattr_275",
  "View_Search_uniqueattr_276", "View_Search_uniqueattr_277", "View_Search_uniqueattr_278", "View_Search_uniqueattr_279", "View_Search_uniqueattr_280",
  "View_Search_uniqueattr_281", "View_Search_uniqueattr_282", "View_Search_uniqueattr_283", "View_Search_uniqueattr_284", "View_Search_uniqueattr_285",
  "View_Search_uniqueattr_286", "View_Search_uniqueattr_287", "View_Search_uniqueattr_288", "View_Search_uniqueattr_289", "View_Search_uniqueattr_290",
  "View_Search_uniqueattr_291", "View_Search_uniqueattr_292", "View_Search_uniqueattr_293", "View_Search_uniqueattr_294", "View_Search_uniqueattr_295",
  "View_Search_uniqueattr_296", "View_Search_uniqueattr_297", "View_Search_uniqueattr_298", "View_Search_uniqueattr_299", "View_Search_uniqueattr_300" ],
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
