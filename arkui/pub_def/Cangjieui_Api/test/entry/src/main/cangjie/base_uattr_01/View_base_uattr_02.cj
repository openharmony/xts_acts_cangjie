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
public class View_base_uattr_02 {
    @State var emptyLaunchResult: String = "None"
    @State var emptyCollectionResult: String = "None"
    @State var colorZeroResult: String = "None"
    @State var colorMaxResult: String = "None"

    public func aboutToAppear() {
        launch({ => })
        this.emptyLaunchResult = "launched_empty"
        let emptyArr: Array<Int64> = []
        this.emptyCollectionResult = "${emptyArr.size}"
        this.colorZeroResult = "${Color(0u32).toUInt32()}"
        this.colorMaxResult = "${Color(0xFFFFFFFFu32).toUInt32()}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("emptyLaunch: ${this.emptyLaunchResult}").id("emptyLaunch_check")
                Text("emptyCollection: ${this.emptyCollectionResult}").id("emptyColl_check")
                Text("colorZero: ${this.colorZeroResult}").id("colorZero_check")
                Text("colorMax: ${this.colorMaxResult}").id("colorMax_check")
            }.width(80i64.percent)
    }
}
