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

package ohos_app_cangjie_entry.NavDestination_title
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*

@Entry
@Component
class View_NavDestination_title8 {
    @Provide
    var stack: NavPathStack = NavPathStack()

    func build() {
        NavDestination() {
            Stack(alignContent: Alignment.Center) {
                Text("NavDestinationPage").id("NavDestinationPage_Text")
            }
            .width(100.percent)
            .height(50.percent)
        }
        .id("NavDestination_id")
        .title("\"主页面\"",options:NavigationTitleOptions (
            backgroundColor:Color.Gray,
            backgroundBlurStyle:BlurStyle.None,
            barStyle:BarStyle.Stack,
            paddingStart:Option<Length>.Some(0i64.fp),
            paddingEnd:Option<Length>.Some(0i64.fp),
        ))
    }
}