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


package ohos_app_cangjie_entry.Alp_uevent_03

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_AlphabetIndexer_uevent_03 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => AlphabetIndexer(arrayValue: ["", ""], selected: 0u32)
                    .color(Color.Black)
                    .selectedColor(Color.White)
                    .popupColor(Color.Black)
                    .popupBackground(Color.Black)
                    .usingPopup(true)
                    .popupPosition(x:50i64.vp)
                    .font(size: 10i64.vp, weight: FontWeight.Lighter, family: "", style: FontStyle.Normal)
                    .selectedFont(size: 12i64.vp, weight: FontWeight.Bolder, family: "abc", style: FontStyle.Italic)
                    .popupFont(size: 14i64.vp, weight: FontWeight.Medium, family: "abc", style: FontStyle.Normal)
                    .itemSize(16i64.vp)
                    .alignStyle(IndexerAlign.Left)
                    .onSelect({ index: Int64 =>
                        Hilog.info(0u32, "CangjieTest", "onSelect index: ${index}")
                    })
                    .onRequestPopupData({ index: Int64 =>
                        ["A1", "B1", "C1"]
                    })
                    .onPopupSelect({ index: Int64 =>
                        Hilog.info(0u32, "CangjieTest", "onPopupSelect index: ${index}")
                    })
                    .id("AlphabetIndexer_id")
            }).width(80i64.percent)
    }
}
