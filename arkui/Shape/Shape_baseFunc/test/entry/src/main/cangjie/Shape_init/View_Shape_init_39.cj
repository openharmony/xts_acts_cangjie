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

package ohos_app_cangjie_entry.Shape_init

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_Shape_init_39 {
    func build() {
        Column(space: 10i64,
            child: {
                => Shape(child: {
                    => Text("this is text!!")
                })
                    .id("Shape_id")
                    .viewPort(x: Option<Length>.Some(10.550000f64.lpx), y: Option<Length>.Some(10.550000f64.lpx),
                        width: Option<Length>.Some(10.550000f64.lpx), height: Option<Length>.Some(10.550000f64.lpx))
                    .mesh(Array<Float64>(1i64, repeat: 0.000000f64), 0u32, 0u32)
            }).width(100i64.percent)
    }
}
