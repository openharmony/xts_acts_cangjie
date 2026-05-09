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

package ohos_app_cangjie_entry.GridRow_ca_borders_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_GridRow_comattr_borders2_95 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => GridRow(
                    child: {
                        => GridCol(
                            child: {
                                =>
                                Text("sidebar content1").fontSize(20i64.vp)
                            }
                        )
                    })
                    .id("GridRow_comattr_id")
                    .borderColor(Color.Gray)
                    .borderRadius(topLeft: 11.550000f64.lpx, topRight: 11.550000f64.lpx, bottomLeft: 11.550000f64.lpx,
                        bottomRight: 11.550000f64.lpx)
                    .borderWidth(
                        EdgeWidths(top: 8.550000f64.px, right: 8.550000f64.px, bottom: 8.550000f64.px,
                            left: 8.550000f64.px))
                    .borderStyle(BorderStyle.Dashed)
            }).width(80i64.percent)
    }
}
