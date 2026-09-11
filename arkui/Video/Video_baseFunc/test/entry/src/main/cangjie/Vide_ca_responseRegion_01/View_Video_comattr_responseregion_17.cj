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

package ohos_app_cangjie_entry.Vide_ca_responseRegion_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.LocalizationKit.__GenerateResource__

@Component
public class View_Video_comattr_responseregion_17 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => Video(src: @rawfile("video.mp4"), previewUri: @r(app.media.background),
                    currentProgressRate: PlaybackSpeed.SpeedForward100X, controller: VideoController())
                    .id("Video_comattr_id")
                    .responseRegion(
                        Rectangle(x: 10.110000f64.fp, y: 10.110000f64.fp, width: 10.110000f64.fp,
                            height: 10.110000f64.fp))
                    .backgroundColor(Color.Red)
            }).width(100i64.percent)
    }
}
