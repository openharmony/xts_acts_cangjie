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
public class View_richeditor_uattr_02 {
    let controller: RichEditorController = RichEditorController()

    let decorationNone: DecorationStyleResult = DecorationStyleResult(TextDecorationType.None, Color.Black)
    let decorationOverline: DecorationStyleResult = DecorationStyleResult(TextDecorationType.Overline, Color(0xFFFFFFFF))
    let decorationLineThrough: DecorationStyleResult = DecorationStyleResult(TextDecorationType.LineThrough, Color(0x00000000))

    let insertValueBoundary: RichEditorInsertValue = RichEditorInsertValue(0, "")

    @State
    var readyMessage: String = "not ready"
    @State
    var decoNoneText: String = "no deco"
    @State
    var decoOverlineText: String = "no deco"
    @State
    var decoLineThroughText: String = "no deco"
    @State
    var insertOffsetText: String = "no offset"
    @State
    var insertValueText: String = "no value"

    func build() {
        Column() {
            Text(this.readyMessage).id("re02_ready_text").width(100.percent)
            Text(this.decoNoneText).id("re02_deco_none_text").width(100.percent)
            Text(this.decoOverlineText).id("re02_deco_overline_text").width(100.percent)
            Text(this.decoLineThroughText).id("re02_deco_linethrough_text").width(100.percent)
            Text(this.insertOffsetText).id("re02_offset_text").width(100.percent)
            Text(this.insertValueText).id("re02_value_text").width(100.percent)

            RichEditor(this.controller)
                .id("re02_richeditor")
                .width(100.percent)
                .height(30.percent)
                .borderWidth(1)
                .borderColor(Color.Blue)
                .onReady({
                    =>
                    this.readyMessage = "ready"
                    if (this.decorationNone.decorationType.getOrThrow() == TextDecorationType.None) {
                        this.decoNoneText = "None"
                    }
                    if (this.decorationOverline.decorationType.getOrThrow() == TextDecorationType.Overline) {
                        this.decoOverlineText = "Overline"
                    }
                    if (this.decorationLineThrough.decorationType.getOrThrow() == TextDecorationType.LineThrough) {
                        this.decoLineThroughText = "LineThrough"
                    }
                    if (this.insertValueBoundary.insertOffset == 0) {
                        this.insertOffsetText = "0"
                    }
                    if (this.insertValueBoundary.insertValue == "") {
                        this.insertValueText = "empty"
                    }
                    this.controller.addTextSpan(
                        content: "",
                        options: RichEditorTextSpanOptions(
                            style: RichEditorTextStyle(
                                decoration: TextDecorationOptions(
                                    decorationType: TextDecorationType.None,
                                    color: Color.Black
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
                    return true
                })
                .onDidChange({
                    t1, t2 =>
                    ()
                })
        }.width(100.percent)
    }
}
