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

package ohos_app_cangjie_entry.Flex_ca_width_height_01

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
class index_Flex_ca_width_height_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Flex_comattr_width_height_1", "View_Flex_comattr_width_height_2", "View_Flex_comattr_width_height_3", "View_Flex_comattr_width_height_4", "View_Flex_comattr_width_height_5",
  "View_Flex_comattr_width_height_6", "View_Flex_comattr_width_height_7", "View_Flex_comattr_width_height_8", "View_Flex_comattr_width_height_9", "View_Flex_comattr_width_height_10",
  "View_Flex_comattr_width_height_11", "View_Flex_comattr_width_height_12", "View_Flex_comattr_width_height_13", "View_Flex_comattr_width_height_14", "View_Flex_comattr_width_height_15",
  "View_Flex_comattr_width_height_16", "View_Flex_comattr_width_height_17", "View_Flex_comattr_width_height_18", "View_Flex_comattr_width_height_19", "View_Flex_comattr_width_height_20",
  "View_Flex_comattr_width_height_21", "View_Flex_comattr_width_height_22", "View_Flex_comattr_width_height_23", "View_Flex_comattr_width_height_24", "View_Flex_comattr_width_height_25",
  "View_Flex_comattr_width_height_26", "View_Flex_comattr_width_height_27", "View_Flex_comattr_width_height_28", "View_Flex_comattr_width_height_29", "View_Flex_comattr_width_height_30",
  "View_Flex_comattr_width_height_31", "View_Flex_comattr_width_height_32", "View_Flex_comattr_width_height_33", "View_Flex_comattr_width_height_34", "View_Flex_comattr_width_height_35",
  "View_Flex_comattr_width_height_36", "View_Flex_comattr_width_height_37", "View_Flex_comattr_width_height_38", "View_Flex_comattr_width_height_39", "View_Flex_comattr_width_height_40",
  "View_Flex_comattr_width_height_41", "View_Flex_comattr_width_height_42", "View_Flex_comattr_width_height_43", "View_Flex_comattr_width_height_44", "View_Flex_comattr_width_height_45",
  "View_Flex_comattr_width_height_46", "View_Flex_comattr_width_height_47", "View_Flex_comattr_width_height_48", "View_Flex_comattr_width_height_49", "View_Flex_comattr_width_height_50",
  "View_Flex_comattr_width_height_51", "View_Flex_comattr_width_height_52", "View_Flex_comattr_width_height_53", "View_Flex_comattr_width_height_54", "View_Flex_comattr_width_height_55",
  "View_Flex_comattr_width_height_56", "View_Flex_comattr_width_height_57", "View_Flex_comattr_width_height_58", "View_Flex_comattr_width_height_59", "View_Flex_comattr_width_height_60",
  "View_Flex_comattr_width_height_61", "View_Flex_comattr_width_height_62", "View_Flex_comattr_width_height_63", "View_Flex_comattr_width_height_64", "View_Flex_comattr_width_height_65",
  "View_Flex_comattr_width_height_66", "View_Flex_comattr_width_height_67", "View_Flex_comattr_width_height_68", "View_Flex_comattr_width_height_69", "View_Flex_comattr_width_height_70",
  "View_Flex_comattr_width_height_71", "View_Flex_comattr_width_height_72", "View_Flex_comattr_width_height_73", "View_Flex_comattr_width_height_74", "View_Flex_comattr_width_height_75",
  "View_Flex_comattr_width_height_76", "View_Flex_comattr_width_height_77", "View_Flex_comattr_width_height_78", "View_Flex_comattr_width_height_79", "View_Flex_comattr_width_height_80",
  "View_Flex_comattr_width_height_81", "View_Flex_comattr_width_height_82", "View_Flex_comattr_width_height_83", "View_Flex_comattr_width_height_84", "View_Flex_comattr_width_height_85",
  "View_Flex_comattr_width_height_86", "View_Flex_comattr_width_height_87", "View_Flex_comattr_width_height_88", "View_Flex_comattr_width_height_89", "View_Flex_comattr_width_height_90",
  "View_Flex_comattr_width_height_91", "View_Flex_comattr_width_height_92", "View_Flex_comattr_width_height_93", "View_Flex_comattr_width_height_94", "View_Flex_comattr_width_height_95",
  "View_Flex_comattr_width_height_96", "View_Flex_comattr_width_height_97", "View_Flex_comattr_width_height_98", "View_Flex_comattr_width_height_99", "View_Flex_comattr_width_height_100" ],
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
