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

package ohos_app_cangjie_entry.statemacro_uattr_01

import ohos.arkui.component.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.*
import ohos.base.*

@Entry
@Component
public class View_statemacro_uattr_01 {
    @State
    var counter: Int64 = 0

    @State
    var label: String = "prop_value_str"

    @Provide
    var sharedValue: Int64 = 100

    @Watch[onCounterChange]
    @State
    var watchedCounter: Int64 = 0

    @State
    var watchTriggered: String = "no"

    @Builder
    func headerBuilder(): Unit {
        Text("header_from_builder")
            .fontSize(16)
            .id("builder_check")
    }

    func onCounterChange(): Unit {
        this.watchTriggered = "yes"
    }

    public func aboutToAppear(): Unit {
        this.counter = 10
        this.watchedCounter = 10
    }

    func build(): Unit {
        Column() {
            Text("state_counter: ${this.counter}")
                .fontSize(16)
                .id("state_check")

            Text("provide_value: ${this.sharedValue}")
                .fontSize(16)
                .id("provide_check")

            Text("watch_triggered: ${this.watchTriggered}")
                .fontSize(16)
                .id("watch_check")

            this.headerBuilder()

            Column() {
                ChildView_statemacro_uattr_01(
                    propValue: this.label,
                    contentBuilder: this.headerBuilder
                )
            }
            .id("child_container")
            .margin(top: 10)
        }
        .width(100.percent)
        .padding(10)
        .backgroundColor(0xF1F3F5)
    }
}

@Reusable
@Component
class ChildView_statemacro_uattr_01 {
    @Prop
    var propValue: String

    @Consume
    var sharedValue: Int64

    @BuilderParam
    var contentBuilder: () -> Unit

    func build(): Unit {
        Column() {
            Text("prop_value: ${this.propValue}")
                .fontSize(16)
                .id("prop_check")

            Text("consume_value: ${this.sharedValue}")
                .fontSize(16)
                .id("consume_check")

            this.contentBuilder()
        }
        .width(100.percent)
        .padding(10)
        .backgroundColor(0xE8F4F8)
    }
}
