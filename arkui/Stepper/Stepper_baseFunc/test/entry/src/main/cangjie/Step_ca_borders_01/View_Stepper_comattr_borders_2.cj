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

package ohos_app_cangjie_entry.Step_ca_borders_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_Stepper_comattr_borders_2 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Stepper(
                    child: {
                        => StepperItem(
                            {
                                =>
                                Text("sidebar content1").fontSize(20i64.vp)
                            }
                        )
                    })
                    .id("Stepper_comattr_id")
                    .borderColor(Color.Blue)
                    .borderRadius(7i64.percent)
                    .borderWidth(8i64.px)
                    .borderStyle(BorderStyle.Dashed)
            }).width(80i64.percent)
    }
}
