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

package ohos_app_cangjie_entry.Button_init3_03

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
class index_Button_init3_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Button_init3_1", "View_Button_init3_2", "View_Button_init3_3", "View_Button_init3_4", "View_Button_init3_5",
  "View_Button_init3_6", "View_Button_init3_7", "View_Button_init3_8", "View_Button_init3_9", "View_Button_init3_10",
  "View_Button_init3_11", "View_Button_init3_12", "View_Button_init3_13", "View_Button_init3_14", "View_Button_init3_15",
  "View_Button_init3_16", "View_Button_init3_17", "View_Button_init3_18", "View_Button_init3_19", "View_Button_init3_20",
  "View_Button_init3_21", "View_Button_init3_22", "View_Button_init3_23", "View_Button_init3_24", "View_Button_init3_25",
  "View_Button_init3_26", "View_Button_init3_27", "View_Button_init3_28", "View_Button_init3_29", "View_Button_init3_30",
  "View_Button_init3_31", "View_Button_init3_32", "View_Button_init3_33", "View_Button_init3_34", "View_Button_init3_35",
  "View_Button_init3_36", "View_Button_init3_37", "View_Button_init3_38", "View_Button_init3_39", "View_Button_init3_40",
  "View_Button_init3_41", "View_Button_init3_42", "View_Button_init3_43", "View_Button_init3_44", "View_Button_init3_45",
  "View_Button_init3_46", "View_Button_init3_47", "View_Button_init3_48", "View_Button_init3_49", "View_Button_init3_50",
  "View_Button_init3_51", "View_Button_init3_52", "View_Button_init3_53", "View_Button_init3_54", "View_Button_init3_55",
  "View_Button_init3_56", "View_Button_init3_57", "View_Button_init3_58", "View_Button_init3_59", "View_Button_init3_60",
  "View_Button_init3_61", "View_Button_init3_62", "View_Button_init3_63", "View_Button_init3_64", "View_Button_init3_65",
  "View_Button_init3_66", "View_Button_init3_67", "View_Button_init3_68", "View_Button_init3_69", "View_Button_init3_70",
  "View_Button_init3_71", "View_Button_init3_72", "View_Button_init3_73", "View_Button_init3_74", "View_Button_init3_75",
  "View_Button_init3_76", "View_Button_init3_77", "View_Button_init3_78", "View_Button_init3_79", "View_Button_init3_80",
  "View_Button_init3_81", "View_Button_init3_82", "View_Button_init3_83", "View_Button_init3_84", "View_Button_init3_85",
  "View_Button_init3_86", "View_Button_init3_87", "View_Button_init3_88", "View_Button_init3_89", "View_Button_init3_90",
  "View_Button_init3_91", "View_Button_init3_92", "View_Button_init3_93", "View_Button_init3_94", "View_Button_init3_95",
  "View_Button_init3_96" ],
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
