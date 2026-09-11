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

package ohos_app_cangjie_entry.Span_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Component
public class View_Span_uniqueattr_284 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Text("Used to use Span",
                    child: {
                        => Span("%^$^$*%^")
                            .fontColor(Color.Gray)
                            .fontStyle(FontStyle.Italic)
                            .fontWeight(FontWeight.W200)
                            .fontFamily("%^$^$*%^")
                            .fontSize(8i64.vp)
                            .letterSpacing(8i64.vp)
                            .textCase(TextCase.UpperCase)
                            .decoration(decorationType: TextDecorationType.LineThrough, color: Color.Gray)
                    }).id("Span_id")
            }).width(80i64.percent)
    }
}
