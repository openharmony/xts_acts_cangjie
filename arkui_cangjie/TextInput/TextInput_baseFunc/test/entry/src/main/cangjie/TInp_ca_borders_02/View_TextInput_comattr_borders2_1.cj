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

package ohos_app_cangjie_entry.TInp_ca_borders_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_TextInput_comattr_borders2_1 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => TextInput(placeholder: "cjtextinput", text: "cjtextinputcur")
                    .id("TextInput_comattr_id")
                    .borderColor(Color.Black)
                    .borderRadius(topLeft: (-10i64).percent, topRight: (-10i64).percent, bottomLeft: (-10i64).percent,
                        bottomRight: (-10i64).percent)
                    .borderWidth(
                        EdgeWidths(top: (-10i64).percent, right: (-10i64).percent, bottom: (-10i64).percent,
                            left: (-10i64).percent))
                    .borderStyle(BorderStyle.Solid)
            }).width(80i64.percent)
    }
}
