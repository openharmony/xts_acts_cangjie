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

package ohos_app_cangjie_entry.DPic_uniqueattr_01

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
internal import kit.LocalizationKit.*

@Entry
@Component
class index_DPic_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_DatePicker_uniqueattr_1", "View_DatePicker_uniqueattr_2", "View_DatePicker_uniqueattr_3", "View_DatePicker_uniqueattr_4", "View_DatePicker_uniqueattr_5",
  "View_DatePicker_uniqueattr_6", "View_DatePicker_uniqueattr_7", "View_DatePicker_uniqueattr_8", "View_DatePicker_uniqueattr_9", "View_DatePicker_uniqueattr_10",
  "View_DatePicker_uniqueattr_11", "View_DatePicker_uniqueattr_12", "View_DatePicker_uniqueattr_13", "View_DatePicker_uniqueattr_14", "View_DatePicker_uniqueattr_15",
  "View_DatePicker_uniqueattr_16", "View_DatePicker_uniqueattr_17", "View_DatePicker_uniqueattr_18", "View_DatePicker_uniqueattr_19", "View_DatePicker_uniqueattr_20",
  "View_DatePicker_uniqueattr_21", "View_DatePicker_uniqueattr_22", "View_DatePicker_uniqueattr_23", "View_DatePicker_uniqueattr_24", "View_DatePicker_uniqueattr_25",
  "View_DatePicker_uniqueattr_26", "View_DatePicker_uniqueattr_27", "View_DatePicker_uniqueattr_28", "View_DatePicker_uniqueattr_29", "View_DatePicker_uniqueattr_30",
  "View_DatePicker_uniqueattr_31", "View_DatePicker_uniqueattr_32", "View_DatePicker_uniqueattr_33", "View_DatePicker_uniqueattr_34", "View_DatePicker_uniqueattr_35",
  "View_DatePicker_uniqueattr_36", "View_DatePicker_uniqueattr_37", "View_DatePicker_uniqueattr_38", "View_DatePicker_uniqueattr_39", "View_DatePicker_uniqueattr_40",
  "View_DatePicker_uniqueattr_41", "View_DatePicker_uniqueattr_42", "View_DatePicker_uniqueattr_43", "View_DatePicker_uniqueattr_44", "View_DatePicker_uniqueattr_45",
  "View_DatePicker_uniqueattr_46", "View_DatePicker_uniqueattr_47", "View_DatePicker_uniqueattr_48", "View_DatePicker_uniqueattr_49", "View_DatePicker_uniqueattr_50",
  "View_DatePicker_uniqueattr_51", "View_DatePicker_uniqueattr_52", "View_DatePicker_uniqueattr_53", "View_DatePicker_uniqueattr_54", "View_DatePicker_uniqueattr_55",
  "View_DatePicker_uniqueattr_56", "View_DatePicker_uniqueattr_57", "View_DatePicker_uniqueattr_58", "View_DatePicker_uniqueattr_59", "View_DatePicker_uniqueattr_60",
  "View_DatePicker_uniqueattr_61", "View_DatePicker_uniqueattr_62", "View_DatePicker_uniqueattr_63", "View_DatePicker_uniqueattr_64", "View_DatePicker_uniqueattr_65",
  "View_DatePicker_uniqueattr_66", "View_DatePicker_uniqueattr_67", "View_DatePicker_uniqueattr_68", "View_DatePicker_uniqueattr_69", "View_DatePicker_uniqueattr_70",
  "View_DatePicker_uniqueattr_71", "View_DatePicker_uniqueattr_72", "View_DatePicker_uniqueattr_73", "View_DatePicker_uniqueattr_74", "View_DatePicker_uniqueattr_75",
  "View_DatePicker_uniqueattr_76", "View_DatePicker_uniqueattr_77", "View_DatePicker_uniqueattr_78", "View_DatePicker_uniqueattr_79", "View_DatePicker_uniqueattr_80",
  "View_DatePicker_uniqueattr_81", "View_DatePicker_uniqueattr_82", "View_DatePicker_uniqueattr_83", "View_DatePicker_uniqueattr_84", "View_DatePicker_uniqueattr_85",
  "View_DatePicker_uniqueattr_86", "View_DatePicker_uniqueattr_87", "View_DatePicker_uniqueattr_88", "View_DatePicker_uniqueattr_89", "View_DatePicker_uniqueattr_90",
  "View_DatePicker_uniqueattr_91", "View_DatePicker_uniqueattr_92", "View_DatePicker_uniqueattr_93", "View_DatePicker_uniqueattr_94", "View_DatePicker_uniqueattr_95",
  "View_DatePicker_uniqueattr_96", "View_DatePicker_uniqueattr_97", "View_DatePicker_uniqueattr_98", "View_DatePicker_uniqueattr_99", "View_DatePicker_uniqueattr_100",
  "View_DatePicker_uniqueattr_101", "View_DatePicker_uniqueattr_102", "View_DatePicker_uniqueattr_103", "View_DatePicker_uniqueattr_104", "View_DatePicker_uniqueattr_105",
  "View_DatePicker_uniqueattr_106", "View_DatePicker_uniqueattr_107", "View_DatePicker_uniqueattr_108", "View_DatePicker_uniqueattr_109", "View_DatePicker_uniqueattr_110",
  "View_DatePicker_uniqueattr_111", "View_DatePicker_uniqueattr_112", "View_DatePicker_uniqueattr_113", "View_DatePicker_uniqueattr_114", "View_DatePicker_uniqueattr_115",
  "View_DatePicker_uniqueattr_116", "View_DatePicker_uniqueattr_117", "View_DatePicker_uniqueattr_118", "View_DatePicker_uniqueattr_119", "View_DatePicker_uniqueattr_120",
  "View_DatePicker_uniqueattr_121", "View_DatePicker_uniqueattr_122", "View_DatePicker_uniqueattr_123", "View_DatePicker_uniqueattr_124", "View_DatePicker_uniqueattr_125",
  "View_DatePicker_uniqueattr_126", "View_DatePicker_uniqueattr_127", "View_DatePicker_uniqueattr_128", "View_DatePicker_uniqueattr_129", "View_DatePicker_uniqueattr_130",
  "View_DatePicker_uniqueattr_131", "View_DatePicker_uniqueattr_132", "View_DatePicker_uniqueattr_133", "View_DatePicker_uniqueattr_134", "View_DatePicker_uniqueattr_135",
  "View_DatePicker_uniqueattr_136", "View_DatePicker_uniqueattr_137", "View_DatePicker_uniqueattr_138", "View_DatePicker_uniqueattr_139", "View_DatePicker_uniqueattr_140",
  "View_DatePicker_uniqueattr_141", "View_DatePicker_uniqueattr_142", "View_DatePicker_uniqueattr_143", "View_DatePicker_uniqueattr_144", "View_DatePicker_uniqueattr_145",
  "View_DatePicker_uniqueattr_146", "View_DatePicker_uniqueattr_147", "View_DatePicker_uniqueattr_148", "View_DatePicker_uniqueattr_149", "View_DatePicker_uniqueattr_150",
  "View_DatePicker_uniqueattr_151", "View_DatePicker_uniqueattr_152", "View_DatePicker_uniqueattr_153", "View_DatePicker_uniqueattr_154", "View_DatePicker_uniqueattr_155",
  "View_DatePicker_uniqueattr_156", "View_DatePicker_uniqueattr_157", "View_DatePicker_uniqueattr_158", "View_DatePicker_uniqueattr_159", "View_DatePicker_uniqueattr_160",
  "View_DatePicker_uniqueattr_161", "View_DatePicker_uniqueattr_162", "View_DatePicker_uniqueattr_163", "View_DatePicker_uniqueattr_164", "View_DatePicker_uniqueattr_165",
  "View_DatePicker_uniqueattr_166", "View_DatePicker_uniqueattr_167", "View_DatePicker_uniqueattr_168", "View_DatePicker_uniqueattr_169", "View_DatePicker_uniqueattr_170",
  "View_DatePicker_uniqueattr_171", "View_DatePicker_uniqueattr_172", "View_DatePicker_uniqueattr_173", "View_DatePicker_uniqueattr_174", "View_DatePicker_uniqueattr_175",
  "View_DatePicker_uniqueattr_176", "View_DatePicker_uniqueattr_177", "View_DatePicker_uniqueattr_178", "View_DatePicker_uniqueattr_179", "View_DatePicker_uniqueattr_180",
  "View_DatePicker_uniqueattr_181", "View_DatePicker_uniqueattr_182", "View_DatePicker_uniqueattr_183", "View_DatePicker_uniqueattr_184", "View_DatePicker_uniqueattr_185",
  "View_DatePicker_uniqueattr_186", "View_DatePicker_uniqueattr_187", "View_DatePicker_uniqueattr_188", "View_DatePicker_uniqueattr_189", "View_DatePicker_uniqueattr_190",
  "View_DatePicker_uniqueattr_191", "View_DatePicker_uniqueattr_192", "View_DatePicker_uniqueattr_193", "View_DatePicker_uniqueattr_194", "View_DatePicker_uniqueattr_195",
  "View_DatePicker_uniqueattr_196", "View_DatePicker_uniqueattr_197", "View_DatePicker_uniqueattr_198", "View_DatePicker_uniqueattr_199", "View_DatePicker_uniqueattr_200",
  "View_DatePicker_uniqueattr_201", "View_DatePicker_uniqueattr_202", "View_DatePicker_uniqueattr_203", "View_DatePicker_uniqueattr_204", "View_DatePicker_uniqueattr_205",
  "View_DatePicker_uniqueattr_206", "View_DatePicker_uniqueattr_207", "View_DatePicker_uniqueattr_208", "View_DatePicker_uniqueattr_209", "View_DatePicker_uniqueattr_210",
  "View_DatePicker_uniqueattr_211", "View_DatePicker_uniqueattr_212", "View_DatePicker_uniqueattr_213", "View_DatePicker_uniqueattr_214", "View_DatePicker_uniqueattr_215",
  "View_DatePicker_uniqueattr_216", "View_DatePicker_uniqueattr_217", "View_DatePicker_uniqueattr_218", "View_DatePicker_uniqueattr_219", "View_DatePicker_uniqueattr_220",
  "View_DatePicker_uniqueattr_221", "View_DatePicker_uniqueattr_222", "View_DatePicker_uniqueattr_223", "View_DatePicker_uniqueattr_224", "View_DatePicker_uniqueattr_225",
  "View_DatePicker_uniqueattr_226", "View_DatePicker_uniqueattr_227", "View_DatePicker_uniqueattr_228", "View_DatePicker_uniqueattr_229", "View_DatePicker_uniqueattr_230",
  "View_DatePicker_uniqueattr_231", "View_DatePicker_uniqueattr_232", "View_DatePicker_uniqueattr_233", "View_DatePicker_uniqueattr_234", "View_DatePicker_uniqueattr_235",
  "View_DatePicker_uniqueattr_236", "View_DatePicker_uniqueattr_237", "View_DatePicker_uniqueattr_238", "View_DatePicker_uniqueattr_239", "View_DatePicker_uniqueattr_240",
  "View_DatePicker_uniqueattr_241", "View_DatePicker_uniqueattr_242", "View_DatePicker_uniqueattr_243", "View_DatePicker_uniqueattr_244", "View_DatePicker_uniqueattr_245",
  "View_DatePicker_uniqueattr_246", "View_DatePicker_uniqueattr_247", "View_DatePicker_uniqueattr_248", "View_DatePicker_uniqueattr_249", "View_DatePicker_uniqueattr_250",
  "View_DatePicker_uniqueattr_251", "View_DatePicker_uniqueattr_252", "View_DatePicker_uniqueattr_253", "View_DatePicker_uniqueattr_254", "View_DatePicker_uniqueattr_255",
  "View_DatePicker_uniqueattr_256", "View_DatePicker_uniqueattr_257", "View_DatePicker_uniqueattr_258", "View_DatePicker_uniqueattr_259", "View_DatePicker_uniqueattr_260",
  "View_DatePicker_uniqueattr_261", "View_DatePicker_uniqueattr_262", "View_DatePicker_uniqueattr_263", "View_DatePicker_uniqueattr_264", "View_DatePicker_uniqueattr_265",
  "View_DatePicker_uniqueattr_266", "View_DatePicker_uniqueattr_267", "View_DatePicker_uniqueattr_268", "View_DatePicker_uniqueattr_269", "View_DatePicker_uniqueattr_270",
  "View_DatePicker_uniqueattr_271", "View_DatePicker_uniqueattr_272", "View_DatePicker_uniqueattr_273", "View_DatePicker_uniqueattr_274", "View_DatePicker_uniqueattr_275",
  "View_DatePicker_uniqueattr_276", "View_DatePicker_uniqueattr_277", "View_DatePicker_uniqueattr_278", "View_DatePicker_uniqueattr_279", "View_DatePicker_uniqueattr_280",
  "View_DatePicker_uniqueattr_281", "View_DatePicker_uniqueattr_282", "View_DatePicker_uniqueattr_283", "View_DatePicker_uniqueattr_284", "View_DatePicker_uniqueattr_285",
  "View_DatePicker_uniqueattr_286", "View_DatePicker_uniqueattr_287", "View_DatePicker_uniqueattr_288", "View_DatePicker_uniqueattr_289", "View_DatePicker_uniqueattr_290",
  "View_DatePicker_uniqueattr_291", "View_DatePicker_uniqueattr_292", "View_DatePicker_uniqueattr_293", "View_DatePicker_uniqueattr_294", "View_DatePicker_uniqueattr_295",
  "View_DatePicker_uniqueattr_296", "View_DatePicker_uniqueattr_297", "View_DatePicker_uniqueattr_298", "View_DatePicker_uniqueattr_299", "View_DatePicker_uniqueattr_300" ],
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
