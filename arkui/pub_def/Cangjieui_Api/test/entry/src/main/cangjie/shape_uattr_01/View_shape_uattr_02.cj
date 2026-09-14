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

package ohos_app_cangjie_entry.shape_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.shape.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

/**
 * Shape EC test view 2:
 *   - PathShape with commands string (normal "M0 0 L100 100")
 *   - PathShape with empty string ""
 *   - PathShape with width / height / commands
 *   - BaseShape.fill / width / height / size / offset applied on PathShape
 */
@Entry
@Component
public class View_shape_uattr_02 {
    @State var pathCommandsResult: String = "None"
    @State var pathEmptyResult: String = "None"
    @State var pathWHCommandsResult: String = "None"
    @State var pathBaseResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // PathShape with normal commands string
        try {
            let p1 = PathShape(commands: "M0 0 L100 100")
            this.pathCommandsResult = "PathCmd-ok"
        } catch (e: Exception) {
            this.pathCommandsResult = "PathCmd-fail"
        }

        // PathShape with empty commands string ""
        try {
            let p2 = PathShape(commands: "")
            this.pathEmptyResult = "PathEmpty-ok"
        } catch (e: Exception) {
            this.pathEmptyResult = "PathEmpty-fail"
        }

        // PathShape with width / height / commands
        try {
            let p3 = PathShape(width: 100, height: 100, commands: "M0 0 L100 100")
            this.pathWHCommandsResult = "PathWH-ok"
        } catch (e: Exception) {
            this.pathWHCommandsResult = "PathWH-fail"
        }

        // BaseShape.fill / width / height / size / offset applied on PathShape
        try {
            let p4 = PathShape(commands: "M0 0 L100 100").fill(Color.Red).width(100).height(50)
                .size(width: 200, height: 100).offset(x: 10, y: 20)
            this.pathBaseResult = "PathBase-ok"
        } catch (e: Exception) {
            this.pathBaseResult = "PathBase-fail"
        }

        this.aggregateResult = "${this.pathCommandsResult};${this.pathEmptyResult};${this.pathWHCommandsResult};${this.pathBaseResult}"
    }

    func build() {
        Column(space: 5i64.vp){
            Text("PathShape(cmds normal): ${this.pathCommandsResult}").id("shape_uattr_id")
            Text("PathShape(cmds empty): ${this.pathEmptyResult}").id("path_empty_uattr_check")
            Text("PathShape(w+h+cmds): ${this.pathWHCommandsResult}").id("path_wh_uattr_check")
            Text("PathShape+Base.*: ${this.pathBaseResult}").id("path_base_uattr_check")
            Text("Aggregate: ${this.aggregateResult}").id("path_aggregate_uattr_check")
        }.width(80i64.percent)
    }
}
