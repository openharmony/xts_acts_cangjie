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

package ohos_app_cangjie_entry.Image_uniqueattr1_01

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
class index_Image_uniqueattr1_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Image_uniqueattr1_1", "View_Image_uniqueattr1_2", "View_Image_uniqueattr1_3", "View_Image_uniqueattr1_4", "View_Image_uniqueattr1_5",
  "View_Image_uniqueattr1_6", "View_Image_uniqueattr1_7", "View_Image_uniqueattr1_8", "View_Image_uniqueattr1_9", "View_Image_uniqueattr1_10",
  "View_Image_uniqueattr1_11", "View_Image_uniqueattr1_12", "View_Image_uniqueattr1_13", "View_Image_uniqueattr1_14", "View_Image_uniqueattr1_15",
  "View_Image_uniqueattr1_16", "View_Image_uniqueattr1_17", "View_Image_uniqueattr1_18", "View_Image_uniqueattr1_19", "View_Image_uniqueattr1_20",
  "View_Image_uniqueattr1_21", "View_Image_uniqueattr1_22", "View_Image_uniqueattr1_23", "View_Image_uniqueattr1_24", "View_Image_uniqueattr1_25",
  "View_Image_uniqueattr1_26", "View_Image_uniqueattr1_27", "View_Image_uniqueattr1_28", "View_Image_uniqueattr1_29", "View_Image_uniqueattr1_30",
  "View_Image_uniqueattr1_31", "View_Image_uniqueattr1_32", "View_Image_uniqueattr1_33", "View_Image_uniqueattr1_34", "View_Image_uniqueattr1_35",
  "View_Image_uniqueattr1_36", "View_Image_uniqueattr1_37", "View_Image_uniqueattr1_38", "View_Image_uniqueattr1_39", "View_Image_uniqueattr1_40",
  "View_Image_uniqueattr1_41", "View_Image_uniqueattr1_42", "View_Image_uniqueattr1_43", "View_Image_uniqueattr1_44", "View_Image_uniqueattr1_45",
  "View_Image_uniqueattr1_46", "View_Image_uniqueattr1_47", "View_Image_uniqueattr1_48", "View_Image_uniqueattr1_49", "View_Image_uniqueattr1_50",
  "View_Image_uniqueattr1_51", "View_Image_uniqueattr1_52", "View_Image_uniqueattr1_53", "View_Image_uniqueattr1_54", "View_Image_uniqueattr1_55",
  "View_Image_uniqueattr1_56", "View_Image_uniqueattr1_57", "View_Image_uniqueattr1_58", "View_Image_uniqueattr1_59", "View_Image_uniqueattr1_60",
  "View_Image_uniqueattr1_61", "View_Image_uniqueattr1_62", "View_Image_uniqueattr1_63", "View_Image_uniqueattr1_64", "View_Image_uniqueattr1_65",
  "View_Image_uniqueattr1_66", "View_Image_uniqueattr1_67", "View_Image_uniqueattr1_68", "View_Image_uniqueattr1_69", "View_Image_uniqueattr1_70",
  "View_Image_uniqueattr1_71", "View_Image_uniqueattr1_72", "View_Image_uniqueattr1_73", "View_Image_uniqueattr1_74", "View_Image_uniqueattr1_75",
  "View_Image_uniqueattr1_76", "View_Image_uniqueattr1_77" ],
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
