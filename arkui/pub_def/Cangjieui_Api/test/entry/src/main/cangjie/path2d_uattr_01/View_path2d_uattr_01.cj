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
public class View_path2d_uattr_01 {
    @State var path2dEmptyResult: String = "None"
    @State var path2dNormalResult: String = "None"
    @State var path2dEmptyStrResult: String = "None"
    @State var addPathResult: String = "None"
    @State var setTransformResult: String = "None"
    @State var moveToResult: String = "None"
    @State var lineToResult: String = "None"

    public func aboutToAppear() {
        // Path2D() empty constructor
        let p1 = Path2D()
        this.path2dEmptyResult = "OK"

        // Path2D("M0 0 L100 100") normal string
        let p2 = Path2D("M0 0 L100 100")
        this.path2dNormalResult = "OK"

        // Path2D("") empty string
        let p3 = Path2D("")
        this.path2dEmptyStrResult = "OK"

        // addPath normal
        let p4 = Path2D()
        p4.addPath(p2)
        this.addPathResult = "OK"

        // setTransform normal
        let p5 = Path2D()
        p5.setTransform(1.0, 0.0, 0.0, 1.0, 10.0, 20.0)
        this.setTransformResult = "OK"

        // moveTo normal
        let p6 = Path2D()
        p6.moveTo(10.0, 20.0)
        this.moveToResult = "OK"

        // lineTo normal
        let p7 = Path2D()
        p7.lineTo(100.0, 200.0)
        this.lineToResult = "OK"
    }

    func build() {
        Column(space: 5i64.vp){
                Text("Path2D() empty ctor: ${this.path2dEmptyResult}").id("path2dEmpty_check")
                Text("Path2D normal string: ${this.path2dNormalResult}").id("path2dNormal_check")
                Text("Path2D empty string: ${this.path2dEmptyStrResult}").id("path2dEmptyStr_check")
                Text("addPath: ${this.addPathResult}").id("addPath_check")
                Text("setTransform: ${this.setTransformResult}").id("setTransform_check")
                Text("moveTo: ${this.moveToResult}").id("moveTo_check")
                Text("lineTo: ${this.lineToResult}").id("lineTo_check")
            }.width(80i64.percent)
    }
}
