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

package ohos_app_cangjie_entry.TabCon_ca_lineargradient_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_TabConent_comattr_lineargradient_51 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Tabs(
                    child: {
                        => TabContent()
                            .id("TabContent_comattr_id")
                            .backgroundColor(Color.Red)
                            .linearGradient(angle: 0.110000f64, direction: GradientDirection.Bottom,
                                colors: [(Color.Black, 0.110000f64)], repeating: true)
                    })
            }).width(80i64.percent)
    }
}
