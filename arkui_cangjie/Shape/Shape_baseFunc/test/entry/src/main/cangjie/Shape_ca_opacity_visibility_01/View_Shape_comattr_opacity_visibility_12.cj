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

package ohos_app_cangjie_entry.Shape_ca_opacity_visibility_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_Shape_comattr_opacity_visibility_12 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Shape(child: {
                    => Rect().width(300i64.vp).height(50i64.vp)
                }).id("Shape_comattr_id").backgroundColor(Color.Red).opacity(100.100000f64).visibility(Visibility.None)
            }).width(80i64.percent)
    }
}
