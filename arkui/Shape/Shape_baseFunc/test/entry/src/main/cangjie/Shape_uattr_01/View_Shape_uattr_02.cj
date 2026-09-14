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
public class View_Shape_uattr_02 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Shape(child: {
                    => Rect().width(300i64.vp).height(50i64.vp)
                })
                    .id("Shape_uattr_id")
                    .fill(Color.Red)
                    .fillOpacity(1.0)
                    .stroke(Color.Blue)
                    .strokeWidth(5i64.px)
                    .strokeDashArray([5i64.px, 5i64.px])
                    .strokeDashOffset(5i64.px)
                    .strokeLineCap(LineCapStyle.Round)
                    .strokeLineJoin(LineJoinStyle.Round)
                    .strokeMiterLimit(5.0)
                    .strokeOpacity(1.0)
                    .antiAlias(false)
            }).width(80i64.percent)
    }
}
