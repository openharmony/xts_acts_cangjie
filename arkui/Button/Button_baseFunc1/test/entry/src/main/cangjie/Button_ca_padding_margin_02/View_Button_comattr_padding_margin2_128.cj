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

package ohos_app_cangjie_entry.Button_ca_padding_margin_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_Button_comattr_padding_margin2_128 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Button(
                    {
                        =>
                        Text("1").width(20.percent).height(50.vp).backgroundColor(Color.Green)
                    }
                )
                    .id("Button_comattr_id")
                    .padding(top: 10i64.fp, right: 10i64.fp, bottom: 10i64.fp, left: 10i64.fp)
                    .margin(top: (-2i64).fp, right: (-2i64).fp, bottom: (-2i64).fp, left: (-2i64).fp)
                    .backgroundColor(Color.Red)
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
