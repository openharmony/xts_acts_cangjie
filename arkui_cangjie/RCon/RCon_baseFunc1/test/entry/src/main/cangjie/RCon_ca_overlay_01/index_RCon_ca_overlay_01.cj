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

package ohos_app_cangjie_entry.RCon_ca_overlay_01

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
class index_RCon_ca_overlay_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_RelCon_comattr_overlay_1", "View_RelCon_comattr_overlay_2", "View_RelCon_comattr_overlay_3", "View_RelCon_comattr_overlay_4", "View_RelCon_comattr_overlay_5",
  "View_RelCon_comattr_overlay_6", "View_RelCon_comattr_overlay_7", "View_RelCon_comattr_overlay_8", "View_RelCon_comattr_overlay_9", "View_RelCon_comattr_overlay_10",
  "View_RelCon_comattr_overlay_11", "View_RelCon_comattr_overlay_12", "View_RelCon_comattr_overlay_13", "View_RelCon_comattr_overlay_14", "View_RelCon_comattr_overlay_15",
  "View_RelCon_comattr_overlay_16", "View_RelCon_comattr_overlay_17", "View_RelCon_comattr_overlay_18", "View_RelCon_comattr_overlay_19", "View_RelCon_comattr_overlay_20",
  "View_RelCon_comattr_overlay_21", "View_RelCon_comattr_overlay_22", "View_RelCon_comattr_overlay_23", "View_RelCon_comattr_overlay_24", "View_RelCon_comattr_overlay_25",
  "View_RelCon_comattr_overlay_26", "View_RelCon_comattr_overlay_27", "View_RelCon_comattr_overlay_28", "View_RelCon_comattr_overlay_29", "View_RelCon_comattr_overlay_30",
  "View_RelCon_comattr_overlay_31", "View_RelCon_comattr_overlay_32", "View_RelCon_comattr_overlay_33", "View_RelCon_comattr_overlay_34", "View_RelCon_comattr_overlay_35",
  "View_RelCon_comattr_overlay_36", "View_RelCon_comattr_overlay_37", "View_RelCon_comattr_overlay_38", "View_RelCon_comattr_overlay_39", "View_RelCon_comattr_overlay_40",
  "View_RelCon_comattr_overlay_41", "View_RelCon_comattr_overlay_42", "View_RelCon_comattr_overlay_43", "View_RelCon_comattr_overlay_44", "View_RelCon_comattr_overlay_45",
  "View_RelCon_comattr_overlay_46", "View_RelCon_comattr_overlay_47", "View_RelCon_comattr_overlay_48", "View_RelCon_comattr_overlay_49", "View_RelCon_comattr_overlay_50",
  "View_RelCon_comattr_overlay_51", "View_RelCon_comattr_overlay_52", "View_RelCon_comattr_overlay_53", "View_RelCon_comattr_overlay_54", "View_RelCon_comattr_overlay_55",
  "View_RelCon_comattr_overlay_56", "View_RelCon_comattr_overlay_57", "View_RelCon_comattr_overlay_58", "View_RelCon_comattr_overlay_59", "View_RelCon_comattr_overlay_60",
  "View_RelCon_comattr_overlay_61", "View_RelCon_comattr_overlay_62", "View_RelCon_comattr_overlay_63", "View_RelCon_comattr_overlay_64", "View_RelCon_comattr_overlay_65",
  "View_RelCon_comattr_overlay_66", "View_RelCon_comattr_overlay_67", "View_RelCon_comattr_overlay_68", "View_RelCon_comattr_overlay_69", "View_RelCon_comattr_overlay_70",
  "View_RelCon_comattr_overlay_71", "View_RelCon_comattr_overlay_72", "View_RelCon_comattr_overlay_73", "View_RelCon_comattr_overlay_74", "View_RelCon_comattr_overlay_75",
  "View_RelCon_comattr_overlay_76", "View_RelCon_comattr_overlay_77", "View_RelCon_comattr_overlay_78", "View_RelCon_comattr_overlay_79", "View_RelCon_comattr_overlay_80",
  "View_RelCon_comattr_overlay_81", "View_RelCon_comattr_overlay_82", "View_RelCon_comattr_overlay_83", "View_RelCon_comattr_overlay_84", "View_RelCon_comattr_overlay_85",
  "View_RelCon_comattr_overlay_86", "View_RelCon_comattr_overlay_87", "View_RelCon_comattr_overlay_88", "View_RelCon_comattr_overlay_89", "View_RelCon_comattr_overlay_90",
  "View_RelCon_comattr_overlay_91", "View_RelCon_comattr_overlay_92", "View_RelCon_comattr_overlay_93", "View_RelCon_comattr_overlay_94", "View_RelCon_comattr_overlay_95",
  "View_RelCon_comattr_overlay_96", "View_RelCon_comattr_overlay_97", "View_RelCon_comattr_overlay_98", "View_RelCon_comattr_overlay_99", "View_RelCon_comattr_overlay_100",
  "View_RelCon_comattr_overlay_101", "View_RelCon_comattr_overlay_102", "View_RelCon_comattr_overlay_103", "View_RelCon_comattr_overlay_104", "View_RelCon_comattr_overlay_105",
  "View_RelCon_comattr_overlay_106", "View_RelCon_comattr_overlay_107", "View_RelCon_comattr_overlay_108", "View_RelCon_comattr_overlay_109", "View_RelCon_comattr_overlay_110",
  "View_RelCon_comattr_overlay_111", "View_RelCon_comattr_overlay_112", "View_RelCon_comattr_overlay_113", "View_RelCon_comattr_overlay_114", "View_RelCon_comattr_overlay_115",
  "View_RelCon_comattr_overlay_116", "View_RelCon_comattr_overlay_117", "View_RelCon_comattr_overlay_118", "View_RelCon_comattr_overlay_119", "View_RelCon_comattr_overlay_120",
  "View_RelCon_comattr_overlay_121", "View_RelCon_comattr_overlay_122", "View_RelCon_comattr_overlay_123", "View_RelCon_comattr_overlay_124", "View_RelCon_comattr_overlay_125",
  "View_RelCon_comattr_overlay_126", "View_RelCon_comattr_overlay_127", "View_RelCon_comattr_overlay_128", "View_RelCon_comattr_overlay_129", "View_RelCon_comattr_overlay_130",
  "View_RelCon_comattr_overlay_131", "View_RelCon_comattr_overlay_132", "View_RelCon_comattr_overlay_133", "View_RelCon_comattr_overlay_134", "View_RelCon_comattr_overlay_135",
  "View_RelCon_comattr_overlay_136", "View_RelCon_comattr_overlay_137", "View_RelCon_comattr_overlay_138", "View_RelCon_comattr_overlay_139", "View_RelCon_comattr_overlay_140",
  "View_RelCon_comattr_overlay_141", "View_RelCon_comattr_overlay_142", "View_RelCon_comattr_overlay_143", "View_RelCon_comattr_overlay_144", "View_RelCon_comattr_overlay_145",
  "View_RelCon_comattr_overlay_146", "View_RelCon_comattr_overlay_147", "View_RelCon_comattr_overlay_148", "View_RelCon_comattr_overlay_149", "View_RelCon_comattr_overlay_150",
  "View_RelCon_comattr_overlay_151", "View_RelCon_comattr_overlay_152", "View_RelCon_comattr_overlay_153", "View_RelCon_comattr_overlay_154", "View_RelCon_comattr_overlay_155",
  "View_RelCon_comattr_overlay_156", "View_RelCon_comattr_overlay_157", "View_RelCon_comattr_overlay_158", "View_RelCon_comattr_overlay_159", "View_RelCon_comattr_overlay_160",
  "View_RelCon_comattr_overlay_161", "View_RelCon_comattr_overlay_162", "View_RelCon_comattr_overlay_163", "View_RelCon_comattr_overlay_164", "View_RelCon_comattr_overlay_165",
  "View_RelCon_comattr_overlay_166", "View_RelCon_comattr_overlay_167", "View_RelCon_comattr_overlay_168", "View_RelCon_comattr_overlay_169", "View_RelCon_comattr_overlay_170",
  "View_RelCon_comattr_overlay_171", "View_RelCon_comattr_overlay_172", "View_RelCon_comattr_overlay_173", "View_RelCon_comattr_overlay_174", "View_RelCon_comattr_overlay_175",
  "View_RelCon_comattr_overlay_176", "View_RelCon_comattr_overlay_177", "View_RelCon_comattr_overlay_178", "View_RelCon_comattr_overlay_179", "View_RelCon_comattr_overlay_180" ],
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
