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

package ohos_app_cangjie_entry.Ellip_ca_overlay_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_Ellipse_comattr_overlay_4 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Ellipse(width: 50i64.vp, height: 50i64.vp)
                    .id("Ellipse_comattr_id")
                    .backgroundColor(Color.Red)
                    .overlay(value: "", align: Alignment.Start, offset: OverlayOffset(x: 100.120000f64, y: 100.120000f64
                    ))
            }).width(80i64.percent)
    }
}
