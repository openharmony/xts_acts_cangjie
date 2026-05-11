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

package ohos_app_cangjie_entry.Grid_init_cachedCount_Bool

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
class View_Grid_CachedCount_false {
    public func build(): Unit {
        Column(space: 30) {
            Grid() {
                LazyForEach(dataSourceStu, itemGeneratorFunc: {stu: GridItemFactor, idx: Int64 =>
                    GridItem() {
                        Text(stu.value).height(100)
                    }.id("GridItem_${stu.value}")
                })
            }
            .height(300).width(300).columnsTemplate("1fr").id("Grid_id").clip(true)
            .cachedCount(3,false)
        }.height(100.percent).width(100.percent)
    }
}
