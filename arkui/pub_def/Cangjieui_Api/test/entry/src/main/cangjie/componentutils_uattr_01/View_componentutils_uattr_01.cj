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

package ohos_app_cangjie_entry.componentutils_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component_utils.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__
import ohos.arkui.component_utils.Size as utilSize
import ohos.arkui.component_utils.Offset as utilOffSet

/**
 * component_utils EC test view 1:
 *   - Size with normal values (100.0, 200.0) and boundary values (0.0, -1.0)
 *   - Offset with normal values (50.0, 75.0) and boundary values (0.0, -1.0)
 */
@Entry
@Component
public class View_componentutils_uattr_01 {
    @State var sizeNormalResult: String = "None"
    @State var sizeBoundaryResult: String = "None"
    @State var offsetNormalResult: String = "None"
    @State var offsetBoundaryResult: String = "None"
    @State var aggregateResult: String = "None"

    public func aboutToAppear() {
        // Size with normal values (100.0, 200.0)
        try {
            let sizeNormal = utilSize(100.0, 200.0)
            this.sizeNormalResult = "width=${sizeNormal.width}, height=${sizeNormal.height}"
        } catch (e: Exception) {
            this.sizeNormalResult = "Size-normal-fail"
        }

        // Size with boundary values (0.0, -1.0)
        try {
            let sizeBoundary = utilSize(0.0, -1.0)
            this.sizeBoundaryResult = "width=${sizeBoundary.width}, height=${sizeBoundary.height}"
        } catch (e: Exception) {
            this.sizeBoundaryResult = "Size-boundary-fail"
        }

        // Offset with normal values (50.0, 75.0)
        try {
            let offsetNormal = utilOffSet(50.0, 75.0)
            this.offsetNormalResult = "x=${offsetNormal.x}, y=${offsetNormal.y}"
        } catch (e: Exception) {
            this.offsetNormalResult = "Offset-normal-fail"
        }

        // Offset with boundary values (0.0, -1.0)
        try {
            let offsetBoundary = utilOffSet(0.0, -1.0)
            this.offsetBoundaryResult = "x=${offsetBoundary.x}, y=${offsetBoundary.y}"
        } catch (e: Exception) {
            this.offsetBoundaryResult = "Offset-boundary-fail"
        }

        this.aggregateResult = "${this.sizeNormalResult};${this.sizeBoundaryResult};${this.offsetNormalResult};${this.offsetBoundaryResult}"
    }

    func build() {
        Column(space: 5i64.vp){
            Text("Size(100.0,200.0): ${this.sizeNormalResult}").id("size_normal_check")
            Text("Size(0.0,-1.0): ${this.sizeBoundaryResult}").id("size_boundary_check")
            Text("Offset(50.0,75.0): ${this.offsetNormalResult}").id("offset_normal_check")
            Text("Offset(0.0,-1.0): ${this.offsetBoundaryResult}").id("offset_boundary_check")
            Text("Aggregate: ${this.aggregateResult}").id("aggregate_check")
        }.width(80i64.percent)
    }
}
