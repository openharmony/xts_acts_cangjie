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

package ohos_app_cangjie_entry.TTim_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_TextTimer_uattr_01 {
    @State
    var timerResult: String = "None"
    
    func build() {
        Column(){
        Text("onTimer: ${this.timerResult}").id("onTimer_check")
        Column(space: 5i64.vp,
            child: {
                => TextTimer(isCountDown: true, count: 60000i64, controller: TextTimerController())
                    .format("HH:mm:ss.SS")
                    .id("TextTimer_uattr_01_id")
                    .onTimer({ utc: Int64,index:Int64 =>
                        this.timerResult = "utc:${utc}"
                        Hilog.info(0u32, "CangjieTest", "TextTimer onTimer utc:${utc}")
                    })
            }).width(80i64.percent)
        }

    }
}
