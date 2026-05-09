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

package ohos_app_cangjie_entry.Text_uniqueattr_02

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
class index_Text_uniqueattr_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Text_uniqueattr_1", "View_Text_uniqueattr_2", "View_Text_uniqueattr_3", "View_Text_uniqueattr_4", "View_Text_uniqueattr_5",
  "View_Text_uniqueattr_6", "View_Text_uniqueattr_7", "View_Text_uniqueattr_8", "View_Text_uniqueattr_9", "View_Text_uniqueattr_10",
  "View_Text_uniqueattr_11", "View_Text_uniqueattr_12", "View_Text_uniqueattr_13", "View_Text_uniqueattr_14", "View_Text_uniqueattr_15",
  "View_Text_uniqueattr_16", "View_Text_uniqueattr_17", "View_Text_uniqueattr_18", "View_Text_uniqueattr_19", "View_Text_uniqueattr_20",
  "View_Text_uniqueattr_21", "View_Text_uniqueattr_22", "View_Text_uniqueattr_23", "View_Text_uniqueattr_24", "View_Text_uniqueattr_25",
  "View_Text_uniqueattr_26", "View_Text_uniqueattr_27", "View_Text_uniqueattr_28", "View_Text_uniqueattr_29", "View_Text_uniqueattr_30",
  "View_Text_uniqueattr_31", "View_Text_uniqueattr_32", "View_Text_uniqueattr_33", "View_Text_uniqueattr_34", "View_Text_uniqueattr_35",
  "View_Text_uniqueattr_36", "View_Text_uniqueattr_37", "View_Text_uniqueattr_38", "View_Text_uniqueattr_39", "View_Text_uniqueattr_40",
  "View_Text_uniqueattr_41", "View_Text_uniqueattr_42", "View_Text_uniqueattr_43", "View_Text_uniqueattr_44", "View_Text_uniqueattr_45",
  "View_Text_uniqueattr_46", "View_Text_uniqueattr_47", "View_Text_uniqueattr_48", "View_Text_uniqueattr_49", "View_Text_uniqueattr_50",
  "View_Text_uniqueattr_51", "View_Text_uniqueattr_52", "View_Text_uniqueattr_53", "View_Text_uniqueattr_54", "View_Text_uniqueattr_55" ],
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
