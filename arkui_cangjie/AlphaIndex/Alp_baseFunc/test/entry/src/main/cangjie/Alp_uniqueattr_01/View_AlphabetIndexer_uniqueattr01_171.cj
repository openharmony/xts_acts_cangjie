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

package ohos_app_cangjie_entry.Alp_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Entry
@Component
class View_AlphabetIndexer_uniqueattr01_171 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => AlphabetIndexer(arrayValue: ["abcdefsghej", ""], selected: 0u32)
                    .color(Color.White)
                    .alignStyle(IndexerAlign.Left)
                    .font(size: (-10.110000f64).px, weight: FontWeight.W300, family: "abcdefsghej",
                        style: FontStyle.Normal)
                    .itemSize((-10.110000f64).px)
                    .popupBackground(Color.White)
                    .popupColor(Color.White)
                    .id("AlphabetIndexer_id")
            }).width(80i64.percent)
    }
}
