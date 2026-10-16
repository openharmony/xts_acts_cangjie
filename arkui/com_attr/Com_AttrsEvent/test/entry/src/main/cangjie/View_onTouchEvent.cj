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

package ohos_app_cangjie_entry

import kit.PerformanceAnalysisKit.Hilog
import std.unittest.testmacro.*
import ohos.ui_test.*
import ohos.base.{LengthProp, Length, Color}
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode
@Entry
@Component
public class View_onTouchEvent {
    @State
    var eventType: String = ""

    @State
    var target: String = ""

    @State
    var timestamp: Int64 = 0

    @State
    var source: String = ""

    @State
    var touches: Int64 = 0

    @State
    var changedTouches: Int64 = 0

    func build() {
        Column() {
            Button("Click")
                .backgroundColor(0x2788D9)
                .onTouch(
                    {
                        event =>
                        timestamp = event.timestamp
                        match (event.source.getOrThrow()) {
                            case SourceType.Mouse => source = "Mouse"
                            case SourceType.TouchScreen => source = "TouchScreen"
                            case SourceType.Unknown => source = "Unknown"
                            case _ => source = ""
                        }

                        match (event.eventType) {
                            case TouchType.Down => eventType = "Down"
                            case TouchType.Up => eventType = "Up"
                            case TouchType.Move => eventType = "Move"
                            case TouchType.Cancel => eventType = "Cancel"
                            case TouchType.Unknown => eventType = "Unknown"
                            case _ => eventType = ""
                        }
                        touches = event.touches.size
                        changedTouches = event.changedTouches.size
                    }
                )
                .width(200.px)
                .id("onTouchEvent")

            Text("${eventType}").padding(15).width(100.percent).id("text1")
            Text("${timestamp}").padding(15).width(100.percent).id("text2")
            Text("${source}").padding(15).width(100.percent).id("text3")
            Text("${touches}").padding(15).width(100.percent).id("text4")
            Text("${changedTouches}").padding(15).width(100.percent).id("text5")
        }
    }
}
