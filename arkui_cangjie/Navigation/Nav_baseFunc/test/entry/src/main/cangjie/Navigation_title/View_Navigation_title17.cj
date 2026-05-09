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

package ohos_app_cangjie_entry.Navigation_title
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*

@Entry
@Component
class View_Navigation_title17 {
    @Provide
    var stack: NavPathStack = NavPathStack()

    func build() {
        Navigation(this.stack) {
            Stack(alignContent: Alignment.Center) {
                Text("pageHome").id("pageHome_Text")
            }
            .width(100.percent)
            .height(50.percent)
        }
        .id("PageHome_Navigation")
        .title("PageHome8",options:NavigationTitleOptions(
            backgroundColor:Color(0x98fb98u32),
            backgroundBlurStyle:BlurStyle.None,
            barStyle:BarStyle.Standard,
            paddingStart:Option<Length>.Some(0.000000f64.vp),
            paddingEnd:Option<Length>.Some(0.000000f64.vp),
        ))
    }
}