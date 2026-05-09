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

package ohos_app_cangjie_entry.Path_ca_radialgradient_01

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
class index_Path_ca_radialgradient_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Path_comattr_radialgradient_1", "View_Path_comattr_radialgradient_2", "View_Path_comattr_radialgradient_3", "View_Path_comattr_radialgradient_4", "View_Path_comattr_radialgradient_5",
  "View_Path_comattr_radialgradient_6", "View_Path_comattr_radialgradient_7", "View_Path_comattr_radialgradient_8", "View_Path_comattr_radialgradient_9", "View_Path_comattr_radialgradient_10",
  "View_Path_comattr_radialgradient_11", "View_Path_comattr_radialgradient_12", "View_Path_comattr_radialgradient_13", "View_Path_comattr_radialgradient_14", "View_Path_comattr_radialgradient_15",
  "View_Path_comattr_radialgradient_16", "View_Path_comattr_radialgradient_17", "View_Path_comattr_radialgradient_18", "View_Path_comattr_radialgradient_19", "View_Path_comattr_radialgradient_20" ],
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
