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

package ohos_app_cangjie_entry.GridRow_ca_lineargradient_01

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
class index_GridRow_ca_lineargradient_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_GridRow_comattr_lineargradient_1", "View_GridRow_comattr_lineargradient_2", "View_GridRow_comattr_lineargradient_3", "View_GridRow_comattr_lineargradient_4", "View_GridRow_comattr_lineargradient_5",
  "View_GridRow_comattr_lineargradient_6", "View_GridRow_comattr_lineargradient_7", "View_GridRow_comattr_lineargradient_8", "View_GridRow_comattr_lineargradient_9", "View_GridRow_comattr_lineargradient_10",
  "View_GridRow_comattr_lineargradient_11", "View_GridRow_comattr_lineargradient_12", "View_GridRow_comattr_lineargradient_13", "View_GridRow_comattr_lineargradient_14", "View_GridRow_comattr_lineargradient_15",
  "View_GridRow_comattr_lineargradient_16", "View_GridRow_comattr_lineargradient_17", "View_GridRow_comattr_lineargradient_18", "View_GridRow_comattr_lineargradient_19", "View_GridRow_comattr_lineargradient_20",
  "View_GridRow_comattr_lineargradient_21", "View_GridRow_comattr_lineargradient_22", "View_GridRow_comattr_lineargradient_23", "View_GridRow_comattr_lineargradient_24", "View_GridRow_comattr_lineargradient_25",
  "View_GridRow_comattr_lineargradient_26", "View_GridRow_comattr_lineargradient_27", "View_GridRow_comattr_lineargradient_28", "View_GridRow_comattr_lineargradient_29", "View_GridRow_comattr_lineargradient_30",
  "View_GridRow_comattr_lineargradient_31", "View_GridRow_comattr_lineargradient_32", "View_GridRow_comattr_lineargradient_33", "View_GridRow_comattr_lineargradient_34", "View_GridRow_comattr_lineargradient_35",
  "View_GridRow_comattr_lineargradient_36", "View_GridRow_comattr_lineargradient_37", "View_GridRow_comattr_lineargradient_38", "View_GridRow_comattr_lineargradient_39", "View_GridRow_comattr_lineargradient_40",
  "View_GridRow_comattr_lineargradient_41", "View_GridRow_comattr_lineargradient_42", "View_GridRow_comattr_lineargradient_43", "View_GridRow_comattr_lineargradient_44", "View_GridRow_comattr_lineargradient_45",
  "View_GridRow_comattr_lineargradient_46", "View_GridRow_comattr_lineargradient_47", "View_GridRow_comattr_lineargradient_48", "View_GridRow_comattr_lineargradient_49", "View_GridRow_comattr_lineargradient_50",
  "View_GridRow_comattr_lineargradient_51", "View_GridRow_comattr_lineargradient_52", "View_GridRow_comattr_lineargradient_53", "View_GridRow_comattr_lineargradient_54", "View_GridRow_comattr_lineargradient_55",
  "View_GridRow_comattr_lineargradient_56", "View_GridRow_comattr_lineargradient_57", "View_GridRow_comattr_lineargradient_58", "View_GridRow_comattr_lineargradient_59", "View_GridRow_comattr_lineargradient_60",
  "View_GridRow_comattr_lineargradient_61", "View_GridRow_comattr_lineargradient_62", "View_GridRow_comattr_lineargradient_63" ],
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
