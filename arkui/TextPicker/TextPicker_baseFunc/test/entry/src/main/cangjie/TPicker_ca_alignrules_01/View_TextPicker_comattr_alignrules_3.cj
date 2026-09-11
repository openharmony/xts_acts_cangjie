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

package ohos_app_cangjie_entry.TPicker_ca_alignrules_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_TextPicker_comattr_alignrules_3 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => TextPicker(range: ["cangjie1", "cangjie2", "cangjie3"])
                    .id("TextPicker_comattr_id")
                    .alignRules(
                        AlignRuleOption(left: HorizontalAlignParam("仓颉", HorizontalAlign.Start),
                            right: HorizontalAlignParam("仓颉", HorizontalAlign.Start),
                            middle: HorizontalAlignParam("仓颉", HorizontalAlign.Start),
                            top: VerticalAlignParam("仓颉", VerticalAlign.Bottom),
                            bottom: VerticalAlignParam("仓颉", VerticalAlign.Bottom),
                            center: VerticalAlignParam("仓颉", VerticalAlign.Bottom), bias: Bias()))
            }).width(100i64.percent)
    }
}
