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

package ohos_app_cangjie_entry.SBCon_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_SBCon_uattr_03 {
    @State
    var arr: Array<Int64> = [1i64, 2i64, 3i64]
    @State
    var onChangeMode: String = "pending"

    func build() {
        Column(){
        Text("onChange: ${onChangeMode}").id("onChange_mode_id")
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
                    .autoHide(true)
                    .showControlButton(true)
                    .showSideBar(true)
                    .sideBarWidth(Option<Length>.Some(200i64.fp))
                    .minSideBarWidth(Option<Length>.Some(100i64.fp))
                    .maxSideBarWidth(Option<Length>.Some(300i64.fp))
                    .minContentWidth(Option<Length>.Some(100i64.fp))
                    .divider(Option<DividerStyle>.Some(
                        DividerStyle(strokeWidth: 1i64.fp, startMargin: 0i64.fp, endMargin: 0i64.fp, color: Color.Red)))
                    .onChange({ mode: Bool =>
                        onChangeMode = "${mode}"
                    })
                    .width(100i64.percent)
                
            }).width(100i64.percent)}
    }
}
