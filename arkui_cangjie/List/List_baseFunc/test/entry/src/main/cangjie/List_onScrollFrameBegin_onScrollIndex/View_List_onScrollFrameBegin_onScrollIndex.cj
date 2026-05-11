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

package ohos_app_cangjie_entry.List_onScrollFrameBegin_onScrollIndex

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

func loggerInfo(str: String) {
    Hilog.info(0, "CangjieTest", str)
}

@Entry
@Component
class View_List_onScrollFrameBegin_onScrollIndex {
    @State
    var firstIndex:Int32=0
    @State
    var lastIndex:Int32=0
    @State
    var middleIndex:Int32=0
    @State
    var offset:Float64=0.0
    @State
    var scroll_stage:String="undefined"

    let arr =[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    func build() {
        Stack(alignContent: Alignment.TopStart){
            Column() {
                List( initialIndex: 0 ) {
                    ForEach(this.arr, itemGeneratorFunc: {item:Int64,_:Int64 =>
                            ListItem() {
                                Text("${item}")
                                .width(100.percent).height(100).fontSize(16)
                                .textAlign(TextAlign.Center).borderRadius(10).backgroundColor(0xFFFFFF)
                            }.id("ListItem_${item.toString()}")
                            })
                }.id("list")
                .listDirection(Axis.Vertical) // 排列方向
                .scrollBar(BarState.Off)
                .edgeEffect(EdgeEffect.Spring) // 边缘效果设置为Spring
                .onScrollIndex({firstIndex: Int32, lastIndex: Int32, middleIndex: Int32 =>
                        this.firstIndex=firstIndex
                        this.lastIndex=lastIndex
                        this.middleIndex=middleIndex
                        loggerInfo("first" + firstIndex.toString())
                        loggerInfo("last" + lastIndex.toString())
                        loggerInfo("middle" + middleIndex.toString())
                      })
                .width(90.percent)
                .onScrollFrameBegin({
                    offset:Float64,stage:ScrollState=>
                    this.offset=offset
                    this.scroll_stage=match(stage){
                        case Idle=>"Idle"
                        case Scrolling=>"Scrolling"
                        case Fling=>"Fling"
                        case _ => ""
                    }
                    OnScrollFrameBeginHandlerResult(offsetRemain:offset)
                })
                }
            .width(100.percent)
            .height(600)
            .backgroundColor(0xDCDCDC)

            Column(){
                Row(){
                    Text("onScrollIndex:")
                    Text("${this.firstIndex.toString()}").id("firstIndex")
                    Text("${this.lastIndex.toString()}").id("lastIndex")
                    Text("${this.middleIndex.toString()}").id("middleIndex")
            }
                Row(){
                    Text("onScrollIndex:")
                    Text("${this.offset.toString()}").id("offset")
                    Text("${this.scroll_stage}").id("scroll_stage")
                }
            }
            
        }
    }
}