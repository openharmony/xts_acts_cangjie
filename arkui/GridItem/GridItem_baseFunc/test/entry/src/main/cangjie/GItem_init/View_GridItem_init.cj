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

package ohos_app_cangjie_entry.GItem_init

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_GridItem_init {
    func build() {
        Column(space: 10i64,
            child: {
                => Grid(
                    child: {
                        => ForEach(
                            [0i64, 1i64, 2i64],
                            itemGeneratorFunc: {
                                //包含子组件
                                item: Int64, _: Int64 => GridItem(
                                    {
                                        => Text("N${item}").fontSize(16i64).textAlign(TextAlign.Center).id("text_${item}")
                                    }).height(80i64).backgroundColor(Color.Gray).id("GridItem1_${item}")
                            })
                            ForEach(
                            [0i64, 1i64, 2i64],
                            itemGeneratorFunc: {
                                //不包含子组件
                                item: Int64, _: Int64 => GridItem().height(80i64).backgroundColor(Color.Blue).id("GridItem2_${item}")
                            })
                    })
                    .id("Grid_id")
                    .width(90i64.percent)
                    .height(300i64)
                    .columnsTemplate("1fr 1fr 1fr 1fr")
                    .border(width: 1i64.vp, color: Color.Black)
                    .columnsGap((-1i64).percent)
                    .rowsGap((-1i64).percent)
            }).width(100i64.percent).height(100i64.percent).backgroundColor(0xDCDCDC)
    }
}