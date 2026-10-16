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
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.base.LengthProp
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList
import ohos.multimedia.image.PixelMap
import ohos.multimedia.image.createPixelMap
import ohos.multimedia.image.InitializationOptions
import ohos.multimedia.image.Size
import ohos.multimedia.image.ScaleMode

@Entry
@Component
public class View_onKeyEvent {

    @State
    var keyText: String = ""

    @State
    var timestamp: Int64 = 0

    @State
    var metaKey: Int32 = 0

    @State
    var deviceId: Int64 = 0

    func build() {
        Column() {
            Button("KeyEvent")
                .backgroundColor(0x2788D9)
                .onKeyEvent(
                    {
                        event =>
                        keyText = event.keyText
                        timestamp = event.timestamp
                        metaKey = event.metaKey
                        deviceId = event.deviceId
                    }
                )
                .id("onKeyEvent")

    
            Text(keyText).padding(15).id("text3")
            Text("${timestamp}").padding(15).id("text4")
            Text("${metaKey}").padding(15).id("text5")
            Text("${deviceId}").padding(15).id("text6")
        }.height(300).width(100.percent).padding(35)
    }
}
