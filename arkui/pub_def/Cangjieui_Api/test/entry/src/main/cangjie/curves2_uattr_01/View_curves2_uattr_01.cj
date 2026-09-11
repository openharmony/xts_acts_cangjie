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

package ohos_app_cangjie_entry.curves2_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__
import ohos.curves.*

@Entry
@Component
public class View_curves2_uattr_01 {
    @State var stepsResult1: String = "None"
    @State var stepsResult2: String = "None"
    @State var bezierResult1: String = "None"
    @State var bezierResult2: String = "None"

    public func aboutToAppear() {
        let c1 = Curves.stepsCurve(5i32, true)
        this.stepsResult1 = "${c1.interpolate(Float32(0.5))}"
        let c2 = Curves.stepsCurve(-1i32, false)
        this.stepsResult2 = "${c2.interpolate(Float32(0.5))}"
        let c3 = Curves.cubicBezierCurve(Float32(0.25), Float32(0.1), Float32(0.25), Float32(0.1))
        this.bezierResult1 = "${c3.interpolate(Float32(0.5))}"
        let c4 = Curves.cubicBezierCurve(Float32(-1.0), Float32(-10.0), Float32(2.0), Float32(10.0))
        this.bezierResult2 = "${c4.interpolate(Float32(0.5))}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("stepsCurve(5,true): ${this.stepsResult1}").id("stepsCurve_1_check")
                Text("stepsCurve(-1,false): ${this.stepsResult2}").id("stepsCurve_2_check")
                Text("cubicBezier(0.25,0.1,0.25,0.1): ${this.bezierResult1}").id("bezier_1_check")
                Text("cubicBezier(-1,-10,2,10): ${this.bezierResult2}").id("bezier_2_check")
            }.width(80i64.percent)
    }
}
