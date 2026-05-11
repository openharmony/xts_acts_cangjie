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

package ohos_app_cangjie_entry.Shape_ca_width_height_02

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
class index_Shape_ca_width_height_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Shape_comattr_width_height2_1", "View_Shape_comattr_width_height2_2", "View_Shape_comattr_width_height2_3", "View_Shape_comattr_width_height2_4", "View_Shape_comattr_width_height2_5",
  "View_Shape_comattr_width_height2_6", "View_Shape_comattr_width_height2_7", "View_Shape_comattr_width_height2_8", "View_Shape_comattr_width_height2_9", "View_Shape_comattr_width_height2_10",
  "View_Shape_comattr_width_height2_11", "View_Shape_comattr_width_height2_12", "View_Shape_comattr_width_height2_13", "View_Shape_comattr_width_height2_14", "View_Shape_comattr_width_height2_15",
  "View_Shape_comattr_width_height2_16", "View_Shape_comattr_width_height2_17", "View_Shape_comattr_width_height2_18", "View_Shape_comattr_width_height2_19", "View_Shape_comattr_width_height2_20",
  "View_Shape_comattr_width_height2_21", "View_Shape_comattr_width_height2_22", "View_Shape_comattr_width_height2_23", "View_Shape_comattr_width_height2_24", "View_Shape_comattr_width_height2_25",
  "View_Shape_comattr_width_height2_26", "View_Shape_comattr_width_height2_27", "View_Shape_comattr_width_height2_28", "View_Shape_comattr_width_height2_29", "View_Shape_comattr_width_height2_30",
  "View_Shape_comattr_width_height2_31", "View_Shape_comattr_width_height2_32", "View_Shape_comattr_width_height2_33", "View_Shape_comattr_width_height2_34", "View_Shape_comattr_width_height2_35",
  "View_Shape_comattr_width_height2_36", "View_Shape_comattr_width_height2_37", "View_Shape_comattr_width_height2_38", "View_Shape_comattr_width_height2_39", "View_Shape_comattr_width_height2_40",
  "View_Shape_comattr_width_height2_41", "View_Shape_comattr_width_height2_42", "View_Shape_comattr_width_height2_43", "View_Shape_comattr_width_height2_44", "View_Shape_comattr_width_height2_45",
  "View_Shape_comattr_width_height2_46", "View_Shape_comattr_width_height2_47", "View_Shape_comattr_width_height2_48", "View_Shape_comattr_width_height2_49", "View_Shape_comattr_width_height2_50",
  "View_Shape_comattr_width_height2_51", "View_Shape_comattr_width_height2_52", "View_Shape_comattr_width_height2_53", "View_Shape_comattr_width_height2_54", "View_Shape_comattr_width_height2_55",
  "View_Shape_comattr_width_height2_56", "View_Shape_comattr_width_height2_57", "View_Shape_comattr_width_height2_58", "View_Shape_comattr_width_height2_59", "View_Shape_comattr_width_height2_60",
  "View_Shape_comattr_width_height2_61", "View_Shape_comattr_width_height2_62", "View_Shape_comattr_width_height2_63", "View_Shape_comattr_width_height2_64", "View_Shape_comattr_width_height2_65",
  "View_Shape_comattr_width_height2_66", "View_Shape_comattr_width_height2_67", "View_Shape_comattr_width_height2_68", "View_Shape_comattr_width_height2_69", "View_Shape_comattr_width_height2_70",
  "View_Shape_comattr_width_height2_71", "View_Shape_comattr_width_height2_72", "View_Shape_comattr_width_height2_73", "View_Shape_comattr_width_height2_74", "View_Shape_comattr_width_height2_75",
  "View_Shape_comattr_width_height2_76", "View_Shape_comattr_width_height2_77", "View_Shape_comattr_width_height2_78", "View_Shape_comattr_width_height2_79", "View_Shape_comattr_width_height2_80",
  "View_Shape_comattr_width_height2_81", "View_Shape_comattr_width_height2_82", "View_Shape_comattr_width_height2_83", "View_Shape_comattr_width_height2_84", "View_Shape_comattr_width_height2_85",
  "View_Shape_comattr_width_height2_86", "View_Shape_comattr_width_height2_87", "View_Shape_comattr_width_height2_88", "View_Shape_comattr_width_height2_89", "View_Shape_comattr_width_height2_90",
  "View_Shape_comattr_width_height2_91", "View_Shape_comattr_width_height2_92", "View_Shape_comattr_width_height2_93", "View_Shape_comattr_width_height2_94", "View_Shape_comattr_width_height2_95",
  "View_Shape_comattr_width_height2_96", "View_Shape_comattr_width_height2_97", "View_Shape_comattr_width_height2_98", "View_Shape_comattr_width_height2_99", "View_Shape_comattr_width_height2_100" ],
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
