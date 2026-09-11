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

package ohos_app_cangjie_entry.Stack_ca_constraintsize_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_Stack_comattr_constraintsize_84 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Stack(child: {
                    => Text("1").width(20.percent).height(20.percent)
                })
                    .id("Stack_comattr_id")
                    .constraintSize(minWidth: 8i64.px, maxWidth: 11i64.lpx, minHeight: 10.550000f64.fp,
                        maxHeight: (-10i64).vp)
                    .backgroundColor(Color.Red)
            }).width(100i64.percent)
    }
}
