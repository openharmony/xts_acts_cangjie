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


package ohos_app_cangjie_entry.DPan_uattr_02

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import ohos.resource.__GenerateResource__

@Entry
@Component
public class View_DataPanel_uattr_04 {
    func build() {
        Column(space: 5i64.vp,
            child: {
                => DataPanel(values: [10.000000f64, 20.000000f64], max: 100.000000f64, panelType: DataPanelType.Line)
                    .closeEffect(false)
                    .trackShadow(DataPanelShadowOptions(radius: 3.0f64, offsetX: 3.0f64, offsetY: 3.0f64, colors: [LinearGradient([ColorStop( Color.Red,  0.0f64), ColorStop( Color.Blue,  0.5f64), ColorStop( Color.Green,  1.0f64)])]))
                    .valueColors([LinearGradient([ColorStop( Color.Red,  0.0f64), ColorStop( Color.Blue,  0.5f64), ColorStop( Color.Green,  1.0f64)])])
                    .id("DataPanel_id")
            }).width(80i64.percent)
    }
}
