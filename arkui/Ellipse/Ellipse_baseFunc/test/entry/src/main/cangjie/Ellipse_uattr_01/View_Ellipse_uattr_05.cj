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


package ohos_app_cangjie_entry.Ellipse_uattr_01

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
public class View_Ellipse_uattr_05 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Ellipse(width: Option<Length>.Some(100i64.fp), height: Option<Length>.Some(100i64.fp))
                    .fill(Color.Green)
                    .fillOpacity(0.8)
                    .stroke(Color.Black)
                    .strokeWidth(8i64.fp)
                    .strokeDashArray([8i64.fp, 4i64.fp, 8i64.fp, 4i64.fp])
                    .strokeDashOffset(8i64.fp)
                    .strokeLineCap(LineCapStyle.Round)
                    .strokeLineJoin(LineJoinStyle.Miter)
                    .strokeMiterLimit(8.0)
                    .strokeOpacity(0.2)
                    .antiAlias(true)
                    .id("Ellipse_id")
            }).width(80i64.percent)
    }
}
