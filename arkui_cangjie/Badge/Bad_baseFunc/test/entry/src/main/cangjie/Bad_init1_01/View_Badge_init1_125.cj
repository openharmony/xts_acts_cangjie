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

package ohos_app_cangjie_entry.Bad_init1_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Entry
@Component
class View_Badge_init1_125 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Badge(
                    count: 2147483647i32,
                    style: BadgeStyle(color: Color.White, fontSize: 10.550000f64.fp, badgeSize: 10.550000f64.fp,
                        badgeColor: Color.White, fontWeight: FontWeight.W600, borderColor: Color.White,
                        borderWidth: 10.550000f64.fp),
                    position: BadgePosition.RightTop,
                    maxCount: 2147483647i32,
                    child: {
                        =>
                        Text("badge-text1").fontSize(20i64.vp)
                    }
                ).id("badge_id")
            }).width(80i64.percent)
    }
}
