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

package ohos_app_cangjie_entry.Swiper_interval_itemSpace_loop_vertical

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Entry
@Component
class View_Swiper_interval_itemSpace_loop_vertical133 {
    func build() {
        Column(space: 10i64,
            child: {
                => Swiper(
                    child: {
                        => ForEach([0i64, 1i64, 2i64, 3i64, 4i64, 5i64, 6i64, 7i64, 8i64, 9i64],
                            itemGeneratorFunc: {
                                item: Int64, _: Int64 => Text(item.toString())
                                    .backgroundColor(0xafeeeei64)
                                    .width(90i64.percent)
                                    .height(160i64)
                                    .textAlign(TextAlign.Center)
                                    .fontSize(30i64)
                            })
                    }).id("Swiper_id").width(300i64).interval(1u32).itemSpace(0i64.px).loop(true).vertical(true)
            }).width(100i64.percent).margin(top: 5i64)
    }
}
