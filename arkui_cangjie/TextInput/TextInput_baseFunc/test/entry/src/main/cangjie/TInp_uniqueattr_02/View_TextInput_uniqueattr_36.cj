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

package ohos_app_cangjie_entry.TInp_uniqueattr_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.__GenerateResource__
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_TextInput_uniqueattr_36 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => TextInput(placeholder: "TextInputunique02")
                    .id("TextInput_id")
                    .placeholderColor(10u32)
                    .selectionMenuHidden(false)
                    .showUnderline(false)
                    .style(TextInputStyle.Inline)
                    .maxLength(114514u32)
                    .maxLines(0i32)
                    .textAlign(TextAlign.End)
            }).width(80i64.percent)
    }
}
