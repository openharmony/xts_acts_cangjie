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

package ohos_app_cangjie_entry.CbGroup_ca_constraintsize_01

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
class index_CbGroup_ca_constraintsize_01 {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_CbBox_comattr_constraintsize_1", "View_CbBox_comattr_constraintsize_2", "View_CbBox_comattr_constraintsize_3", "View_CbBox_comattr_constraintsize_4", "View_CbBox_comattr_constraintsize_5",
  "View_CbBox_comattr_constraintsize_6", "View_CbBox_comattr_constraintsize_7", "View_CbBox_comattr_constraintsize_8", "View_CbBox_comattr_constraintsize_9", "View_CbBox_comattr_constraintsize_10",
  "View_CbBox_comattr_constraintsize_11", "View_CbBox_comattr_constraintsize_12", "View_CbBox_comattr_constraintsize_13", "View_CbBox_comattr_constraintsize_14", "View_CbBox_comattr_constraintsize_15",
  "View_CbBox_comattr_constraintsize_16", "View_CbBox_comattr_constraintsize_17", "View_CbBox_comattr_constraintsize_18", "View_CbBox_comattr_constraintsize_19", "View_CbBox_comattr_constraintsize_20" ],
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
