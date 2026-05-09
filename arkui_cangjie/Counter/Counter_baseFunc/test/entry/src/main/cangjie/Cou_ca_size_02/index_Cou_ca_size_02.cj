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

package ohos_app_cangjie_entry.Cou_ca_size_02

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
class index_Cou_ca_size_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Counter_comattr_size22_1", "View_Counter_comattr_size22_2", "View_Counter_comattr_size22_3", "View_Counter_comattr_size22_4", "View_Counter_comattr_size22_5",
  "View_Counter_comattr_size22_6", "View_Counter_comattr_size22_7", "View_Counter_comattr_size22_8", "View_Counter_comattr_size22_9", "View_Counter_comattr_size22_10",
  "View_Counter_comattr_size22_11", "View_Counter_comattr_size22_12", "View_Counter_comattr_size22_13", "View_Counter_comattr_size22_14", "View_Counter_comattr_size22_15",
  "View_Counter_comattr_size22_16", "View_Counter_comattr_size22_17", "View_Counter_comattr_size22_18", "View_Counter_comattr_size22_19", "View_Counter_comattr_size22_20",
  "View_Counter_comattr_size22_21", "View_Counter_comattr_size22_22", "View_Counter_comattr_size22_23", "View_Counter_comattr_size22_24", "View_Counter_comattr_size22_25",
  "View_Counter_comattr_size22_26", "View_Counter_comattr_size22_27", "View_Counter_comattr_size22_28", "View_Counter_comattr_size22_29", "View_Counter_comattr_size22_30",
  "View_Counter_comattr_size22_31", "View_Counter_comattr_size22_32", "View_Counter_comattr_size22_33", "View_Counter_comattr_size22_34", "View_Counter_comattr_size22_35",
  "View_Counter_comattr_size22_36", "View_Counter_comattr_size22_37", "View_Counter_comattr_size22_38", "View_Counter_comattr_size22_39", "View_Counter_comattr_size22_40",
  "View_Counter_comattr_size22_41", "View_Counter_comattr_size22_42", "View_Counter_comattr_size22_43", "View_Counter_comattr_size22_44", "View_Counter_comattr_size22_45",
  "View_Counter_comattr_size22_46", "View_Counter_comattr_size22_47", "View_Counter_comattr_size22_48", "View_Counter_comattr_size22_49", "View_Counter_comattr_size22_50",
  "View_Counter_comattr_size22_51", "View_Counter_comattr_size22_52", "View_Counter_comattr_size22_53", "View_Counter_comattr_size22_54", "View_Counter_comattr_size22_55",
  "View_Counter_comattr_size22_56", "View_Counter_comattr_size22_57", "View_Counter_comattr_size22_58", "View_Counter_comattr_size22_59", "View_Counter_comattr_size22_60",
  "View_Counter_comattr_size22_61", "View_Counter_comattr_size22_62", "View_Counter_comattr_size22_63", "View_Counter_comattr_size22_64", "View_Counter_comattr_size22_65",
  "View_Counter_comattr_size22_66", "View_Counter_comattr_size22_67", "View_Counter_comattr_size22_68", "View_Counter_comattr_size22_69", "View_Counter_comattr_size22_70",
  "View_Counter_comattr_size22_71", "View_Counter_comattr_size22_72", "View_Counter_comattr_size22_73", "View_Counter_comattr_size22_74", "View_Counter_comattr_size22_75",
  "View_Counter_comattr_size22_76", "View_Counter_comattr_size22_77", "View_Counter_comattr_size22_78", "View_Counter_comattr_size22_79", "View_Counter_comattr_size22_80",
  "View_Counter_comattr_size22_81", "View_Counter_comattr_size22_82", "View_Counter_comattr_size22_83", "View_Counter_comattr_size22_84", "View_Counter_comattr_size22_85",
  "View_Counter_comattr_size22_86", "View_Counter_comattr_size22_87", "View_Counter_comattr_size22_88", "View_Counter_comattr_size22_89", "View_Counter_comattr_size22_90",
  "View_Counter_comattr_size22_91", "View_Counter_comattr_size22_92", "View_Counter_comattr_size22_93", "View_Counter_comattr_size22_94", "View_Counter_comattr_size22_95",
  "View_Counter_comattr_size22_96", "View_Counter_comattr_size22_97", "View_Counter_comattr_size22_98", "View_Counter_comattr_size22_99", "View_Counter_comattr_size22_100" ],
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
