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
public class View_curves2_uattr_04 {
    @State var initLinearResult: String = "None"
    @State var initEaseResult: String = "None"
    @State var initEaseInResult: String = "None"
    @State var initEaseOutResult: String = "None"
    @State var initEaseInOutResult: String = "None"
    @State var customIdentityResult: String = "None"
    @State var customZeroResult: String = "None"

    public func aboutToAppear() {
        let c1 = Curves.initCurve(curve: Curve.Linear)
        this.initLinearResult = "${c1.interpolate(Float32(0.5))}"
        let c2 = Curves.initCurve(curve: Curve.Ease)
        this.initEaseResult = "${c2.interpolate(Float32(0.5))}"
        let c3 = Curves.initCurve(curve: Curve.EaseIn)
        this.initEaseInResult = "${c3.interpolate(Float32(0.5))}"
        let c4 = Curves.initCurve(curve: Curve.EaseOut)
        this.initEaseOutResult = "${c4.interpolate(Float32(0.5))}"
        let c5 = Curves.initCurve(curve: Curve.EaseInOut)
        this.initEaseInOutResult = "${c5.interpolate(Float32(0.5))}"
        let c6 = Curves.customCurve({ x: Float32 => x })
        this.customIdentityResult = "${c6.interpolate(Float32(0.5))}"
        let c7 = Curves.customCurve({ x: Float32 => Float32(0.0) })
        this.customZeroResult = "${c7.interpolate(Float32(0.5))}"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("initCurve(Linear): ${this.initLinearResult}").id("initLinear_check")
                Text("initCurve(Ease): ${this.initEaseResult}").id("initEase_check")
                Text("initCurve(EaseIn): ${this.initEaseInResult}").id("initEaseIn_check")
                Text("initCurve(EaseOut): ${this.initEaseOutResult}").id("initEaseOut_check")
                Text("initCurve(EaseInOut): ${this.initEaseInOutResult}").id("initEaseInOut_check")
                Text("customCurve(identity): ${this.customIdentityResult}").id("customIdentity_check")
                Text("customCurve(zero): ${this.customZeroResult}").id("customZero_check")
            }.width(80i64.percent)
    }
}
