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

package ohos_app_cangjie_entry.ImSp_ca_markanchor_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Component
public class View_ImageSpan_comattr_markanchor_14 {
    func build() {
        Text(
            child: {
                => ImageSpan(@r(app.media.startIcon))
                    .id("ImageSpan_comattr_id")
                    .markAnchor(x: 8.550000f64.px, y: 8.550000f64.px)
                    .backgroundColor(Color.Red)
            }).width(100i64.percent)
    }
}
