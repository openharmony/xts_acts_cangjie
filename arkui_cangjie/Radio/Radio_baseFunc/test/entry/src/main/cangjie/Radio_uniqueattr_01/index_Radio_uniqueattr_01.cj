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

package ohos_app_cangjie_entry.Radio_uniqueattr_01

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
class index_Radio_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Radio_uniqueattr_1", "View_Radio_uniqueattr_2", "View_Radio_uniqueattr_3", "View_Radio_uniqueattr_4", "View_Radio_uniqueattr_5",
  "View_Radio_uniqueattr_6", "View_Radio_uniqueattr_7", "View_Radio_uniqueattr_8", "View_Radio_uniqueattr_9", "View_Radio_uniqueattr_10",
  "View_Radio_uniqueattr_11", "View_Radio_uniqueattr_12", "View_Radio_uniqueattr_13", "View_Radio_uniqueattr_14", "View_Radio_uniqueattr_15",
  "View_Radio_uniqueattr_16", "View_Radio_uniqueattr_17", "View_Radio_uniqueattr_18", "View_Radio_uniqueattr_19", "View_Radio_uniqueattr_20",
  "View_Radio_uniqueattr_21", "View_Radio_uniqueattr_22", "View_Radio_uniqueattr_23", "View_Radio_uniqueattr_24", "View_Radio_uniqueattr_25",
  "View_Radio_uniqueattr_26", "View_Radio_uniqueattr_27", "View_Radio_uniqueattr_28", "View_Radio_uniqueattr_29", "View_Radio_uniqueattr_30",
  "View_Radio_uniqueattr_31", "View_Radio_uniqueattr_32", "View_Radio_uniqueattr_33", "View_Radio_uniqueattr_34", "View_Radio_uniqueattr_35",
  "View_Radio_uniqueattr_36", "View_Radio_uniqueattr_37", "View_Radio_uniqueattr_38", "View_Radio_uniqueattr_39", "View_Radio_uniqueattr_40",
  "View_Radio_uniqueattr_41", "View_Radio_uniqueattr_42", "View_Radio_uniqueattr_43", "View_Radio_uniqueattr_44", "View_Radio_uniqueattr_45",
  "View_Radio_uniqueattr_46", "View_Radio_uniqueattr_47", "View_Radio_uniqueattr_48", "View_Radio_uniqueattr_49", "View_Radio_uniqueattr_50",
  "View_Radio_uniqueattr_51", "View_Radio_uniqueattr_52", "View_Radio_uniqueattr_53", "View_Radio_uniqueattr_54", "View_Radio_uniqueattr_55",
  "View_Radio_uniqueattr_56", "View_Radio_uniqueattr_57", "View_Radio_uniqueattr_58", "View_Radio_uniqueattr_59", "View_Radio_uniqueattr_60",
  "View_Radio_uniqueattr_61", "View_Radio_uniqueattr_62", "View_Radio_uniqueattr_63", "View_Radio_uniqueattr_64", "View_Radio_uniqueattr_65",
  "View_Radio_uniqueattr_66", "View_Radio_uniqueattr_67", "View_Radio_uniqueattr_68", "View_Radio_uniqueattr_69", "View_Radio_uniqueattr_70",
  "View_Radio_uniqueattr_71", "View_Radio_uniqueattr_72", "View_Radio_uniqueattr_73", "View_Radio_uniqueattr_74", "View_Radio_uniqueattr_75",
  "View_Radio_uniqueattr_76", "View_Radio_uniqueattr_77", "View_Radio_uniqueattr_78", "View_Radio_uniqueattr_79", "View_Radio_uniqueattr_80",
  "View_Radio_uniqueattr_81", "View_Radio_uniqueattr_82", "View_Radio_uniqueattr_83", "View_Radio_uniqueattr_84", "View_Radio_uniqueattr_85",
  "View_Radio_uniqueattr_86", "View_Radio_uniqueattr_87", "View_Radio_uniqueattr_88", "View_Radio_uniqueattr_89", "View_Radio_uniqueattr_90",
  "View_Radio_uniqueattr_91", "View_Radio_uniqueattr_92", "View_Radio_uniqueattr_93", "View_Radio_uniqueattr_94", "View_Radio_uniqueattr_95",
  "View_Radio_uniqueattr_96", "View_Radio_uniqueattr_97", "View_Radio_uniqueattr_98" ],
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
