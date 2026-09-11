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

package ohos_app_cangjie_entry

internal import ohos.base.LengthProp
internal import ohos.arkui.component.Column
internal import ohos.arkui.component.Row
internal import ohos.arkui.component.Text
internal import ohos.arkui.component.Button
internal import ohos.arkui.component.Scroller
internal import ohos.arkui.component.CustomView
internal import ohos.arkui.component.CJEntry
internal import ohos.arkui.component.loadNativeView
internal import ohos.arkui.component.*
internal import ohos.arkui.state_management.SubscriberManager
internal import ohos.arkui.state_management.ObservedProperty
internal import ohos.arkui.state_management.LocalStorage
import ohos.arkui.state_macro_manage.Entry
import ohos.arkui.state_macro_manage.Component
import ohos.arkui.state_macro_manage.State
import ohos.arkui.state_macro_manage.r
import std.collection.ArrayList
import ohos.resource_manager.*
internal import ohos.resource.__GenerateResource__

@Entry
@Component
class EntryView {
    @State
    var message: String = "Hello Cangjie"

    let arr: ArrayList<Int64> = ArrayList<Int64>([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    let scroller = Scroller()
    func build() {
        Row {
            Column {
                Button(message).onClick ({
                    evt => 
                }).fontSize(40).height(80)
                Button("alert")
                    .id("id")
                    .onClick ( {
                        evt =>

                        this.getUIContext().showAlertDialog(
                            AlertDialogParamWithConfirm(
                                title: "alert dialog",
                                message: "title",
                                autoCancel: true,
                                alignment: DialogAlignment.Bottom,
                                gridCount: 3,
                                cancel: {
                                    => ()
                                }
                            )
                        )
                    })
                    .backgroundColor(0x317aff)
                    .width(400.px)
                    .height(150.px)
                Button("Hello Cangjie1")
                    .id("id1")
                    .onClick ({evt => 
                    })
                    .width(400.px)
                    .height(150.px)
                TextInput(text: "cangjie")
                Text("ohos")
                Text("cangjie")
                Image(@r(app.media.app_icon))
                    .id("icon")
                    .width(110)
                    .height(110)
                    .border(width: 1.vp)
                    .borderStyle(BorderStyle.Dashed)

                Stack(alignContent: Alignment.End) {
                    Scroll(this.scroller) {
                        Flex(direction: FlexDirection.Column, alignItems: ItemAlign.Start) {
                            ForEach(
                                this.arr,
                                itemGeneratorFunc: {
                                    item: Int64, idx: Int64 => Row() {
                                        Text(item.toString())
                                            .width(90.percent)
                                            .height(100)
                                            .backgroundColor(0x3366CC)
                                            .borderRadius(15)
                                            .fontSize(16)
                                            .textAlign(TextAlign.Center)
                                            .margin(top: 5)
                                    }
                                }
                            )
                        }.margin(left: 52)
                    }.scrollBar(BarState.Off).scrollable(ScrollDirection.Vertical)
                    ScrollBar(scroller: this.scroller, direction: ScrollBarDirection.Vertical) {
                        Text("").width(30).height(100).borderRadius(10).backgroundColor(0xC0C0C0)
                    }.width(30).backgroundColor(0xededed)
                }
            }.width(100.percent)
        }.height(100.percent)
    }
}
