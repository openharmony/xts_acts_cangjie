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

package ohos_app_cangjie_entry.TInp_uniqueattr_03

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
class index_TInp_uniqueattr_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextInput_uniqueattr_1", "View_TextInput_uniqueattr_2", "View_TextInput_uniqueattr_3", "View_TextInput_uniqueattr_4", "View_TextInput_uniqueattr_5",
  "View_TextInput_uniqueattr_6", "View_TextInput_uniqueattr_7", "View_TextInput_uniqueattr_8", "View_TextInput_uniqueattr_9", "View_TextInput_uniqueattr_10",
  "View_TextInput_uniqueattr_11", "View_TextInput_uniqueattr_12", "View_TextInput_uniqueattr_13", "View_TextInput_uniqueattr_14", "View_TextInput_uniqueattr_15",
  "View_TextInput_uniqueattr_16", "View_TextInput_uniqueattr_17", "View_TextInput_uniqueattr_18", "View_TextInput_uniqueattr_19", "View_TextInput_uniqueattr_20",
  "View_TextInput_uniqueattr_21", "View_TextInput_uniqueattr_22", "View_TextInput_uniqueattr_23", "View_TextInput_uniqueattr_24", "View_TextInput_uniqueattr_25",
  "View_TextInput_uniqueattr_26", "View_TextInput_uniqueattr_27", "View_TextInput_uniqueattr_28", "View_TextInput_uniqueattr_29", "View_TextInput_uniqueattr_30",
  "View_TextInput_uniqueattr_31", "View_TextInput_uniqueattr_32", "View_TextInput_uniqueattr_33", "View_TextInput_uniqueattr_34", "View_TextInput_uniqueattr_35",
  "View_TextInput_uniqueattr_36", "View_TextInput_uniqueattr_37", "View_TextInput_uniqueattr_38", "View_TextInput_uniqueattr_39", "View_TextInput_uniqueattr_40",
  "View_TextInput_uniqueattr_41", "View_TextInput_uniqueattr_42", "View_TextInput_uniqueattr_43", "View_TextInput_uniqueattr_44", "View_TextInput_uniqueattr_45",
  "View_TextInput_uniqueattr_46", "View_TextInput_uniqueattr_47", "View_TextInput_uniqueattr_48", "View_TextInput_uniqueattr_49", "View_TextInput_uniqueattr_50",
  "View_TextInput_uniqueattr_51", "View_TextInput_uniqueattr_52", "View_TextInput_uniqueattr_53", "View_TextInput_uniqueattr_54", "View_TextInput_uniqueattr_55",
  "View_TextInput_uniqueattr_56", "View_TextInput_uniqueattr_57", "View_TextInput_uniqueattr_58", "View_TextInput_uniqueattr_59", "View_TextInput_uniqueattr_60",
  "View_TextInput_uniqueattr_61", "View_TextInput_uniqueattr_62", "View_TextInput_uniqueattr_63", "View_TextInput_uniqueattr_64", "View_TextInput_uniqueattr_65",
  "View_TextInput_uniqueattr_66", "View_TextInput_uniqueattr_67", "View_TextInput_uniqueattr_68", "View_TextInput_uniqueattr_69", "View_TextInput_uniqueattr_70",
  "View_TextInput_uniqueattr_71", "View_TextInput_uniqueattr_72", "View_TextInput_uniqueattr_73", "View_TextInput_uniqueattr_74", "View_TextInput_uniqueattr_75",
  "View_TextInput_uniqueattr_76", "View_TextInput_uniqueattr_77", "View_TextInput_uniqueattr_78", "View_TextInput_uniqueattr_79", "View_TextInput_uniqueattr_80",
  "View_TextInput_uniqueattr_81", "View_TextInput_uniqueattr_82", "View_TextInput_uniqueattr_83", "View_TextInput_uniqueattr_84", "View_TextInput_uniqueattr_85",
  "View_TextInput_uniqueattr_86", "View_TextInput_uniqueattr_87", "View_TextInput_uniqueattr_88", "View_TextInput_uniqueattr_89", "View_TextInput_uniqueattr_90",
  "View_TextInput_uniqueattr_91", "View_TextInput_uniqueattr_92", "View_TextInput_uniqueattr_93", "View_TextInput_uniqueattr_94", "View_TextInput_uniqueattr_95",
  "View_TextInput_uniqueattr_96", "View_TextInput_uniqueattr_97", "View_TextInput_uniqueattr_98", "View_TextInput_uniqueattr_99", "View_TextInput_uniqueattr_100",
  "View_TextInput_uniqueattr_101", "View_TextInput_uniqueattr_102", "View_TextInput_uniqueattr_103", "View_TextInput_uniqueattr_104", "View_TextInput_uniqueattr_105",
  "View_TextInput_uniqueattr_106", "View_TextInput_uniqueattr_107", "View_TextInput_uniqueattr_108", "View_TextInput_uniqueattr_109", "View_TextInput_uniqueattr_110",
  "View_TextInput_uniqueattr_111", "View_TextInput_uniqueattr_112", "View_TextInput_uniqueattr_113", "View_TextInput_uniqueattr_114", "View_TextInput_uniqueattr_115",
  "View_TextInput_uniqueattr_116", "View_TextInput_uniqueattr_117", "View_TextInput_uniqueattr_118", "View_TextInput_uniqueattr_119", "View_TextInput_uniqueattr_120",
  "View_TextInput_uniqueattr_121", "View_TextInput_uniqueattr_122", "View_TextInput_uniqueattr_123", "View_TextInput_uniqueattr_124", "View_TextInput_uniqueattr_125",
  "View_TextInput_uniqueattr_126", "View_TextInput_uniqueattr_127", "View_TextInput_uniqueattr_128", "View_TextInput_uniqueattr_129", "View_TextInput_uniqueattr_130",
  "View_TextInput_uniqueattr_131", "View_TextInput_uniqueattr_132", "View_TextInput_uniqueattr_133", "View_TextInput_uniqueattr_134", "View_TextInput_uniqueattr_135",
  "View_TextInput_uniqueattr_136", "View_TextInput_uniqueattr_137", "View_TextInput_uniqueattr_138", "View_TextInput_uniqueattr_139", "View_TextInput_uniqueattr_140",
  "View_TextInput_uniqueattr_141", "View_TextInput_uniqueattr_142", "View_TextInput_uniqueattr_143", "View_TextInput_uniqueattr_144", "View_TextInput_uniqueattr_145",
  "View_TextInput_uniqueattr_146", "View_TextInput_uniqueattr_147", "View_TextInput_uniqueattr_148", "View_TextInput_uniqueattr_149", "View_TextInput_uniqueattr_150",
  "View_TextInput_uniqueattr_151", "View_TextInput_uniqueattr_152", "View_TextInput_uniqueattr_153", "View_TextInput_uniqueattr_154", "View_TextInput_uniqueattr_155",
  "View_TextInput_uniqueattr_156", "View_TextInput_uniqueattr_157", "View_TextInput_uniqueattr_158", "View_TextInput_uniqueattr_159", "View_TextInput_uniqueattr_160",
  "View_TextInput_uniqueattr_161", "View_TextInput_uniqueattr_162", "View_TextInput_uniqueattr_163", "View_TextInput_uniqueattr_164", "View_TextInput_uniqueattr_165",
  "View_TextInput_uniqueattr_166", "View_TextInput_uniqueattr_167", "View_TextInput_uniqueattr_168", "View_TextInput_uniqueattr_169", "View_TextInput_uniqueattr_170",
  "View_TextInput_uniqueattr_171", "View_TextInput_uniqueattr_172", "View_TextInput_uniqueattr_173", "View_TextInput_uniqueattr_174", "View_TextInput_uniqueattr_175",
  "View_TextInput_uniqueattr_176", "View_TextInput_uniqueattr_177", "View_TextInput_uniqueattr_178", "View_TextInput_uniqueattr_179", "View_TextInput_uniqueattr_180",
  "View_TextInput_uniqueattr_181" ],
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
