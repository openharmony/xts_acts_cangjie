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


package ohos_app_cangjie_entry.Circle_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_Circle_uattr_04 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Circle(width: Option<Length>.Some(100i64.px), height: Option<Length>.Some(100i64.px))
                    .fill(Color.Blue)
                    .fillOpacity(0.3)
                    .stroke(Color.White)
                    .strokeWidth(3i64.px)
                    .strokeDashArray([3i64.px, 3i64.px, 3i64.px])
                    .strokeDashOffset(3i64.px)
                    .strokeLineCap(LineCapStyle.Butt)
                    .strokeLineJoin(LineJoinStyle.Bevel)
                    .strokeMiterLimit(3.0)
                    .strokeOpacity(0.7)
                    .antiAlias(false)
                    .id("Circle_id")
            }).width(80i64.percent)
    }
}
