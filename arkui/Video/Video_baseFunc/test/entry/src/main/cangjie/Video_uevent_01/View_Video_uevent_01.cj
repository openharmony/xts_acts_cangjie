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

package ohos_app_cangjie_entry.Video_uevent_01

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.LocalizationKit.__GenerateResource__
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_Video_uevent_01 {
    @State
    var errorResult: String = "None"
    @State
    var finishResult: String = "None"
    @State
    var pauseResult: String = "None"
    @State
    var preparedResult: String = "None"
    @State
    var seekingResult: String = "None"
    @State
    var seekedResult: String = "None"
    @State
    var startResult: String = "None"
    @State
    var updateResult: String = "None"
    @State
    var fullscreenResult: String = "None"

    func build() {
        Column(){
            Text("onError: ${this.errorResult}").id("onError_check")
            Text("onFinish: ${this.finishResult}").id("onFinish_check")
            Text("onPause: ${this.pauseResult}").id("onPause_check")
            Text("onPrepared: ${this.preparedResult}").id("onPrepared_check")
            Text("onSeeking: ${this.seekingResult}").id("onSeeking_check")
            Text("onSeeked: ${this.seekedResult}").id("onSeeked_check")
            Text("onStart: ${this.startResult}").id("onStart_check")
            Text("onUpdate: ${this.updateResult}").id("onUpdate_check")
            Text("onFullscreenChange: ${this.fullscreenResult}").id("onFullscreenChange_check")
        Column(space: 5i64.vp,
            child: {

                => Video(src: @rawfile("video.mp4"), previewUri: @r(app.media.background),
                    currentProgressRate: PlaybackSpeed.SpeedForward100X, controller: VideoController())
                    .id("Video_uevent_01_id")
                    .autoPlay(true)
                    .controls(true)
                    .loop(true)
                    .muted(true)
                    .objectFit(ImageFit.Contain)
                    .onError({ =>
                        this.errorResult = "error"
                        Hilog.info(0u32, "CangjieTest", "Video onError")
                    })
                    .onFinish({ =>
                        this.finishResult = "finished"
                        Hilog.info(0u32, "CangjieTest", "Video onFinish")
                    })
                    .onPause({ =>
                        this.pauseResult = "paused"
                        Hilog.info(0u32, "CangjieTest", "Video onPause")
                    })
                    .onPrepared({ _ =>
                        this.preparedResult = "prepared"
                        Hilog.info(0u32, "CangjieTest", "Video onPrepared")
                    })
                    .onSeeking({ _ =>
                        this.seekingResult = "value:None"
                    })
                    .onSeeked({ _ =>
                        this.seekedResult = "value:None"
                    })
                    .onStart({ =>
                        this.startResult = "started"
                        Hilog.info(0u32, "CangjieTest", "Video onStart")
                    })
                    .onUpdate({ _ =>
                        this.updateResult = "value:None"
                    })
                    .onFullscreenChange({ _ =>
                        this.fullscreenResult = "fullscreen:false"
                    })
            }).width(80i64.percent)
        }

    }
}
