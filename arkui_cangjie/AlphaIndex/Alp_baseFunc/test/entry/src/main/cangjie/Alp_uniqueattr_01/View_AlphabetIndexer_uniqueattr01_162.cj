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
class View_AlphabetIndexer_uniqueattr01_162 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => AlphabetIndexer(arrayValue: ["仓颉鸿蒙", ""], selected: 0u32)
                    .color(10i64)
                    .alignStyle(IndexerAlign.Left)
                    .font(size: 10i64.fp, weight: FontWeight.W100, family: "仓颉鸿蒙", style: FontStyle.Normal)
                    .itemSize(10i64.fp)
                    .popupBackground(10i64)
                    .popupColor(10i64)
                    .id("AlphabetIndexer_id")
            }).width(80i64.percent)
    }
}
