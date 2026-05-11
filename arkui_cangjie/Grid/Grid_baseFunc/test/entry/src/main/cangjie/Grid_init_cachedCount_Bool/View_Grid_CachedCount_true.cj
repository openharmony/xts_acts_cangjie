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
import std.collection.*

public class GridItemFactor {
    public GridItemFactor(
        let value: String,
        let id: Int64
    ) {}
}

class GridItemFactorDataSource <: IDataSource<GridItemFactor> {
    public GridItemFactorDataSource(let data_: ArrayList<GridItemFactor>) {}
    public var listenerOp: Option<DataChangeListener> = None
    public func totalCount(): Int64 {
        return data_.size
    }
    public func getData(index: Int64): GridItemFactor {
        return data_[index]
    }

    public func registerDataChangeListener(listener: DataChangeListener): Unit {
        listenerOp = listener
    }

    public func unregisterDataChangeListener(listener: DataChangeListener): Unit {
        listenerOp = None
    }

    public func notifyChange(): Unit {
        let listener: DataChangeListener = listenerOp.getOrThrow()
        listener.onDataReloaded()
    }
}

func getDS(): GridItemFactorDataSource
{
    let data: ArrayList<GridItemFactor> = ArrayList<GridItemFactor>()
    for (i in 0..15) {
        data.add(GridItemFactor("N${i}", i * i))
    }
    let dataSourceStu: GridItemFactorDataSource = GridItemFactorDataSource(data)
    return dataSourceStu
}

let dataSourceStu: GridItemFactorDataSource = getDS()

@Entry
@Component
class View_Grid_CachedCount_true {
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
            .cachedCount(3,true)
        }.height(100.percent).width(100.percent)
    }
}
