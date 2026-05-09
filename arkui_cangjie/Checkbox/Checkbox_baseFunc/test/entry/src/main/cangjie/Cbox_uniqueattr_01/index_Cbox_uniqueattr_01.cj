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

package ohos_app_cangjie_entry.Cbox_uniqueattr_01

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
class index_Cbox_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Checkbox_uniqueattr_1", "View_Checkbox_uniqueattr_2", "View_Checkbox_uniqueattr_3", "View_Checkbox_uniqueattr_4", "View_Checkbox_uniqueattr_5",
  "View_Checkbox_uniqueattr_6", "View_Checkbox_uniqueattr_7", "View_Checkbox_uniqueattr_8", "View_Checkbox_uniqueattr_9", "View_Checkbox_uniqueattr_10",
  "View_Checkbox_uniqueattr_11", "View_Checkbox_uniqueattr_12", "View_Checkbox_uniqueattr_13", "View_Checkbox_uniqueattr_14", "View_Checkbox_uniqueattr_15",
  "View_Checkbox_uniqueattr_16", "View_Checkbox_uniqueattr_17", "View_Checkbox_uniqueattr_18", "View_Checkbox_uniqueattr_19", "View_Checkbox_uniqueattr_20",
  "View_Checkbox_uniqueattr_21", "View_Checkbox_uniqueattr_22", "View_Checkbox_uniqueattr_23", "View_Checkbox_uniqueattr_24", "View_Checkbox_uniqueattr_25",
  "View_Checkbox_uniqueattr_26", "View_Checkbox_uniqueattr_27", "View_Checkbox_uniqueattr_28", "View_Checkbox_uniqueattr_29", "View_Checkbox_uniqueattr_30",
  "View_Checkbox_uniqueattr_31", "View_Checkbox_uniqueattr_32", "View_Checkbox_uniqueattr_33", "View_Checkbox_uniqueattr_34", "View_Checkbox_uniqueattr_35",
  "View_Checkbox_uniqueattr_36", "View_Checkbox_uniqueattr_37", "View_Checkbox_uniqueattr_38", "View_Checkbox_uniqueattr_39", "View_Checkbox_uniqueattr_40",
  "View_Checkbox_uniqueattr_41", "View_Checkbox_uniqueattr_42", "View_Checkbox_uniqueattr_43", "View_Checkbox_uniqueattr_44", "View_Checkbox_uniqueattr_45",
  "View_Checkbox_uniqueattr_46", "View_Checkbox_uniqueattr_47", "View_Checkbox_uniqueattr_48", "View_Checkbox_uniqueattr_49", "View_Checkbox_uniqueattr_50",
  "View_Checkbox_uniqueattr_51", "View_Checkbox_uniqueattr_52", "View_Checkbox_uniqueattr_53", "View_Checkbox_uniqueattr_54", "View_Checkbox_uniqueattr_55",
  "View_Checkbox_uniqueattr_56", "View_Checkbox_uniqueattr_57", "View_Checkbox_uniqueattr_58", "View_Checkbox_uniqueattr_59", "View_Checkbox_uniqueattr_60",
  "View_Checkbox_uniqueattr_61", "View_Checkbox_uniqueattr_62", "View_Checkbox_uniqueattr_63", "View_Checkbox_uniqueattr_64", "View_Checkbox_uniqueattr_65",
  "View_Checkbox_uniqueattr_66", "View_Checkbox_uniqueattr_67", "View_Checkbox_uniqueattr_68", "View_Checkbox_uniqueattr_69", "View_Checkbox_uniqueattr_70",
  "View_Checkbox_uniqueattr_71", "View_Checkbox_uniqueattr_72", "View_Checkbox_uniqueattr_73", "View_Checkbox_uniqueattr_74", "View_Checkbox_uniqueattr_75",
  "View_Checkbox_uniqueattr_76", "View_Checkbox_uniqueattr_77", "View_Checkbox_uniqueattr_78", "View_Checkbox_uniqueattr_79", "View_Checkbox_uniqueattr_80",
  "View_Checkbox_uniqueattr_81", "View_Checkbox_uniqueattr_82", "View_Checkbox_uniqueattr_83", "View_Checkbox_uniqueattr_84", "View_Checkbox_uniqueattr_85",
  "View_Checkbox_uniqueattr_86", "View_Checkbox_uniqueattr_87", "View_Checkbox_uniqueattr_88", "View_Checkbox_uniqueattr_89", "View_Checkbox_uniqueattr_90",
  "View_Checkbox_uniqueattr_91", "View_Checkbox_uniqueattr_92", "View_Checkbox_uniqueattr_93", "View_Checkbox_uniqueattr_94", "View_Checkbox_uniqueattr_95",
  "View_Checkbox_uniqueattr_96", "View_Checkbox_uniqueattr_97", "View_Checkbox_uniqueattr_98", "View_Checkbox_uniqueattr_99", "View_Checkbox_uniqueattr_100",
  "View_Checkbox_uniqueattr_101", "View_Checkbox_uniqueattr_102", "View_Checkbox_uniqueattr_103", "View_Checkbox_uniqueattr_104", "View_Checkbox_uniqueattr_105",
  "View_Checkbox_uniqueattr_106", "View_Checkbox_uniqueattr_107", "View_Checkbox_uniqueattr_108", "View_Checkbox_uniqueattr_109", "View_Checkbox_uniqueattr_110",
  "View_Checkbox_uniqueattr_111", "View_Checkbox_uniqueattr_112", "View_Checkbox_uniqueattr_113", "View_Checkbox_uniqueattr_114", "View_Checkbox_uniqueattr_115",
  "View_Checkbox_uniqueattr_116", "View_Checkbox_uniqueattr_117", "View_Checkbox_uniqueattr_118", "View_Checkbox_uniqueattr_119", "View_Checkbox_uniqueattr_120",
  "View_Checkbox_uniqueattr_121", "View_Checkbox_uniqueattr_122", "View_Checkbox_uniqueattr_123", "View_Checkbox_uniqueattr_124", "View_Checkbox_uniqueattr_125",
  "View_Checkbox_uniqueattr_126", "View_Checkbox_uniqueattr_127", "View_Checkbox_uniqueattr_128", "View_Checkbox_uniqueattr_129", "View_Checkbox_uniqueattr_130",
  "View_Checkbox_uniqueattr_131", "View_Checkbox_uniqueattr_132", "View_Checkbox_uniqueattr_133", "View_Checkbox_uniqueattr_134", "View_Checkbox_uniqueattr_135",
  "View_Checkbox_uniqueattr_136", "View_Checkbox_uniqueattr_137", "View_Checkbox_uniqueattr_138", "View_Checkbox_uniqueattr_139", "View_Checkbox_uniqueattr_140",
  "View_Checkbox_uniqueattr_141", "View_Checkbox_uniqueattr_142", "View_Checkbox_uniqueattr_143", "View_Checkbox_uniqueattr_144", "View_Checkbox_uniqueattr_145",
  "View_Checkbox_uniqueattr_146", "View_Checkbox_uniqueattr_147", "View_Checkbox_uniqueattr_148", "View_Checkbox_uniqueattr_149", "View_Checkbox_uniqueattr_150",
  "View_Checkbox_uniqueattr_151", "View_Checkbox_uniqueattr_152", "View_Checkbox_uniqueattr_153", "View_Checkbox_uniqueattr_154", "View_Checkbox_uniqueattr_155",
  "View_Checkbox_uniqueattr_156", "View_Checkbox_uniqueattr_157", "View_Checkbox_uniqueattr_158", "View_Checkbox_uniqueattr_159", "View_Checkbox_uniqueattr_160",
  "View_Checkbox_uniqueattr_161", "View_Checkbox_uniqueattr_162", "View_Checkbox_uniqueattr_163", "View_Checkbox_uniqueattr_164", "View_Checkbox_uniqueattr_165",
  "View_Checkbox_uniqueattr_166", "View_Checkbox_uniqueattr_167", "View_Checkbox_uniqueattr_168", "View_Checkbox_uniqueattr_169", "View_Checkbox_uniqueattr_170",
  "View_Checkbox_uniqueattr_171", "View_Checkbox_uniqueattr_172", "View_Checkbox_uniqueattr_173", "View_Checkbox_uniqueattr_174", "View_Checkbox_uniqueattr_175",
  "View_Checkbox_uniqueattr_176", "View_Checkbox_uniqueattr_177", "View_Checkbox_uniqueattr_178", "View_Checkbox_uniqueattr_179", "View_Checkbox_uniqueattr_180",
  "View_Checkbox_uniqueattr_181", "View_Checkbox_uniqueattr_182", "View_Checkbox_uniqueattr_183", "View_Checkbox_uniqueattr_184", "View_Checkbox_uniqueattr_185",
  "View_Checkbox_uniqueattr_186", "View_Checkbox_uniqueattr_187", "View_Checkbox_uniqueattr_188", "View_Checkbox_uniqueattr_189", "View_Checkbox_uniqueattr_190",
  "View_Checkbox_uniqueattr_191", "View_Checkbox_uniqueattr_192", "View_Checkbox_uniqueattr_193", "View_Checkbox_uniqueattr_194", "View_Checkbox_uniqueattr_195",
  "View_Checkbox_uniqueattr_196", "View_Checkbox_uniqueattr_197", "View_Checkbox_uniqueattr_198", "View_Checkbox_uniqueattr_199", "View_Checkbox_uniqueattr_200",
  "View_Checkbox_uniqueattr_201", "View_Checkbox_uniqueattr_202", "View_Checkbox_uniqueattr_203", "View_Checkbox_uniqueattr_204", "View_Checkbox_uniqueattr_205",
  "View_Checkbox_uniqueattr_206", "View_Checkbox_uniqueattr_207", "View_Checkbox_uniqueattr_208", "View_Checkbox_uniqueattr_209", "View_Checkbox_uniqueattr_210",
  "View_Checkbox_uniqueattr_211", "View_Checkbox_uniqueattr_212", "View_Checkbox_uniqueattr_213", "View_Checkbox_uniqueattr_214", "View_Checkbox_uniqueattr_215",
  "View_Checkbox_uniqueattr_216", "View_Checkbox_uniqueattr_217", "View_Checkbox_uniqueattr_218", "View_Checkbox_uniqueattr_219", "View_Checkbox_uniqueattr_220",
  "View_Checkbox_uniqueattr_221", "View_Checkbox_uniqueattr_222", "View_Checkbox_uniqueattr_223", "View_Checkbox_uniqueattr_224", "View_Checkbox_uniqueattr_225",
  "View_Checkbox_uniqueattr_226", "View_Checkbox_uniqueattr_227", "View_Checkbox_uniqueattr_228", "View_Checkbox_uniqueattr_229", "View_Checkbox_uniqueattr_230",
  "View_Checkbox_uniqueattr_231", "View_Checkbox_uniqueattr_232", "View_Checkbox_uniqueattr_233", "View_Checkbox_uniqueattr_234", "View_Checkbox_uniqueattr_235",
  "View_Checkbox_uniqueattr_236", "View_Checkbox_uniqueattr_237", "View_Checkbox_uniqueattr_238", "View_Checkbox_uniqueattr_239", "View_Checkbox_uniqueattr_240",
  "View_Checkbox_uniqueattr_241", "View_Checkbox_uniqueattr_242", "View_Checkbox_uniqueattr_243", "View_Checkbox_uniqueattr_244", "View_Checkbox_uniqueattr_245",
  "View_Checkbox_uniqueattr_246", "View_Checkbox_uniqueattr_247", "View_Checkbox_uniqueattr_248", "View_Checkbox_uniqueattr_249", "View_Checkbox_uniqueattr_250",
  "View_Checkbox_uniqueattr_251", "View_Checkbox_uniqueattr_252", "View_Checkbox_uniqueattr_253", "View_Checkbox_uniqueattr_254", "View_Checkbox_uniqueattr_255",
  "View_Checkbox_uniqueattr_256", "View_Checkbox_uniqueattr_257", "View_Checkbox_uniqueattr_258", "View_Checkbox_uniqueattr_259", "View_Checkbox_uniqueattr_260",
  "View_Checkbox_uniqueattr_261", "View_Checkbox_uniqueattr_262", "View_Checkbox_uniqueattr_263", "View_Checkbox_uniqueattr_264", "View_Checkbox_uniqueattr_265",
  "View_Checkbox_uniqueattr_266", "View_Checkbox_uniqueattr_267", "View_Checkbox_uniqueattr_268", "View_Checkbox_uniqueattr_269", "View_Checkbox_uniqueattr_270",
  "View_Checkbox_uniqueattr_271", "View_Checkbox_uniqueattr_272", "View_Checkbox_uniqueattr_273", "View_Checkbox_uniqueattr_274", "View_Checkbox_uniqueattr_275",
  "View_Checkbox_uniqueattr_276", "View_Checkbox_uniqueattr_277", "View_Checkbox_uniqueattr_278", "View_Checkbox_uniqueattr_279", "View_Checkbox_uniqueattr_280",
  "View_Checkbox_uniqueattr_281", "View_Checkbox_uniqueattr_282", "View_Checkbox_uniqueattr_283", "View_Checkbox_uniqueattr_284", "View_Checkbox_uniqueattr_285",
  "View_Checkbox_uniqueattr_286", "View_Checkbox_uniqueattr_287", "View_Checkbox_uniqueattr_288", "View_Checkbox_uniqueattr_289", "View_Checkbox_uniqueattr_290",
  "View_Checkbox_uniqueattr_291", "View_Checkbox_uniqueattr_292", "View_Checkbox_uniqueattr_293", "View_Checkbox_uniqueattr_294", "View_Checkbox_uniqueattr_295",
  "View_Checkbox_uniqueattr_296", "View_Checkbox_uniqueattr_297", "View_Checkbox_uniqueattr_298", "View_Checkbox_uniqueattr_299", "View_Checkbox_uniqueattr_300",
  "View_Checkbox_uniqueattr_301", "View_Checkbox_uniqueattr_302", "View_Checkbox_uniqueattr_303", "View_Checkbox_uniqueattr_304", "View_Checkbox_uniqueattr_305",
  "View_Checkbox_uniqueattr_306", "View_Checkbox_uniqueattr_307", "View_Checkbox_uniqueattr_308" ],
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
