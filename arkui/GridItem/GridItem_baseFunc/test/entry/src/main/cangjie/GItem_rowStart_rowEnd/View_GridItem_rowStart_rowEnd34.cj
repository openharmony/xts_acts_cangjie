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

package ohos_app_cangjie_entry.GItem_rowStart_rowEnd

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_GridItem_rowStart_rowEnd34 {
    func build() {
        Column(space: 10i64,
            child: {
                => Grid(
                    child: {
                        =>
                        GridItem(
                            {
                                => Text("A")
                                    .fontSize(16i64)
                                    .backgroundColor(0xf9cf93i64)
                                    .width(100i64.percent)
                                    .height(100i64.percent)
                                    .textAlign(TextAlign.Center)
                            }).id("gridItem1").rowStart(6i32).rowEnd(4i32)
                        ForEach([0i64, 1i64, 2i64, 3i64, 4i64, 5i64, 6i64, 7i64, 8i64, 9i64, 10i64, 11i64, 12i64, 13i64,
                            14i64, 15i64],
                            itemGeneratorFunc: {
                                item: Int64, _: Int64 => GridItem(
                                    {
                                        => Text("${item}")
                                            .fontSize(16i64)
                                            .backgroundColor(0xfaeee0i64)
                                            .width(100i64.percent)
                                            .height(100i64.percent)
                                            .textAlign(TextAlign.Center)
                                    }).backgroundColor(Color.Gray)
                            })
                    }
                )
                    .id("Grid_id")
                    .columnsTemplate("1fr 1fr 1fr 1fr 1fr")
                    .width(90i64.percent)
                    .backgroundColor(0xfaeee0i64)
                    .height(300i64)
            }).width(100i64.percent).margin(top: 5i64)
    }
}
