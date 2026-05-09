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

package ohos_app_cangjie_entry.NavDes_ca_overlay_01

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
class index_NavDes_ca_overlay_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_NavDes_comattr_overlay_1", "View_NavDes_comattr_overlay_2", "View_NavDes_comattr_overlay_3", "View_NavDes_comattr_overlay_4", "View_NavDes_comattr_overlay_5",
  "View_NavDes_comattr_overlay_6", "View_NavDes_comattr_overlay_7", "View_NavDes_comattr_overlay_8", "View_NavDes_comattr_overlay_9", "View_NavDes_comattr_overlay_10",
  "View_NavDes_comattr_overlay_11", "View_NavDes_comattr_overlay_12", "View_NavDes_comattr_overlay_13", "View_NavDes_comattr_overlay_14", "View_NavDes_comattr_overlay_15",
  "View_NavDes_comattr_overlay_16", "View_NavDes_comattr_overlay_17", "View_NavDes_comattr_overlay_18", "View_NavDes_comattr_overlay_19", "View_NavDes_comattr_overlay_20",
  "View_NavDes_comattr_overlay_21", "View_NavDes_comattr_overlay_22", "View_NavDes_comattr_overlay_23", "View_NavDes_comattr_overlay_24", "View_NavDes_comattr_overlay_25",
  "View_NavDes_comattr_overlay_26", "View_NavDes_comattr_overlay_27", "View_NavDes_comattr_overlay_28", "View_NavDes_comattr_overlay_29", "View_NavDes_comattr_overlay_30",
  "View_NavDes_comattr_overlay_31", "View_NavDes_comattr_overlay_32", "View_NavDes_comattr_overlay_33", "View_NavDes_comattr_overlay_34", "View_NavDes_comattr_overlay_35",
  "View_NavDes_comattr_overlay_36", "View_NavDes_comattr_overlay_37", "View_NavDes_comattr_overlay_38", "View_NavDes_comattr_overlay_39", "View_NavDes_comattr_overlay_40",
  "View_NavDes_comattr_overlay_41", "View_NavDes_comattr_overlay_42", "View_NavDes_comattr_overlay_43", "View_NavDes_comattr_overlay_44", "View_NavDes_comattr_overlay_45" ],
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
