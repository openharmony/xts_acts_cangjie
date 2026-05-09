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

package ohos_app_cangjie_entry.RCon_ca_padding_margin_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_RelCon_comattr_padding_margin2_147 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => RelativeContainer(
                    child: {
                        =>
                        Text("1").width(20.percent).height(50.vp).backgroundColor(Color.Green)
                        Text("2").width(20.percent).height(50.vp).backgroundColor(Color.Gray)
                    }
                )
                    .id("RelCon_comattr_id")
                    .padding(top: 8.550000f64.px, right: 8.550000f64.px, bottom: 8.550000f64.px, left: 8.550000f64.px)
                    .margin(top: 10i64.fp, right: 10i64.fp, bottom: 10i64.fp, left: 10i64.fp)
                    .backgroundColor(Color.Red)
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
