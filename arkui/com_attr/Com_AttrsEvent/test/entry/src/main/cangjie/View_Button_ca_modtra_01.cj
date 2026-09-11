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

import ohos.base.*
import ohos.arkui.component.*
import ohos.arkui.state_management.*
import ohos.arkui.state_macro_manage.*
import kit.LocalizationKit.{AppResource}
import kit.ArkUI.*
import kit.PerformanceAnalysisKit.Hilog
@Entry
@Component
public class View_Button_ca_modtra_01 {
    @State
    var isShow: Bool = false
    @State
    var isShow2: Bool = false
    public func onAppear():Unit {
        Hilog.info(0, "cangjietest", "BindSheet onAppear.")
    }
    public func onDisappear():Unit {
        Hilog.info(0, "cangjietest", "BindSheet onDisappear.")
    }
    @Builder
    public func myBuilder2():Unit {
        Column() {
            Button(){
                Text("close modal 2")
            }            
            .margin(10).onClick({ClickEvent =>
                this.isShow2 = false
            })
        }.width(100.percent).height(100.percent).justifyContent(FlexAlign.Center)
    }

    @Builder
    public func myBuilder():Unit {
        Column() {
            Button(){
                Text("transition modal 2")
            }
                .margin(10)
                .onClick({ClickEvent
                    => this.isShow2 = true
                })
                .bindSheet(this.isShow2, myBuilder2)

            Button(){
                Text("close modal 1")
            }.margin(10).onClick({ClickEvent
                => this.isShow = false
            })
        }.width(100.percent).height(100.percent).justifyContent(FlexAlign.Center)
    }
    func build() {
        Column {
            Button(){
                Text("transition modal 1")
            }
                .onClick({ClickEvent
                    => this.isShow = true
                })
                .margin(10)
                .bindSheet(this.isShow, myBuilder, options: SheetOptions(onDisappear: {=> this.isShow = false}))
        }.justifyContent(FlexAlign.Center).backgroundColor(Color.White).width(100.percent).height(100.percent)
    }
}
