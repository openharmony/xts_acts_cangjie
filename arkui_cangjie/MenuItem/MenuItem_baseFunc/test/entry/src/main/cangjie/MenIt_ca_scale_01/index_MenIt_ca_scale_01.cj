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

package ohos_app_cangjie_entry.MenIt_ca_scale_01

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
class index_MenIt_ca_scale_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_MenuItem_comattr_scale_1", "View_MenuItem_comattr_scale_2", "View_MenuItem_comattr_scale_3", "View_MenuItem_comattr_scale_4", "View_MenuItem_comattr_scale_5",
  "View_MenuItem_comattr_scale_6", "View_MenuItem_comattr_scale_7", "View_MenuItem_comattr_scale_8", "View_MenuItem_comattr_scale_9", "View_MenuItem_comattr_scale_10",
  "View_MenuItem_comattr_scale_11", "View_MenuItem_comattr_scale_12", "View_MenuItem_comattr_scale_13", "View_MenuItem_comattr_scale_14", "View_MenuItem_comattr_scale_15",
  "View_MenuItem_comattr_scale_16", "View_MenuItem_comattr_scale_17", "View_MenuItem_comattr_scale_18", "View_MenuItem_comattr_scale_19", "View_MenuItem_comattr_scale_20",
  "View_MenuItem_comattr_scale_21", "View_MenuItem_comattr_scale_22", "View_MenuItem_comattr_scale_23", "View_MenuItem_comattr_scale_24", "View_MenuItem_comattr_scale_25",
  "View_MenuItem_comattr_scale_26", "View_MenuItem_comattr_scale_27", "View_MenuItem_comattr_scale_28", "View_MenuItem_comattr_scale_29", "View_MenuItem_comattr_scale_30",
  "View_MenuItem_comattr_scale_31", "View_MenuItem_comattr_scale_32", "View_MenuItem_comattr_scale_33", "View_MenuItem_comattr_scale_34", "View_MenuItem_comattr_scale_35",
  "View_MenuItem_comattr_scale_36", "View_MenuItem_comattr_scale_37", "View_MenuItem_comattr_scale_38", "View_MenuItem_comattr_scale_39", "View_MenuItem_comattr_scale_40",
  "View_MenuItem_comattr_scale_41", "View_MenuItem_comattr_scale_42", "View_MenuItem_comattr_scale_43", "View_MenuItem_comattr_scale_44", "View_MenuItem_comattr_scale_45",
  "View_MenuItem_comattr_scale_46", "View_MenuItem_comattr_scale_47", "View_MenuItem_comattr_scale_48", "View_MenuItem_comattr_scale_49", "View_MenuItem_comattr_scale_50",
  "View_MenuItem_comattr_scale_51", "View_MenuItem_comattr_scale_52", "View_MenuItem_comattr_scale_53", "View_MenuItem_comattr_scale_54", "View_MenuItem_comattr_scale_55",
  "View_MenuItem_comattr_scale_56", "View_MenuItem_comattr_scale_57", "View_MenuItem_comattr_scale_58", "View_MenuItem_comattr_scale_59", "View_MenuItem_comattr_scale_60" ],
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
