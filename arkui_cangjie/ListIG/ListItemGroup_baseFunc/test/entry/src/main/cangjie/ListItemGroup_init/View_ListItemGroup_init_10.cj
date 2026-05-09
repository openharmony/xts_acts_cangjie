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

package ohos_app_cangjie_entry.ListItemGroup_init

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Entry
@Component
class View_ListItemGroup_init_10 {
    func build() {
        Column(space: 10i64,
            child: {
                => List(
                    space: 10i64,
                    initialIndex: 0i64,
                    child: {
                        =>
                        ListItemGroup(space: Option<Length>.Some(0i64.vp), style: ListItemGroupStyle.Card,
                            child: {
                                => ForEach(["语文", "数学", "英语"],
                                    itemGeneratorFunc: {
                                        item: String, _: Int64 => ListItem(
                                            {
                                                => Text("${item}")
                                                    .width(100i64.percent)
                                                    .height(100i64)
                                                    .fontSize(16i64)
                                                    .backgroundColor(0xFFFFFF)
                                                    .textAlign(TextAlign.Center)
                                            })
                                    })
                            }).id("ListItemGroup_id")
                        ListItemGroup(
                            child: {
                                => ForEach(["政治", "历史", "地理"],
                                    itemGeneratorFunc: {
                                        item: String, _: Int64 => ListItem(
                                            {
                                                => Text("${item}")
                                                    .width(100i64.percent)
                                                    .height(100i64)
                                                    .fontSize(16i64)
                                                    .backgroundColor(0xFFFFFF)
                                                    .textAlign(TextAlign.Center)
                                            })
                                    })
                            })
                    }
                ).listDirection(Axis.Vertical)
            }).width(100i64.percent)
    }
}
