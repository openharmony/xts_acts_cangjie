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

package ohos_app_cangjie_entry.path2d_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.path_2d.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_path2d_uattr_02 {
    @State var arcTrueResult: String = "None"
    @State var arcFalseResult: String = "None"
    @State var arcToResult: String = "None"
    @State var quadraticResult: String = "None"
    @State var bezierResult: String = "None"
    @State var ellipseTrueResult: String = "None"
    @State var ellipseFalseResult: String = "None"
    @State var rectResult: String = "None"
    @State var closePathResult: String = "None"

    public func aboutToAppear() {
        // arc counterclockwise=true
        let p1 = Path2D()
        p1.arc(100.0, 75.0, 50.0, 0.0, 1.0, counterclockwise: true)
        this.arcTrueResult = "OK"

        // arc counterclockwise=false
        let p2 = Path2D()
        p2.arc(100.0, 75.0, 50.0, 0.0, 6.28, counterclockwise: false)
        this.arcFalseResult = "OK"

        // arcTo normal
        let p3 = Path2D()
        p3.arcTo(150.0, 20.0, 150.0, 70.0, 50.0)
        this.arcToResult = "OK"

        // quadraticCurveTo normal
        let p4 = Path2D()
        p4.quadraticCurveTo(100.0, 100.0, 200.0, 20.0)
        this.quadraticResult = "OK"

        // bezierCurveTo normal
        let p5 = Path2D()
        p5.bezierCurveTo(20.0, 100.0, 200.0, 100.0, 200.0, 20.0)
        this.bezierResult = "OK"

        // ellipse counterclockwise=true
        let p6 = Path2D()
        p6.ellipse(200.0, 200.0, 50.0, 100.0, 0.0, 1.0, 1.0, counterclockwise: true)
        this.ellipseTrueResult = "OK"

        // ellipse counterclockwise=false
        let p7 = Path2D()
        p7.ellipse(200.0, 200.0, 50.0, 100.0, 0.0, 1.0, 6.0, counterclockwise: false)
        this.ellipseFalseResult = "OK"

        // rect normal
        let p8 = Path2D()
        p8.rect(20.0, 20.0, 100.0, 100.0)
        this.rectResult = "OK"

        // closePath normal
        let p9 = Path2D()
        p9.moveTo(10.0, 10.0)
        p9.lineTo(100.0, 10.0)
        p9.lineTo(100.0, 100.0)
        p9.closePath()
        this.closePathResult = "OK"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("arc(counterclockwise=true): ${this.arcTrueResult}").id("arcTrue_check")
                Text("arc(counterclockwise=false): ${this.arcFalseResult}").id("arcFalse_check")
                Text("arcTo: ${this.arcToResult}").id("arcTo_check")
                Text("quadraticCurveTo: ${this.quadraticResult}").id("quadraticCurveTo_check")
                Text("bezierCurveTo: ${this.bezierResult}").id("bezierCurveTo_check")
                Text("ellipse(counterclockwise=true): ${this.ellipseTrueResult}").id("ellipseTrue_check")
                Text("ellipse(counterclockwise=false): ${this.ellipseFalseResult}").id("ellipseFalse_check")
                Text("rect: ${this.rectResult}").id("rect_check")
                Text("closePath: ${this.closePathResult}").id("closePath_check")
            }.width(80i64.percent)
    }
}
