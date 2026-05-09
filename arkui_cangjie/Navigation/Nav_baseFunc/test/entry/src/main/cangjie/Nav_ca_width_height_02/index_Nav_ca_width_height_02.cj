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

package ohos_app_cangjie_entry.Nav_ca_width_height_02

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
class index_Nav_ca_width_height_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Navigation_comattr_width_height2222_1", "View_Navigation_comattr_width_height2222_2", "View_Navigation_comattr_width_height2222_3", "View_Navigation_comattr_width_height2222_4", "View_Navigation_comattr_width_height2222_5",
  "View_Navigation_comattr_width_height2222_6", "View_Navigation_comattr_width_height2222_7", "View_Navigation_comattr_width_height2222_8", "View_Navigation_comattr_width_height2222_9", "View_Navigation_comattr_width_height2222_10",
  "View_Navigation_comattr_width_height2222_11", "View_Navigation_comattr_width_height2222_12", "View_Navigation_comattr_width_height2222_13", "View_Navigation_comattr_width_height2222_14", "View_Navigation_comattr_width_height2222_15",
  "View_Navigation_comattr_width_height2222_16", "View_Navigation_comattr_width_height2222_17", "View_Navigation_comattr_width_height2222_18", "View_Navigation_comattr_width_height2222_19", "View_Navigation_comattr_width_height2222_20",
  "View_Navigation_comattr_width_height2222_21", "View_Navigation_comattr_width_height2222_22", "View_Navigation_comattr_width_height2222_23", "View_Navigation_comattr_width_height2222_24", "View_Navigation_comattr_width_height2222_25",
  "View_Navigation_comattr_width_height2222_26", "View_Navigation_comattr_width_height2222_27", "View_Navigation_comattr_width_height2222_28", "View_Navigation_comattr_width_height2222_29", "View_Navigation_comattr_width_height2222_30",
  "View_Navigation_comattr_width_height2222_31", "View_Navigation_comattr_width_height2222_32", "View_Navigation_comattr_width_height2222_33", "View_Navigation_comattr_width_height2222_34", "View_Navigation_comattr_width_height2222_35",
  "View_Navigation_comattr_width_height2222_36", "View_Navigation_comattr_width_height2222_37", "View_Navigation_comattr_width_height2222_38", "View_Navigation_comattr_width_height2222_39", "View_Navigation_comattr_width_height2222_40",
  "View_Navigation_comattr_width_height2222_41", "View_Navigation_comattr_width_height2222_42", "View_Navigation_comattr_width_height2222_43", "View_Navigation_comattr_width_height2222_44", "View_Navigation_comattr_width_height2222_45",
  "View_Navigation_comattr_width_height2222_46", "View_Navigation_comattr_width_height2222_47", "View_Navigation_comattr_width_height2222_48", "View_Navigation_comattr_width_height2222_49", "View_Navigation_comattr_width_height2222_50",
  "View_Navigation_comattr_width_height2222_51", "View_Navigation_comattr_width_height2222_52", "View_Navigation_comattr_width_height2222_53", "View_Navigation_comattr_width_height2222_54", "View_Navigation_comattr_width_height2222_55",
  "View_Navigation_comattr_width_height2222_56", "View_Navigation_comattr_width_height2222_57", "View_Navigation_comattr_width_height2222_58", "View_Navigation_comattr_width_height2222_59", "View_Navigation_comattr_width_height2222_60",
  "View_Navigation_comattr_width_height2222_61", "View_Navigation_comattr_width_height2222_62", "View_Navigation_comattr_width_height2222_63", "View_Navigation_comattr_width_height2222_64", "View_Navigation_comattr_width_height2222_65",
  "View_Navigation_comattr_width_height2222_66", "View_Navigation_comattr_width_height2222_67", "View_Navigation_comattr_width_height2222_68", "View_Navigation_comattr_width_height2222_69", "View_Navigation_comattr_width_height2222_70",
  "View_Navigation_comattr_width_height2222_71", "View_Navigation_comattr_width_height2222_72", "View_Navigation_comattr_width_height2222_73", "View_Navigation_comattr_width_height2222_74", "View_Navigation_comattr_width_height2222_75",
  "View_Navigation_comattr_width_height2222_76", "View_Navigation_comattr_width_height2222_77", "View_Navigation_comattr_width_height2222_78", "View_Navigation_comattr_width_height2222_79", "View_Navigation_comattr_width_height2222_80",
  "View_Navigation_comattr_width_height2222_81", "View_Navigation_comattr_width_height2222_82", "View_Navigation_comattr_width_height2222_83", "View_Navigation_comattr_width_height2222_84", "View_Navigation_comattr_width_height2222_85",
  "View_Navigation_comattr_width_height2222_86", "View_Navigation_comattr_width_height2222_87", "View_Navigation_comattr_width_height2222_88", "View_Navigation_comattr_width_height2222_89", "View_Navigation_comattr_width_height2222_90",
  "View_Navigation_comattr_width_height2222_91", "View_Navigation_comattr_width_height2222_92", "View_Navigation_comattr_width_height2222_93", "View_Navigation_comattr_width_height2222_94", "View_Navigation_comattr_width_height2222_95",
  "View_Navigation_comattr_width_height2222_96", "View_Navigation_comattr_width_height2222_97", "View_Navigation_comattr_width_height2222_98", "View_Navigation_comattr_width_height2222_99", "View_Navigation_comattr_width_height2222_100" ],
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
