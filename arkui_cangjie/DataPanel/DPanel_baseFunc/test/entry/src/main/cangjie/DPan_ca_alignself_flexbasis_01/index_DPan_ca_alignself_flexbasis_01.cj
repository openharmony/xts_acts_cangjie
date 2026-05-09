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

package ohos_app_cangjie_entry.DPan_ca_alignself_flexbasis_01

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
class index_DPan_ca_alignself_flexbasis_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_DataPanel_comattr_alignself_basis_1", "View_DataPanel_comattr_alignself_basis_2", "View_DataPanel_comattr_alignself_basis_3", "View_DataPanel_comattr_alignself_basis_4", "View_DataPanel_comattr_alignself_basis_5",
  "View_DataPanel_comattr_alignself_basis_6", "View_DataPanel_comattr_alignself_basis_7", "View_DataPanel_comattr_alignself_basis_8", "View_DataPanel_comattr_alignself_basis_9", "View_DataPanel_comattr_alignself_basis_10",
  "View_DataPanel_comattr_alignself_basis_11", "View_DataPanel_comattr_alignself_basis_12", "View_DataPanel_comattr_alignself_basis_13", "View_DataPanel_comattr_alignself_basis_14", "View_DataPanel_comattr_alignself_basis_15",
  "View_DataPanel_comattr_alignself_basis_16", "View_DataPanel_comattr_alignself_basis_17", "View_DataPanel_comattr_alignself_basis_18", "View_DataPanel_comattr_alignself_basis_19", "View_DataPanel_comattr_alignself_basis_20",
  "View_DataPanel_comattr_alignself_basis_21", "View_DataPanel_comattr_alignself_basis_22", "View_DataPanel_comattr_alignself_basis_23", "View_DataPanel_comattr_alignself_basis_24", "View_DataPanel_comattr_alignself_basis_25",
  "View_DataPanel_comattr_alignself_basis_26", "View_DataPanel_comattr_alignself_basis_27", "View_DataPanel_comattr_alignself_basis_28", "View_DataPanel_comattr_alignself_basis_29", "View_DataPanel_comattr_alignself_basis_30",
  "View_DataPanel_comattr_alignself_basis_31", "View_DataPanel_comattr_alignself_basis_32", "View_DataPanel_comattr_alignself_basis_33", "View_DataPanel_comattr_alignself_basis_34", "View_DataPanel_comattr_alignself_basis_35",
  "View_DataPanel_comattr_alignself_basis_36", "View_DataPanel_comattr_alignself_basis_37", "View_DataPanel_comattr_alignself_basis_38", "View_DataPanel_comattr_alignself_basis_39", "View_DataPanel_comattr_alignself_basis_40",
  "View_DataPanel_comattr_alignself_basis_41", "View_DataPanel_comattr_alignself_basis_42", "View_DataPanel_comattr_alignself_basis_43", "View_DataPanel_comattr_alignself_basis_44", "View_DataPanel_comattr_alignself_basis_45",
  "View_DataPanel_comattr_alignself_basis_46", "View_DataPanel_comattr_alignself_basis_47", "View_DataPanel_comattr_alignself_basis_48", "View_DataPanel_comattr_alignself_basis_49", "View_DataPanel_comattr_alignself_basis_50",
  "View_DataPanel_comattr_alignself_basis_51", "View_DataPanel_comattr_alignself_basis_52", "View_DataPanel_comattr_alignself_basis_53", "View_DataPanel_comattr_alignself_basis_54", "View_DataPanel_comattr_alignself_basis_55",
  "View_DataPanel_comattr_alignself_basis_56", "View_DataPanel_comattr_alignself_basis_57", "View_DataPanel_comattr_alignself_basis_58", "View_DataPanel_comattr_alignself_basis_59", "View_DataPanel_comattr_alignself_basis_60",
  "View_DataPanel_comattr_alignself_basis_61", "View_DataPanel_comattr_alignself_basis_62", "View_DataPanel_comattr_alignself_basis_63", "View_DataPanel_comattr_alignself_basis_64", "View_DataPanel_comattr_alignself_basis_65",
  "View_DataPanel_comattr_alignself_basis_66", "View_DataPanel_comattr_alignself_basis_67", "View_DataPanel_comattr_alignself_basis_68", "View_DataPanel_comattr_alignself_basis_69", "View_DataPanel_comattr_alignself_basis_70",
  "View_DataPanel_comattr_alignself_basis_71", "View_DataPanel_comattr_alignself_basis_72", "View_DataPanel_comattr_alignself_basis_73", "View_DataPanel_comattr_alignself_basis_74", "View_DataPanel_comattr_alignself_basis_75",
  "View_DataPanel_comattr_alignself_basis_76", "View_DataPanel_comattr_alignself_basis_77", "View_DataPanel_comattr_alignself_basis_78", "View_DataPanel_comattr_alignself_basis_79", "View_DataPanel_comattr_alignself_basis_80",
  "View_DataPanel_comattr_alignself_basis_81", "View_DataPanel_comattr_alignself_basis_82", "View_DataPanel_comattr_alignself_basis_83", "View_DataPanel_comattr_alignself_basis_84", "View_DataPanel_comattr_alignself_basis_85",
  "View_DataPanel_comattr_alignself_basis_86", "View_DataPanel_comattr_alignself_basis_87", "View_DataPanel_comattr_alignself_basis_88", "View_DataPanel_comattr_alignself_basis_89", "View_DataPanel_comattr_alignself_basis_90",
  "View_DataPanel_comattr_alignself_basis_91", "View_DataPanel_comattr_alignself_basis_92", "View_DataPanel_comattr_alignself_basis_93", "View_DataPanel_comattr_alignself_basis_94", "View_DataPanel_comattr_alignself_basis_95",
  "View_DataPanel_comattr_alignself_basis_96", "View_DataPanel_comattr_alignself_basis_97", "View_DataPanel_comattr_alignself_basis_98", "View_DataPanel_comattr_alignself_basis_99", "View_DataPanel_comattr_alignself_basis_100",
  "View_DataPanel_comattr_alignself_basis_101", "View_DataPanel_comattr_alignself_basis_102", "View_DataPanel_comattr_alignself_basis_103", "View_DataPanel_comattr_alignself_basis_104", "View_DataPanel_comattr_alignself_basis_105",
  "View_DataPanel_comattr_alignself_basis_106", "View_DataPanel_comattr_alignself_basis_107", "View_DataPanel_comattr_alignself_basis_108", "View_DataPanel_comattr_alignself_basis_109", "View_DataPanel_comattr_alignself_basis_110",
  "View_DataPanel_comattr_alignself_basis_111", "View_DataPanel_comattr_alignself_basis_112", "View_DataPanel_comattr_alignself_basis_113", "View_DataPanel_comattr_alignself_basis_114", "View_DataPanel_comattr_alignself_basis_115",
  "View_DataPanel_comattr_alignself_basis_116", "View_DataPanel_comattr_alignself_basis_117", "View_DataPanel_comattr_alignself_basis_118", "View_DataPanel_comattr_alignself_basis_119", "View_DataPanel_comattr_alignself_basis_120" ],
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
