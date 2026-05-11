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

package ohos_app_cangjie_entry.Image_uniqueattr1_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*

@Entry
@Component
class View_Image_uniqueattr1_2 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Image(@r(app.media.startIcon))
                    .id("Image_uniqueattr_id")
                    .alt("")
                    .autoResize(false)
                    .fillColor(Color.Blue)
                    .fitOriginalSize(false)
                    .interpolation(ImageInterpolation.High)
                    .matchTextDirection(false)
                    .objectFit(ImageFit.Contain)
                    .objectRepeat(ImageRepeat.NoRepeat)
                    .renderMode(ImageRenderMode.Template)
                    .sourceSize(0i64.px, 0i64.px)
                    .syncLoad(false)
            }).width(80i64.percent)
    }
}
