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

package ohos_app_cangjie_entry.Slider_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import std.time.*
import ohos.resource.__GenerateResource__

@Component
public class View_Slider_uniqueattr_182 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Slider(style: SliderStyle.InSet)
                    .id("slider_id")
                    .blockBorderColor(Color.Gray)
                    .blockColor(Color.Gray)
                    .selectedColor(Color.Gray)
                    .showSteps(true)
                    .showTips(true, content: "")
                    .trackColor(Color.Gray)
                    .trackThickness((-10i64).percent)
            }).width(80i64.percent)
    }
}
