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

import kit.AbilityKit.*
import kit.SensorServiceKit.*
import ohos.business_exception.*
import std.sync.*
import std.core.Duration
import std.unittest.*
import std.unittest.testmacro.*
import kit.PerformanceAnalysisKit.Hilog


func hasSensor(sensorType: SensorId): Bool {
    try {
        let sensors = getSensorList()
        for (sensor in sensors) {
            if (sensor.sensorId == sensorType.getValue()) {
                return true
            }
        }
    } catch (e: BusinessException) {
        Hilog.error(0, "cangjietest", "getSensorList failed: ${e.code}")
    }
    return false
}

func offIfSupported(sensorType: SensorId): Unit {
    if (hasSensor(sensorType)) {
        off(sensorType)
    }
}

func expectOffStops(start: () -> Unit, count: () -> Int64, stop: () -> Unit): Unit {
    start()
    waitFor(Duration.second * 2) { count() >= 0 }
    let countBeforeOff = count()
    stop()
    var callbackContinued = false
    sleep(Duration.millisecond * 500)
    @Expect(count(), countBeforeOff)
}


func requestUserSensorPermission(permission: Permissions): Unit {
    let bundleInfo = BundleManager.getBundleInfoForSelf(BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION)
    let tokenId = UInt32(bundleInfo.appInfo.accessTokenId)
    let accessTokenManager = AbilityAccessCtrl.createAtManager()
    if (accessTokenManager.checkAccessToken(tokenId, permission) == GrantStatus.PermissionGranted) {
        return
    }
    let finished = Box(false)
    let granted = Box(false)
    accessTokenManager.requestPermissionsFromUser(getAbilityContext(), [permission]) {
        error, data => match (error) {
            case Some(_) => finished.value = true
            case None => match (data) {
                case Some(result) =>
                    granted.value = result.authResults.size > 0 && result.authResults[0] == 0
                    finished.value = true
                case None => finished.value = true
            }
        }
    }
    waitFor(Duration.second * 6) { clickAllThoseButtons(); finished.value }
    @Expect(granted.value)
}

func expectResponseMeta(timestamp: Int64, accuracy: SensorAccuracy): Unit {
    @Expect(timestamp >= 0)
    match (accuracy) {
        case AccuracyUnreliable => @Expect(true)
        case AccuracyLow => @Expect(true)
        case AccuracyMedium => @Expect(true)
        case AccuracyHigh => @Expect(true)
        case _ => @Expect(false)
    }
}

func expectFloat(value: Float32, lower: Float32, upper: Float32): Unit {
    @Expect(value >= lower && value <= upper)
}

func expectUInt32(value: UInt32, lower: UInt32, upper: UInt32): Unit {
    @Expect(value >= lower && value <= upper)
}

func expectInt64(value: Int64, lower: Int64, upper: Int64): Unit {
    @Expect(value >= lower && value <= upper)
}

func expectInt32(value: Int32, lower: Int32, upper: Int32): Unit {
    @Expect(value >= lower && value <= upper)
}
