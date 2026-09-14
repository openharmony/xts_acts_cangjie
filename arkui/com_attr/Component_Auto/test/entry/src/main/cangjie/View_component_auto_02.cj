/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

import kit.ArkUI.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*

@Component
public class View_component_auto_02 {
    func build(){
        Flex(child: {
                =>
                Tabs(barPosition: BarPosition.Start){
                    TabContent(){
                        Column().width(20).height(20)
                    }
                }
                .width(LengthMetrics.AUTO)
                .height(LengthMetrics.AUTO)
                .id("auto_tabs") 
                .align(Alignment.TopStart) 
                .direction(Direction.Ltr)              
            })
        .flexBasis(LengthMetrics.AUTO)
        .id("auto_flex")
    }
}