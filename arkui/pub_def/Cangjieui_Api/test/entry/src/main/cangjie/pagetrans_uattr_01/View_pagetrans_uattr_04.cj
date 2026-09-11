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

package ohos_app_cangjie_entry.pagetrans_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.page_transition.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog

@Entry
@Component
public class View_pagetrans_uattr_04 {
    @State var text: String = "None"

    public func aboutToAppear() {
        this.text = "pagetrans_04_Bottom_Exit"
    }

    func build() {
        Column(space: 5i64.vp, child: {
            => Text(this.text).id("pagetrans_04_check")
        }).width(80i64.percent)
    }

    protected func pageTransition(): Unit {
        PageTransitionExit()
            .slide(SlideEffect.Bottom)
    }
}
