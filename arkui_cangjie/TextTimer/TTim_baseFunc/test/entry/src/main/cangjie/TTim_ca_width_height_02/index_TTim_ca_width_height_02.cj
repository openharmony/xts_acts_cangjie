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

package ohos_app_cangjie_entry.TTim_ca_width_height_02

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
class index_TTim_ca_width_height_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_TextTimer_comattr_width_height22_1", "View_TextTimer_comattr_width_height22_2", "View_TextTimer_comattr_width_height22_3", "View_TextTimer_comattr_width_height22_4", "View_TextTimer_comattr_width_height22_5",
  "View_TextTimer_comattr_width_height22_6", "View_TextTimer_comattr_width_height22_7", "View_TextTimer_comattr_width_height22_8", "View_TextTimer_comattr_width_height22_9", "View_TextTimer_comattr_width_height22_10",
  "View_TextTimer_comattr_width_height22_11", "View_TextTimer_comattr_width_height22_12", "View_TextTimer_comattr_width_height22_13", "View_TextTimer_comattr_width_height22_14", "View_TextTimer_comattr_width_height22_15",
  "View_TextTimer_comattr_width_height22_16", "View_TextTimer_comattr_width_height22_17", "View_TextTimer_comattr_width_height22_18", "View_TextTimer_comattr_width_height22_19", "View_TextTimer_comattr_width_height22_20",
  "View_TextTimer_comattr_width_height22_21", "View_TextTimer_comattr_width_height22_22", "View_TextTimer_comattr_width_height22_23", "View_TextTimer_comattr_width_height22_24", "View_TextTimer_comattr_width_height22_25",
  "View_TextTimer_comattr_width_height22_26", "View_TextTimer_comattr_width_height22_27", "View_TextTimer_comattr_width_height22_28", "View_TextTimer_comattr_width_height22_29", "View_TextTimer_comattr_width_height22_30",
  "View_TextTimer_comattr_width_height22_31", "View_TextTimer_comattr_width_height22_32", "View_TextTimer_comattr_width_height22_33", "View_TextTimer_comattr_width_height22_34", "View_TextTimer_comattr_width_height22_35",
  "View_TextTimer_comattr_width_height22_36", "View_TextTimer_comattr_width_height22_37", "View_TextTimer_comattr_width_height22_38", "View_TextTimer_comattr_width_height22_39", "View_TextTimer_comattr_width_height22_40",
  "View_TextTimer_comattr_width_height22_41", "View_TextTimer_comattr_width_height22_42", "View_TextTimer_comattr_width_height22_43", "View_TextTimer_comattr_width_height22_44", "View_TextTimer_comattr_width_height22_45",
  "View_TextTimer_comattr_width_height22_46", "View_TextTimer_comattr_width_height22_47", "View_TextTimer_comattr_width_height22_48", "View_TextTimer_comattr_width_height22_49", "View_TextTimer_comattr_width_height22_50",
  "View_TextTimer_comattr_width_height22_51", "View_TextTimer_comattr_width_height22_52", "View_TextTimer_comattr_width_height22_53", "View_TextTimer_comattr_width_height22_54", "View_TextTimer_comattr_width_height22_55",
  "View_TextTimer_comattr_width_height22_56", "View_TextTimer_comattr_width_height22_57", "View_TextTimer_comattr_width_height22_58", "View_TextTimer_comattr_width_height22_59", "View_TextTimer_comattr_width_height22_60",
  "View_TextTimer_comattr_width_height22_61", "View_TextTimer_comattr_width_height22_62", "View_TextTimer_comattr_width_height22_63", "View_TextTimer_comattr_width_height22_64", "View_TextTimer_comattr_width_height22_65",
  "View_TextTimer_comattr_width_height22_66", "View_TextTimer_comattr_width_height22_67", "View_TextTimer_comattr_width_height22_68", "View_TextTimer_comattr_width_height22_69", "View_TextTimer_comattr_width_height22_70",
  "View_TextTimer_comattr_width_height22_71", "View_TextTimer_comattr_width_height22_72", "View_TextTimer_comattr_width_height22_73", "View_TextTimer_comattr_width_height22_74", "View_TextTimer_comattr_width_height22_75",
  "View_TextTimer_comattr_width_height22_76", "View_TextTimer_comattr_width_height22_77", "View_TextTimer_comattr_width_height22_78", "View_TextTimer_comattr_width_height22_79", "View_TextTimer_comattr_width_height22_80",
  "View_TextTimer_comattr_width_height22_81", "View_TextTimer_comattr_width_height22_82", "View_TextTimer_comattr_width_height22_83", "View_TextTimer_comattr_width_height22_84", "View_TextTimer_comattr_width_height22_85",
  "View_TextTimer_comattr_width_height22_86", "View_TextTimer_comattr_width_height22_87", "View_TextTimer_comattr_width_height22_88", "View_TextTimer_comattr_width_height22_89", "View_TextTimer_comattr_width_height22_90",
  "View_TextTimer_comattr_width_height22_91", "View_TextTimer_comattr_width_height22_92", "View_TextTimer_comattr_width_height22_93", "View_TextTimer_comattr_width_height22_94", "View_TextTimer_comattr_width_height22_95",
  "View_TextTimer_comattr_width_height22_96", "View_TextTimer_comattr_width_height22_97", "View_TextTimer_comattr_width_height22_98", "View_TextTimer_comattr_width_height22_99", "View_TextTimer_comattr_width_height22_100" ],
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
