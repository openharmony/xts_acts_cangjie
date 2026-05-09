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

package ohos_app_cangjie_entry.Prog_init1_01

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
class index_Prog_init1_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Progress_init1_1", "View_Progress_init1_2", "View_Progress_init1_3", "View_Progress_init1_4", "View_Progress_init1_5",
  "View_Progress_init1_6", "View_Progress_init1_7", "View_Progress_init1_8", "View_Progress_init1_9", "View_Progress_init1_10",
  "View_Progress_init1_11", "View_Progress_init1_12", "View_Progress_init1_13", "View_Progress_init1_14", "View_Progress_init1_15",
  "View_Progress_init1_16", "View_Progress_init1_17", "View_Progress_init1_18", "View_Progress_init1_19", "View_Progress_init1_20",
  "View_Progress_init1_21", "View_Progress_init1_22", "View_Progress_init1_23", "View_Progress_init1_24", "View_Progress_init1_25",
  "View_Progress_init1_26", "View_Progress_init1_27", "View_Progress_init1_28", "View_Progress_init1_29", "View_Progress_init1_30",
  "View_Progress_init1_31", "View_Progress_init1_32", "View_Progress_init1_33", "View_Progress_init1_34", "View_Progress_init1_35",
  "View_Progress_init1_36", "View_Progress_init1_37", "View_Progress_init1_38", "View_Progress_init1_39", "View_Progress_init1_40",
  "View_Progress_init1_41", "View_Progress_init1_42", "View_Progress_init1_43", "View_Progress_init1_44", "View_Progress_init1_45",
  "View_Progress_init1_46", "View_Progress_init1_47", "View_Progress_init1_48", "View_Progress_init1_49", "View_Progress_init1_50" ],
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
