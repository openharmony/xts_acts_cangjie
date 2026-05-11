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

package ohos_app_cangjie_entry.GItem_rowStart_rowEnd

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
class index_GItem_rowStart_rowEnd {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridItem_rowStart_rowEnd1", "View_GridItem_rowStart_rowEnd2", "View_GridItem_rowStart_rowEnd3", "View_GridItem_rowStart_rowEnd4", "View_GridItem_rowStart_rowEnd5",
  "View_GridItem_rowStart_rowEnd6", "View_GridItem_rowStart_rowEnd7", "View_GridItem_rowStart_rowEnd8", "View_GridItem_rowStart_rowEnd9", "View_GridItem_rowStart_rowEnd10",
  "View_GridItem_rowStart_rowEnd11", "View_GridItem_rowStart_rowEnd12", "View_GridItem_rowStart_rowEnd13", "View_GridItem_rowStart_rowEnd14", "View_GridItem_rowStart_rowEnd15",
  "View_GridItem_rowStart_rowEnd16", "View_GridItem_rowStart_rowEnd17", "View_GridItem_rowStart_rowEnd18", "View_GridItem_rowStart_rowEnd19", "View_GridItem_rowStart_rowEnd20",
  "View_GridItem_rowStart_rowEnd21", "View_GridItem_rowStart_rowEnd22", "View_GridItem_rowStart_rowEnd23", "View_GridItem_rowStart_rowEnd24", "View_GridItem_rowStart_rowEnd25",
  "View_GridItem_rowStart_rowEnd26", "View_GridItem_rowStart_rowEnd27", "View_GridItem_rowStart_rowEnd28", "View_GridItem_rowStart_rowEnd29", "View_GridItem_rowStart_rowEnd30",
  "View_GridItem_rowStart_rowEnd31", "View_GridItem_rowStart_rowEnd32", "View_GridItem_rowStart_rowEnd33", "View_GridItem_rowStart_rowEnd34", "View_GridItem_rowStart_rowEnd35",
  "View_GridItem_rowStart_rowEnd36" ],
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
