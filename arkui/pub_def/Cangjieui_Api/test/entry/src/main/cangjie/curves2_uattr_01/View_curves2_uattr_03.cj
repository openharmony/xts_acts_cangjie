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
public class View_curves2_uattr_03 {
    @State var springMotionResult1: String = "None"
    @State var springMotionResult2: String = "None"
    @State var respSpringMotionResult1: String = "None"
    @State var respSpringMotionResult2: String = "None"

    public func aboutToAppear() {
        let c1 = Curves.springMotion(response: Float32(0.55), dampingFraction: Float32(0.825),
            overlapDuration: Float32(0.0))
        this.springMotionResult1 = "created"
        let c2 = Curves.springMotion(response: Float32(-1.0), dampingFraction: Float32(-1.0),
            overlapDuration: Float32(-1.0))
        this.springMotionResult2 = "created"
        let c3 = Curves.responsiveSpringMotion(response: Float32(0.15), dampingFraction: Float32(0.86),
            overlapDuration: Float32(0.25))
        this.respSpringMotionResult1 = "created"
        let c4 = Curves.responsiveSpringMotion(response: Float32(-1.0), dampingFraction: Float32(-1.0),
            overlapDuration: Float32(-1.0))
        this.respSpringMotionResult2 = "created"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("springMotion(0.55,0.825,0): ${this.springMotionResult1}").id("springMotion_1_check")
                Text("springMotion(-1,-1,-1): ${this.springMotionResult2}").id("springMotion_2_check")
                Text("responsiveSpringMotion(0.15,0.86,0.25): ${this.respSpringMotionResult1}").id("respSpringMotion_1_check")
                Text("responsiveSpringMotion(-1,-1,-1): ${this.respSpringMotionResult2}").id("respSpringMotion_2_check")
            }.width(80i64.percent)
    }
}
