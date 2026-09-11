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

package ohos_app_cangjie_entry.base_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__
import std.collection.*

@Entry
@Component
public class View_base_uattr_01 {
    @State var launchResult: String = "None"
    @State var collectionSizeResult: String = "None"
    @State var collectionGetResult: String = "None"
    @State var collectionSetResult: String = "None"
    @State var colorBlackResult: String = "None"
    @State var colorRedResult: String = "None"

    public func aboutToAppear() {
        launch({ => this.launchResult = "launched" })
        let arr: Array<Int64> = [1i64, 2i64, 3i64]
        this.collectionSizeResult = "${arr.size}"
        this.collectionGetResult = "${arr[0]}"
        arr[0] = 10i64
        this.collectionSetResult = "${arr[0]}"
        this.colorBlackResult = "${Color.Black.toUInt32()}"
        this.colorRedResult = "${Color.Red.toUInt32()}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("launch: ${this.launchResult}").id("launch_check")
                Text("collectionSize: ${this.collectionSizeResult}").id("collSize_check")
                Text("collectionGet: ${this.collectionGetResult}").id("collGet_check")
                Text("collectionSet: ${this.collectionSetResult}").id("collSet_check")
                Text("colorBlack: ${this.colorBlackResult}").id("colorBlack_check")
                Text("colorRed: ${this.colorRedResult}").id("colorRed_check")
            }.width(80i64.percent)
    }
}
