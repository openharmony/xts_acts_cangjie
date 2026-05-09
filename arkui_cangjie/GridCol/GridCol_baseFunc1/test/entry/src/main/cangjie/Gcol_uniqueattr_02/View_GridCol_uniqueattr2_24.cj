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

package ohos_app_cangjie_entry.Gcol_uniqueattr_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_GridCol_uniqueattr2_24 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => GridRow(
                    child: {
                        => GridCol(span: 4i32, offset: 1i32, order: 5i32, child: {
                            => Text().height(20i64.vp)
                        })
                            .borderColor(Color.Red)
                            .span(Option<GridColOptions>.Some(GridColOptions(1i32)))
                            .gridColOffset(Option<GridColOptions>.Some(GridColOptions(0i32)))
                            .order(Option<GridColOptions>.Some(GridColOptions(3i32)))
                            .id("gridcol_id")
                            .borderWidth(2i64.vp)
                    }).width(100i64.percent)
            }).width(100i64.percent)
    }
}
