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

package ohos_app_cangjie_entry


internal import kit.ArkUI.LengthProp
internal import kit.ArkUI.Column
internal import kit.ArkUI.Row
internal import kit.ArkUI.Text
internal import kit.ArkUI.CustomView
internal import kit.ArkUI.CJEntry
internal import kit.ArkUI.loadNativeView
internal import kit.ArkUI.FontWeight
internal import kit.ArkUI.SubscriberManager
internal import kit.ArkUI.ObservedProperty
internal import kit.ArkUI.LocalStorage
import ohos.arkui.state_macro_manage.Entry
import ohos.arkui.state_macro_manage.Component
import ohos.arkui.state_macro_manage.State
import ohos.arkui.state_macro_manage.r


@Entry
@Component
class EntryView {
    @State
    var message: String = "Hello World"

    func build() {
        Row {
            Column {
                Text(this.message)
                    .fontSize(50)
                    .fontWeight(FontWeight.Bold)
                    .onClick ({
                        evt => this.message = "Hello Cangjie"
                    })
            }.width(100.percent)
        }.height(100.percent)
    }
}