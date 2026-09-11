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

package ohos_app_cangjie_entry_test


import std.sync.{Monitor}
internal import ohos.ark_interop.{JSModule}
import ohos.resource_manager.{ResourceManager}
import ohos.web.webview.{WebviewController}
import std.time.{DateTime}
import ohos.common_event_manager.*
import std.collection.HashMap
import kit.PerformanceAnalysisKit.Hilog

let parameter = HashMap<String, CommonEventValueType>()
let commonEventPublishData00 = CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$",
    code: 123321i32, subscriberPermissions: ["subscriberPermissions"], isOrdered: true, isSticky: true,
    parameters: parameter)
let commonEventPublishData01 = CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$",
    code: 123321i32, subscriberPermissions: ["ohos.permission.PLACE_CALL"], isOrdered: true, isSticky: true,
    parameters: parameter)
let commonEventPublishData02 = CommonEventPublishData(bundleName: "com.example.myapplication01", data: "sw65^6&^$%$",
    code: 123321i32, subscriberPermissions: ["ohos.permission.PLACE_CALL"], isOrdered: true, isSticky: true,
    parameters: parameter)
let commonEventPublishData03 = CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$",
    code: 123321i32, subscriberPermissions: ["ohos.permission.PLACE_CALL"], isOrdered: true, isSticky: false,
    parameters: parameter)
let commonEventPublishData04 = CommonEventPublishData(bundleName: "com.example.myapplication", data: "sw65^6&^$%$",
    code: 123321i32, subscriberPermissions: ["ohos.permission.PLACE_CALL"], isOrdered: true, isSticky: false,
    parameters: parameter)
