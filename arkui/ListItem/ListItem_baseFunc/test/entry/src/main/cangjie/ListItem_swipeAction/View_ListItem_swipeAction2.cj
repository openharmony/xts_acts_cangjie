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

package ohos_app_cangjie_entry.ListItem_swipeAction

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_ListItem_swipeAction2 {
    @Builder func itemRight() {
        Text("right")
        .fontSize(20)
        .backgroundColor(0xAABBCC)
        .width(50.vp)
        .id("right")
    }
    @State
    var offsetValue:Float64=-1.0

    func onOffsetChangeAction(offset:Float64){
        Hilog.info(0u32, "CangjieTest", "offset: ${offset}")
        this.offsetValue=offset
    }
    func build() {
        Column(space: 10i64,
            child: {
                => List(
                    space: 10i64,
                    initialIndex: 0i64,
                    child: {
                        =>
                        ListItem(
                            {
                                => Text("text1")
                                    .width(100i64.percent)
                                    .height(100i64)
                                    .fontSize(16i64)
                                    .backgroundColor(0xFFFFFF)
                                    .textAlign(TextAlign.Center)
                            }).id("listItem_1")
                            .swipeAction(
                                end:bind(this.itemRight,this),
                                edgeEffect:SwipeEdgeEffect.None,
                                onOffsetChange:{a:Float64=>this.onOffsetChangeAction(a)}
                            )
                        ListItem(
                            {
                                => Text("text2")
                                    .width(100i64.percent)
                                    .height(100i64)
                                    .fontSize(16i64)
                                    .backgroundColor(0xFFFFFF)
                                    .textAlign(TextAlign.Center)
                            }).id("listItem_2")
                        ListItem(
                            {
                                => Text("text3")
                                    .width(100i64.percent)
                                    .height(100i64)
                                    .fontSize(16i64)
                                    .backgroundColor(0xFFFFFF)
                                    .textAlign(TextAlign.Center)
                            }).id("listItem_3")
                    }
                ).id("list_id").listDirection(Axis.Vertical)
                Text("${this.offsetValue}").id("text_id")
            }).width(100i64.percent).height(100i64.percent).backgroundColor(0xdcdcdci64)
    }
}
