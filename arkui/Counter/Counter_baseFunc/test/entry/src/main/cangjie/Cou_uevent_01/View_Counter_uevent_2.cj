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

package ohos_app_cangjie_entry.Cou_uevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_Counter_uevent_2 {
    @State var onDecTriggered: Bool = false

    func build() {
        Column(){
        Column(space: 5i64.vp,
            child: {
                => Counter(
                    {
                        =>
                        Text("Counter-onDec").fontSize(20i64.vp)
                    }
                )
                    .enableDec(true)
                    .onDec({  =>
                        onDecTriggered = true
                    })
                    .id("Counter_id")
            }).width(80i64.percent)
         Text("onDec: ${onDecTriggered}").id("onDec_result_id")   
        }

    }
}
