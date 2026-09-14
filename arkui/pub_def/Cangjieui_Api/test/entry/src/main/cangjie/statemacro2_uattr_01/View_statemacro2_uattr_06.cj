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

package ohos_app_cangjie_entry.statemacro2_uattr_01

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
public class View_statemacro2_uattr_06 {
    @LocalStorageLink["sm_localKey"]
    var localLinkNormal: Int64 = 500
    @LocalStorageLink[""]
    var localLinkEmpty: Int64 = 600
    @LocalStorageProp["sm_localKeyProp"]
    let localPropNormal: Int64 = 700
    @LocalStorageProp[""]
    let localPropEmpty: Int64 = 800

    public func aboutToAppear() {
        let storage = LocalStorage()
        storage.setOrCreate("sm_localKey", 500i64)
        storage.setOrCreate("sm_localKeyProp", 700i64)
        ()
    }

    func build() {
        Column(space: 5i64.vp){
                Text("localLink(normal): ${this.localLinkNormal}").id("sm_locallink_normal_check")
                Text("localLink(empty): ${this.localLinkEmpty}").id("sm_locallink_empty_check")
                Text("localProp(normal): ${this.localPropNormal}").id("sm_localprop_normal_check")
                Text("localProp(empty): ${this.localPropEmpty}").id("sm_localprop_empty_check")
            }.width(100i64.percent)
    }
}
