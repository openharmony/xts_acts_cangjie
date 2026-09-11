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
 * Shape EC test view 1:
 *   - CircleShape / EllipseShape / RectShape with width/height set AND with None (default)
 *   - RectShape.radiusWidth / radiusHeight / radius
 *   - BaseShape.fill / width / height / size / offset
 */
@Entry
@Component
public class View_shape_uattr_01 {
    @State var circleResult: String = "None"
    @State var ellipseResult: String = "None"
    @State var rectResult: String = "None"
    @State var radiusResult: String = "None"
    @State var baseResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // CircleShape with None (default) and with width/height set
        try {
            let c1 = CircleShape()
            let c2 = CircleShape(width: 100, height: 100)
            this.circleResult = "Circle-ok"
        } catch (e: Exception) {
            this.circleResult = "Circle-fail"
        }

        // EllipseShape with None (default) and with width/height set
        try {
            let e1 = EllipseShape()
            let e2 = EllipseShape(width: 100, height: 100)
            this.ellipseResult = "Ellipse-ok"
        } catch (e: Exception) {
            this.ellipseResult = "Ellipse-fail"
        }

        // RectShape with None (default) and with width/height set
        try {
            let r1 = RectShape()
            let r2 = RectShape(width: 100, height: 100)
            this.rectResult = "Rect-ok"
        } catch (e: Exception) {
            this.rectResult = "Rect-fail"
        }

        // RectShape.radiusWidth / radiusHeight / radius
        try {
            let r3 = RectShape(width: 100, height: 100).radiusWidth(8).radiusHeight(8).radius(3)
            this.radiusResult = "Radius-ok"
        } catch (e: Exception) {
            this.radiusResult = "Radius-fail"
        }

        // BaseShape.fill / width / height / size / offset (chained on a RectShape instance)
        try {
            let r4 = RectShape().fill(Color.Red).width(100).height(50)
                .size(width: 200, height: 100).offset(x: 10, y: 20)
            this.baseResult = "Base-ok"
        } catch (e: Exception) {
            this.baseResult = "Base-fail"
        }

        this.aggregateResult = "${this.circleResult};${this.ellipseResult};${this.rectResult};${this.radiusResult};${this.baseResult}"
    }

    func build() {
        Column(space: 5i64.vp){
            Text("CircleShape(None+wh): ${this.circleResult}").id("shape_uattr_id")
            Text("EllipseShape(None+wh): ${this.ellipseResult}").id("ellipse_uattr_check")
            Text("RectShape(None+wh): ${this.rectResult}").id("rect_uattr_check")
            Text("RectShape.radius*: ${this.radiusResult}").id("radius_uattr_check")
            Text("BaseShape.*: ${this.baseResult}").id("base_uattr_check")
            Text("Aggregate: ${this.aggregateResult}").id("aggregate_uattr_check")
        }.width(80i64.percent)
    }
}
