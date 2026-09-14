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

package ohos_app_cangjie_entry.TabContent_tabBar

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.TestKit.*
import kit.AbilityKit.*
import kit.PerformanceAnalysisKit.Hilog

@Component
public class View_TabContent_tabBar_1 {
    func build() {
        Column(space: 10i64){
            Tabs(){
                TabContent(){
                    Text("第1页").id("text_id")
                }.id("TabContent_0").tabBar({=>bind(this.tabBuilder, this)(0)})
                TabContent(){
                    Text("第2页").id("text_id")
                }.id("TabContent_1").tabBar({=>bind(this.tabBuilder, this)(1)})
                TabContent(){
                    Text("第3页").id("text_id")
                }.id("TabContent_2").tabBar({=>bind(this.tabBuilder, this)(2)})
                TabContent(){
                    Text("第4页").id("text_id")
                }.id("TabContent_3").tabBar({=>bind(this.tabBuilder, this)(3)})                      
            }.id("Tabs_id")
        }.width(100i64.percent).height(100i64.percent)
    }

    @Builder
    func tabBuilder(index:Int32){
        Text("页签${index}")
        .id("tabBar_${index}")
    }
}
