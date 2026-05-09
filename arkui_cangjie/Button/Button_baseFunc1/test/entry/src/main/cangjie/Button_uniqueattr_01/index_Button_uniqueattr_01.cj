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

package ohos_app_cangjie_entry.Button_uniqueattr_01

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
internal import kit.LocalizationKit.__GenerateResource__

@Entry
@Component
class index_Button_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Button_uniqueattr_1", "View_Button_uniqueattr_2", "View_Button_uniqueattr_3", "View_Button_uniqueattr_4", "View_Button_uniqueattr_5",
  "View_Button_uniqueattr_6", "View_Button_uniqueattr_7", "View_Button_uniqueattr_8", "View_Button_uniqueattr_9", "View_Button_uniqueattr_10",
  "View_Button_uniqueattr_11", "View_Button_uniqueattr_12", "View_Button_uniqueattr_13", "View_Button_uniqueattr_14", "View_Button_uniqueattr_15",
  "View_Button_uniqueattr_16", "View_Button_uniqueattr_17", "View_Button_uniqueattr_18", "View_Button_uniqueattr_19", "View_Button_uniqueattr_20",
  "View_Button_uniqueattr_21", "View_Button_uniqueattr_22", "View_Button_uniqueattr_23", "View_Button_uniqueattr_24", "View_Button_uniqueattr_25",
  "View_Button_uniqueattr_26", "View_Button_uniqueattr_27", "View_Button_uniqueattr_28", "View_Button_uniqueattr_29", "View_Button_uniqueattr_30",
  "View_Button_uniqueattr_31", "View_Button_uniqueattr_32", "View_Button_uniqueattr_33", "View_Button_uniqueattr_34", "View_Button_uniqueattr_35",
  "View_Button_uniqueattr_36", "View_Button_uniqueattr_37", "View_Button_uniqueattr_38", "View_Button_uniqueattr_39", "View_Button_uniqueattr_40",
  "View_Button_uniqueattr_41", "View_Button_uniqueattr_42", "View_Button_uniqueattr_43", "View_Button_uniqueattr_44", "View_Button_uniqueattr_45",
  "View_Button_uniqueattr_46", "View_Button_uniqueattr_47", "View_Button_uniqueattr_48", "View_Button_uniqueattr_49", "View_Button_uniqueattr_50",
  "View_Button_uniqueattr_51", "View_Button_uniqueattr_52", "View_Button_uniqueattr_53", "View_Button_uniqueattr_54", "View_Button_uniqueattr_55",
  "View_Button_uniqueattr_56", "View_Button_uniqueattr_57", "View_Button_uniqueattr_58", "View_Button_uniqueattr_59", "View_Button_uniqueattr_60",
  "View_Button_uniqueattr_61", "View_Button_uniqueattr_62", "View_Button_uniqueattr_63", "View_Button_uniqueattr_64", "View_Button_uniqueattr_65",
  "View_Button_uniqueattr_66", "View_Button_uniqueattr_67", "View_Button_uniqueattr_68", "View_Button_uniqueattr_69", "View_Button_uniqueattr_70",
  "View_Button_uniqueattr_71", "View_Button_uniqueattr_72", "View_Button_uniqueattr_73", "View_Button_uniqueattr_74", "View_Button_uniqueattr_75",
  "View_Button_uniqueattr_76", "View_Button_uniqueattr_77", "View_Button_uniqueattr_78", "View_Button_uniqueattr_79", "View_Button_uniqueattr_80",
  "View_Button_uniqueattr_81", "View_Button_uniqueattr_82", "View_Button_uniqueattr_83", "View_Button_uniqueattr_84", "View_Button_uniqueattr_85",
  "View_Button_uniqueattr_86", "View_Button_uniqueattr_87", "View_Button_uniqueattr_88", "View_Button_uniqueattr_89", "View_Button_uniqueattr_90",
  "View_Button_uniqueattr_91", "View_Button_uniqueattr_92", "View_Button_uniqueattr_93", "View_Button_uniqueattr_94", "View_Button_uniqueattr_95",
  "View_Button_uniqueattr_96", "View_Button_uniqueattr_97", "View_Button_uniqueattr_98", "View_Button_uniqueattr_99", "View_Button_uniqueattr_100",
  "View_Button_uniqueattr_101", "View_Button_uniqueattr_102", "View_Button_uniqueattr_103", "View_Button_uniqueattr_104", "View_Button_uniqueattr_105",
  "View_Button_uniqueattr_106", "View_Button_uniqueattr_107", "View_Button_uniqueattr_108", "View_Button_uniqueattr_109", "View_Button_uniqueattr_110",
  "View_Button_uniqueattr_111", "View_Button_uniqueattr_112", "View_Button_uniqueattr_113", "View_Button_uniqueattr_114", "View_Button_uniqueattr_115",
  "View_Button_uniqueattr_116", "View_Button_uniqueattr_117", "View_Button_uniqueattr_118", "View_Button_uniqueattr_119", "View_Button_uniqueattr_120",
  "View_Button_uniqueattr_121", "View_Button_uniqueattr_122", "View_Button_uniqueattr_123", "View_Button_uniqueattr_124", "View_Button_uniqueattr_125",
  "View_Button_uniqueattr_126", "View_Button_uniqueattr_127", "View_Button_uniqueattr_128", "View_Button_uniqueattr_129", "View_Button_uniqueattr_130",
  "View_Button_uniqueattr_131", "View_Button_uniqueattr_132", "View_Button_uniqueattr_133", "View_Button_uniqueattr_134", "View_Button_uniqueattr_135",
  "View_Button_uniqueattr_136", "View_Button_uniqueattr_137", "View_Button_uniqueattr_138", "View_Button_uniqueattr_139", "View_Button_uniqueattr_140",
  "View_Button_uniqueattr_141", "View_Button_uniqueattr_142", "View_Button_uniqueattr_143", "View_Button_uniqueattr_144", "View_Button_uniqueattr_145",
  "View_Button_uniqueattr_146", "View_Button_uniqueattr_147", "View_Button_uniqueattr_148", "View_Button_uniqueattr_149", "View_Button_uniqueattr_150",
  "View_Button_uniqueattr_151", "View_Button_uniqueattr_152", "View_Button_uniqueattr_153", "View_Button_uniqueattr_154", "View_Button_uniqueattr_155",
  "View_Button_uniqueattr_156", "View_Button_uniqueattr_157", "View_Button_uniqueattr_158", "View_Button_uniqueattr_159", "View_Button_uniqueattr_160",
  "View_Button_uniqueattr_161", "View_Button_uniqueattr_162", "View_Button_uniqueattr_163", "View_Button_uniqueattr_164", "View_Button_uniqueattr_165",
  "View_Button_uniqueattr_166", "View_Button_uniqueattr_167", "View_Button_uniqueattr_168", "View_Button_uniqueattr_169", "View_Button_uniqueattr_170",
  "View_Button_uniqueattr_171", "View_Button_uniqueattr_172", "View_Button_uniqueattr_173", "View_Button_uniqueattr_174", "View_Button_uniqueattr_175",
  "View_Button_uniqueattr_176", "View_Button_uniqueattr_177", "View_Button_uniqueattr_178", "View_Button_uniqueattr_179", "View_Button_uniqueattr_180",
  "View_Button_uniqueattr_181", "View_Button_uniqueattr_182", "View_Button_uniqueattr_183", "View_Button_uniqueattr_184", "View_Button_uniqueattr_185",
  "View_Button_uniqueattr_186", "View_Button_uniqueattr_187", "View_Button_uniqueattr_188", "View_Button_uniqueattr_189", "View_Button_uniqueattr_190",
  "View_Button_uniqueattr_191", "View_Button_uniqueattr_192", "View_Button_uniqueattr_193", "View_Button_uniqueattr_194", "View_Button_uniqueattr_195",
  "View_Button_uniqueattr_196", "View_Button_uniqueattr_197", "View_Button_uniqueattr_198", "View_Button_uniqueattr_199", "View_Button_uniqueattr_200",
  "View_Button_uniqueattr_201", "View_Button_uniqueattr_202", "View_Button_uniqueattr_203", "View_Button_uniqueattr_204", "View_Button_uniqueattr_205",
  "View_Button_uniqueattr_206", "View_Button_uniqueattr_207", "View_Button_uniqueattr_208", "View_Button_uniqueattr_209", "View_Button_uniqueattr_210",
  "View_Button_uniqueattr_211", "View_Button_uniqueattr_212", "View_Button_uniqueattr_213", "View_Button_uniqueattr_214", "View_Button_uniqueattr_215",
  "View_Button_uniqueattr_216", "View_Button_uniqueattr_217", "View_Button_uniqueattr_218", "View_Button_uniqueattr_219", "View_Button_uniqueattr_220",
  "View_Button_uniqueattr_221", "View_Button_uniqueattr_222", "View_Button_uniqueattr_223", "View_Button_uniqueattr_224", "View_Button_uniqueattr_225",
  "View_Button_uniqueattr_226", "View_Button_uniqueattr_227", "View_Button_uniqueattr_228", "View_Button_uniqueattr_229", "View_Button_uniqueattr_230",
  "View_Button_uniqueattr_231", "View_Button_uniqueattr_232", "View_Button_uniqueattr_233", "View_Button_uniqueattr_234", "View_Button_uniqueattr_235",
  "View_Button_uniqueattr_236", "View_Button_uniqueattr_237", "View_Button_uniqueattr_238", "View_Button_uniqueattr_239", "View_Button_uniqueattr_240",
  "View_Button_uniqueattr_241", "View_Button_uniqueattr_242", "View_Button_uniqueattr_243", "View_Button_uniqueattr_244", "View_Button_uniqueattr_245",
  "View_Button_uniqueattr_246", "View_Button_uniqueattr_247", "View_Button_uniqueattr_248", "View_Button_uniqueattr_249", "View_Button_uniqueattr_250",
  "View_Button_uniqueattr_251", "View_Button_uniqueattr_252", "View_Button_uniqueattr_253", "View_Button_uniqueattr_254", "View_Button_uniqueattr_255",
  "View_Button_uniqueattr_256", "View_Button_uniqueattr_257", "View_Button_uniqueattr_258", "View_Button_uniqueattr_259", "View_Button_uniqueattr_260",
  "View_Button_uniqueattr_261", "View_Button_uniqueattr_262", "View_Button_uniqueattr_263", "View_Button_uniqueattr_264", "View_Button_uniqueattr_265",
  "View_Button_uniqueattr_266", "View_Button_uniqueattr_267", "View_Button_uniqueattr_268", "View_Button_uniqueattr_269", "View_Button_uniqueattr_270",
  "View_Button_uniqueattr_271", "View_Button_uniqueattr_272", "View_Button_uniqueattr_273", "View_Button_uniqueattr_274", "View_Button_uniqueattr_275",
  "View_Button_uniqueattr_276", "View_Button_uniqueattr_277", "View_Button_uniqueattr_278", "View_Button_uniqueattr_279", "View_Button_uniqueattr_280",
  "View_Button_uniqueattr_281", "View_Button_uniqueattr_282", "View_Button_uniqueattr_283", "View_Button_uniqueattr_284", "View_Button_uniqueattr_285",
  "View_Button_uniqueattr_286", "View_Button_uniqueattr_287", "View_Button_uniqueattr_288", "View_Button_uniqueattr_289", "View_Button_uniqueattr_290",
  "View_Button_uniqueattr_291", "View_Button_uniqueattr_292", "View_Button_uniqueattr_293", "View_Button_uniqueattr_294", "View_Button_uniqueattr_295",
  "View_Button_uniqueattr_296", "View_Button_uniqueattr_297", "View_Button_uniqueattr_298", "View_Button_uniqueattr_299", "View_Button_uniqueattr_300" ],
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
