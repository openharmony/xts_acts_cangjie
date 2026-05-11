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

package ohos_app_cangjie_entry.SBCon_uniqueattr_03

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
class index_SBCon_uniqueattr_03 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_SideBarContainer_uniqueattr3_1", "View_SideBarContainer_uniqueattr3_2", "View_SideBarContainer_uniqueattr3_3", "View_SideBarContainer_uniqueattr3_4", "View_SideBarContainer_uniqueattr3_5",
  "View_SideBarContainer_uniqueattr3_6", "View_SideBarContainer_uniqueattr3_7", "View_SideBarContainer_uniqueattr3_8", "View_SideBarContainer_uniqueattr3_9", "View_SideBarContainer_uniqueattr3_10",
  "View_SideBarContainer_uniqueattr3_11", "View_SideBarContainer_uniqueattr3_12", "View_SideBarContainer_uniqueattr3_13", "View_SideBarContainer_uniqueattr3_14", "View_SideBarContainer_uniqueattr3_15",
  "View_SideBarContainer_uniqueattr3_16", "View_SideBarContainer_uniqueattr3_17", "View_SideBarContainer_uniqueattr3_18", "View_SideBarContainer_uniqueattr3_19", "View_SideBarContainer_uniqueattr3_20",
  "View_SideBarContainer_uniqueattr3_21", "View_SideBarContainer_uniqueattr3_22", "View_SideBarContainer_uniqueattr3_23", "View_SideBarContainer_uniqueattr3_24", "View_SideBarContainer_uniqueattr3_25",
  "View_SideBarContainer_uniqueattr3_26" ],
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
