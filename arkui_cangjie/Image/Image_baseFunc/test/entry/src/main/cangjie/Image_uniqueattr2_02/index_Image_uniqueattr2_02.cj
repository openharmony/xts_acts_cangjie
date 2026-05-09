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

package ohos_app_cangjie_entry.Image_uniqueattr2_02

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
class index_Image_uniqueattr2_02 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Image_uniqueattr2_1", "View_Image_uniqueattr2_2", "View_Image_uniqueattr2_3", "View_Image_uniqueattr2_4", "View_Image_uniqueattr2_5",
  "View_Image_uniqueattr2_6", "View_Image_uniqueattr2_7", "View_Image_uniqueattr2_8", "View_Image_uniqueattr2_9", "View_Image_uniqueattr2_10",
  "View_Image_uniqueattr2_11", "View_Image_uniqueattr2_12", "View_Image_uniqueattr2_13", "View_Image_uniqueattr2_14", "View_Image_uniqueattr2_15",
  "View_Image_uniqueattr2_16", "View_Image_uniqueattr2_17", "View_Image_uniqueattr2_18", "View_Image_uniqueattr2_19", "View_Image_uniqueattr2_20",
  "View_Image_uniqueattr2_21", "View_Image_uniqueattr2_22", "View_Image_uniqueattr2_23", "View_Image_uniqueattr2_24", "View_Image_uniqueattr2_25",
  "View_Image_uniqueattr2_26", "View_Image_uniqueattr2_27", "View_Image_uniqueattr2_28", "View_Image_uniqueattr2_29", "View_Image_uniqueattr2_30",
  "View_Image_uniqueattr2_31", "View_Image_uniqueattr2_32", "View_Image_uniqueattr2_33", "View_Image_uniqueattr2_34", "View_Image_uniqueattr2_35",
  "View_Image_uniqueattr2_36", "View_Image_uniqueattr2_37", "View_Image_uniqueattr2_38", "View_Image_uniqueattr2_39", "View_Image_uniqueattr2_40",
  "View_Image_uniqueattr2_41", "View_Image_uniqueattr2_42", "View_Image_uniqueattr2_43", "View_Image_uniqueattr2_44", "View_Image_uniqueattr2_45",
  "View_Image_uniqueattr2_46", "View_Image_uniqueattr2_47", "View_Image_uniqueattr2_48", "View_Image_uniqueattr2_49", "View_Image_uniqueattr2_50",
  "View_Image_uniqueattr2_51", "View_Image_uniqueattr2_52", "View_Image_uniqueattr2_53", "View_Image_uniqueattr2_54", "View_Image_uniqueattr2_55",
  "View_Image_uniqueattr2_56", "View_Image_uniqueattr2_57", "View_Image_uniqueattr2_58", "View_Image_uniqueattr2_59", "View_Image_uniqueattr2_60",
  "View_Image_uniqueattr2_61", "View_Image_uniqueattr2_62", "View_Image_uniqueattr2_63", "View_Image_uniqueattr2_64", "View_Image_uniqueattr2_65",
  "View_Image_uniqueattr2_66", "View_Image_uniqueattr2_67", "View_Image_uniqueattr2_68", "View_Image_uniqueattr2_69", "View_Image_uniqueattr2_70",
  "View_Image_uniqueattr2_71", "View_Image_uniqueattr2_72", "View_Image_uniqueattr2_73", "View_Image_uniqueattr2_74", "View_Image_uniqueattr2_75",
  "View_Image_uniqueattr2_76", "View_Image_uniqueattr2_77" ],
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
