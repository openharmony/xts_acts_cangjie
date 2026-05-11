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

package ohos_app_cangjie_entry.Swiper_curve_disableSwipe_duration

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
class index_Swiper_curve_disableSwipe_duration {
    func build() {
        Scroll(
            {
                => Column(
                    child: {
                        => ForEach(
                            [ "View_Swiper_curve_disableSwipe_duration1", "View_Swiper_curve_disableSwipe_duration2", "View_Swiper_curve_disableSwipe_duration3", "View_Swiper_curve_disableSwipe_duration4", "View_Swiper_curve_disableSwipe_duration5",
  "View_Swiper_curve_disableSwipe_duration6", "View_Swiper_curve_disableSwipe_duration7", "View_Swiper_curve_disableSwipe_duration8", "View_Swiper_curve_disableSwipe_duration9", "View_Swiper_curve_disableSwipe_duration10",
  "View_Swiper_curve_disableSwipe_duration11", "View_Swiper_curve_disableSwipe_duration12", "View_Swiper_curve_disableSwipe_duration13", "View_Swiper_curve_disableSwipe_duration14", "View_Swiper_curve_disableSwipe_duration15",
  "View_Swiper_curve_disableSwipe_duration16", "View_Swiper_curve_disableSwipe_duration17", "View_Swiper_curve_disableSwipe_duration18", "View_Swiper_curve_disableSwipe_duration19", "View_Swiper_curve_disableSwipe_duration20",
  "View_Swiper_curve_disableSwipe_duration21", "View_Swiper_curve_disableSwipe_duration22", "View_Swiper_curve_disableSwipe_duration23", "View_Swiper_curve_disableSwipe_duration24", "View_Swiper_curve_disableSwipe_duration25",
  "View_Swiper_curve_disableSwipe_duration26", "View_Swiper_curve_disableSwipe_duration27", "View_Swiper_curve_disableSwipe_duration28", "View_Swiper_curve_disableSwipe_duration29", "View_Swiper_curve_disableSwipe_duration30",
  "View_Swiper_curve_disableSwipe_duration31", "View_Swiper_curve_disableSwipe_duration32", "View_Swiper_curve_disableSwipe_duration33", "View_Swiper_curve_disableSwipe_duration34", "View_Swiper_curve_disableSwipe_duration35",
  "View_Swiper_curve_disableSwipe_duration36", "View_Swiper_curve_disableSwipe_duration37", "View_Swiper_curve_disableSwipe_duration38", "View_Swiper_curve_disableSwipe_duration39", "View_Swiper_curve_disableSwipe_duration40",
  "View_Swiper_curve_disableSwipe_duration41", "View_Swiper_curve_disableSwipe_duration42", "View_Swiper_curve_disableSwipe_duration43", "View_Swiper_curve_disableSwipe_duration44", "View_Swiper_curve_disableSwipe_duration45",
  "View_Swiper_curve_disableSwipe_duration46", "View_Swiper_curve_disableSwipe_duration47", "View_Swiper_curve_disableSwipe_duration48", "View_Swiper_curve_disableSwipe_duration49", "View_Swiper_curve_disableSwipe_duration50",
  "View_Swiper_curve_disableSwipe_duration51", "View_Swiper_curve_disableSwipe_duration52", "View_Swiper_curve_disableSwipe_duration53", "View_Swiper_curve_disableSwipe_duration54", "View_Swiper_curve_disableSwipe_duration55",
  "View_Swiper_curve_disableSwipe_duration56", "View_Swiper_curve_disableSwipe_duration57", "View_Swiper_curve_disableSwipe_duration58", "View_Swiper_curve_disableSwipe_duration59", "View_Swiper_curve_disableSwipe_duration60",
  "View_Swiper_curve_disableSwipe_duration61", "View_Swiper_curve_disableSwipe_duration62", "View_Swiper_curve_disableSwipe_duration63", "View_Swiper_curve_disableSwipe_duration64", "View_Swiper_curve_disableSwipe_duration65",
  "View_Swiper_curve_disableSwipe_duration66", "View_Swiper_curve_disableSwipe_duration67", "View_Swiper_curve_disableSwipe_duration68", "View_Swiper_curve_disableSwipe_duration69", "View_Swiper_curve_disableSwipe_duration70",
  "View_Swiper_curve_disableSwipe_duration71", "View_Swiper_curve_disableSwipe_duration72", "View_Swiper_curve_disableSwipe_duration73", "View_Swiper_curve_disableSwipe_duration74", "View_Swiper_curve_disableSwipe_duration75",
  "View_Swiper_curve_disableSwipe_duration76", "View_Swiper_curve_disableSwipe_duration77", "View_Swiper_curve_disableSwipe_duration78", "View_Swiper_curve_disableSwipe_duration79", "View_Swiper_curve_disableSwipe_duration80",
  "View_Swiper_curve_disableSwipe_duration81", "View_Swiper_curve_disableSwipe_duration82", "View_Swiper_curve_disableSwipe_duration83", "View_Swiper_curve_disableSwipe_duration84", "View_Swiper_curve_disableSwipe_duration85",
  "View_Swiper_curve_disableSwipe_duration86", "View_Swiper_curve_disableSwipe_duration87", "View_Swiper_curve_disableSwipe_duration88", "View_Swiper_curve_disableSwipe_duration89", "View_Swiper_curve_disableSwipe_duration90",
  "View_Swiper_curve_disableSwipe_duration91", "View_Swiper_curve_disableSwipe_duration92", "View_Swiper_curve_disableSwipe_duration93", "View_Swiper_curve_disableSwipe_duration94", "View_Swiper_curve_disableSwipe_duration95",
  "View_Swiper_curve_disableSwipe_duration96", "View_Swiper_curve_disableSwipe_duration97", "View_Swiper_curve_disableSwipe_duration98", "View_Swiper_curve_disableSwipe_duration99", "View_Swiper_curve_disableSwipe_duration100",
  "View_Swiper_curve_disableSwipe_duration101", "View_Swiper_curve_disableSwipe_duration102", "View_Swiper_curve_disableSwipe_duration103", "View_Swiper_curve_disableSwipe_duration104", "View_Swiper_curve_disableSwipe_duration105",
  "View_Swiper_curve_disableSwipe_duration106", "View_Swiper_curve_disableSwipe_duration107", "View_Swiper_curve_disableSwipe_duration108", "View_Swiper_curve_disableSwipe_duration109", "View_Swiper_curve_disableSwipe_duration110",
  "View_Swiper_curve_disableSwipe_duration111", "View_Swiper_curve_disableSwipe_duration112", "View_Swiper_curve_disableSwipe_duration113", "View_Swiper_curve_disableSwipe_duration114", "View_Swiper_curve_disableSwipe_duration115",
  "View_Swiper_curve_disableSwipe_duration116", "View_Swiper_curve_disableSwipe_duration117", "View_Swiper_curve_disableSwipe_duration118", "View_Swiper_curve_disableSwipe_duration119", "View_Swiper_curve_disableSwipe_duration120",
  "View_Swiper_curve_disableSwipe_duration121", "View_Swiper_curve_disableSwipe_duration122", "View_Swiper_curve_disableSwipe_duration123", "View_Swiper_curve_disableSwipe_duration124", "View_Swiper_curve_disableSwipe_duration125",
  "View_Swiper_curve_disableSwipe_duration126", "View_Swiper_curve_disableSwipe_duration127", "View_Swiper_curve_disableSwipe_duration128", "View_Swiper_curve_disableSwipe_duration129", "View_Swiper_curve_disableSwipe_duration130" ],
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
