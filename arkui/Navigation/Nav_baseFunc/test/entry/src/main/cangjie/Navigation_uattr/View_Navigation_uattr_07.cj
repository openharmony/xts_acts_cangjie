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

package ohos_app_cangjie_entry.Navigation_uattr
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Builder
func pageMap_07(name: String, param: Any) {
    if (name == "pageOne") {
        Page_uattr_07()
    }
}

@Component
public class View_Navigation_uattr_07 {
    @Provide
    var stack: NavPathStack = NavPathStack()

    func build() {
        Navigation(this.stack) {
            Stack(alignContent: Alignment.Center) {
                Button("push PageOne hideTitleBar false", ButtonOptions(shape: ButtonType.Capsule))
                .id("pushPageButton_07")
                .width(80.percent)
                .height(40)
                .onClick({ evt =>
                    this.stack.pushPath(NavPathInfo(name: "pageOne", param: "pageOne test"))
                })
            }
            .width(100.percent)
            .height(50.percent)
        }
        .id("PageHome_Navigation_07")
        .title("PageHome")
        .navDestination(bind(pageMap_07, this))
    }
}

@Component
class Page_uattr_07 {
    @Consume
    var stack: NavPathStack

    func build() {
        NavDestination() {
            Stack(alignContent: Alignment.Center) {
                Text("this is pageOne hideTitleBar false").id("NavDest_Text_07")
            }
            .width(100.percent)
            .height(50.percent)
        }
        .title("PageOne")
        .hideTitleBar(false)
        .id("NavDest_07")
    }
}
