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
public class View_curves2_uattr_02 {
    @State var springResult1: String = "None"
    @State var springResult2: String = "None"
    @State var interpSpringResult1: String = "None"
    @State var interpSpringResult2: String = "None"

    public func aboutToAppear() {
        let c1 = Curves.springCurve(Float32(0.0), Float32(1.0), Float32(1.0), Float32(1.0))
        this.springResult1 = "${c1.interpolate(Float32(0.5))}"
        let c2 = Curves.springCurve(Float32(100.0), Float32(-1.0), Float32(-1.0), Float32(-1.0))
        this.springResult2 = "${c2.interpolate(Float32(0.5))}"
        let c3 = Curves.interpolatingSpring(Float32(0.0), Float32(1.0), Float32(1.0), Float32(1.0))
        this.interpSpringResult1 = "${c3.interpolate(Float32(0.5))}"
        let c4 = Curves.interpolatingSpring(Float32(100.0), Float32(-1.0), Float32(-1.0), Float32(-1.0))
        this.interpSpringResult2 = "${c4.interpolate(Float32(0.5))}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("springCurve(0,1,1,1): ${this.springResult1}").id("spring_1_check")
                Text("springCurve(100,-1,-1,-1): ${this.springResult2}").id("spring_2_check")
                Text("interpolatingSpring(0,1,1,1): ${this.interpSpringResult1}").id("interpSpring_1_check")
                Text("interpolatingSpring(100,-1,-1,-1): ${this.interpSpringResult2}").id("interpSpring_2_check")
            }.width(80i64.percent)
    }
}
