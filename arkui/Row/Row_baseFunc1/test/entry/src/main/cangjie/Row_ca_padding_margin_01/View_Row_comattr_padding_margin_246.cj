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

package ohos_app_cangjie_entry.Row_ca_padding_margin_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_Row_comattr_padding_margin_246 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Row(
                    child: {
                        =>
                        Text("1").width(20.percent).height(50.vp).backgroundColor(Color.Green)
                        Text("2").width(20.percent).height(50.vp).backgroundColor(Color.Gray)
                    }
                ).id("Row_comattr_id").padding(8i64.vp).margin((-2.110000f64).px).backgroundColor(Color.Red)
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
