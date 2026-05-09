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

package ohos_app_cangjie_entry.ListItemGroup_init

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
class index_ListItemGroup_init {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_ListItemGroup_init_1", "View_ListItemGroup_init_2", "View_ListItemGroup_init_3", "View_ListItemGroup_init_4", "View_ListItemGroup_init_5",
  "View_ListItemGroup_init_6", "View_ListItemGroup_init_7", "View_ListItemGroup_init_8", "View_ListItemGroup_init_9", "View_ListItemGroup_init_10",
  "View_ListItemGroup_init_11", "View_ListItemGroup_init_12", "View_ListItemGroup_init_13", "View_ListItemGroup_init_14", "View_ListItemGroup_init_15",
  "View_ListItemGroup_init_16", "View_ListItemGroup_init_17", "View_ListItemGroup_init_18", "View_ListItemGroup_init_19", "View_ListItemGroup_init_20",
  "View_ListItemGroup_init_21", "View_ListItemGroup_init_22", "View_ListItemGroup_init_23", "View_ListItemGroup_init_24", "View_ListItemGroup_init_25",
  "View_ListItemGroup_init_26", "View_ListItemGroup_init_27", "View_ListItemGroup_init_28", "View_ListItemGroup_init_29", "View_ListItemGroup_init_30",
  "View_ListItemGroup_init_31", "View_ListItemGroup_init_32", "View_ListItemGroup_init_33", "View_ListItemGroup_init_34", "View_ListItemGroup_init_35",
  "View_ListItemGroup_init_36", "View_ListItemGroup_init_37", "View_ListItemGroup_init_38", "View_ListItemGroup_init_39", "View_ListItemGroup_init_40" ],
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
