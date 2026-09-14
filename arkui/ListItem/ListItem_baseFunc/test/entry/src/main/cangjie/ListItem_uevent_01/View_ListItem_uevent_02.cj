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


package ohos_app_cangjie_entry.ListItem_uevent_01

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
public class View_ListItem_uevent_02 {
    @State var onSelectValue: String = "pending"

    func build() {
        Column(){
            Text("onSelect: ${onSelectValue}").id("onSelect_result_id")
            Column(space: 10i64,
            child: {
                => List(
                    space: 10i64,
                    initialIndex: 0i64,
                    child: {
                        =>
                        ListItem(
                            {
                                => Text("item1")
                                    .width(100i64.percent)
                                    .height(100i64)
                                    .fontSize(16i64)
                                    .backgroundColor(0xFFFFFF)
                                    .textAlign(TextAlign.Center)
                            })
                            .selectable(true)
                            .onSelect({ select: Bool =>
                                onSelectValue = "${select}"
                            })
                            .id("ListItem_id")
                    }
                ).id("list_id").listDirection(Axis.Vertical).width(80i64.percent).height(300i64.vp)
            }).width(80i64.percent)
        }

    }
}
