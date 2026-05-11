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

package ohos_app_cangjie_entry.GridRow_init_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_GridRow_init2_57 {
    var bgcolors: Array<Color> = [Color.Red, Color.Green, Color.Blue, Color.Gray]

    func build() {
        Row(space: 5i64.vp,
            child: {
                => GridRow(
                    columns: GridRowOptions(xs: -2147483647i32, sm: -2147483647i32, md: -2147483647i32,
                        lg: -2147483647i32, xl: -2147483647i32, xxl: -2147483647i32),
                    gutter: Option<Length>.Some((-1i64).lpx),
                    direction: Option<GridRowDirection>.Some(GridRowDirection.Row),
                    child: {
                        => ForEach(bgcolors,
                            itemGeneratorFunc: {
                                color: Color, _: Int64 => GridCol(child: {
                                    => Row().height(20i64.vp)
                                }).borderColor(color).borderWidth(2i64.vp)
                            })
                    }).id("gridrow_id").width(100i64.percent)
            }).width(100i64.percent)
    }
}
