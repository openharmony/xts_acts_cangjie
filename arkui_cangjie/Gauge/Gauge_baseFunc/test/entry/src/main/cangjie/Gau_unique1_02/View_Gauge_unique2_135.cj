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

package ohos_app_cangjie_entry.Gau_unique1_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Entry
@Component
class View_Gauge_unique2_135 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Gauge(value: -10.000000f32, min: -10.000000f32, max: -10.000000f32)
                    .colors(Color.White)
                    .startAngle(-10.000000f32)
                    .strokeWidth((-10.110000f64).px)
                    .trackShadow(radius: -10.000000f32, offsetX: -10.000000f32, offsetY: -10.000000f32)
                    .id("Gauge_id")
            }).width(80i64.percent)
    }
}
