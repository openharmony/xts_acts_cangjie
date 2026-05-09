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

package ohos_app_cangjie_entry.Scroll_scrollable

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import std.collection.ArrayList

@Entry
@Component
class View_Scroll_scrollable_2 {
    @State
    var arr: ArrayList<Int64> = ArrayList<Int64>(10)

    func build() {
        Column(space: 10i64){
            Scroll(){
                List(space: 10){
                    ForEach(this.arr,
                        itemGeneratorFunc: {
                            item: Int64, _: Int64 => ListItem(){
                                => Text("item${item}").height(80)
                            }
                        })
                }.id("List_id").listDirection(Axis.Horizontal)
            }.id("Scroll_id")
            .scrollable(ScrollDirection.Horizontal)
        }.width(100i64.percent).height(100i64.percent)
    }

    protected override func aboutToAppear() {
        for (i in 0..10) {
            this.arr.add(i)
        }
    }
}
