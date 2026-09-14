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

package ohos_app_cangjie_entry.SBCon_ca_position_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_SBCon_comattr_position_30 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => SideBarContainer(child: {
                    => Text("1").width(20.percent).height(20.percent)
                })
                    .id("SBCon_comattr_id")
                    .position(x: (-10.110000f64).percent, y: 7i64.percent)
                    .backgroundColor(Color.Red)
            }).width(100i64.percent)
    }
}
