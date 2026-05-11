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

package ohos_app_cangjie_entry.PLoc_Uniqueattr_03

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
class index_PLoc_Uniqueattr_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_PatternLock_uniqueattr03_1", "View_PatternLock_uniqueattr03_2", "View_PatternLock_uniqueattr03_3", "View_PatternLock_uniqueattr03_4", "View_PatternLock_uniqueattr03_5",
  "View_PatternLock_uniqueattr03_6", "View_PatternLock_uniqueattr03_7", "View_PatternLock_uniqueattr03_8", "View_PatternLock_uniqueattr03_9", "View_PatternLock_uniqueattr03_10",
  "View_PatternLock_uniqueattr03_11", "View_PatternLock_uniqueattr03_12", "View_PatternLock_uniqueattr03_13", "View_PatternLock_uniqueattr03_14", "View_PatternLock_uniqueattr03_15",
  "View_PatternLock_uniqueattr03_16", "View_PatternLock_uniqueattr03_17", "View_PatternLock_uniqueattr03_18", "View_PatternLock_uniqueattr03_19", "View_PatternLock_uniqueattr03_20",
  "View_PatternLock_uniqueattr03_21", "View_PatternLock_uniqueattr03_22", "View_PatternLock_uniqueattr03_23", "View_PatternLock_uniqueattr03_24", "View_PatternLock_uniqueattr03_25",
  "View_PatternLock_uniqueattr03_26", "View_PatternLock_uniqueattr03_27", "View_PatternLock_uniqueattr03_28", "View_PatternLock_uniqueattr03_29", "View_PatternLock_uniqueattr03_30",
  "View_PatternLock_uniqueattr03_31", "View_PatternLock_uniqueattr03_32", "View_PatternLock_uniqueattr03_33", "View_PatternLock_uniqueattr03_34", "View_PatternLock_uniqueattr03_35",
  "View_PatternLock_uniqueattr03_36", "View_PatternLock_uniqueattr03_37", "View_PatternLock_uniqueattr03_38", "View_PatternLock_uniqueattr03_39", "View_PatternLock_uniqueattr03_40",
  "View_PatternLock_uniqueattr03_41", "View_PatternLock_uniqueattr03_42", "View_PatternLock_uniqueattr03_43", "View_PatternLock_uniqueattr03_44", "View_PatternLock_uniqueattr03_45",
  "View_PatternLock_uniqueattr03_46", "View_PatternLock_uniqueattr03_47", "View_PatternLock_uniqueattr03_48", "View_PatternLock_uniqueattr03_49", "View_PatternLock_uniqueattr03_50",
  "View_PatternLock_uniqueattr03_51", "View_PatternLock_uniqueattr03_52", "View_PatternLock_uniqueattr03_53", "View_PatternLock_uniqueattr03_54", "View_PatternLock_uniqueattr03_55",
  "View_PatternLock_uniqueattr03_56", "View_PatternLock_uniqueattr03_57", "View_PatternLock_uniqueattr03_58", "View_PatternLock_uniqueattr03_59", "View_PatternLock_uniqueattr03_60",
  "View_PatternLock_uniqueattr03_61", "View_PatternLock_uniqueattr03_62", "View_PatternLock_uniqueattr03_63", "View_PatternLock_uniqueattr03_64", "View_PatternLock_uniqueattr03_65",
  "View_PatternLock_uniqueattr03_66", "View_PatternLock_uniqueattr03_67", "View_PatternLock_uniqueattr03_68", "View_PatternLock_uniqueattr03_69", "View_PatternLock_uniqueattr03_70",
  "View_PatternLock_uniqueattr03_71", "View_PatternLock_uniqueattr03_72", "View_PatternLock_uniqueattr03_73", "View_PatternLock_uniqueattr03_74", "View_PatternLock_uniqueattr03_75",
  "View_PatternLock_uniqueattr03_76", "View_PatternLock_uniqueattr03_77", "View_PatternLock_uniqueattr03_78", "View_PatternLock_uniqueattr03_79", "View_PatternLock_uniqueattr03_80",
  "View_PatternLock_uniqueattr03_81", "View_PatternLock_uniqueattr03_82", "View_PatternLock_uniqueattr03_83", "View_PatternLock_uniqueattr03_84", "View_PatternLock_uniqueattr03_85",
  "View_PatternLock_uniqueattr03_86", "View_PatternLock_uniqueattr03_87", "View_PatternLock_uniqueattr03_88", "View_PatternLock_uniqueattr03_89", "View_PatternLock_uniqueattr03_90",
  "View_PatternLock_uniqueattr03_91", "View_PatternLock_uniqueattr03_92", "View_PatternLock_uniqueattr03_93", "View_PatternLock_uniqueattr03_94", "View_PatternLock_uniqueattr03_95",
  "View_PatternLock_uniqueattr03_96", "View_PatternLock_uniqueattr03_97", "View_PatternLock_uniqueattr03_98", "View_PatternLock_uniqueattr03_99", "View_PatternLock_uniqueattr03_100" ],
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
