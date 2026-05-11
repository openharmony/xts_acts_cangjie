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

package ohos_app_cangjie_entry.Text_uniqueattr_01

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
class index_Text_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Text_uniqueattr_1", "View_Text_uniqueattr_2", "View_Text_uniqueattr_3", "View_Text_uniqueattr_4", "View_Text_uniqueattr_5",
  "View_Text_uniqueattr_6", "View_Text_uniqueattr_7", "View_Text_uniqueattr_8", "View_Text_uniqueattr_9", "View_Text_uniqueattr_10",
  "View_Text_uniqueattr_11", "View_Text_uniqueattr_12", "View_Text_uniqueattr_13", "View_Text_uniqueattr_14", "View_Text_uniqueattr_15",
  "View_Text_uniqueattr_16", "View_Text_uniqueattr_17", "View_Text_uniqueattr_18", "View_Text_uniqueattr_19", "View_Text_uniqueattr_20",
  "View_Text_uniqueattr_21", "View_Text_uniqueattr_22", "View_Text_uniqueattr_23", "View_Text_uniqueattr_24", "View_Text_uniqueattr_25",
  "View_Text_uniqueattr_26", "View_Text_uniqueattr_27", "View_Text_uniqueattr_28", "View_Text_uniqueattr_29", "View_Text_uniqueattr_30",
  "View_Text_uniqueattr_31", "View_Text_uniqueattr_32", "View_Text_uniqueattr_33", "View_Text_uniqueattr_34", "View_Text_uniqueattr_35",
  "View_Text_uniqueattr_36", "View_Text_uniqueattr_37", "View_Text_uniqueattr_38", "View_Text_uniqueattr_39", "View_Text_uniqueattr_40",
  "View_Text_uniqueattr_41", "View_Text_uniqueattr_42", "View_Text_uniqueattr_43", "View_Text_uniqueattr_44", "View_Text_uniqueattr_45",
  "View_Text_uniqueattr_46", "View_Text_uniqueattr_47", "View_Text_uniqueattr_48", "View_Text_uniqueattr_49", "View_Text_uniqueattr_50",
  "View_Text_uniqueattr_51", "View_Text_uniqueattr_52", "View_Text_uniqueattr_53", "View_Text_uniqueattr_54", "View_Text_uniqueattr_55",
  "View_Text_uniqueattr_56", "View_Text_uniqueattr_57", "View_Text_uniqueattr_58", "View_Text_uniqueattr_59", "View_Text_uniqueattr_60",
  "View_Text_uniqueattr_61", "View_Text_uniqueattr_62", "View_Text_uniqueattr_63", "View_Text_uniqueattr_64", "View_Text_uniqueattr_65",
  "View_Text_uniqueattr_66", "View_Text_uniqueattr_67", "View_Text_uniqueattr_68", "View_Text_uniqueattr_69", "View_Text_uniqueattr_70",
  "View_Text_uniqueattr_71", "View_Text_uniqueattr_72", "View_Text_uniqueattr_73", "View_Text_uniqueattr_74", "View_Text_uniqueattr_75",
  "View_Text_uniqueattr_76", "View_Text_uniqueattr_77", "View_Text_uniqueattr_78", "View_Text_uniqueattr_79", "View_Text_uniqueattr_80",
  "View_Text_uniqueattr_81", "View_Text_uniqueattr_82", "View_Text_uniqueattr_83", "View_Text_uniqueattr_84", "View_Text_uniqueattr_85",
  "View_Text_uniqueattr_86", "View_Text_uniqueattr_87", "View_Text_uniqueattr_88", "View_Text_uniqueattr_89", "View_Text_uniqueattr_90",
  "View_Text_uniqueattr_91", "View_Text_uniqueattr_92", "View_Text_uniqueattr_93", "View_Text_uniqueattr_94", "View_Text_uniqueattr_95",
  "View_Text_uniqueattr_96", "View_Text_uniqueattr_97", "View_Text_uniqueattr_98", "View_Text_uniqueattr_99", "View_Text_uniqueattr_100",
  "View_Text_uniqueattr_101", "View_Text_uniqueattr_102", "View_Text_uniqueattr_103", "View_Text_uniqueattr_104", "View_Text_uniqueattr_105",
  "View_Text_uniqueattr_106", "View_Text_uniqueattr_107", "View_Text_uniqueattr_108", "View_Text_uniqueattr_109", "View_Text_uniqueattr_110",
  "View_Text_uniqueattr_111", "View_Text_uniqueattr_112", "View_Text_uniqueattr_113", "View_Text_uniqueattr_114", "View_Text_uniqueattr_115",
  "View_Text_uniqueattr_116", "View_Text_uniqueattr_117", "View_Text_uniqueattr_118", "View_Text_uniqueattr_119", "View_Text_uniqueattr_120",
  "View_Text_uniqueattr_121", "View_Text_uniqueattr_122", "View_Text_uniqueattr_123", "View_Text_uniqueattr_124", "View_Text_uniqueattr_125",
  "View_Text_uniqueattr_126", "View_Text_uniqueattr_127", "View_Text_uniqueattr_128", "View_Text_uniqueattr_129", "View_Text_uniqueattr_130",
  "View_Text_uniqueattr_131", "View_Text_uniqueattr_132", "View_Text_uniqueattr_133", "View_Text_uniqueattr_134", "View_Text_uniqueattr_135",
  "View_Text_uniqueattr_136", "View_Text_uniqueattr_137", "View_Text_uniqueattr_138", "View_Text_uniqueattr_139", "View_Text_uniqueattr_140",
  "View_Text_uniqueattr_141", "View_Text_uniqueattr_142", "View_Text_uniqueattr_143", "View_Text_uniqueattr_144", "View_Text_uniqueattr_145",
  "View_Text_uniqueattr_146", "View_Text_uniqueattr_147", "View_Text_uniqueattr_148", "View_Text_uniqueattr_149", "View_Text_uniqueattr_150",
  "View_Text_uniqueattr_151", "View_Text_uniqueattr_152", "View_Text_uniqueattr_153", "View_Text_uniqueattr_154", "View_Text_uniqueattr_155",
  "View_Text_uniqueattr_156", "View_Text_uniqueattr_157", "View_Text_uniqueattr_158", "View_Text_uniqueattr_159", "View_Text_uniqueattr_160",
  "View_Text_uniqueattr_161", "View_Text_uniqueattr_162", "View_Text_uniqueattr_163", "View_Text_uniqueattr_164", "View_Text_uniqueattr_165",
  "View_Text_uniqueattr_166", "View_Text_uniqueattr_167", "View_Text_uniqueattr_168", "View_Text_uniqueattr_169", "View_Text_uniqueattr_170",
  "View_Text_uniqueattr_171", "View_Text_uniqueattr_172", "View_Text_uniqueattr_173", "View_Text_uniqueattr_174", "View_Text_uniqueattr_175",
  "View_Text_uniqueattr_176", "View_Text_uniqueattr_177", "View_Text_uniqueattr_178", "View_Text_uniqueattr_179", "View_Text_uniqueattr_180",
  "View_Text_uniqueattr_181", "View_Text_uniqueattr_182", "View_Text_uniqueattr_183", "View_Text_uniqueattr_184", "View_Text_uniqueattr_185",
  "View_Text_uniqueattr_186", "View_Text_uniqueattr_187", "View_Text_uniqueattr_188", "View_Text_uniqueattr_189", "View_Text_uniqueattr_190",
  "View_Text_uniqueattr_191", "View_Text_uniqueattr_192", "View_Text_uniqueattr_193", "View_Text_uniqueattr_194", "View_Text_uniqueattr_195",
  "View_Text_uniqueattr_196", "View_Text_uniqueattr_197", "View_Text_uniqueattr_198", "View_Text_uniqueattr_199", "View_Text_uniqueattr_200",
  "View_Text_uniqueattr_201", "View_Text_uniqueattr_202", "View_Text_uniqueattr_203", "View_Text_uniqueattr_204", "View_Text_uniqueattr_205",
  "View_Text_uniqueattr_206", "View_Text_uniqueattr_207", "View_Text_uniqueattr_208", "View_Text_uniqueattr_209", "View_Text_uniqueattr_210",
  "View_Text_uniqueattr_211", "View_Text_uniqueattr_212", "View_Text_uniqueattr_213", "View_Text_uniqueattr_214", "View_Text_uniqueattr_215",
  "View_Text_uniqueattr_216", "View_Text_uniqueattr_217", "View_Text_uniqueattr_218", "View_Text_uniqueattr_219", "View_Text_uniqueattr_220",
  "View_Text_uniqueattr_221", "View_Text_uniqueattr_222", "View_Text_uniqueattr_223", "View_Text_uniqueattr_224", "View_Text_uniqueattr_225",
  "View_Text_uniqueattr_226", "View_Text_uniqueattr_227", "View_Text_uniqueattr_228", "View_Text_uniqueattr_229", "View_Text_uniqueattr_230",
  "View_Text_uniqueattr_231", "View_Text_uniqueattr_232", "View_Text_uniqueattr_233", "View_Text_uniqueattr_234", "View_Text_uniqueattr_235",
  "View_Text_uniqueattr_236", "View_Text_uniqueattr_237", "View_Text_uniqueattr_238", "View_Text_uniqueattr_239", "View_Text_uniqueattr_240",
  "View_Text_uniqueattr_241", "View_Text_uniqueattr_242", "View_Text_uniqueattr_243", "View_Text_uniqueattr_244", "View_Text_uniqueattr_245",
  "View_Text_uniqueattr_246", "View_Text_uniqueattr_247", "View_Text_uniqueattr_248", "View_Text_uniqueattr_249", "View_Text_uniqueattr_250",
  "View_Text_uniqueattr_251", "View_Text_uniqueattr_252", "View_Text_uniqueattr_253", "View_Text_uniqueattr_254", "View_Text_uniqueattr_255",
  "View_Text_uniqueattr_256", "View_Text_uniqueattr_257", "View_Text_uniqueattr_258", "View_Text_uniqueattr_259", "View_Text_uniqueattr_260",
  "View_Text_uniqueattr_261", "View_Text_uniqueattr_262", "View_Text_uniqueattr_263", "View_Text_uniqueattr_264", "View_Text_uniqueattr_265",
  "View_Text_uniqueattr_266", "View_Text_uniqueattr_267", "View_Text_uniqueattr_268", "View_Text_uniqueattr_269", "View_Text_uniqueattr_270",
  "View_Text_uniqueattr_271", "View_Text_uniqueattr_272", "View_Text_uniqueattr_273", "View_Text_uniqueattr_274", "View_Text_uniqueattr_275",
  "View_Text_uniqueattr_276", "View_Text_uniqueattr_277", "View_Text_uniqueattr_278", "View_Text_uniqueattr_279", "View_Text_uniqueattr_280",
  "View_Text_uniqueattr_281", "View_Text_uniqueattr_282", "View_Text_uniqueattr_283", "View_Text_uniqueattr_284", "View_Text_uniqueattr_285",
  "View_Text_uniqueattr_286", "View_Text_uniqueattr_287", "View_Text_uniqueattr_288", "View_Text_uniqueattr_289", "View_Text_uniqueattr_290",
  "View_Text_uniqueattr_291", "View_Text_uniqueattr_292", "View_Text_uniqueattr_293", "View_Text_uniqueattr_294", "View_Text_uniqueattr_295",
  "View_Text_uniqueattr_296", "View_Text_uniqueattr_297", "View_Text_uniqueattr_298", "View_Text_uniqueattr_299", "View_Text_uniqueattr_300",
  "View_Text_uniqueattr_301", "View_Text_uniqueattr_302", "View_Text_uniqueattr_303", "View_Text_uniqueattr_304", "View_Text_uniqueattr_305" ],
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
