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

package ohos_app_cangjie_entry.Shape_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}

@Component
public class View_Shape_uattr_01 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Shape(child: {
                    => Rect().width(300i64.vp).height(50i64.vp)
                })
                    .id("Shape_uattr_id")
                    .fill(Color.Black)
                    .fillOpacity(0.0)
                    .stroke(Color.Red)
                    .strokeWidth(1i64.vp)
                    .strokeDashArray([])
                    .strokeDashOffset(0i64.vp)
                    .strokeLineCap(LineCapStyle.Butt)
                    .strokeLineJoin(LineJoinStyle.Miter)
                    .strokeMiterLimit(4.0)
                    .strokeOpacity(0.0)
                    .antiAlias(true)
            }).width(80i64.percent)
    }
}
