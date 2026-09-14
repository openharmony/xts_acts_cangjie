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

package ohos_app_cangjie_entry.Row_ca_imageeffects_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_Row_comattr_imageeffects2_52 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Row(
                    child: {
                        =>
                        Text("sidebar content1").fontSize(20i64.vp)
                        Text("sidebar content2").fontSize(20i64.vp)
                    }
                )
                    .id("Row_comattr_id")
                    .backgroundColor(Color.Red)
                    .grayscale(-10.110000f64)
                    .brightness(0.110000f64)
                    .saturate(100.120000f64)
                    .contrast(100.120000f64)
                    .invert(-10.110000f64)
            }).width(80i64.percent)
    }
}
