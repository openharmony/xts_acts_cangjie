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
func pageMap_03(name: String, param: Any) {
    if (name == "pageOne") {
        Page_uattr_03()
    }
}

@Component
public class View_Navigation_uattr_03 {
    @Provide
    var stack: NavPathStack = NavPathStack()

    func build() {
        Navigation(this.stack) {
            Stack(alignContent: Alignment.Center) {
                Button("push PageOne with param", ButtonOptions(shape: ButtonType.Capsule))
                .id("pushPageButton_03")
                .width(80.percent)
                .height(40)
                .onClick({ evt =>
                    this.stack.pushPath(NavPathInfo(name: "pageOne", param: "HelloParam"))
                })
            }
            .width(100.percent)
            .height(50.percent)
        }
        .id("PageHome_Navigation_03")
        .title("PageHome")
        .navDestination(bind(pageMap_03, this))
    }
}

@Component
class Page_uattr_03 {
    @Consume
    var stack: NavPathStack

    func build() {
        NavDestination() {
            Stack(alignContent: Alignment.Center) {
                Text("this is pageOne").id("NavDest_Text_03")
            }
            .width(100.percent)
            .height(50.percent)
        }
        .title("PageOne")
        .id("NavDest_03")
    }
}
