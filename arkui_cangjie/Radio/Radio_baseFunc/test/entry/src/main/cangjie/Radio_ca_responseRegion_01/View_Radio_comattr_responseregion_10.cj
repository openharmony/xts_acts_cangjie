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

package ohos_app_cangjie_entry.Radio_ca_responseRegion_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_Radio_comattr_responseregion_10 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Radio(value: "cjradio", group: "cjradiogroup")
                    .id("Radio_comattr_id")
                    .responseRegion(Rectangle(x: 200i64.lpx, y: 200i64.lpx, width: 200i64.lpx, height: 200i64.lpx))
                    .backgroundColor(Color.Red)
            }).width(100i64.percent)
    }
}
