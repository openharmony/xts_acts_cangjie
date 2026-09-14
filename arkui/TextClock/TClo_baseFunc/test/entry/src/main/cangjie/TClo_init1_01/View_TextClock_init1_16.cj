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

package ohos_app_cangjie_entry.TClo_init1_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Component
public class View_TextClock_init1_16 {
    @State var text_start = ""
    @State var text_stop = ""
    func build() {
        Column(){
            Text(this.text_start).id("textstart")
            Text(this.text_stop).id("textstop")
            Column(space: 5i64.vp,
                child: {
                    => TextClock(timeZoneOffset: -12.750000f32, controller: TextClockController()).id("TextClock_id")
                    .onClick({
                    evt => TextClockController().start()
                        text_start = "textclock_start"
                        TextClockController().stop()
                        text_stop = "textclock_stop"

                        })
                }).width(80i64.percent)
        }

    }
}
