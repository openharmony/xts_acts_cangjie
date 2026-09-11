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

package ohos_app_cangjie_entry.Navigation_hideTitleBar
import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

@Builder
func pageMap(name: String, param: Any) {
    if (name == "pageOne") {
        PageOne()
    }
}

@Component
public class View_Navigation_hideTitleBar1 {
    @Provide
    var stack: NavPathStack = NavPathStack()

    func build() {
        Navigation(this.stack) {
            Stack(alignContent: Alignment.Center) {
                Button("push PageOne", ButtonOptions(shape: ButtonType.Capsule))
                .width(80.percent)
                .height(40)
                .onClick({ evt =>
                    this.stack.pushPath(NavPathInfo(name: "pageOne", param: "pageOne test"))
                })
            }
            .width(100.percent)
            .height(50.percent)
        }
        .id("PageHome_Navigation")
        .title("PageHome")
        .hideTitleBar(true , animated:true)
        .navDestination(bind(pageMap, this))
    }
}

@Component
class PageOne {
    @Consume
    var stack: NavPathStack

    func build() {
        NavDestination() {
            Stack(alignContent: Alignment.Center) {
                Text("this is pageOne")
            }
            .width(100.percent)
            .height(50.percent)
        }
        .title("PageOne")
    }
}