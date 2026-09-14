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

package ohos_app_cangjie_entry.Grid_columnsGap_rowsGap

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_Grid_ColumnsGap_rowsGap144 {
    func build() {
        Column(space: 10i64,
            child: {
                => Grid(
                    child: {
                        => ForEach(
                            [0i64, 1i64, 2i64, 3i64, 4i64, 5i64, 6i64, 7i64, 8i64, 9i64, 10i64, 11i64, 12i64, 13i64,
                                14i64, 15i64, 16i64, 17i64, 18i64, 19i64, 20i64, 21i64, 22i64, 23i64, 24i64],
                            itemGeneratorFunc: {
                                item: Int64, _: Int64 => GridItem(
                                    {
                                        => Text("N${item}").height(80i64).fontSize(16i64).textAlign(TextAlign.Center)
                                    }).backgroundColor(Color.Gray)
                            })
                    })
                    .id("Grid_id")
                    .width(90i64.percent)
                    .height(300i64)
                    .columnsTemplate("1fr 1fr 1fr 1fr")
                    .border(width: 1i64.vp, color: Color.Black)
                    .columnsGap(10i64.fp)
                    .rowsGap(10i64.px)
            }).width(100i64.percent).height(100i64.percent).backgroundColor(0xDCDCDC)
    }
}
