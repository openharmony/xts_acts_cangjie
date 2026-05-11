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

package ohos_app_cangjie_entry.Gcol_uniqueattr_01

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
class index_Gcol_uniqueattr_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridCol_uniqueattr1_1", "View_GridCol_uniqueattr1_2", "View_GridCol_uniqueattr1_3", "View_GridCol_uniqueattr1_4", "View_GridCol_uniqueattr1_5",
  "View_GridCol_uniqueattr1_6", "View_GridCol_uniqueattr1_7", "View_GridCol_uniqueattr1_8", "View_GridCol_uniqueattr1_9", "View_GridCol_uniqueattr1_10",
  "View_GridCol_uniqueattr1_11", "View_GridCol_uniqueattr1_12", "View_GridCol_uniqueattr1_13", "View_GridCol_uniqueattr1_14", "View_GridCol_uniqueattr1_15",
  "View_GridCol_uniqueattr1_16", "View_GridCol_uniqueattr1_17", "View_GridCol_uniqueattr1_18", "View_GridCol_uniqueattr1_19", "View_GridCol_uniqueattr1_20",
  "View_GridCol_uniqueattr1_21", "View_GridCol_uniqueattr1_22", "View_GridCol_uniqueattr1_23", "View_GridCol_uniqueattr1_24", "View_GridCol_uniqueattr1_25",
  "View_GridCol_uniqueattr1_26", "View_GridCol_uniqueattr1_27", "View_GridCol_uniqueattr1_28", "View_GridCol_uniqueattr1_29", "View_GridCol_uniqueattr1_30",
  "View_GridCol_uniqueattr1_31", "View_GridCol_uniqueattr1_32", "View_GridCol_uniqueattr1_33", "View_GridCol_uniqueattr1_34", "View_GridCol_uniqueattr1_35",
  "View_GridCol_uniqueattr1_36" ],
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
