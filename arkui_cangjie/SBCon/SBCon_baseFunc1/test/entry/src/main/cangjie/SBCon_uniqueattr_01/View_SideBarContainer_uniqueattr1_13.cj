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

package ohos_app_cangjie_entry.SBCon_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_SideBarContainer_uniqueattr1_13 {
    @State
    var arr: Array<Int64> = [1i64, 2i64, 3i64]

    func build() {
        Row(space: 5i64.vp,
            child: {
                => SideBarContainer(
                    sideBarType: SideBarContainerType.Auto,
                    child: {
                        =>
                        Column(
                            child: {
                                => ForEach(this.arr,
                                    itemGeneratorFunc: {
                                        item: Int64, idx: Int64 => Column(
                                            child: {
                                                => Text("Index${item}")
                                                    .fontSize(25i64.vp)
                                                    .fontColor(678391i64)
                                                    .fontFamily("source-sans-pro,cursive,sans-serif")
                                            })
                                    })
                            })
                        Column(
                            child: {
                                =>
                                Text("sidebar content1").fontSize(20i64.vp)
                                Text("sidebar content2").fontSize(20i64.vp)
                            }
                        )
                    }
                )
                    .id("sidebarcontainer_id")
                    .autoHide(false)
                    .showControlButton(false)
                    .showSideBar(true)
                    .sideBarPosition(SideBarPosition.Start)
                    .width(100i64.percent)
            }).width(100i64.percent)
    }
}
