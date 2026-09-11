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
public class View_statemacro2_uattr_05 {
    @StorageLink["sm_testKey"]
    var storageLinkNormal: Int64 = 100
    @StorageLink[""]
    var storageLinkEmpty: Int64 = 200
    @StorageProp["sm_testKeyProp"]
    let storagePropNormal: Int64 = 300
    @StorageProp[""]
    let storagePropEmpty: Int64 = 400

    public func aboutToAppear() {
        AppStorage.setOrCreate("sm_testKey", 100i64)
        AppStorage.setOrCreate("sm_testKeyProp", 300i64)
    }

    func build() {
        Column(space: 5i64.vp){
                Text("storageLink(normal): ${this.storageLinkNormal}").id("sm_storagelink_normal_check")
                Text("storageLink(empty): ${this.storageLinkEmpty}").id("sm_storagelink_empty_check")
                Text("storageProp(normal): ${this.storagePropNormal}").id("sm_storageprop_normal_check")
                Text("storageProp(empty): ${this.storagePropEmpty}").id("sm_storageprop_empty_check")
            }.width(100i64.percent)
    }
}
