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

package ohos_app_cangjie_entry.Toggle_uniqueattr_01

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
class index_Toggle_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Toggle_uniqueattr_1", "View_Toggle_uniqueattr_2", "View_Toggle_uniqueattr_3", "View_Toggle_uniqueattr_4", "View_Toggle_uniqueattr_5",
  "View_Toggle_uniqueattr_6", "View_Toggle_uniqueattr_7", "View_Toggle_uniqueattr_8", "View_Toggle_uniqueattr_9", "View_Toggle_uniqueattr_10",
  "View_Toggle_uniqueattr_11", "View_Toggle_uniqueattr_12", "View_Toggle_uniqueattr_13", "View_Toggle_uniqueattr_14", "View_Toggle_uniqueattr_15",
  "View_Toggle_uniqueattr_16", "View_Toggle_uniqueattr_17", "View_Toggle_uniqueattr_18", "View_Toggle_uniqueattr_19", "View_Toggle_uniqueattr_20",
  "View_Toggle_uniqueattr_21", "View_Toggle_uniqueattr_22", "View_Toggle_uniqueattr_23", "View_Toggle_uniqueattr_24", "View_Toggle_uniqueattr_25",
  "View_Toggle_uniqueattr_26", "View_Toggle_uniqueattr_27", "View_Toggle_uniqueattr_28", "View_Toggle_uniqueattr_29", "View_Toggle_uniqueattr_30",
  "View_Toggle_uniqueattr_31", "View_Toggle_uniqueattr_32", "View_Toggle_uniqueattr_33", "View_Toggle_uniqueattr_34", "View_Toggle_uniqueattr_35",
  "View_Toggle_uniqueattr_36", "View_Toggle_uniqueattr_37", "View_Toggle_uniqueattr_38", "View_Toggle_uniqueattr_39", "View_Toggle_uniqueattr_40",
  "View_Toggle_uniqueattr_41", "View_Toggle_uniqueattr_42", "View_Toggle_uniqueattr_43", "View_Toggle_uniqueattr_44", "View_Toggle_uniqueattr_45",
  "View_Toggle_uniqueattr_46", "View_Toggle_uniqueattr_47", "View_Toggle_uniqueattr_48", "View_Toggle_uniqueattr_49", "View_Toggle_uniqueattr_50",
  "View_Toggle_uniqueattr_51", "View_Toggle_uniqueattr_52", "View_Toggle_uniqueattr_53", "View_Toggle_uniqueattr_54", "View_Toggle_uniqueattr_55",
  "View_Toggle_uniqueattr_56", "View_Toggle_uniqueattr_57", "View_Toggle_uniqueattr_58", "View_Toggle_uniqueattr_59", "View_Toggle_uniqueattr_60",
  "View_Toggle_uniqueattr_61", "View_Toggle_uniqueattr_62", "View_Toggle_uniqueattr_63", "View_Toggle_uniqueattr_64", "View_Toggle_uniqueattr_65",
  "View_Toggle_uniqueattr_66", "View_Toggle_uniqueattr_67", "View_Toggle_uniqueattr_68", "View_Toggle_uniqueattr_69", "View_Toggle_uniqueattr_70",
  "View_Toggle_uniqueattr_71", "View_Toggle_uniqueattr_72", "View_Toggle_uniqueattr_73", "View_Toggle_uniqueattr_74", "View_Toggle_uniqueattr_75",
  "View_Toggle_uniqueattr_76", "View_Toggle_uniqueattr_77", "View_Toggle_uniqueattr_78", "View_Toggle_uniqueattr_79", "View_Toggle_uniqueattr_80",
  "View_Toggle_uniqueattr_81", "View_Toggle_uniqueattr_82", "View_Toggle_uniqueattr_83", "View_Toggle_uniqueattr_84", "View_Toggle_uniqueattr_85",
  "View_Toggle_uniqueattr_86", "View_Toggle_uniqueattr_87", "View_Toggle_uniqueattr_88", "View_Toggle_uniqueattr_89", "View_Toggle_uniqueattr_90",
  "View_Toggle_uniqueattr_91", "View_Toggle_uniqueattr_92", "View_Toggle_uniqueattr_93", "View_Toggle_uniqueattr_94", "View_Toggle_uniqueattr_95",
  "View_Toggle_uniqueattr_96", "View_Toggle_uniqueattr_97", "View_Toggle_uniqueattr_98", "View_Toggle_uniqueattr_99", "View_Toggle_uniqueattr_100",
  "View_Toggle_uniqueattr_101", "View_Toggle_uniqueattr_102", "View_Toggle_uniqueattr_103", "View_Toggle_uniqueattr_104", "View_Toggle_uniqueattr_105",
  "View_Toggle_uniqueattr_106", "View_Toggle_uniqueattr_107", "View_Toggle_uniqueattr_108", "View_Toggle_uniqueattr_109", "View_Toggle_uniqueattr_110",
  "View_Toggle_uniqueattr_111", "View_Toggle_uniqueattr_112", "View_Toggle_uniqueattr_113", "View_Toggle_uniqueattr_114", "View_Toggle_uniqueattr_115",
  "View_Toggle_uniqueattr_116", "View_Toggle_uniqueattr_117", "View_Toggle_uniqueattr_118", "View_Toggle_uniqueattr_119", "View_Toggle_uniqueattr_120",
  "View_Toggle_uniqueattr_121" ],
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
