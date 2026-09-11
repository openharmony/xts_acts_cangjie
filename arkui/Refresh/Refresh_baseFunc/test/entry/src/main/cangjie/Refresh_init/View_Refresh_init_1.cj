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

package ohos_app_cangjie_entry.Refresh_init

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.*
import std.time.*
import std.sync.*

class MyDataSource <: IDataSource<Int64> {
    public MyDataSource(let data_: ArrayList<Int64>) {}
    public var listenerOp: Option<DataChangeListener> = None
    public func getData(index: Int64): Int64 {
        return data_[index]
    }

    public func registerDataChangeListener(listener: DataChangeListener): Unit {
        listenerOp = listener
    }

    public func unregisterDataChangeListener(listener: DataChangeListener): Unit {
        listenerOp = None
    }

    public func totalCount(): Int64 {
        return data_.size
    }
}

@Component
public class View_Refresh_init_1 {
    @State
    var isRefreshing: Bool = false
    let myDataSource: MyDataSource = MyDataSource(ArrayList<Int64>(10, {i => i}))
    @State
    var status: String = "Inactive"
    @State
    var onRefreshStatus: String = "noRefresh"
    @State
    var ratio: Float64 = 1.0
    @State
    var maxRefreshingHeight: Float64 = 100.0

    func build() {
        Column() {
            Text(status)
                    .size(width: 50.percent, height: 50.vp)
                    .borderWidth(1)
                    .borderColor(Color.Black)
                    .backgroundColor(0xFFFFFF)
                    .borderRadius(15)
                    .textAlign(TextAlign.Center)
                    .fontSize(30)
                    .margin(top: 20.vp)
                    .id("StatusText")
            Text(onRefreshStatus)
                    .size(width: 50.percent, height: 50.vp)
                    .borderWidth(1)
                    .borderColor(Color.Black)
                    .backgroundColor(0xFFFFFF)
                    .borderRadius(15)
                    .textAlign(TextAlign.Center)
                    .fontSize(30)
                    .margin(top: 20.vp)
                    .id("OnRefreshText")

            Refresh(RefreshOptions(refreshing: @Binder(isRefreshing))) {
                Column {
                    LazyForEach(
                            myDataSource,
                            itemGeneratorFunc: {
                                element: Int64, index: Int64 => Text(element.toString())
                            .id("Text_${element.toString()}")
                            .size(width: 50.percent, height: 50.vp)
                            .borderWidth(1)
                            .borderColor(Color.Black)
                            .backgroundColor(0xFFFFFF)
                            .borderRadius(15)
                            .textAlign(TextAlign.Center)
                            .fontSize(30)
                            .margin(top: 20.vp)
                            }
                    )
                }.width(100.percent).backgroundColor(0x89CFF0)
            }
                    .width(100.percent)
                    .height(100.percent)
                    .id("refresh")
                    .onRefreshing(
                            {
                                =>
                                onRefreshStatus = "Refresh"
                                Timer.once(2000 * Duration.millisecond) {
                                    => launch {
                                    this.isRefreshing = false
                                    onRefreshStatus = "NoRefresh"
                                }
                                }
                            }
                    )
                    .onStateChange({
                        refreshStatus: RefreshStatus =>
                        this.status = match (refreshStatus) {
                            case Inactive => "Inactive"
                            case Drag => "Drag"
                            case OverDrag => "OverDrag"
                            case Refresh => "Refresh"
                            case Done => "Done"
                            case _ => ""
                        }
                    })
                    .backgroundColor(0x89CFF0)
        }
    }
}