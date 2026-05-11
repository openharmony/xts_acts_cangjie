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

package ohos_app_cangjie_entry.Cbox_ca_rotate_01

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
class index_Cbox_ca_rotate_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Checkbox_comattr_rotate_1", "View_Checkbox_comattr_rotate_2", "View_Checkbox_comattr_rotate_3", "View_Checkbox_comattr_rotate_4", "View_Checkbox_comattr_rotate_5",
  "View_Checkbox_comattr_rotate_6", "View_Checkbox_comattr_rotate_7", "View_Checkbox_comattr_rotate_8", "View_Checkbox_comattr_rotate_9", "View_Checkbox_comattr_rotate_10",
  "View_Checkbox_comattr_rotate_11", "View_Checkbox_comattr_rotate_12", "View_Checkbox_comattr_rotate_13", "View_Checkbox_comattr_rotate_14", "View_Checkbox_comattr_rotate_15",
  "View_Checkbox_comattr_rotate_16", "View_Checkbox_comattr_rotate_17", "View_Checkbox_comattr_rotate_18", "View_Checkbox_comattr_rotate_19", "View_Checkbox_comattr_rotate_20",
  "View_Checkbox_comattr_rotate_21", "View_Checkbox_comattr_rotate_22", "View_Checkbox_comattr_rotate_23", "View_Checkbox_comattr_rotate_24", "View_Checkbox_comattr_rotate_25",
  "View_Checkbox_comattr_rotate_26", "View_Checkbox_comattr_rotate_27", "View_Checkbox_comattr_rotate_28", "View_Checkbox_comattr_rotate_29", "View_Checkbox_comattr_rotate_30",
  "View_Checkbox_comattr_rotate_31", "View_Checkbox_comattr_rotate_32", "View_Checkbox_comattr_rotate_33", "View_Checkbox_comattr_rotate_34", "View_Checkbox_comattr_rotate_35",
  "View_Checkbox_comattr_rotate_36", "View_Checkbox_comattr_rotate_37", "View_Checkbox_comattr_rotate_38", "View_Checkbox_comattr_rotate_39", "View_Checkbox_comattr_rotate_40",
  "View_Checkbox_comattr_rotate_41", "View_Checkbox_comattr_rotate_42", "View_Checkbox_comattr_rotate_43", "View_Checkbox_comattr_rotate_44", "View_Checkbox_comattr_rotate_45",
  "View_Checkbox_comattr_rotate_46", "View_Checkbox_comattr_rotate_47", "View_Checkbox_comattr_rotate_48", "View_Checkbox_comattr_rotate_49", "View_Checkbox_comattr_rotate_50",
  "View_Checkbox_comattr_rotate_51", "View_Checkbox_comattr_rotate_52", "View_Checkbox_comattr_rotate_53", "View_Checkbox_comattr_rotate_54", "View_Checkbox_comattr_rotate_55",
  "View_Checkbox_comattr_rotate_56", "View_Checkbox_comattr_rotate_57", "View_Checkbox_comattr_rotate_58", "View_Checkbox_comattr_rotate_59", "View_Checkbox_comattr_rotate_60",
  "View_Checkbox_comattr_rotate_61", "View_Checkbox_comattr_rotate_62", "View_Checkbox_comattr_rotate_63", "View_Checkbox_comattr_rotate_64", "View_Checkbox_comattr_rotate_65",
  "View_Checkbox_comattr_rotate_66", "View_Checkbox_comattr_rotate_67", "View_Checkbox_comattr_rotate_68", "View_Checkbox_comattr_rotate_69", "View_Checkbox_comattr_rotate_70",
  "View_Checkbox_comattr_rotate_71", "View_Checkbox_comattr_rotate_72", "View_Checkbox_comattr_rotate_73", "View_Checkbox_comattr_rotate_74", "View_Checkbox_comattr_rotate_75",
  "View_Checkbox_comattr_rotate_76", "View_Checkbox_comattr_rotate_77", "View_Checkbox_comattr_rotate_78", "View_Checkbox_comattr_rotate_79", "View_Checkbox_comattr_rotate_80" ],
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
