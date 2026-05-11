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

package ohos_app_cangjie_entry.Stepper_init
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*

@Entry
@Component
class View_Stepper_init_5 {
    func build() {
        Column() {
            Stepper(index:UInt32.Max) {
                StepperItem() {
                    Column() {
                      Text("Page1").fontSize(35).fontColor(0x182431).id("Page5_1")
                    }
                }
                .id("StepperItem_1")
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
                StepperItem() {
                    Column() {
                      Text("Page2").fontSize(35).fontColor(0x182431).id("Page5_2")
                    }
                }
                .id("StepperItem_2")
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
                StepperItem() {
                    Column() {
                      Text("Page3").fontSize(35).fontColor(0x182431).id("Page5_3")
                    }
                }
                .id("StepperItem_3")
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
                StepperItem() {
                    Column() {
                      Text("Page4").fontSize(35).fontColor(0x182431).id("Page5_4")
                    }
                }
                .id("StepperItem_4")
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
                StepperItem() {
                    Column() {
                      Text("Page5").fontSize(35).fontColor(0x182431).id("Page5_5")
                    }
                }
                .id("StepperItem_5")
                .nextLabel("Next Page")
                .prevLabel("Previous Page")
            }
            .backgroundColor(0xF1F3F5)
        }
        .width(100.percent)
        .padding(top: 5)
    }
}