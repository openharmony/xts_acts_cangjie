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

package ohos_app_cangjie_entry.GItem_columnStart_columnEnd

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
class index_GItem_columnStart_columnEnd {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridItem_columnStart_columnEnd1", "View_GridItem_columnStart_columnEnd2", "View_GridItem_columnStart_columnEnd3", "View_GridItem_columnStart_columnEnd4", "View_GridItem_columnStart_columnEnd5",
  "View_GridItem_columnStart_columnEnd6", "View_GridItem_columnStart_columnEnd7", "View_GridItem_columnStart_columnEnd8", "View_GridItem_columnStart_columnEnd9", "View_GridItem_columnStart_columnEnd10",
  "View_GridItem_columnStart_columnEnd11", "View_GridItem_columnStart_columnEnd12", "View_GridItem_columnStart_columnEnd13", "View_GridItem_columnStart_columnEnd14", "View_GridItem_columnStart_columnEnd15",
  "View_GridItem_columnStart_columnEnd16", "View_GridItem_columnStart_columnEnd17", "View_GridItem_columnStart_columnEnd18", "View_GridItem_columnStart_columnEnd19", "View_GridItem_columnStart_columnEnd20",
  "View_GridItem_columnStart_columnEnd21", "View_GridItem_columnStart_columnEnd22", "View_GridItem_columnStart_columnEnd23", "View_GridItem_columnStart_columnEnd24", "View_GridItem_columnStart_columnEnd25",
  "View_GridItem_columnStart_columnEnd26", "View_GridItem_columnStart_columnEnd27", "View_GridItem_columnStart_columnEnd28", "View_GridItem_columnStart_columnEnd29", "View_GridItem_columnStart_columnEnd30",
  "View_GridItem_columnStart_columnEnd31", "View_GridItem_columnStart_columnEnd32", "View_GridItem_columnStart_columnEnd33", "View_GridItem_columnStart_columnEnd34", "View_GridItem_columnStart_columnEnd35",
  "View_GridItem_columnStart_columnEnd36" ],
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
