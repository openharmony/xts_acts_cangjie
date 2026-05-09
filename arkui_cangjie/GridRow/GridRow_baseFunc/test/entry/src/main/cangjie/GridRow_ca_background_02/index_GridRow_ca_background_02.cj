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

package ohos_app_cangjie_entry.GridRow_ca_background_02

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
internal import kit.LocalizationKit.__GenerateResource__

@Entry
@Component
class index_GridRow_ca_background_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_comattr_background2_1", "View_GridRow_comattr_background2_2", "View_GridRow_comattr_background2_3", "View_GridRow_comattr_background2_4", "View_GridRow_comattr_background2_5",
  "View_GridRow_comattr_background2_6", "View_GridRow_comattr_background2_7", "View_GridRow_comattr_background2_8", "View_GridRow_comattr_background2_9", "View_GridRow_comattr_background2_10",
  "View_GridRow_comattr_background2_11", "View_GridRow_comattr_background2_12", "View_GridRow_comattr_background2_13", "View_GridRow_comattr_background2_14", "View_GridRow_comattr_background2_15",
  "View_GridRow_comattr_background2_16", "View_GridRow_comattr_background2_17", "View_GridRow_comattr_background2_18", "View_GridRow_comattr_background2_19", "View_GridRow_comattr_background2_20",
  "View_GridRow_comattr_background2_21", "View_GridRow_comattr_background2_22", "View_GridRow_comattr_background2_23", "View_GridRow_comattr_background2_24", "View_GridRow_comattr_background2_25",
  "View_GridRow_comattr_background2_26", "View_GridRow_comattr_background2_27", "View_GridRow_comattr_background2_28", "View_GridRow_comattr_background2_29", "View_GridRow_comattr_background2_30",
  "View_GridRow_comattr_background2_31", "View_GridRow_comattr_background2_32", "View_GridRow_comattr_background2_33", "View_GridRow_comattr_background2_34", "View_GridRow_comattr_background2_35",
  "View_GridRow_comattr_background2_36", "View_GridRow_comattr_background2_37", "View_GridRow_comattr_background2_38", "View_GridRow_comattr_background2_39", "View_GridRow_comattr_background2_40",
  "View_GridRow_comattr_background2_41", "View_GridRow_comattr_background2_42", "View_GridRow_comattr_background2_43", "View_GridRow_comattr_background2_44", "View_GridRow_comattr_background2_45",
  "View_GridRow_comattr_background2_46", "View_GridRow_comattr_background2_47", "View_GridRow_comattr_background2_48", "View_GridRow_comattr_background2_49", "View_GridRow_comattr_background2_50",
  "View_GridRow_comattr_background2_51", "View_GridRow_comattr_background2_52", "View_GridRow_comattr_background2_53", "View_GridRow_comattr_background2_54", "View_GridRow_comattr_background2_55",
  "View_GridRow_comattr_background2_56", "View_GridRow_comattr_background2_57", "View_GridRow_comattr_background2_58", "View_GridRow_comattr_background2_59", "View_GridRow_comattr_background2_60",
  "View_GridRow_comattr_background2_61", "View_GridRow_comattr_background2_62", "View_GridRow_comattr_background2_63", "View_GridRow_comattr_background2_64" ],
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
