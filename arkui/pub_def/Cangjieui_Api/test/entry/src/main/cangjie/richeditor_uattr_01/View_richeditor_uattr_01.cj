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

package ohos_app_cangjie_entry.richeditor_uattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.component.rich_editor.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*

@Entry
@Component
public class View_richeditor_uattr_01 {
    let controller: RichEditorController = RichEditorController()

    let decorationNormal: DecorationStyleResult = DecorationStyleResult(TextDecorationType.Underline, Color.Red)
    let insertValueNormal: RichEditorInsertValue = RichEditorInsertValue(5, "HelloRichEditor")

    @State
    var readyMessage: String = "not ready"
    @State
    var decoTypeMessage: String = "no deco"
    @State
    var insertOffsetText: String = "no offset"
    @State
    var insertValueText: String = "no value"
    @State
    var deleteMessage: String = "no delete"
    @State
    var didChangeMessage: String = "no change"

    func build() {
        Column() {
            Text(this.readyMessage).id("re01_ready_text").width(100.percent)
            Text(this.decoTypeMessage).id("re01_deco_text").width(100.percent)
            Text(this.insertOffsetText).id("re01_offset_text").width(100.percent)
            Text(this.insertValueText).id("re01_value_text").width(100.percent)
            Text(this.deleteMessage).id("re01_delete_text").width(100.percent)
            Text(this.didChangeMessage).id("re01_change_text").width(100.percent)

            RichEditor(this.controller)
                .id("re01_richeditor")
                .width(100.percent)
                .height(30.percent)
                .borderWidth(1)
                .borderColor(Color.Green)
                .onReady({
                    =>
                    this.readyMessage = "ready"
                    if (this.decorationNormal.decorationType.getOrThrow() == TextDecorationType.Underline) {
                        this.decoTypeMessage = "Underline"
                    }
                    if (this.insertValueNormal.insertOffset == 5) {
                        this.insertOffsetText = "5"
                    }
                    if (this.insertValueNormal.insertValue == "HelloRichEditor") {
                        this.insertValueText = "HelloRichEditor"
                    }
                    this.controller.addTextSpan(
                        content: "Hello, RichEditor!",
                        options: RichEditorTextSpanOptions(
                            style: RichEditorTextStyle(
                                fontColor: Color.Red,
                                fontSize: 20.fp,
                                fontStyle: FontStyle.Italic,
                                decoration: TextDecorationOptions(
                                    decorationType: TextDecorationType.Underline,
                                    color: Color.Red
                                )
                            )
                        )
                    )
                })
                .aboutToImeInput({
                    value =>
                    this.insertOffsetText = value.insertOffset.toString()
                    this.insertValueText = value.insertValue
                    return true
                })
                .aboutToDelete({
                    value =>
                    this.deleteMessage = "aboutToDelete"
                    return true
                })
                .onDidChange({
                    t1, t2 =>
                    this.didChangeMessage = "changed"
                })
        }.width(100.percent)
    }
}
