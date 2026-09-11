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

package ohos_app_cangjie_entry.ScrBar_ca_width_height_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Component
public class View_ScrollBar_comattr_width_height2_77 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => ScrollBar(
                    scroller: Scroller(),
                    child: {
                        =>
                        Text("sidebar content1").fontSize(20i64.vp)
                    }
                ).id("ScrollBar_comattr_id").width((-10i64).fp).height((-10.110000f64).vp).backgroundColor(Color.Red)
            }).width(100i64.percent)
    }
}
