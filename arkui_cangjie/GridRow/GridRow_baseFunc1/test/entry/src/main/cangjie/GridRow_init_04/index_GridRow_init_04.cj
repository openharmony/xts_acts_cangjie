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

package ohos_app_cangjie_entry.GridRow_init_04

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
class index_GridRow_init_04 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_init4_1", "View_GridRow_init4_2", "View_GridRow_init4_3", "View_GridRow_init4_4", "View_GridRow_init4_5",
  "View_GridRow_init4_6", "View_GridRow_init4_7", "View_GridRow_init4_8", "View_GridRow_init4_9", "View_GridRow_init4_10",
  "View_GridRow_init4_11", "View_GridRow_init4_12", "View_GridRow_init4_13", "View_GridRow_init4_14", "View_GridRow_init4_15",
  "View_GridRow_init4_16", "View_GridRow_init4_17", "View_GridRow_init4_18", "View_GridRow_init4_19", "View_GridRow_init4_20",
  "View_GridRow_init4_21", "View_GridRow_init4_22", "View_GridRow_init4_23", "View_GridRow_init4_24", "View_GridRow_init4_25",
  "View_GridRow_init4_26", "View_GridRow_init4_27", "View_GridRow_init4_28", "View_GridRow_init4_29", "View_GridRow_init4_30",
  "View_GridRow_init4_31", "View_GridRow_init4_32", "View_GridRow_init4_33", "View_GridRow_init4_34", "View_GridRow_init4_35",
  "View_GridRow_init4_36", "View_GridRow_init4_37", "View_GridRow_init4_38", "View_GridRow_init4_39", "View_GridRow_init4_40",
  "View_GridRow_init4_41", "View_GridRow_init4_42", "View_GridRow_init4_43", "View_GridRow_init4_44", "View_GridRow_init4_45",
  "View_GridRow_init4_46", "View_GridRow_init4_47", "View_GridRow_init4_48", "View_GridRow_init4_49", "View_GridRow_init4_50",
  "View_GridRow_init4_51", "View_GridRow_init4_52", "View_GridRow_init4_53", "View_GridRow_init4_54", "View_GridRow_init4_55",
  "View_GridRow_init4_56", "View_GridRow_init4_57", "View_GridRow_init4_58", "View_GridRow_init4_59", "View_GridRow_init4_60",
  "View_GridRow_init4_61", "View_GridRow_init4_62", "View_GridRow_init4_63", "View_GridRow_init4_64", "View_GridRow_init4_65",
  "View_GridRow_init4_66", "View_GridRow_init4_67", "View_GridRow_init4_68", "View_GridRow_init4_69", "View_GridRow_init4_70",
  "View_GridRow_init4_71", "View_GridRow_init4_72", "View_GridRow_init4_73", "View_GridRow_init4_74", "View_GridRow_init4_75",
  "View_GridRow_init4_76", "View_GridRow_init4_77", "View_GridRow_init4_78", "View_GridRow_init4_79", "View_GridRow_init4_80",
  "View_GridRow_init4_81", "View_GridRow_init4_82", "View_GridRow_init4_83", "View_GridRow_init4_84", "View_GridRow_init4_85",
  "View_GridRow_init4_86", "View_GridRow_init4_87", "View_GridRow_init4_88", "View_GridRow_init4_89", "View_GridRow_init4_90",
  "View_GridRow_init4_91", "View_GridRow_init4_92", "View_GridRow_init4_93", "View_GridRow_init4_94", "View_GridRow_init4_95",
  "View_GridRow_init4_96", "View_GridRow_init4_97", "View_GridRow_init4_98", "View_GridRow_init4_99", "View_GridRow_init4_100",
  "View_GridRow_init4_101", "View_GridRow_init4_102", "View_GridRow_init4_103", "View_GridRow_init4_104", "View_GridRow_init4_105",
  "View_GridRow_init4_106", "View_GridRow_init4_107", "View_GridRow_init4_108", "View_GridRow_init4_109", "View_GridRow_init4_110",
  "View_GridRow_init4_111", "View_GridRow_init4_112", "View_GridRow_init4_113", "View_GridRow_init4_114", "View_GridRow_init4_115",
  "View_GridRow_init4_116", "View_GridRow_init4_117", "View_GridRow_init4_118", "View_GridRow_init4_119", "View_GridRow_init4_120" ],
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
