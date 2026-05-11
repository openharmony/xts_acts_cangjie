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

package ohos_app_cangjie_entry.Select_uniqueattr2_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_Select_uniqueattr2_152 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Select(
                    [SelectOption(value: "aaa", icon: @r(app.media.startIcon)),
                        SelectOption(value: "仓颉鸿蒙", icon: @r(app.media.background)),
                        SelectOption(value: "1234567", icon: @r(app.media.foreground))])
                    .id("Select_uniqueattr_id")
                    .selectedOptionFontColor(@r(app.color.my_color))
                    .optionBgColor(@r(app.color.my_color))
                    .optionFont(style: FontStyle.Normal, weight: FontWeight.Lighter, size: (-10.110000f64).vp,
                        family: "")
                    .optionFontColor(@r(app.color.my_color))
                    .space((-10.110000f64).vp)
                    .arrowPosition(ArrowPosition.Start)
                    .menuBackgroundColor(@r(app.color.my_color))
                    .menuBackgroundBlurStyle(BlurStyle.None)
                    .optionWidth((-10.110000f64).vp)
            }).width(80i64.percent)
    }
}
