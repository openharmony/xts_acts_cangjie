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

package ohos_app_cangjie_entry.GriIt_ca_size_01

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
class index_GriIt_ca_size_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridItem_comattr_size_1", "View_GridItem_comattr_size_2", "View_GridItem_comattr_size_3", "View_GridItem_comattr_size_4", "View_GridItem_comattr_size_5",
  "View_GridItem_comattr_size_6", "View_GridItem_comattr_size_7", "View_GridItem_comattr_size_8", "View_GridItem_comattr_size_9", "View_GridItem_comattr_size_10",
  "View_GridItem_comattr_size_11", "View_GridItem_comattr_size_12", "View_GridItem_comattr_size_13", "View_GridItem_comattr_size_14", "View_GridItem_comattr_size_15",
  "View_GridItem_comattr_size_16", "View_GridItem_comattr_size_17", "View_GridItem_comattr_size_18", "View_GridItem_comattr_size_19", "View_GridItem_comattr_size_20",
  "View_GridItem_comattr_size_21", "View_GridItem_comattr_size_22", "View_GridItem_comattr_size_23", "View_GridItem_comattr_size_24", "View_GridItem_comattr_size_25",
  "View_GridItem_comattr_size_26", "View_GridItem_comattr_size_27", "View_GridItem_comattr_size_28", "View_GridItem_comattr_size_29", "View_GridItem_comattr_size_30",
  "View_GridItem_comattr_size_31", "View_GridItem_comattr_size_32", "View_GridItem_comattr_size_33", "View_GridItem_comattr_size_34", "View_GridItem_comattr_size_35",
  "View_GridItem_comattr_size_36", "View_GridItem_comattr_size_37", "View_GridItem_comattr_size_38", "View_GridItem_comattr_size_39", "View_GridItem_comattr_size_40",
  "View_GridItem_comattr_size_41", "View_GridItem_comattr_size_42", "View_GridItem_comattr_size_43", "View_GridItem_comattr_size_44", "View_GridItem_comattr_size_45",
  "View_GridItem_comattr_size_46", "View_GridItem_comattr_size_47", "View_GridItem_comattr_size_48", "View_GridItem_comattr_size_49", "View_GridItem_comattr_size_50",
  "View_GridItem_comattr_size_51", "View_GridItem_comattr_size_52", "View_GridItem_comattr_size_53", "View_GridItem_comattr_size_54", "View_GridItem_comattr_size_55",
  "View_GridItem_comattr_size_56", "View_GridItem_comattr_size_57", "View_GridItem_comattr_size_58", "View_GridItem_comattr_size_59", "View_GridItem_comattr_size_60",
  "View_GridItem_comattr_size_61", "View_GridItem_comattr_size_62", "View_GridItem_comattr_size_63", "View_GridItem_comattr_size_64", "View_GridItem_comattr_size_65",
  "View_GridItem_comattr_size_66", "View_GridItem_comattr_size_67", "View_GridItem_comattr_size_68", "View_GridItem_comattr_size_69", "View_GridItem_comattr_size_70",
  "View_GridItem_comattr_size_71", "View_GridItem_comattr_size_72", "View_GridItem_comattr_size_73", "View_GridItem_comattr_size_74", "View_GridItem_comattr_size_75",
  "View_GridItem_comattr_size_76", "View_GridItem_comattr_size_77", "View_GridItem_comattr_size_78", "View_GridItem_comattr_size_79", "View_GridItem_comattr_size_80",
  "View_GridItem_comattr_size_81", "View_GridItem_comattr_size_82", "View_GridItem_comattr_size_83", "View_GridItem_comattr_size_84", "View_GridItem_comattr_size_85",
  "View_GridItem_comattr_size_86", "View_GridItem_comattr_size_87", "View_GridItem_comattr_size_88", "View_GridItem_comattr_size_89", "View_GridItem_comattr_size_90",
  "View_GridItem_comattr_size_91", "View_GridItem_comattr_size_92", "View_GridItem_comattr_size_93", "View_GridItem_comattr_size_94", "View_GridItem_comattr_size_95",
  "View_GridItem_comattr_size_96", "View_GridItem_comattr_size_97", "View_GridItem_comattr_size_98", "View_GridItem_comattr_size_99", "View_GridItem_comattr_size_100" ],
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
