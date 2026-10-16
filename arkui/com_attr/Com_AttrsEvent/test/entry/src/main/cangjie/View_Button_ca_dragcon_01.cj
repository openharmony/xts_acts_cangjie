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

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_Button_ca_dragcon_01{
    @State var drag: String = ""
    @Builder
    func myBuilder() {
        Row() {
            Image(@r(app.media.startIcon)).size(width: 30.vp, height: 30.vp)
            Text("Buildercontent")
                .width(300.px)
                .onClick({
                    evt => this.drag = "delbindcontextmenu"
                })
                .id("text_id")
        }
        .width(150)
    }
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Button("dragcontrol")
                .id("Button_comattr_id")
                .width(30.percent)
                .bindContextMenu(builder: this.myBuilder, responseType: ResponseType.LongPress,options: ContextMenuOptions(
                        enableArrow: true,
                        placement: Placement.Bottom,
                        arrowOffset: 20.vp
                    ))
                .dragPreview("flexdrag")
            }).width(100i64.percent)
    }
}
