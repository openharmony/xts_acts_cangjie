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

package ohos_app_cangjie_entry.Image_uniqueattr2_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.multimedia.image.{InitializationOptions, Size as mediaSize, PixelMap, createPixelMap}
import ohos.resource.__GenerateResource__

@Component
public class View_Image_uniqueattr2_58 {
    func build() {
        Row(space: 5i64.vp,
            child: {
                => Image(createPixelMap(Array<UInt8>(96, repeat: 100), InitializationOptions(mediaSize(4i32, 6i32))))
                    .id("Image_uniqueattr_id")
                    .alt("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq")
                    .autoResize(false)
                    .fillColor(@r(app.color.my_color))
                    .fitOriginalSize(false)
                    .interpolation(ImageInterpolation.None)
                    .matchTextDirection(false)
                    .objectFit(ImageFit.Contain)
                    .objectRepeat(ImageRepeat.Y)
                    .renderMode(ImageRenderMode.Original)
                    .sourceSize((-10.110000f64).px, (-10.110000f64).px)
                    .syncLoad(false)
            }).width(80i64.percent)
    }
}
