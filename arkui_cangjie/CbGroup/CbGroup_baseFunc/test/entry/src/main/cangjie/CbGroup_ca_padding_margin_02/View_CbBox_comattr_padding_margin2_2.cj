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

package ohos_app_cangjie_entry.CbGroup_ca_padding_margin_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_CbBox_comattr_padding_margin2_2 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => CheckboxGroup(group: "cjcheckboxgroup")
                    .id("CheckboxGroup_comattr_id")
                    .padding(top: 7i64.percent, right: 7i64.percent, bottom: 7i64.percent, left: 7i64.percent)
                    .margin(top: 7i64.percent, right: 7i64.percent, bottom: 7i64.percent, left: 7i64.percent)
                    .backgroundColor(Color.Red)
            }).width(100i64.percent).backgroundColor(Color.Blue)
    }
}
