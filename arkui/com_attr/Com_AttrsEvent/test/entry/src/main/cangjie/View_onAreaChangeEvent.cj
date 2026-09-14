/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

package ohos_app_cangjie_entry

import kit.PerformanceAnalysisKit.Hilog
import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.base.{LengthProp, Length, Color}
import ohos.arkui.component.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.convert.*

@Entry
@Component
public class View_onAreaChangeEvent {
    @State
    var value: String = "Text"
    @State
    var sizeValue: Float64 = 0.0

    func build() {
        Column {
            Text(this.value)
                .backgroundColor(Color.Green)
                .margin(30)
                .fontSize(30)
                .onClick({evt => this.value = this.value + "Text"})
                .onAreaChange({old, new => this.sizeValue = old.width.value + new.width.value })
                .id("onAreaChangeEvent")

            Text("${sizeValue}").margin(30).id("text")
        }
    }
}
