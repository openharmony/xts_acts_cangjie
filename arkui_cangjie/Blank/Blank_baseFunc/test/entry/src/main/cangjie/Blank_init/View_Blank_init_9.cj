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

package ohos_app_cangjie_entry.Blank_init

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__
import kit.ArkUI.*


@Entry
@Component
class View_Blank_init_9 {
    func build() {
        Column() {
            Flex() {
                Text("Bluetooth").fontSize(18)
                Blank().color(@r(app.color.my_color)).id("Blank_id")
                Toggle(ToggleType.Switch).margin(top: 14, bottom: 14, left: 6, right: 6).id("Toggle_id")
            }.width(100.percent).backgroundColor(0xFFFFFF).borderRadius(15).padding(left: 12)
        }.backgroundColor(0xEFEFEF).padding(20)
    }
}
