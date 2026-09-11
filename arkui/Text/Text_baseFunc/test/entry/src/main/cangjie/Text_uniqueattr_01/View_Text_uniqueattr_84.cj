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

package ohos_app_cangjie_entry.Text_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Component
public class View_Text_uniqueattr1_84 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Text("1")
                    .id("Text_id")
                    .baselineOffset(11.110000f64.lpx)
                    .fontColor(Color.Gray)
                    .fontFamily("Times New Roman")
                    .fontSize(11.110000f64.lpx)
                    .fontStyle(FontStyle.Normal)
                    .fontWeight(FontWeight.W700)
                    .lineSpacing(11.110000f64.lpx)
                    .maxLines(-2147483648i32)
                    .maxFontSize(11.110000f64.lpx)
                    .minFontSize(11.110000f64.lpx)
                    .textCase(TextCase.UpperCase)
                    .textAlign(TextAlign.Start)
                    .textOverflow(TextOverflow.Ellipsis)
            }).width(80i64.percent)
    }
}
