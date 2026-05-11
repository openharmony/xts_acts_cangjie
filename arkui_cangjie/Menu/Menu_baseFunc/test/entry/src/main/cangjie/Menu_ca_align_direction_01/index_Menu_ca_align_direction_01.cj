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

package ohos_app_cangjie_entry.Menu_ca_align_direction_01

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
class index_Menu_ca_align_direction_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Menu_comattr_align_dire_1", "View_Menu_comattr_align_dire_2", "View_Menu_comattr_align_dire_3", "View_Menu_comattr_align_dire_4", "View_Menu_comattr_align_dire_5",
  "View_Menu_comattr_align_dire_6", "View_Menu_comattr_align_dire_7", "View_Menu_comattr_align_dire_8", "View_Menu_comattr_align_dire_9", "View_Menu_comattr_align_dire_10",
  "View_Menu_comattr_align_dire_11", "View_Menu_comattr_align_dire_12", "View_Menu_comattr_align_dire_13", "View_Menu_comattr_align_dire_14", "View_Menu_comattr_align_dire_15",
  "View_Menu_comattr_align_dire_16", "View_Menu_comattr_align_dire_17", "View_Menu_comattr_align_dire_18", "View_Menu_comattr_align_dire_19", "View_Menu_comattr_align_dire_20",
  "View_Menu_comattr_align_dire_21", "View_Menu_comattr_align_dire_22", "View_Menu_comattr_align_dire_23", "View_Menu_comattr_align_dire_24", "View_Menu_comattr_align_dire_25",
  "View_Menu_comattr_align_dire_26", "View_Menu_comattr_align_dire_27" ],
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
