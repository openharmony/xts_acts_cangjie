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

package ohos_app_cangjie_entry.Rect_init

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}

@Entry
@Component
class View_Rect_init0_6 {
    func build() {
        Column(space: 10i64,
            child: {
                => Rect(width: Option<Length>.Some(10i64.vp), height: Option<Length>.Some(10i64.vp))
                    .id("Rect_id")
                    .radiusWidth(Option<Length>.Some(10i64.vp))
                    .radiusHeight(Option<Length>.Some(10i64.vp))
                    .radius(Option<Length>.Some(10i64.vp))
            }).width(100i64.percent)
    }
}
