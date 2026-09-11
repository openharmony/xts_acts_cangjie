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

package ohos_app_cangjie_entry.ImSp_uniqueattr_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Component
public class View_ImageSpan_uniqueattr_4 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Text("use ImageSpan uniqueattr",
                    child: {
                        => ImageSpan(@r(app.media.startIcon))
                            .id("ImageSpan_id")
                            .objectFit(ImageFit.Fill)
                            .verticalAlign(ImageSpanAlignment.Baseline)
                            .colorFilter(
                                ColorFilter(
                                    [0.38, 0.0, 0.0, 0.0, 0.0, 0.0, 0.81, 0.0, 0.0, 0.0, 0.0, 0.0, 0.43, 0.0, 0.0, 0.0,
                                        0.0, 0.0, 1.0, 0.0]))
                    })
            }).width(80i64.percent)
    }
}
