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

package ohos_app_cangjie_entry.TInp_ca_scale_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_TextInput_comattr_scale_27 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => TextInput(placeholder: "cjtextinput", text: "cjtextinputcur")
                    .id("TextInput_comattr_id")
                    .backgroundColor(Color.Red)
                    .scale(x: 0.910000f32, y: 0.910000f32, z: 0.910000f32, centerX: (-10i64).fp, centerY: (-10i64).fp)
            }).width(80i64.percent)
    }
}
