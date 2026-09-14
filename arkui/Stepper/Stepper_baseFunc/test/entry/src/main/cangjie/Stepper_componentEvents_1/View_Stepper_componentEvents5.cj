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

package ohos_app_cangjie_entry.Stepper_componentEvents_1
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.hilog.*

@Component
public class View_Stepper_componentEvents1_5 {
    @State var prevIndex: UInt32  = 0
    @State var currentIndex: UInt32  = 1
    @State var onFinish:String="None"
    @State var onNext_currentIndex: UInt32  = 0
    @State var onNext_nextIndex: UInt32  = 0
    @State var onPrevious_currentIndex: UInt32  = 0
    @State var onPrevious_prevIndex: UInt32  = 0

    func build() {
        Column() {
            Row(){
                Text("onChange校验：")
                Text("prevIndex:${this.prevIndex}").id("onChange_param1")
                Text("currentIndex:${this.currentIndex}").id("onChange_param2")
            }
            Row(){
                Text("onFinish校验：")
                Text("${this.onFinish}").id("onFinish_check")
            }
            Row(){
                Text("onNext校验：")
                Text("currentIndex:${this.onNext_currentIndex}").id("onNext_param1")
                Text("nextIndex:${this.onNext_nextIndex}").id("onNext_param2")
            }
            Row(){
                Text("onPrevious校验：")
                Text("currentIndex:${this.onPrevious_currentIndex}").id("onPrevious_param1")
                Text("prevIndex:${this.onPrevious_prevIndex}").id("onPrevious_param2")
            }
            Stepper(index:3) {
                StepperItem() {
                    Column() {
                      Text("Page One").id("pageOne").fontSize(35).fontColor(0x182431)
                    }
                }
                .nextLabel("Next Page")
                .status(status:ItemState.Normal)
                StepperItem() {
                    Column() {
                      Text("Page Two").id("pageTwo").fontSize(35).fontColor(0x182431)
                    }
                }
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
                .status(status:ItemState.Normal)
                StepperItem() {
                    Column() {
                      Text("Page Three").id("pageThree").fontSize(35).fontColor(0x182431)
                    }
                }
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
                .status(status:ItemState.Normal)
                StepperItem() {
                    Column() {
                        Text("Page Four").id("pageFour").fontSize(35).fontColor(0x182431)
                    }
                }
                .status(status:ItemState.Normal)
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
            }
            .id("Stepper_id")
            .height(70.percent)
            .backgroundColor(0xF1F3F5)
            .onFinish({=>
                this.onFinish="onFinish"
                Hilog.info(0, "AppLogCj", "onFinish")
            })
            .onChange({prevIndex: UInt32, index: UInt32 =>
                this.prevIndex=prevIndex
                this.currentIndex = index
                Hilog.info(0, "AppLogCj", "onChange")
            })
            .onNext({currentIndex: UInt32, nextIndex: UInt32 =>
                this.onNext_currentIndex=currentIndex
                this.onNext_nextIndex = nextIndex
                Hilog.info(0, "AppLogCj", "onNext")
            })
            .onPrevious({currentIndex: UInt32, prevIndex: UInt32 =>
                this.onPrevious_currentIndex=currentIndex
                this.onPrevious_prevIndex = prevIndex
                Hilog.info(0, "AppLogCj", "onPrevious")
            })
        }
        .width(100.percent)
        .padding(top: 5)
    }
}