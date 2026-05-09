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

package ohos_app_cangjie_entry.RowSpl_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_RowSplit_uniqueattr_resizeable_1 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => RowSplit(
                    {
                        =>
                        Text("cangjie1")
                            .height(100i64)
                            .width(10i64.percent)
                            .backgroundColor(16113331i64)
                            .textAlign(TextAlign.Center)
                        Text("cangjie1")
                            .height(100i64)
                            .width(10i64.percent)
                            .backgroundColor(13808780i64)
                            .textAlign(TextAlign.Center)
                        Text("cangjie1")
                            .height(100i64)
                            .width(10i64.percent)
                            .backgroundColor(16113331i64)
                            .textAlign(TextAlign.Center)
                        Text("cangjie1")
                            .height(100i64)
                            .width(10i64.percent)
                            .backgroundColor(13808780i64)
                            .textAlign(TextAlign.Center)
                        Text("cangjie1")
                            .height(100i64)
                            .width(10i64.percent)
                            .backgroundColor(16113331i64)
                            .textAlign(TextAlign.Center)
                    }
                ).id("rowsplit_id").resizeable(true).width(100i64.percent)
            }).width(100i64.percent)
    }
}
