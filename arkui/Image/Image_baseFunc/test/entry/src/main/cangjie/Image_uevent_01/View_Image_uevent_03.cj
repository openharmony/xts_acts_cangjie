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


package ohos_app_cangjie_entry.Image_uevent_01

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
public class View_Image_uevent_03 {
    @State var onErrorMsg: String = ""
    @State var onErrorIsEmpty: String = ""

    func build() {
       Column(){
        Column(space: 5i64.vp,
            child: {
                => Image("https://invalid.example.com/no.png")
                    .onError({ error: ImageError =>
                        error.componentHeight
                        error.componentWidth
                        error.message
                        onErrorIsEmpty = "empty: false"
                    })
                    .id("Image_id")
            }).width(80i64.percent) 
            Text("msg: ${onErrorMsg}").id("onError_msg_id")
            Text("empty: ${onErrorIsEmpty}").id("onError_empty_id")       
       }
    }
}
